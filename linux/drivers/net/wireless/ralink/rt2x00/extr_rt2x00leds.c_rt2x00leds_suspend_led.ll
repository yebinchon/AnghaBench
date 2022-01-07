; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00leds.c_rt2x00leds_suspend_led.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00leds.c_rt2x00leds_suspend_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_led = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 (%struct.TYPE_3__*, i32)* }

@LED_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_led*)* @rt2x00leds_suspend_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2x00leds_suspend_led(%struct.rt2x00_led* %0) #0 {
  %2 = alloca %struct.rt2x00_led*, align 8
  store %struct.rt2x00_led* %0, %struct.rt2x00_led** %2, align 8
  %3 = load %struct.rt2x00_led*, %struct.rt2x00_led** %2, align 8
  %4 = getelementptr inbounds %struct.rt2x00_led, %struct.rt2x00_led* %3, i32 0, i32 0
  %5 = call i32 @led_classdev_suspend(%struct.TYPE_3__* %4)
  %6 = load %struct.rt2x00_led*, %struct.rt2x00_led** %2, align 8
  %7 = getelementptr inbounds %struct.rt2x00_led, %struct.rt2x00_led* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load i32 (%struct.TYPE_3__*, i32)*, i32 (%struct.TYPE_3__*, i32)** %8, align 8
  %10 = load %struct.rt2x00_led*, %struct.rt2x00_led** %2, align 8
  %11 = getelementptr inbounds %struct.rt2x00_led, %struct.rt2x00_led* %10, i32 0, i32 0
  %12 = load i32, i32* @LED_OFF, align 4
  %13 = call i32 %9(%struct.TYPE_3__* %11, i32 %12)
  %14 = load i32, i32* @LED_OFF, align 4
  %15 = load %struct.rt2x00_led*, %struct.rt2x00_led** %2, align 8
  %16 = getelementptr inbounds %struct.rt2x00_led, %struct.rt2x00_led* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 8
  ret void
}

declare dso_local i32 @led_classdev_suspend(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
