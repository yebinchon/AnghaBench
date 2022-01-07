; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/amd/extr_ntb_hw_amd.c_amd_init_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/amd/extr_ntb_hw_amd.c_amd_init_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_ntb_dev = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"AMD NTB topo is %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"fail to init isr.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amd_ntb_dev*)* @amd_init_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd_init_dev(%struct.amd_ntb_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amd_ntb_dev*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.amd_ntb_dev* %0, %struct.amd_ntb_dev** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.amd_ntb_dev*, %struct.amd_ntb_dev** %3, align 8
  %7 = getelementptr inbounds %struct.amd_ntb_dev, %struct.amd_ntb_dev* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %4, align 8
  %10 = load %struct.amd_ntb_dev*, %struct.amd_ntb_dev** %3, align 8
  %11 = call i32 @amd_get_topo(%struct.amd_ntb_dev* %10)
  %12 = load %struct.amd_ntb_dev*, %struct.amd_ntb_dev** %3, align 8
  %13 = getelementptr inbounds %struct.amd_ntb_dev, %struct.amd_ntb_dev* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 0
  %17 = load %struct.amd_ntb_dev*, %struct.amd_ntb_dev** %3, align 8
  %18 = getelementptr inbounds %struct.amd_ntb_dev, %struct.amd_ntb_dev* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @ntb_topo_string(i32 %20)
  %22 = call i32 @dev_dbg(i32* %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.amd_ntb_dev*, %struct.amd_ntb_dev** %3, align 8
  %24 = call i32 @amd_init_ntb(%struct.amd_ntb_dev* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %47

29:                                               ; preds = %1
  %30 = load %struct.amd_ntb_dev*, %struct.amd_ntb_dev** %3, align 8
  %31 = call i32 @amd_init_isr(%struct.amd_ntb_dev* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 0
  %37 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %2, align 4
  br label %47

39:                                               ; preds = %29
  %40 = load %struct.amd_ntb_dev*, %struct.amd_ntb_dev** %3, align 8
  %41 = getelementptr inbounds %struct.amd_ntb_dev, %struct.amd_ntb_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @BIT_ULL(i32 %42)
  %44 = sub nsw i64 %43, 1
  %45 = load %struct.amd_ntb_dev*, %struct.amd_ntb_dev** %3, align 8
  %46 = getelementptr inbounds %struct.amd_ntb_dev, %struct.amd_ntb_dev* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %39, %34, %27
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @amd_get_topo(%struct.amd_ntb_dev*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @ntb_topo_string(i32) #1

declare dso_local i32 @amd_init_ntb(%struct.amd_ntb_dev*) #1

declare dso_local i32 @amd_init_isr(%struct.amd_ntb_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @BIT_ULL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
