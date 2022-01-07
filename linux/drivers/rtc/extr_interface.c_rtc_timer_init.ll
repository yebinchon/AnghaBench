; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_interface.c_rtc_timer_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_interface.c_rtc_timer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_timer = type { void (%struct.rtc_device*)*, %struct.rtc_device.0*, i64, i32 }
%struct.rtc_device = type opaque
%struct.rtc_device.0 = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtc_timer_init(%struct.rtc_timer* %0, void (%struct.rtc_device.0*)* %1, %struct.rtc_device.0* %2) #0 {
  %4 = alloca %struct.rtc_timer*, align 8
  %5 = alloca void (%struct.rtc_device.0*)*, align 8
  %6 = alloca %struct.rtc_device.0*, align 8
  store %struct.rtc_timer* %0, %struct.rtc_timer** %4, align 8
  store void (%struct.rtc_device.0*)* %1, void (%struct.rtc_device.0*)** %5, align 8
  store %struct.rtc_device.0* %2, %struct.rtc_device.0** %6, align 8
  %7 = load %struct.rtc_timer*, %struct.rtc_timer** %4, align 8
  %8 = getelementptr inbounds %struct.rtc_timer, %struct.rtc_timer* %7, i32 0, i32 3
  %9 = call i32 @timerqueue_init(i32* %8)
  %10 = load %struct.rtc_timer*, %struct.rtc_timer** %4, align 8
  %11 = getelementptr inbounds %struct.rtc_timer, %struct.rtc_timer* %10, i32 0, i32 2
  store i64 0, i64* %11, align 8
  %12 = load void (%struct.rtc_device.0*)*, void (%struct.rtc_device.0*)** %5, align 8
  %13 = bitcast void (%struct.rtc_device.0*)* %12 to void (%struct.rtc_device*)*
  %14 = load %struct.rtc_timer*, %struct.rtc_timer** %4, align 8
  %15 = getelementptr inbounds %struct.rtc_timer, %struct.rtc_timer* %14, i32 0, i32 0
  store void (%struct.rtc_device*)* %13, void (%struct.rtc_device*)** %15, align 8
  %16 = load %struct.rtc_device.0*, %struct.rtc_device.0** %6, align 8
  %17 = load %struct.rtc_timer*, %struct.rtc_timer** %4, align 8
  %18 = getelementptr inbounds %struct.rtc_timer, %struct.rtc_timer* %17, i32 0, i32 1
  store %struct.rtc_device.0* %16, %struct.rtc_device.0** %18, align 8
  ret void
}

declare dso_local i32 @timerqueue_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
