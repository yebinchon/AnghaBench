; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/freescale/extr_pinctrl-imx.c_imx_pinconf_get_mmio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/freescale/extr_pinctrl-imx.c_imx_pinconf_get_mmio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.imx_pinctrl = type { i64, i32, %struct.imx_pin_reg*, %struct.imx_pinctrl_soc_info* }
%struct.imx_pin_reg = type { i32 }
%struct.imx_pinctrl_soc_info = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"Pin(%s) does not support config function\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SHARE_MUX_CONF_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*)* @imx_pinconf_get_mmio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_pinconf_get_mmio(%struct.pinctrl_dev* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.imx_pinctrl*, align 8
  %9 = alloca %struct.imx_pinctrl_soc_info*, align 8
  %10 = alloca %struct.imx_pin_reg*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %11 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %12 = call %struct.imx_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %11)
  store %struct.imx_pinctrl* %12, %struct.imx_pinctrl** %8, align 8
  %13 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %8, align 8
  %14 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %13, i32 0, i32 3
  %15 = load %struct.imx_pinctrl_soc_info*, %struct.imx_pinctrl_soc_info** %14, align 8
  store %struct.imx_pinctrl_soc_info* %15, %struct.imx_pinctrl_soc_info** %9, align 8
  %16 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %8, align 8
  %17 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %16, i32 0, i32 2
  %18 = load %struct.imx_pin_reg*, %struct.imx_pin_reg** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.imx_pin_reg, %struct.imx_pin_reg* %18, i64 %20
  store %struct.imx_pin_reg* %21, %struct.imx_pin_reg** %10, align 8
  %22 = load %struct.imx_pin_reg*, %struct.imx_pin_reg** %10, align 8
  %23 = getelementptr inbounds %struct.imx_pin_reg, %struct.imx_pin_reg* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %41

26:                                               ; preds = %3
  %27 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %8, align 8
  %28 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.imx_pinctrl_soc_info*, %struct.imx_pinctrl_soc_info** %9, align 8
  %31 = getelementptr inbounds %struct.imx_pinctrl_soc_info, %struct.imx_pinctrl_soc_info* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %67

41:                                               ; preds = %3
  %42 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %8, align 8
  %43 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.imx_pin_reg*, %struct.imx_pin_reg** %10, align 8
  %46 = getelementptr inbounds %struct.imx_pin_reg, %struct.imx_pin_reg* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %44, %48
  %50 = call i64 @readl(i64 %49)
  %51 = load i64*, i64** %7, align 8
  store i64 %50, i64* %51, align 8
  %52 = load %struct.imx_pinctrl_soc_info*, %struct.imx_pinctrl_soc_info** %9, align 8
  %53 = getelementptr inbounds %struct.imx_pinctrl_soc_info, %struct.imx_pinctrl_soc_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @SHARE_MUX_CONF_REG, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %41
  %59 = load %struct.imx_pinctrl_soc_info*, %struct.imx_pinctrl_soc_info** %9, align 8
  %60 = getelementptr inbounds %struct.imx_pinctrl_soc_info, %struct.imx_pinctrl_soc_info* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = xor i64 %61, -1
  %63 = load i64*, i64** %7, align 8
  %64 = load i64, i64* %63, align 8
  %65 = and i64 %64, %62
  store i64 %65, i64* %63, align 8
  br label %66

66:                                               ; preds = %58, %41
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %66, %26
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.imx_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i64 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
