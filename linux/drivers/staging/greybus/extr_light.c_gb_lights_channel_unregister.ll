; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_light.c_gb_lights_channel_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_light.c_gb_lights_channel_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_channel = type { i32 }

@GB_CHANNEL_MODE_TORCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gb_channel*)* @gb_lights_channel_unregister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gb_lights_channel_unregister(%struct.gb_channel* %0) #0 {
  %2 = alloca %struct.gb_channel*, align 8
  store %struct.gb_channel* %0, %struct.gb_channel** %2, align 8
  %3 = load %struct.gb_channel*, %struct.gb_channel** %2, align 8
  %4 = call i32 @is_channel_flash(%struct.gb_channel* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load %struct.gb_channel*, %struct.gb_channel** %2, align 8
  %8 = call i32 @__gb_lights_led_unregister(%struct.gb_channel* %7)
  br label %22

9:                                                ; preds = %1
  %10 = load %struct.gb_channel*, %struct.gb_channel** %2, align 8
  %11 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @GB_CHANNEL_MODE_TORCH, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = load %struct.gb_channel*, %struct.gb_channel** %2, align 8
  %18 = call i32 @__gb_lights_led_unregister(%struct.gb_channel* %17)
  br label %22

19:                                               ; preds = %9
  %20 = load %struct.gb_channel*, %struct.gb_channel** %2, align 8
  %21 = call i32 @__gb_lights_flash_led_unregister(%struct.gb_channel* %20)
  br label %22

22:                                               ; preds = %6, %19, %16
  ret void
}

declare dso_local i32 @is_channel_flash(%struct.gb_channel*) #1

declare dso_local i32 @__gb_lights_led_unregister(%struct.gb_channel*) #1

declare dso_local i32 @__gb_lights_flash_led_unregister(%struct.gb_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
