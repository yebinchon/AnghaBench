; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-tegra194.c___deinit_controller.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-tegra194.c___deinit_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pcie_dw = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"Failed to assert \22core\22 reset: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to assert APB reset: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to disable regulator: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Failed to disable controller %d: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_pcie_dw*)* @__deinit_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__deinit_controller(%struct.tegra_pcie_dw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_pcie_dw*, align 8
  %4 = alloca i32, align 4
  store %struct.tegra_pcie_dw* %0, %struct.tegra_pcie_dw** %3, align 8
  %5 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %6 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @reset_control_assert(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %13 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %14, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %71

18:                                               ; preds = %1
  %19 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %20 = call i32 @tegra_pcie_disable_phy(%struct.tegra_pcie_dw* %19)
  %21 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %22 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @reset_control_assert(i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %18
  %28 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %29 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %30, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %71

34:                                               ; preds = %18
  %35 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %36 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @clk_disable_unprepare(i32 %37)
  %39 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %40 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @regulator_disable(i32 %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %34
  %46 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %47 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %48, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %71

52:                                               ; preds = %34
  %53 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %54 = call i32 @tegra_pcie_disable_slot_regulators(%struct.tegra_pcie_dw* %53)
  %55 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %56 = call i32 @tegra_pcie_bpmp_set_ctrl_state(%struct.tegra_pcie_dw* %55, i32 0)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %52
  %60 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %61 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %64 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %4, align 4
  %67 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %62, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %65, i32 %66)
  %68 = load i32, i32* %4, align 4
  store i32 %68, i32* %2, align 4
  br label %71

69:                                               ; preds = %52
  %70 = load i32, i32* %4, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %69, %59, %45, %27, %11
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @tegra_pcie_disable_phy(%struct.tegra_pcie_dw*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @tegra_pcie_disable_slot_regulators(%struct.tegra_pcie_dw*) #1

declare dso_local i32 @tegra_pcie_bpmp_set_ctrl_state(%struct.tegra_pcie_dw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
