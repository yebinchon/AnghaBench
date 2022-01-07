; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-exynos.c_exynos_pcie_establish_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-exynos.c_exynos_pcie_establish_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_pcie = type { i32, %struct.TYPE_2__*, %struct.dw_pcie* }
%struct.TYPE_2__ = type { i32 }
%struct.dw_pcie = type { %struct.device*, %struct.pcie_port }
%struct.device = type { i32 }
%struct.pcie_port = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"Link already up\0A\00", align 1
@PCIE_PWR_RESET = common dso_local global i32 0, align 4
@PCIE_ELBI_LTSSM_ENABLE = common dso_local global i32 0, align 4
@PCIE_APP_LTSSM_ENABLE = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exynos_pcie*)* @exynos_pcie_establish_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_pcie_establish_link(%struct.exynos_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.exynos_pcie*, align 8
  %4 = alloca %struct.dw_pcie*, align 8
  %5 = alloca %struct.pcie_port*, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.exynos_pcie* %0, %struct.exynos_pcie** %3, align 8
  %7 = load %struct.exynos_pcie*, %struct.exynos_pcie** %3, align 8
  %8 = getelementptr inbounds %struct.exynos_pcie, %struct.exynos_pcie* %7, i32 0, i32 2
  %9 = load %struct.dw_pcie*, %struct.dw_pcie** %8, align 8
  store %struct.dw_pcie* %9, %struct.dw_pcie** %4, align 8
  %10 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %11 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %10, i32 0, i32 1
  store %struct.pcie_port* %11, %struct.pcie_port** %5, align 8
  %12 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %13 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %12, i32 0, i32 0
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %6, align 8
  %15 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %16 = call i64 @dw_pcie_link_up(%struct.dw_pcie* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = call i32 @dev_err(%struct.device* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %68

21:                                               ; preds = %1
  %22 = load %struct.exynos_pcie*, %struct.exynos_pcie** %3, align 8
  %23 = call i32 @exynos_pcie_assert_core_reset(%struct.exynos_pcie* %22)
  %24 = load %struct.exynos_pcie*, %struct.exynos_pcie** %3, align 8
  %25 = getelementptr inbounds %struct.exynos_pcie, %struct.exynos_pcie* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @phy_reset(i32 %26)
  %28 = load %struct.exynos_pcie*, %struct.exynos_pcie** %3, align 8
  %29 = getelementptr inbounds %struct.exynos_pcie, %struct.exynos_pcie* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @PCIE_PWR_RESET, align 4
  %34 = call i32 @exynos_pcie_writel(i32 %32, i32 1, i32 %33)
  %35 = load %struct.exynos_pcie*, %struct.exynos_pcie** %3, align 8
  %36 = getelementptr inbounds %struct.exynos_pcie, %struct.exynos_pcie* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @phy_power_on(i32 %37)
  %39 = load %struct.exynos_pcie*, %struct.exynos_pcie** %3, align 8
  %40 = getelementptr inbounds %struct.exynos_pcie, %struct.exynos_pcie* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @phy_init(i32 %41)
  %43 = load %struct.exynos_pcie*, %struct.exynos_pcie** %3, align 8
  %44 = call i32 @exynos_pcie_deassert_core_reset(%struct.exynos_pcie* %43)
  %45 = load %struct.pcie_port*, %struct.pcie_port** %5, align 8
  %46 = call i32 @dw_pcie_setup_rc(%struct.pcie_port* %45)
  %47 = load %struct.exynos_pcie*, %struct.exynos_pcie** %3, align 8
  %48 = call i32 @exynos_pcie_assert_reset(%struct.exynos_pcie* %47)
  %49 = load %struct.exynos_pcie*, %struct.exynos_pcie** %3, align 8
  %50 = getelementptr inbounds %struct.exynos_pcie, %struct.exynos_pcie* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @PCIE_ELBI_LTSSM_ENABLE, align 4
  %55 = load i32, i32* @PCIE_APP_LTSSM_ENABLE, align 4
  %56 = call i32 @exynos_pcie_writel(i32 %53, i32 %54, i32 %55)
  %57 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %58 = call i32 @dw_pcie_wait_for_link(%struct.dw_pcie* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %68

61:                                               ; preds = %21
  %62 = load %struct.exynos_pcie*, %struct.exynos_pcie** %3, align 8
  %63 = getelementptr inbounds %struct.exynos_pcie, %struct.exynos_pcie* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @phy_power_off(i32 %64)
  %66 = load i32, i32* @ETIMEDOUT, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %61, %60, %18
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i64 @dw_pcie_link_up(%struct.dw_pcie*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @exynos_pcie_assert_core_reset(%struct.exynos_pcie*) #1

declare dso_local i32 @phy_reset(i32) #1

declare dso_local i32 @exynos_pcie_writel(i32, i32, i32) #1

declare dso_local i32 @phy_power_on(i32) #1

declare dso_local i32 @phy_init(i32) #1

declare dso_local i32 @exynos_pcie_deassert_core_reset(%struct.exynos_pcie*) #1

declare dso_local i32 @dw_pcie_setup_rc(%struct.pcie_port*) #1

declare dso_local i32 @exynos_pcie_assert_reset(%struct.exynos_pcie*) #1

declare dso_local i32 @dw_pcie_wait_for_link(%struct.dw_pcie*) #1

declare dso_local i32 @phy_power_off(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
