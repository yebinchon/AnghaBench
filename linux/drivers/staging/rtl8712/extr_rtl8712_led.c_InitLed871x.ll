; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_led.c_InitLed871x.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_led.c_InitLed871x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { i32 }
%struct.LED_871x = type { i32, i32, i32, i32, i32, i32, i64, i32, %struct._adapter* }

@LED_STATE_OFF = common dso_local global i32 0, align 4
@LED_UNKNOWN = common dso_local global i32 0, align 4
@BlinkTimerCallback = common dso_local global i32 0, align 4
@BlinkWorkItemCallback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct._adapter*, %struct.LED_871x*, i32)* @InitLed871x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @InitLed871x(%struct._adapter* %0, %struct.LED_871x* %1, i32 %2) #0 {
  %4 = alloca %struct._adapter*, align 8
  %5 = alloca %struct.LED_871x*, align 8
  %6 = alloca i32, align 4
  store %struct._adapter* %0, %struct._adapter** %4, align 8
  store %struct.LED_871x* %1, %struct.LED_871x** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct._adapter*, %struct._adapter** %4, align 8
  %8 = load %struct.LED_871x*, %struct.LED_871x** %5, align 8
  %9 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %8, i32 0, i32 8
  store %struct._adapter* %7, %struct._adapter** %9, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.LED_871x*, %struct.LED_871x** %5, align 8
  %12 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* @LED_STATE_OFF, align 4
  %14 = load %struct.LED_871x*, %struct.LED_871x** %5, align 8
  %15 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %14, i32 0, i32 7
  store i32 %13, i32* %15, align 8
  %16 = load %struct.LED_871x*, %struct.LED_871x** %5, align 8
  %17 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %16, i32 0, i32 1
  store i32 0, i32* %17, align 4
  %18 = load %struct.LED_871x*, %struct.LED_871x** %5, align 8
  %19 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %18, i32 0, i32 2
  store i32 0, i32* %19, align 8
  %20 = load %struct.LED_871x*, %struct.LED_871x** %5, align 8
  %21 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %20, i32 0, i32 6
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* @LED_UNKNOWN, align 4
  %23 = load %struct.LED_871x*, %struct.LED_871x** %5, align 8
  %24 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 4
  %25 = load %struct.LED_871x*, %struct.LED_871x** %5, align 8
  %26 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %25, i32 0, i32 4
  %27 = load i32, i32* @BlinkTimerCallback, align 4
  %28 = call i32 @timer_setup(i32* %26, i32 %27, i32 0)
  %29 = load %struct.LED_871x*, %struct.LED_871x** %5, align 8
  %30 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %29, i32 0, i32 3
  %31 = load i32, i32* @BlinkWorkItemCallback, align 4
  %32 = call i32 @INIT_WORK(i32* %30, i32 %31)
  ret void
}

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
