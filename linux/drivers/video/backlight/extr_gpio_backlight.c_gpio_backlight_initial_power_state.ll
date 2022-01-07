; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_gpio_backlight.c_gpio_backlight_initial_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_gpio_backlight.c_gpio_backlight_initial_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_backlight = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@FB_BLANK_POWERDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_backlight*)* @gpio_backlight_initial_power_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_backlight_initial_power_state(%struct.gpio_backlight* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gpio_backlight*, align 8
  %4 = alloca %struct.device_node*, align 8
  store %struct.gpio_backlight* %0, %struct.gpio_backlight** %3, align 8
  %5 = load %struct.gpio_backlight*, %struct.gpio_backlight** %3, align 8
  %6 = getelementptr inbounds %struct.gpio_backlight, %struct.gpio_backlight* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.device_node*, %struct.device_node** %8, align 8
  store %struct.device_node* %9, %struct.device_node** %4, align 8
  %10 = load %struct.device_node*, %struct.device_node** %4, align 8
  %11 = icmp ne %struct.device_node* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.device_node*, %struct.device_node** %4, align 8
  %14 = getelementptr inbounds %struct.device_node, %struct.device_node* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %12, %1
  %18 = load %struct.gpio_backlight*, %struct.gpio_backlight** %3, align 8
  %19 = getelementptr inbounds %struct.gpio_backlight, %struct.gpio_backlight* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  br label %26

24:                                               ; preds = %17
  %25 = load i32, i32* @FB_BLANK_POWERDOWN, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  store i32 %27, i32* %2, align 4
  br label %38

28:                                               ; preds = %12
  %29 = load %struct.gpio_backlight*, %struct.gpio_backlight** %3, align 8
  %30 = getelementptr inbounds %struct.gpio_backlight, %struct.gpio_backlight* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @gpiod_get_value_cansleep(i32 %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @FB_BLANK_POWERDOWN, align 4
  store i32 %35, i32* %2, align 4
  br label %38

36:                                               ; preds = %28
  %37 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %36, %34, %26
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i64 @gpiod_get_value_cansleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
