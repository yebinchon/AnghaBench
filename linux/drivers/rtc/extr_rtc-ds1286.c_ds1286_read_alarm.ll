; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1286.c_ds1286_read_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1286.c_ds1286_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i64 }
%struct.ds1286_priv = type { i32 }

@RTC_MINUTES_ALARM = common dso_local global i32 0, align 4
@RTC_HOURS_ALARM = common dso_local global i32 0, align 4
@RTC_DAY_ALARM = common dso_local global i32 0, align 4
@RTC_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @ds1286_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1286_read_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_wkalrm*, align 8
  %5 = alloca %struct.ds1286_priv*, align 8
  %6 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %4, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.ds1286_priv* @dev_get_drvdata(%struct.device* %7)
  store %struct.ds1286_priv* %8, %struct.ds1286_priv** %5, align 8
  %9 = load %struct.ds1286_priv*, %struct.ds1286_priv** %5, align 8
  %10 = getelementptr inbounds %struct.ds1286_priv, %struct.ds1286_priv* %9, i32 0, i32 0
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.ds1286_priv*, %struct.ds1286_priv** %5, align 8
  %14 = load i32, i32* @RTC_MINUTES_ALARM, align 4
  %15 = call i32 @ds1286_rtc_read(%struct.ds1286_priv* %13, i32 %14)
  %16 = and i32 %15, 127
  %17 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %18 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 8
  %20 = load %struct.ds1286_priv*, %struct.ds1286_priv** %5, align 8
  %21 = load i32, i32* @RTC_HOURS_ALARM, align 4
  %22 = call i32 @ds1286_rtc_read(%struct.ds1286_priv* %20, i32 %21)
  %23 = and i32 %22, 31
  %24 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %25 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 4
  %27 = load %struct.ds1286_priv*, %struct.ds1286_priv** %5, align 8
  %28 = load i32, i32* @RTC_DAY_ALARM, align 4
  %29 = call i32 @ds1286_rtc_read(%struct.ds1286_priv* %27, i32 %28)
  %30 = and i32 %29, 7
  %31 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %32 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  store i32 %30, i32* %33, align 8
  %34 = load %struct.ds1286_priv*, %struct.ds1286_priv** %5, align 8
  %35 = load i32, i32* @RTC_CMD, align 4
  %36 = call i32 @ds1286_rtc_read(%struct.ds1286_priv* %34, i32 %35)
  %37 = load %struct.ds1286_priv*, %struct.ds1286_priv** %5, align 8
  %38 = getelementptr inbounds %struct.ds1286_priv, %struct.ds1286_priv* %37, i32 0, i32 0
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  %41 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %42 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i8* @bcd2bin(i32 %44)
  %46 = ptrtoint i8* %45 to i32
  %47 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %48 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  %50 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %51 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @bcd2bin(i32 %53)
  %55 = ptrtoint i8* %54 to i32
  %56 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %57 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  %59 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %60 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 3
  store i64 0, i64* %61, align 8
  ret i32 0
}

declare dso_local %struct.ds1286_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ds1286_rtc_read(%struct.ds1286_priv*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i8* @bcd2bin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
