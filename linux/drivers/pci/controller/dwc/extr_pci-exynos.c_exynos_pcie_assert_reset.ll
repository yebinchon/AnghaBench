; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-exynos.c_exynos_pcie_assert_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-exynos.c_exynos_pcie_assert_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_pcie = type { i32, %struct.dw_pcie* }
%struct.dw_pcie = type { %struct.device* }
%struct.device = type { i32 }

@GPIOF_OUT_INIT_HIGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"RESET\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_pcie*)* @exynos_pcie_assert_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos_pcie_assert_reset(%struct.exynos_pcie* %0) #0 {
  %2 = alloca %struct.exynos_pcie*, align 8
  %3 = alloca %struct.dw_pcie*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.exynos_pcie* %0, %struct.exynos_pcie** %2, align 8
  %5 = load %struct.exynos_pcie*, %struct.exynos_pcie** %2, align 8
  %6 = getelementptr inbounds %struct.exynos_pcie, %struct.exynos_pcie* %5, i32 0, i32 1
  %7 = load %struct.dw_pcie*, %struct.dw_pcie** %6, align 8
  store %struct.dw_pcie* %7, %struct.dw_pcie** %3, align 8
  %8 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %9 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %8, i32 0, i32 0
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.exynos_pcie*, %struct.exynos_pcie** %2, align 8
  %12 = getelementptr inbounds %struct.exynos_pcie, %struct.exynos_pcie* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = load %struct.exynos_pcie*, %struct.exynos_pcie** %2, align 8
  %18 = getelementptr inbounds %struct.exynos_pcie, %struct.exynos_pcie* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @GPIOF_OUT_INIT_HIGH, align 4
  %21 = call i32 @devm_gpio_request_one(%struct.device* %16, i32 %19, i32 %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %15, %1
  ret void
}

declare dso_local i32 @devm_gpio_request_one(%struct.device*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
