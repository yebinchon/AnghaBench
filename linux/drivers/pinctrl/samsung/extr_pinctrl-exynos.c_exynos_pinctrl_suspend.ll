; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-exynos.c_exynos_pinctrl_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-exynos.c_exynos_pinctrl_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.samsung_pinctrl_drv_data = type { i32, i32, %struct.samsung_pin_bank* }
%struct.samsung_pin_bank = type { i64, i32, %struct.exynos_irq_chip* }
%struct.exynos_irq_chip = type { i32 }

@EINT_TYPE_GPIO = common dso_local global i64 0, align 8
@EINT_TYPE_WKUP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [118 x i8] c"More than one external wakeup interrupt chip configured (bank: %s). This is not supported by hardware nor by driver.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exynos_pinctrl_suspend(%struct.samsung_pinctrl_drv_data* %0) #0 {
  %2 = alloca %struct.samsung_pinctrl_drv_data*, align 8
  %3 = alloca %struct.samsung_pin_bank*, align 8
  %4 = alloca %struct.exynos_irq_chip*, align 8
  %5 = alloca i32, align 4
  store %struct.samsung_pinctrl_drv_data* %0, %struct.samsung_pinctrl_drv_data** %2, align 8
  %6 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %2, align 8
  %7 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %6, i32 0, i32 2
  %8 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %7, align 8
  store %struct.samsung_pin_bank* %8, %struct.samsung_pin_bank** %3, align 8
  store %struct.exynos_irq_chip* null, %struct.exynos_irq_chip** %4, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %59, %1
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %2, align 8
  %12 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %64

15:                                               ; preds = %9
  %16 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %3, align 8
  %17 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @EINT_TYPE_GPIO, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %2, align 8
  %23 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %3, align 8
  %24 = call i32 @exynos_pinctrl_suspend_bank(%struct.samsung_pinctrl_drv_data* %22, %struct.samsung_pin_bank* %23)
  br label %58

25:                                               ; preds = %15
  %26 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %3, align 8
  %27 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @EINT_TYPE_WKUP, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %57

31:                                               ; preds = %25
  %32 = load %struct.exynos_irq_chip*, %struct.exynos_irq_chip** %4, align 8
  %33 = icmp ne %struct.exynos_irq_chip* %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %31
  %35 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %3, align 8
  %36 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %35, i32 0, i32 2
  %37 = load %struct.exynos_irq_chip*, %struct.exynos_irq_chip** %36, align 8
  store %struct.exynos_irq_chip* %37, %struct.exynos_irq_chip** %4, align 8
  %38 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %2, align 8
  %39 = load %struct.exynos_irq_chip*, %struct.exynos_irq_chip** %4, align 8
  %40 = call i32 @exynos_pinctrl_set_eint_wakeup_mask(%struct.samsung_pinctrl_drv_data* %38, %struct.exynos_irq_chip* %39)
  br label %56

41:                                               ; preds = %31
  %42 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %3, align 8
  %43 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %42, i32 0, i32 2
  %44 = load %struct.exynos_irq_chip*, %struct.exynos_irq_chip** %43, align 8
  %45 = load %struct.exynos_irq_chip*, %struct.exynos_irq_chip** %4, align 8
  %46 = icmp ne %struct.exynos_irq_chip* %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %41
  %48 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %2, align 8
  %49 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %3, align 8
  %52 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @dev_warn(i32 %50, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %47, %41
  br label %56

56:                                               ; preds = %55, %34
  br label %57

57:                                               ; preds = %56, %25
  br label %58

58:                                               ; preds = %57, %21
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  %62 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %3, align 8
  %63 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %62, i32 1
  store %struct.samsung_pin_bank* %63, %struct.samsung_pin_bank** %3, align 8
  br label %9

64:                                               ; preds = %9
  ret void
}

declare dso_local i32 @exynos_pinctrl_suspend_bank(%struct.samsung_pinctrl_drv_data*, %struct.samsung_pin_bank*) #1

declare dso_local i32 @exynos_pinctrl_set_eint_wakeup_mask(%struct.samsung_pinctrl_drv_data*, %struct.exynos_irq_chip*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
