; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_led.c_ResetLedStatus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_led.c_ResetLedStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LED_871x = type { i32, i32, i32, i32, i32, i32, i32, i64, i32 }

@RTW_LED_OFF = common dso_local global i32 0, align 4
@LED_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ResetLedStatus(%struct.LED_871x* %0) #0 {
  %2 = alloca %struct.LED_871x*, align 8
  store %struct.LED_871x* %0, %struct.LED_871x** %2, align 8
  %3 = load i32, i32* @RTW_LED_OFF, align 4
  %4 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %5 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %4, i32 0, i32 8
  store i32 %3, i32* %5, align 8
  %6 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %7 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %6, i32 0, i32 0
  store i32 0, i32* %7, align 8
  %8 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %9 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %8, i32 0, i32 1
  store i32 0, i32* %9, align 4
  %10 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %11 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %10, i32 0, i32 2
  store i32 0, i32* %11, align 8
  %12 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %13 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %12, i32 0, i32 7
  store i64 0, i64* %13, align 8
  %14 = load i32, i32* @LED_UNKNOWN, align 4
  %15 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %16 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %15, i32 0, i32 6
  store i32 %14, i32* %16, align 8
  %17 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %18 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %17, i32 0, i32 3
  store i32 0, i32* %18, align 4
  %19 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %20 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %19, i32 0, i32 4
  store i32 0, i32* %20, align 8
  %21 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %22 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %21, i32 0, i32 5
  store i32 0, i32* %22, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
