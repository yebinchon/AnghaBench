; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-st-lpc.c_st_rtc_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-st-lpc.c_st_rtc_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, %struct.rtc_time }
%struct.rtc_time = type { i32 }
%struct.st_rtc = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @st_rtc_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_rtc_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_wkalrm*, align 8
  %5 = alloca %struct.st_rtc*, align 8
  %6 = alloca %struct.rtc_time, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %4, align 8
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call %struct.st_rtc* @dev_get_drvdata(%struct.device* %10)
  store %struct.st_rtc* %11, %struct.st_rtc** %5, align 8
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = call i32 @st_rtc_read_time(%struct.device* %12, %struct.rtc_time* %6)
  %14 = call i64 @rtc_tm_to_time64(%struct.rtc_time* %6)
  store i64 %14, i64* %7, align 8
  %15 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %16 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %15, i32 0, i32 1
  %17 = call i64 @rtc_tm_to_time64(%struct.rtc_time* %16)
  store i64 %17, i64* %8, align 8
  %18 = load %struct.st_rtc*, %struct.st_rtc** %5, align 8
  %19 = getelementptr inbounds %struct.st_rtc, %struct.st_rtc* %18, i32 0, i32 1
  %20 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %21 = call i32 @memcpy(i32* %19, %struct.rtc_wkalrm* %20, i32 8)
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = sub i64 %23, %22
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.st_rtc*, %struct.st_rtc** %5, align 8
  %27 = getelementptr inbounds %struct.st_rtc, %struct.st_rtc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = mul i64 %25, %28
  store i64 %29, i64* %9, align 8
  %30 = load %struct.st_rtc*, %struct.st_rtc** %5, align 8
  %31 = load i64, i64* %9, align 8
  %32 = lshr i64 %31, 32
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @st_rtc_set_hw_alarm(%struct.st_rtc* %30, i64 %32, i64 %33)
  %35 = load %struct.device*, %struct.device** %3, align 8
  %36 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %37 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @st_rtc_alarm_irq_enable(%struct.device* %35, i32 %38)
  ret i32 0
}

declare dso_local %struct.st_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @st_rtc_read_time(%struct.device*, %struct.rtc_time*) #1

declare dso_local i64 @rtc_tm_to_time64(%struct.rtc_time*) #1

declare dso_local i32 @memcpy(i32*, %struct.rtc_wkalrm*, i32) #1

declare dso_local i32 @st_rtc_set_hw_alarm(%struct.st_rtc*, i64, i64) #1

declare dso_local i32 @st_rtc_alarm_irq_enable(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
