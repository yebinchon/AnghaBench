; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-iproc-gpio.c_iproc_pin_config_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-iproc-gpio.c_iproc_pin_config_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.iproc_gpio = type { i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*)* @iproc_pin_config_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iproc_pin_config_get(%struct.pinctrl_dev* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.iproc_gpio*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %15 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %16 = call %struct.iproc_gpio* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %15)
  store %struct.iproc_gpio* %16, %struct.iproc_gpio** %8, align 8
  %17 = load i64*, i64** %7, align 8
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @pinconf_to_config_param(i64 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @iproc_pin_to_gpio(i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load %struct.iproc_gpio*, %struct.iproc_gpio** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i64 @iproc_pinconf_param_is_disabled(%struct.iproc_gpio* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @ENOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %83

29:                                               ; preds = %3
  %30 = load i32, i32* %9, align 4
  switch i32 %30, label %80 [
    i32 131, label %31
    i32 129, label %41
    i32 130, label %54
    i32 128, label %67
  ]

31:                                               ; preds = %29
  %32 = load %struct.iproc_gpio*, %struct.iproc_gpio** %8, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @iproc_gpio_get_pull(%struct.iproc_gpio* %32, i32 %33, i32* %12, i32* %13)
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %83

38:                                               ; preds = %31
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %83

41:                                               ; preds = %29
  %42 = load %struct.iproc_gpio*, %struct.iproc_gpio** %8, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @iproc_gpio_get_pull(%struct.iproc_gpio* %42, i32 %43, i32* %12, i32* %13)
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %83

51:                                               ; preds = %47, %41
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %83

54:                                               ; preds = %29
  %55 = load %struct.iproc_gpio*, %struct.iproc_gpio** %8, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @iproc_gpio_get_pull(%struct.iproc_gpio* %55, i32 %56, i32* %12, i32* %13)
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %54
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  br label %83

64:                                               ; preds = %60, %54
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %83

67:                                               ; preds = %29
  %68 = load %struct.iproc_gpio*, %struct.iproc_gpio** %8, align 8
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @iproc_gpio_get_strength(%struct.iproc_gpio* %68, i32 %69, i32* %11)
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* %14, align 4
  store i32 %74, i32* %4, align 4
  br label %83

75:                                               ; preds = %67
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %11, align 4
  %78 = call i64 @pinconf_to_config_packed(i32 %76, i32 %77)
  %79 = load i64*, i64** %7, align 8
  store i64 %78, i64* %79, align 8
  store i32 0, i32* %4, align 4
  br label %83

80:                                               ; preds = %29
  %81 = load i32, i32* @ENOTSUPP, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %80, %75, %73, %64, %63, %51, %50, %38, %37, %26
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local %struct.iproc_gpio* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @iproc_pin_to_gpio(i32) #1

declare dso_local i64 @iproc_pinconf_param_is_disabled(%struct.iproc_gpio*, i32) #1

declare dso_local i32 @iproc_gpio_get_pull(%struct.iproc_gpio*, i32, i32*, i32*) #1

declare dso_local i32 @iproc_gpio_get_strength(%struct.iproc_gpio*, i32, i32*) #1

declare dso_local i64 @pinconf_to_config_packed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
