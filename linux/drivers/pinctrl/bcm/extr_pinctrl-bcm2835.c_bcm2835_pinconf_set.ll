; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-bcm2835.c_bcm2835_pinconf_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-bcm2835.c_bcm2835_pinconf_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.bcm2835_pinctrl = type { i32 }

@BCM2835_PUD_OFF = common dso_local global i32 0, align 4
@BCM2835_PUD_DOWN = common dso_local global i32 0, align 4
@BCM2835_PUD_UP = common dso_local global i32 0, align 4
@GPSET0 = common dso_local global i32 0, align 4
@GPCLR0 = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*, i32)* @bcm2835_pinconf_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_pinconf_set(%struct.pinctrl_dev* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bcm2835_pinctrl*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %15 = call %struct.bcm2835_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %14)
  store %struct.bcm2835_pinctrl* %15, %struct.bcm2835_pinctrl** %10, align 8
  store i32 0, i32* %13, align 4
  br label %16

16:                                               ; preds = %70, %4
  %17 = load i32, i32* %13, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %73

20:                                               ; preds = %16
  %21 = load i64*, i64** %8, align 8
  %22 = load i32, i32* %13, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @pinconf_to_config_param(i64 %25)
  store i32 %26, i32* %11, align 4
  %27 = load i64*, i64** %8, align 8
  %28 = load i32, i32* %13, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @pinconf_to_config_argument(i64 %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %11, align 4
  switch i32 %33, label %66 [
    i32 132, label %34
    i32 131, label %39
    i32 130, label %44
    i32 129, label %49
    i32 128, label %54
  ]

34:                                               ; preds = %20
  %35 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %10, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @bcm2835_pull_config_set(%struct.bcm2835_pinctrl* %35, i32 %36, i32 %37)
  br label %69

39:                                               ; preds = %20
  %40 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %10, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @BCM2835_PUD_OFF, align 4
  %43 = call i32 @bcm2835_pull_config_set(%struct.bcm2835_pinctrl* %40, i32 %41, i32 %42)
  br label %69

44:                                               ; preds = %20
  %45 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %10, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @BCM2835_PUD_DOWN, align 4
  %48 = call i32 @bcm2835_pull_config_set(%struct.bcm2835_pinctrl* %45, i32 %46, i32 %47)
  br label %69

49:                                               ; preds = %20
  %50 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %10, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @BCM2835_PUD_UP, align 4
  %53 = call i32 @bcm2835_pull_config_set(%struct.bcm2835_pinctrl* %50, i32 %51, i32 %52)
  br label %69

54:                                               ; preds = %20
  %55 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %10, align 8
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* @GPSET0, align 4
  br label %62

60:                                               ; preds = %54
  %61 = load i32, i32* @GPCLR0, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @bcm2835_gpio_set_bit(%struct.bcm2835_pinctrl* %55, i32 %63, i32 %64)
  br label %69

66:                                               ; preds = %20
  %67 = load i32, i32* @ENOTSUPP, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %5, align 4
  br label %74

69:                                               ; preds = %62, %49, %44, %39, %34
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %13, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %13, align 4
  br label %16

73:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %73, %66
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local %struct.bcm2835_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @pinconf_to_config_argument(i64) #1

declare dso_local i32 @bcm2835_pull_config_set(%struct.bcm2835_pinctrl*, i32, i32) #1

declare dso_local i32 @bcm2835_gpio_set_bit(%struct.bcm2835_pinctrl*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
