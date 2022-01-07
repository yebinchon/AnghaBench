; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_pci.c_rtw_pci_setup_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_pci.c_rtw_pci_setup_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i64 }
%struct.pci_dev = type { i32 }
%struct.rtw_pci = type { %struct.pci_dev* }

@.str = private unnamed_addr constant [33 x i8] c"failed to request pci io region\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to allocate pci resources\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtw_dev*, %struct.pci_dev*)* @rtw_pci_setup_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw_pci_setup_resource(%struct.rtw_dev* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtw_dev*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.rtw_pci*, align 8
  %7 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %4, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  %8 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %9 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.rtw_pci*
  store %struct.rtw_pci* %11, %struct.rtw_pci** %6, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %13 = load %struct.rtw_pci*, %struct.rtw_pci** %6, align 8
  %14 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %13, i32 0, i32 0
  store %struct.pci_dev* %12, %struct.pci_dev** %14, align 8
  %15 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %16 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %17 = call i32 @rtw_pci_io_mapping(%struct.rtw_dev* %15, %struct.pci_dev* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %22 = call i32 @rtw_err(%struct.rtw_dev* %21, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %38

23:                                               ; preds = %2
  %24 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %25 = call i32 @rtw_pci_init(%struct.rtw_dev* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %30 = call i32 @rtw_err(%struct.rtw_dev* %29, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %34

31:                                               ; preds = %23
  %32 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %33 = call i32 @rtw_pci_phy_cfg(%struct.rtw_dev* %32)
  store i32 0, i32* %3, align 4
  br label %40

34:                                               ; preds = %28
  %35 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %36 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %37 = call i32 @rtw_pci_io_unmapping(%struct.rtw_dev* %35, %struct.pci_dev* %36)
  br label %38

38:                                               ; preds = %34, %20
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %31
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @rtw_pci_io_mapping(%struct.rtw_dev*, %struct.pci_dev*) #1

declare dso_local i32 @rtw_err(%struct.rtw_dev*, i8*) #1

declare dso_local i32 @rtw_pci_init(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_pci_phy_cfg(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_pci_io_unmapping(%struct.rtw_dev*, %struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
