; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_gpio_backlight.c_gpio_backlight_probe_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_gpio_backlight.c_gpio_backlight_probe_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.gpio_backlight = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"default-on\00", align 1
@GPIOD_ASIS = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Error: The gpios parameter is missing or invalid.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.gpio_backlight*)* @gpio_backlight_probe_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_backlight_probe_dt(%struct.platform_device* %0, %struct.gpio_backlight* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.gpio_backlight*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.gpio_backlight* %1, %struct.gpio_backlight** %5, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %6, align 8
  %10 = load %struct.device*, %struct.device** %6, align 8
  %11 = call i32 @device_property_read_bool(%struct.device* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.gpio_backlight*, %struct.gpio_backlight** %5, align 8
  %13 = getelementptr inbounds %struct.gpio_backlight, %struct.gpio_backlight* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = load i32, i32* @GPIOD_ASIS, align 4
  %16 = call i32 @devm_gpiod_get(%struct.device* %14, i32* null, i32 %15)
  %17 = load %struct.gpio_backlight*, %struct.gpio_backlight** %5, align 8
  %18 = getelementptr inbounds %struct.gpio_backlight, %struct.gpio_backlight* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.gpio_backlight*, %struct.gpio_backlight** %5, align 8
  %20 = getelementptr inbounds %struct.gpio_backlight, %struct.gpio_backlight* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @IS_ERR(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %2
  %25 = load %struct.gpio_backlight*, %struct.gpio_backlight** %5, align 8
  %26 = getelementptr inbounds %struct.gpio_backlight, %struct.gpio_backlight* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @PTR_ERR(i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @EPROBE_DEFER, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp ne i32 %29, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load %struct.device*, %struct.device** %6, align 8
  %35 = call i32 @dev_err(%struct.device* %34, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %24
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  br label %39

38:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %36
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @device_property_read_bool(%struct.device*, i8*) #1

declare dso_local i32 @devm_gpiod_get(%struct.device*, i32*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
