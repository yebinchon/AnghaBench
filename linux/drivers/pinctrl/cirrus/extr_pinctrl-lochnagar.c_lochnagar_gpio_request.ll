; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/cirrus/extr_pinctrl-lochnagar.c_lochnagar_gpio_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/cirrus/extr_pinctrl-lochnagar.c_lochnagar_gpio_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.pinctrl_gpio_range = type { i32 }
%struct.lochnagar_pin_priv = type { i32, %struct.TYPE_2__*, %struct.lochnagar* }
%struct.TYPE_2__ = type { %struct.lochnagar_pin* }
%struct.lochnagar_pin = type { i64, i32 }
%struct.lochnagar = type { i64 }

@.str = private unnamed_addr constant [20 x i8] c"Requesting GPIO %s\0A\00", align 1
@LOCHNAGAR1 = common dso_local global i64 0, align 8
@LN_PTYPE_MUX = common dso_local global i64 0, align 8
@LN2_OP_GPIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to get low channel: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to get high channel: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, %struct.pinctrl_gpio_range*, i32)* @lochnagar_gpio_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lochnagar_gpio_request(%struct.pinctrl_dev* %0, %struct.pinctrl_gpio_range* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca %struct.pinctrl_gpio_range*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lochnagar_pin_priv*, align 8
  %9 = alloca %struct.lochnagar*, align 8
  %10 = alloca %struct.lochnagar_pin*, align 8
  %11 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store %struct.pinctrl_gpio_range* %1, %struct.pinctrl_gpio_range** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %13 = call %struct.lochnagar_pin_priv* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %12)
  store %struct.lochnagar_pin_priv* %13, %struct.lochnagar_pin_priv** %8, align 8
  %14 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %8, align 8
  %15 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %14, i32 0, i32 2
  %16 = load %struct.lochnagar*, %struct.lochnagar** %15, align 8
  store %struct.lochnagar* %16, %struct.lochnagar** %9, align 8
  %17 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %8, align 8
  %18 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.lochnagar_pin*, %struct.lochnagar_pin** %23, align 8
  store %struct.lochnagar_pin* %24, %struct.lochnagar_pin** %10, align 8
  %25 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %8, align 8
  %26 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.lochnagar_pin*, %struct.lochnagar_pin** %10, align 8
  %29 = getelementptr inbounds %struct.lochnagar_pin, %struct.lochnagar_pin* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @dev_dbg(i32 %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.lochnagar*, %struct.lochnagar** %9, align 8
  %33 = getelementptr inbounds %struct.lochnagar, %struct.lochnagar* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @LOCHNAGAR1, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %3
  %38 = load %struct.lochnagar_pin*, %struct.lochnagar_pin** %10, align 8
  %39 = getelementptr inbounds %struct.lochnagar_pin, %struct.lochnagar_pin* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @LN_PTYPE_MUX, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37, %3
  store i32 0, i32* %4, align 4
  br label %72

44:                                               ; preds = %37
  %45 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %8, align 8
  %46 = load i32, i32* @LN2_OP_GPIO, align 4
  %47 = call i32 @lochnagar2_get_gpio_chan(%struct.lochnagar_pin_priv* %45, i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %44
  %51 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %8, align 8
  %52 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %4, align 4
  br label %72

57:                                               ; preds = %44
  %58 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %8, align 8
  %59 = load i32, i32* @LN2_OP_GPIO, align 4
  %60 = or i32 %59, 1
  %61 = call i32 @lochnagar2_get_gpio_chan(%struct.lochnagar_pin_priv* %58, i32 %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %57
  %65 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %8, align 8
  %66 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %4, align 4
  br label %72

71:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %71, %64, %50, %43
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local %struct.lochnagar_pin_priv* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @lochnagar2_get_gpio_chan(%struct.lochnagar_pin_priv*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
