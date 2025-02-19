; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_light.c___gb_lights_brightness_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_light.c___gb_lights_brightness_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_channel = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_channel*)* @__gb_lights_brightness_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__gb_lights_brightness_set(%struct.gb_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_channel*, align 8
  %4 = alloca i32, align 4
  store %struct.gb_channel* %0, %struct.gb_channel** %3, align 8
  %5 = load %struct.gb_channel*, %struct.gb_channel** %3, align 8
  %6 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %22

10:                                               ; preds = %1
  %11 = load %struct.gb_channel*, %struct.gb_channel** %3, align 8
  %12 = call i64 @is_channel_flash(%struct.gb_channel* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load %struct.gb_channel*, %struct.gb_channel** %3, align 8
  %16 = call i32 @__gb_lights_flash_brightness_set(%struct.gb_channel* %15)
  store i32 %16, i32* %4, align 4
  br label %20

17:                                               ; preds = %10
  %18 = load %struct.gb_channel*, %struct.gb_channel** %3, align 8
  %19 = call i32 @__gb_lights_led_brightness_set(%struct.gb_channel* %18)
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %20, %9
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i64 @is_channel_flash(%struct.gb_channel*) #1

declare dso_local i32 @__gb_lights_flash_brightness_set(%struct.gb_channel*) #1

declare dso_local i32 @__gb_lights_led_brightness_set(%struct.gb_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
