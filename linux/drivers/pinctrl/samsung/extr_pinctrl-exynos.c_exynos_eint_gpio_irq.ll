; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-exynos.c_exynos_eint_gpio_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-exynos.c_exynos_eint_gpio_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.samsung_pinctrl_drv_data = type { %struct.samsung_pin_bank* }
%struct.samsung_pin_bank = type { i32, i64 }

@EXYNOS_SVC_OFFSET = common dso_local global i64 0, align 8
@EXYNOS_SVC_NUM_MASK = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @exynos_eint_gpio_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_eint_gpio_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.samsung_pinctrl_drv_data*, align 8
  %7 = alloca %struct.samsung_pin_bank*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.samsung_pinctrl_drv_data*
  store %struct.samsung_pinctrl_drv_data* %13, %struct.samsung_pinctrl_drv_data** %6, align 8
  %14 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %6, align 8
  %15 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %14, i32 0, i32 0
  %16 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %15, align 8
  store %struct.samsung_pin_bank* %16, %struct.samsung_pin_bank** %7, align 8
  %17 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %7, align 8
  %18 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @EXYNOS_SVC_OFFSET, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @readl(i64 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @EXYNOS_SVC_GROUP(i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @EXYNOS_SVC_NUM_MASK, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %31, i32* %3, align 4
  br label %51

32:                                               ; preds = %2
  %33 = load i32, i32* %9, align 4
  %34 = sub i32 %33, 1
  %35 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %7, align 8
  %36 = zext i32 %34 to i64
  %37 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %35, i64 %36
  store %struct.samsung_pin_bank* %37, %struct.samsung_pin_bank** %7, align 8
  %38 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %7, align 8
  %39 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @irq_linear_revmap(i32 %40, i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %32
  %46 = load i32, i32* @IRQ_NONE, align 4
  store i32 %46, i32* %3, align 4
  br label %51

47:                                               ; preds = %32
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @generic_handle_irq(i32 %48)
  %50 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %47, %45, %30
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @EXYNOS_SVC_GROUP(i32) #1

declare dso_local i32 @irq_linear_revmap(i32, i32) #1

declare dso_local i32 @generic_handle_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
