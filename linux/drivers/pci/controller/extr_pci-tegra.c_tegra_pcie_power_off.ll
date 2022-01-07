; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pcie = type { i32, i32, i32, i32, i32, i32, %struct.tegra_pcie_soc*, %struct.device* }
%struct.tegra_pcie_soc = type { i64 }
%struct.device = type { i32 }

@TEGRA_POWERGATE_PCIE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to disable regulators: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_pcie*)* @tegra_pcie_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_pcie_power_off(%struct.tegra_pcie* %0) #0 {
  %2 = alloca %struct.tegra_pcie*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.tegra_pcie_soc*, align 8
  %5 = alloca i32, align 4
  store %struct.tegra_pcie* %0, %struct.tegra_pcie** %2, align 8
  %6 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %7 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %6, i32 0, i32 7
  %8 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %8, %struct.device** %3, align 8
  %9 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %10 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %9, i32 0, i32 6
  %11 = load %struct.tegra_pcie_soc*, %struct.tegra_pcie_soc** %10, align 8
  store %struct.tegra_pcie_soc* %11, %struct.tegra_pcie_soc** %4, align 8
  %12 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %13 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @reset_control_assert(i32 %14)
  %16 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %17 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @clk_disable_unprepare(i32 %18)
  %20 = load %struct.tegra_pcie_soc*, %struct.tegra_pcie_soc** %4, align 8
  %21 = getelementptr inbounds %struct.tegra_pcie_soc, %struct.tegra_pcie_soc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %26 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @clk_disable_unprepare(i32 %27)
  br label %29

29:                                               ; preds = %24, %1
  %30 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %31 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @clk_disable_unprepare(i32 %32)
  %34 = load %struct.device*, %struct.device** %3, align 8
  %35 = getelementptr inbounds %struct.device, %struct.device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %29
  %39 = load i32, i32* @TEGRA_POWERGATE_PCIE, align 4
  %40 = call i32 @tegra_powergate_power_off(i32 %39)
  br label %41

41:                                               ; preds = %38, %29
  %42 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %43 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %46 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @regulator_bulk_disable(i32 %44, i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %41
  %52 = load %struct.device*, %struct.device** %3, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @dev_warn(%struct.device* %52, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %51, %41
  ret void
}

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @tegra_powergate_power_off(i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
