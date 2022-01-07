; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_light.c_gb_lights_led_operations_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_light.c_gb_lights_led_operations_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_channel = type { i32 }
%struct.led_classdev = type { i32, i32, i32 }

@gb_brightness_get = common dso_local global i32 0, align 4
@gb_brightness_set = common dso_local global i32 0, align 4
@GB_LIGHT_CHANNEL_BLINK = common dso_local global i32 0, align 4
@gb_blink_set = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gb_channel*, %struct.led_classdev*)* @gb_lights_led_operations_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gb_lights_led_operations_set(%struct.gb_channel* %0, %struct.led_classdev* %1) #0 {
  %3 = alloca %struct.gb_channel*, align 8
  %4 = alloca %struct.led_classdev*, align 8
  store %struct.gb_channel* %0, %struct.gb_channel** %3, align 8
  store %struct.led_classdev* %1, %struct.led_classdev** %4, align 8
  %5 = load i32, i32* @gb_brightness_get, align 4
  %6 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %7 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %6, i32 0, i32 2
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* @gb_brightness_set, align 4
  %9 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %10 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = load %struct.gb_channel*, %struct.gb_channel** %3, align 8
  %12 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @GB_LIGHT_CHANNEL_BLINK, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @gb_blink_set, align 4
  %19 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %20 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  br label %21

21:                                               ; preds = %17, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
