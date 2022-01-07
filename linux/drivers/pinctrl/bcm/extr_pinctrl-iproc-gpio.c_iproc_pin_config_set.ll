; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-iproc-gpio.c_iproc_pin_config_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-iproc-gpio.c_iproc_pin_config_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.iproc_gpio = type { i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"invalid configuration\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*, i32)* @iproc_pin_config_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iproc_pin_config_set(%struct.pinctrl_dev* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iproc_gpio*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %17 = call %struct.iproc_gpio* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %16)
  store %struct.iproc_gpio* %17, %struct.iproc_gpio** %10, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @iproc_pin_to_gpio(i32 %18)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* @ENOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %22

22:                                               ; preds = %89, %4
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %92

26:                                               ; preds = %22
  %27 = load i64*, i64** %8, align 8
  %28 = load i32, i32* %13, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @pinconf_to_config_param(i64 %31)
  store i32 %32, i32* %11, align 4
  %33 = load %struct.iproc_gpio*, %struct.iproc_gpio** %10, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i64 @iproc_pinconf_param_is_disabled(%struct.iproc_gpio* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %26
  %38 = load i32, i32* @ENOTSUPP, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %95

40:                                               ; preds = %26
  %41 = load i64*, i64** %8, align 8
  %42 = load i32, i32* %13, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @pinconf_to_config_argument(i64 %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %11, align 4
  switch i32 %47, label %81 [
    i32 131, label %48
    i32 129, label %56
    i32 130, label %64
    i32 128, label %72
  ]

48:                                               ; preds = %40
  %49 = load %struct.iproc_gpio*, %struct.iproc_gpio** %10, align 8
  %50 = load i32, i32* %14, align 4
  %51 = call i32 @iproc_gpio_set_pull(%struct.iproc_gpio* %49, i32 %50, i32 1, i32 0)
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %15, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %93

55:                                               ; preds = %48
  br label %88

56:                                               ; preds = %40
  %57 = load %struct.iproc_gpio*, %struct.iproc_gpio** %10, align 8
  %58 = load i32, i32* %14, align 4
  %59 = call i32 @iproc_gpio_set_pull(%struct.iproc_gpio* %57, i32 %58, i32 0, i32 1)
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %15, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %93

63:                                               ; preds = %56
  br label %88

64:                                               ; preds = %40
  %65 = load %struct.iproc_gpio*, %struct.iproc_gpio** %10, align 8
  %66 = load i32, i32* %14, align 4
  %67 = call i32 @iproc_gpio_set_pull(%struct.iproc_gpio* %65, i32 %66, i32 0, i32 0)
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %15, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %93

71:                                               ; preds = %64
  br label %88

72:                                               ; preds = %40
  %73 = load %struct.iproc_gpio*, %struct.iproc_gpio** %10, align 8
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @iproc_gpio_set_strength(%struct.iproc_gpio* %73, i32 %74, i32 %75)
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %15, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  br label %93

80:                                               ; preds = %72
  br label %88

81:                                               ; preds = %40
  %82 = load %struct.iproc_gpio*, %struct.iproc_gpio** %10, align 8
  %83 = getelementptr inbounds %struct.iproc_gpio, %struct.iproc_gpio* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @dev_err(i32 %84, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %86 = load i32, i32* @ENOTSUPP, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %5, align 4
  br label %95

88:                                               ; preds = %80, %71, %63, %55
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %13, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %13, align 4
  br label %22

92:                                               ; preds = %22
  br label %93

93:                                               ; preds = %92, %79, %70, %62, %54
  %94 = load i32, i32* %15, align 4
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %93, %81, %37
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local %struct.iproc_gpio* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @iproc_pin_to_gpio(i32) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i64 @iproc_pinconf_param_is_disabled(%struct.iproc_gpio*, i32) #1

declare dso_local i32 @pinconf_to_config_argument(i64) #1

declare dso_local i32 @iproc_gpio_set_pull(%struct.iproc_gpio*, i32, i32, i32) #1

declare dso_local i32 @iproc_gpio_set_strength(%struct.iproc_gpio*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
