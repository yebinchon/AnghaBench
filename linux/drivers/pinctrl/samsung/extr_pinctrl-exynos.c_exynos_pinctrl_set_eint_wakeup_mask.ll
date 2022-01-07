; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-exynos.c_exynos_pinctrl_set_eint_wakeup_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-exynos.c_exynos_pinctrl_set_eint_wakeup_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.samsung_pinctrl_drv_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.regmap* }
%struct.regmap = type { i32 }
%struct.exynos_irq_chip = type { i32, i32 }

@.str = private unnamed_addr constant [97 x i8] c"No retention data configured bank with external wakeup interrupt. Wake-up mask will not be set.\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Setting external wakeup interrupt mask: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.samsung_pinctrl_drv_data*, %struct.exynos_irq_chip*)* @exynos_pinctrl_set_eint_wakeup_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos_pinctrl_set_eint_wakeup_mask(%struct.samsung_pinctrl_drv_data* %0, %struct.exynos_irq_chip* %1) #0 {
  %3 = alloca %struct.samsung_pinctrl_drv_data*, align 8
  %4 = alloca %struct.exynos_irq_chip*, align 8
  %5 = alloca %struct.regmap*, align 8
  store %struct.samsung_pinctrl_drv_data* %0, %struct.samsung_pinctrl_drv_data** %3, align 8
  store %struct.exynos_irq_chip* %1, %struct.exynos_irq_chip** %4, align 8
  %6 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %3, align 8
  %7 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %3, align 8
  %12 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.regmap*, %struct.regmap** %14, align 8
  %16 = icmp ne %struct.regmap* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %10, %2
  %18 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %3, align 8
  %19 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @dev_warn(i32 %20, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str, i64 0, i64 0))
  br label %43

22:                                               ; preds = %10
  %23 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %3, align 8
  %24 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.regmap*, %struct.regmap** %26, align 8
  store %struct.regmap* %27, %struct.regmap** %5, align 8
  %28 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %3, align 8
  %29 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.exynos_irq_chip*, %struct.exynos_irq_chip** %4, align 8
  %32 = getelementptr inbounds %struct.exynos_irq_chip, %struct.exynos_irq_chip* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dev_info(i32 %30, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load %struct.regmap*, %struct.regmap** %5, align 8
  %36 = load %struct.exynos_irq_chip*, %struct.exynos_irq_chip** %4, align 8
  %37 = getelementptr inbounds %struct.exynos_irq_chip, %struct.exynos_irq_chip* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.exynos_irq_chip*, %struct.exynos_irq_chip** %4, align 8
  %40 = getelementptr inbounds %struct.exynos_irq_chip, %struct.exynos_irq_chip* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @regmap_write(%struct.regmap* %35, i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %22, %17
  ret void
}

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
