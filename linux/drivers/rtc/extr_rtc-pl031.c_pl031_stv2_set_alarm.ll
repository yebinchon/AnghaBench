; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pl031.c_pl031_stv2_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pl031.c_pl031_stv2_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i32 }
%struct.pl031_local = type { i64 }

@RTC_YMR = common dso_local global i64 0, align 8
@RTC_MR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @pl031_stv2_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl031_stv2_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_wkalrm*, align 8
  %5 = alloca %struct.pl031_local*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %4, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.pl031_local* @dev_get_drvdata(%struct.device* %9)
  store %struct.pl031_local* %10, %struct.pl031_local** %5, align 8
  %11 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %12 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %11, i32 0, i32 1
  %13 = call i32 @rtc_valid_tm(i32* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %44

16:                                               ; preds = %2
  %17 = load %struct.device*, %struct.device** %3, align 8
  %18 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %19 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %18, i32 0, i32 1
  %20 = call i32 @pl031_stv2_tm_to_time(%struct.device* %17, i32* %19, i64* %6, i64* %7)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %16
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.pl031_local*, %struct.pl031_local** %5, align 8
  %26 = getelementptr inbounds %struct.pl031_local, %struct.pl031_local* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @RTC_YMR, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel(i64 %24, i64 %29)
  %31 = load i64, i64* %6, align 8
  %32 = load %struct.pl031_local*, %struct.pl031_local** %5, align 8
  %33 = getelementptr inbounds %struct.pl031_local, %struct.pl031_local* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @RTC_MR, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writel(i64 %31, i64 %36)
  %38 = load %struct.device*, %struct.device** %3, align 8
  %39 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %40 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @pl031_alarm_irq_enable(%struct.device* %38, i32 %41)
  br label %43

43:                                               ; preds = %23, %16
  br label %44

44:                                               ; preds = %43, %2
  %45 = load i32, i32* %8, align 4
  ret i32 %45
}

declare dso_local %struct.pl031_local* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @rtc_valid_tm(i32*) #1

declare dso_local i32 @pl031_stv2_tm_to_time(%struct.device*, i32*, i64*, i64*) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @pl031_alarm_irq_enable(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
