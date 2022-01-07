; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sh-pfc/extr_pinctrl.c_sh_pfc_gpio_set_direction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sh-pfc/extr_pinctrl.c_sh_pfc_gpio_set_direction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.pinctrl_gpio_range = type { i32 }
%struct.sh_pfc_pinctrl = type { %struct.sh_pfc* }
%struct.sh_pfc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sh_pfc_pin* }
%struct.sh_pfc_pin = type { i32, i32 }

@PINMUX_TYPE_INPUT = common dso_local global i32 0, align 4
@PINMUX_TYPE_OUTPUT = common dso_local global i32 0, align 4
@SH_PFC_PIN_CFG_INPUT = common dso_local global i32 0, align 4
@SH_PFC_PIN_CFG_OUTPUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, %struct.pinctrl_gpio_range*, i32, i32)* @sh_pfc_gpio_set_direction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_pfc_gpio_set_direction(%struct.pinctrl_dev* %0, %struct.pinctrl_gpio_range* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca %struct.pinctrl_gpio_range*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sh_pfc_pinctrl*, align 8
  %11 = alloca %struct.sh_pfc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sh_pfc_pin*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %6, align 8
  store %struct.pinctrl_gpio_range* %1, %struct.pinctrl_gpio_range** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %19 = call %struct.sh_pfc_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %18)
  store %struct.sh_pfc_pinctrl* %19, %struct.sh_pfc_pinctrl** %10, align 8
  %20 = load %struct.sh_pfc_pinctrl*, %struct.sh_pfc_pinctrl** %10, align 8
  %21 = getelementptr inbounds %struct.sh_pfc_pinctrl, %struct.sh_pfc_pinctrl* %20, i32 0, i32 0
  %22 = load %struct.sh_pfc*, %struct.sh_pfc** %21, align 8
  store %struct.sh_pfc* %22, %struct.sh_pfc** %11, align 8
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* @PINMUX_TYPE_INPUT, align 4
  br label %29

27:                                               ; preds = %4
  %28 = load i32, i32* @PINMUX_TYPE_OUTPUT, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  store i32 %30, i32* %12, align 4
  %31 = load %struct.sh_pfc*, %struct.sh_pfc** %11, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @sh_pfc_get_pin_index(%struct.sh_pfc* %31, i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = load %struct.sh_pfc*, %struct.sh_pfc** %11, align 8
  %35 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load %struct.sh_pfc_pin*, %struct.sh_pfc_pin** %37, align 8
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.sh_pfc_pin, %struct.sh_pfc_pin* %38, i64 %40
  store %struct.sh_pfc_pin* %41, %struct.sh_pfc_pin** %14, align 8
  %42 = load %struct.sh_pfc_pin*, %struct.sh_pfc_pin** %14, align 8
  %43 = getelementptr inbounds %struct.sh_pfc_pin, %struct.sh_pfc_pin* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %29
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32, i32* @SH_PFC_PIN_CFG_INPUT, align 4
  br label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @SH_PFC_PIN_CFG_OUTPUT, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  store i32 %54, i32* %16, align 4
  %55 = load %struct.sh_pfc_pin*, %struct.sh_pfc_pin** %14, align 8
  %56 = getelementptr inbounds %struct.sh_pfc_pin, %struct.sh_pfc_pin* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %16, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %53
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  br label %86

64:                                               ; preds = %53
  br label %65

65:                                               ; preds = %64, %29
  %66 = load %struct.sh_pfc*, %struct.sh_pfc** %11, align 8
  %67 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %66, i32 0, i32 0
  %68 = load i64, i64* %15, align 8
  %69 = call i32 @spin_lock_irqsave(i32* %67, i64 %68)
  %70 = load %struct.sh_pfc*, %struct.sh_pfc** %11, align 8
  %71 = load %struct.sh_pfc_pin*, %struct.sh_pfc_pin** %14, align 8
  %72 = getelementptr inbounds %struct.sh_pfc_pin, %struct.sh_pfc_pin* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @sh_pfc_config_mux(%struct.sh_pfc* %70, i32 %73, i32 %74)
  store i32 %75, i32* %17, align 4
  %76 = load i32, i32* %17, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %65
  br label %80

79:                                               ; preds = %65
  br label %80

80:                                               ; preds = %79, %78
  %81 = load %struct.sh_pfc*, %struct.sh_pfc** %11, align 8
  %82 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %81, i32 0, i32 0
  %83 = load i64, i64* %15, align 8
  %84 = call i32 @spin_unlock_irqrestore(i32* %82, i64 %83)
  %85 = load i32, i32* %17, align 4
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %80, %61
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local %struct.sh_pfc_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @sh_pfc_get_pin_index(%struct.sh_pfc*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sh_pfc_config_mux(%struct.sh_pfc*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
