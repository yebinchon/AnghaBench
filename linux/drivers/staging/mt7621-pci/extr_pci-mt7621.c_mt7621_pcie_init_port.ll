; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/mt7621-pci/extr_pci-mt7621.c_mt7621_pcie_init_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/mt7621-pci/extr_pci-mt7621.c_mt7621_pcie_init_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7621_pcie_port = type { i32, i32, i32, %struct.mt7621_pcie* }
%struct.mt7621_pcie = type { %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"failed to initialize port%d phy\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to power on port%d phy\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt7621_pcie_port*)* @mt7621_pcie_init_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7621_pcie_init_port(%struct.mt7621_pcie_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt7621_pcie_port*, align 8
  %4 = alloca %struct.mt7621_pcie*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mt7621_pcie_port* %0, %struct.mt7621_pcie_port** %3, align 8
  %8 = load %struct.mt7621_pcie_port*, %struct.mt7621_pcie_port** %3, align 8
  %9 = getelementptr inbounds %struct.mt7621_pcie_port, %struct.mt7621_pcie_port* %8, i32 0, i32 3
  %10 = load %struct.mt7621_pcie*, %struct.mt7621_pcie** %9, align 8
  store %struct.mt7621_pcie* %10, %struct.mt7621_pcie** %4, align 8
  %11 = load %struct.mt7621_pcie*, %struct.mt7621_pcie** %4, align 8
  %12 = getelementptr inbounds %struct.mt7621_pcie, %struct.mt7621_pcie* %11, i32 0, i32 0
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %5, align 8
  %14 = load %struct.mt7621_pcie_port*, %struct.mt7621_pcie_port** %3, align 8
  %15 = getelementptr inbounds %struct.mt7621_pcie_port, %struct.mt7621_pcie_port* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  %17 = load %struct.mt7621_pcie_port*, %struct.mt7621_pcie_port** %3, align 8
  %18 = call i32 @mt7621_reset_port(%struct.mt7621_pcie_port* %17)
  %19 = load %struct.mt7621_pcie_port*, %struct.mt7621_pcie_port** %3, align 8
  %20 = getelementptr inbounds %struct.mt7621_pcie_port, %struct.mt7621_pcie_port* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @phy_init(i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %1
  %26 = load %struct.device*, %struct.device** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @dev_err(%struct.device* %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %2, align 4
  br label %49

30:                                               ; preds = %1
  %31 = load %struct.mt7621_pcie_port*, %struct.mt7621_pcie_port** %3, align 8
  %32 = getelementptr inbounds %struct.mt7621_pcie_port, %struct.mt7621_pcie_port* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @phy_power_on(i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %30
  %38 = load %struct.device*, %struct.device** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @dev_err(%struct.device* %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load %struct.mt7621_pcie_port*, %struct.mt7621_pcie_port** %3, align 8
  %42 = getelementptr inbounds %struct.mt7621_pcie_port, %struct.mt7621_pcie_port* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @phy_exit(i32 %43)
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %2, align 4
  br label %49

46:                                               ; preds = %30
  %47 = load %struct.mt7621_pcie_port*, %struct.mt7621_pcie_port** %3, align 8
  %48 = getelementptr inbounds %struct.mt7621_pcie_port, %struct.mt7621_pcie_port* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %46, %37, %25
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @mt7621_reset_port(%struct.mt7621_pcie_port*) #1

declare dso_local i32 @phy_init(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @phy_power_on(i32) #1

declare dso_local i32 @phy_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
