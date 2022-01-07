; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/freescale/extr_pinctrl-imx7ulp.c_imx7ulp_pmx_gpio_set_direction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/freescale/extr_pinctrl-imx7ulp.c_imx7ulp_pmx_gpio_set_direction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.pinctrl_gpio_range = type { i32 }
%struct.imx_pinctrl = type { i64, %struct.imx_pin_reg* }
%struct.imx_pin_reg = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@BM_OBE_ENABLED = common dso_local global i32 0, align 4
@BM_IBE_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, %struct.pinctrl_gpio_range*, i32, i32)* @imx7ulp_pmx_gpio_set_direction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx7ulp_pmx_gpio_set_direction(%struct.pinctrl_dev* %0, %struct.pinctrl_gpio_range* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca %struct.pinctrl_gpio_range*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.imx_pinctrl*, align 8
  %11 = alloca %struct.imx_pin_reg*, align 8
  %12 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %6, align 8
  store %struct.pinctrl_gpio_range* %1, %struct.pinctrl_gpio_range** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %14 = call %struct.imx_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %13)
  store %struct.imx_pinctrl* %14, %struct.imx_pinctrl** %10, align 8
  %15 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %10, align 8
  %16 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %15, i32 0, i32 1
  %17 = load %struct.imx_pin_reg*, %struct.imx_pin_reg** %16, align 8
  %18 = load i32, i32* %8, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.imx_pin_reg, %struct.imx_pin_reg* %17, i64 %19
  store %struct.imx_pin_reg* %20, %struct.imx_pin_reg** %11, align 8
  %21 = load %struct.imx_pin_reg*, %struct.imx_pin_reg** %11, align 8
  %22 = getelementptr inbounds %struct.imx_pin_reg, %struct.imx_pin_reg* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %65

28:                                               ; preds = %4
  %29 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %10, align 8
  %30 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.imx_pin_reg*, %struct.imx_pin_reg** %11, align 8
  %33 = getelementptr inbounds %struct.imx_pin_reg, %struct.imx_pin_reg* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %31, %35
  %37 = call i32 @readl(i64 %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %28
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* @BM_OBE_ENABLED, align 4
  %43 = xor i32 %42, -1
  %44 = and i32 %41, %43
  %45 = load i32, i32* @BM_IBE_ENABLED, align 4
  %46 = or i32 %44, %45
  store i32 %46, i32* %12, align 4
  br label %54

47:                                               ; preds = %28
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @BM_IBE_ENABLED, align 4
  %50 = xor i32 %49, -1
  %51 = and i32 %48, %50
  %52 = load i32, i32* @BM_OBE_ENABLED, align 4
  %53 = or i32 %51, %52
  store i32 %53, i32* %12, align 4
  br label %54

54:                                               ; preds = %47, %40
  %55 = load i32, i32* %12, align 4
  %56 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %10, align 8
  %57 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.imx_pin_reg*, %struct.imx_pin_reg** %11, align 8
  %60 = getelementptr inbounds %struct.imx_pin_reg, %struct.imx_pin_reg* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %58, %62
  %64 = call i32 @writel(i32 %55, i64 %63)
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %54, %25
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local %struct.imx_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
