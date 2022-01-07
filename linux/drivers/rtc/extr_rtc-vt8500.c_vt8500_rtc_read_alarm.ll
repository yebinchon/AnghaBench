; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-vt8500.c_vt8500_rtc_read_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-vt8500.c_vt8500_rtc_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8* }
%struct.vt8500_rtc = type { i64 }

@VT8500_RTC_AS = common dso_local global i64 0, align 8
@VT8500_RTC_IS = common dso_local global i64 0, align 8
@ALARM_DAY_MASK = common dso_local global i32 0, align 4
@ALARM_DAY_S = common dso_local global i32 0, align 4
@TIME_HOUR_MASK = common dso_local global i32 0, align 4
@TIME_HOUR_S = common dso_local global i32 0, align 4
@TIME_MIN_MASK = common dso_local global i32 0, align 4
@TIME_MIN_S = common dso_local global i32 0, align 4
@TIME_SEC_MASK = common dso_local global i32 0, align 4
@ALARM_ENABLE_MASK = common dso_local global i32 0, align 4
@VT8500_RTC_IS_ALARM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @vt8500_rtc_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vt8500_rtc_read_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_wkalrm*, align 8
  %5 = alloca %struct.vt8500_rtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %4, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.vt8500_rtc* @dev_get_drvdata(%struct.device* %8)
  store %struct.vt8500_rtc* %9, %struct.vt8500_rtc** %5, align 8
  %10 = load %struct.vt8500_rtc*, %struct.vt8500_rtc** %5, align 8
  %11 = getelementptr inbounds %struct.vt8500_rtc, %struct.vt8500_rtc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @VT8500_RTC_AS, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl(i64 %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.vt8500_rtc*, %struct.vt8500_rtc** %5, align 8
  %17 = getelementptr inbounds %struct.vt8500_rtc, %struct.vt8500_rtc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @VT8500_RTC_IS, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readl(i64 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @ALARM_DAY_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @ALARM_DAY_S, align 4
  %26 = ashr i32 %24, %25
  %27 = call i8* @bcd2bin(i32 %26)
  %28 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %29 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  store i8* %27, i8** %30, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @TIME_HOUR_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @TIME_HOUR_S, align 4
  %35 = ashr i32 %33, %34
  %36 = call i8* @bcd2bin(i32 %35)
  %37 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %38 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  store i8* %36, i8** %39, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @TIME_MIN_MASK, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* @TIME_MIN_S, align 4
  %44 = ashr i32 %42, %43
  %45 = call i8* @bcd2bin(i32 %44)
  %46 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %47 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store i8* %45, i8** %48, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @TIME_SEC_MASK, align 4
  %51 = and i32 %49, %50
  %52 = call i8* @bcd2bin(i32 %51)
  %53 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %54 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i8* %52, i8** %55, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @ALARM_ENABLE_MASK, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 1, i32 0
  %62 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %63 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @VT8500_RTC_IS_ALARM, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 1, i32 0
  %70 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %71 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %73 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %72, i32 0, i32 2
  %74 = call i32 @rtc_valid_tm(%struct.TYPE_2__* %73)
  ret i32 %74
}

declare dso_local %struct.vt8500_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i8* @bcd2bin(i32) #1

declare dso_local i32 @rtc_valid_tm(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
