; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-armada38x.c_armada38x_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-armada38x.c_armada38x_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }
%struct.armada38x_rtc = type { i32, i32 }

@RTC_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @armada38x_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armada38x_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.armada38x_rtc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.armada38x_rtc* @dev_get_drvdata(%struct.device* %8)
  store %struct.armada38x_rtc* %9, %struct.armada38x_rtc** %5, align 8
  %10 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %11 = call i64 @rtc_tm_to_time64(%struct.rtc_time* %10)
  store i64 %11, i64* %6, align 8
  %12 = load %struct.armada38x_rtc*, %struct.armada38x_rtc** %5, align 8
  %13 = getelementptr inbounds %struct.armada38x_rtc, %struct.armada38x_rtc* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load %struct.armada38x_rtc*, %struct.armada38x_rtc** %5, align 8
  %18 = call i32 @armada38x_rtc_reset(%struct.armada38x_rtc* %17)
  br label %19

19:                                               ; preds = %16, %2
  %20 = load %struct.armada38x_rtc*, %struct.armada38x_rtc** %5, align 8
  %21 = getelementptr inbounds %struct.armada38x_rtc, %struct.armada38x_rtc* %20, i32 0, i32 0
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.armada38x_rtc*, %struct.armada38x_rtc** %5, align 8
  %26 = load i32, i32* @RTC_TIME, align 4
  %27 = call i32 @rtc_delayed_write(i64 %24, %struct.armada38x_rtc* %25, i32 %26)
  %28 = load %struct.armada38x_rtc*, %struct.armada38x_rtc** %5, align 8
  %29 = getelementptr inbounds %struct.armada38x_rtc, %struct.armada38x_rtc* %28, i32 0, i32 0
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  ret i32 0
}

declare dso_local %struct.armada38x_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @rtc_tm_to_time64(%struct.rtc_time*) #1

declare dso_local i32 @armada38x_rtc_reset(%struct.armada38x_rtc*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @rtc_delayed_write(i64, %struct.armada38x_rtc*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
