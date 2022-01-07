; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-tegra.c_tegra_rtc_read_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-tegra.c_tegra_rtc_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i32, i32 }
%struct.tegra_rtc_info = type { i64 }

@TEGRA_RTC_REG_SECONDS_ALARM0 = common dso_local global i64 0, align 8
@TEGRA_RTC_REG_INTR_STATUS = common dso_local global i64 0, align 8
@TEGRA_RTC_INTR_STATUS_SEC_ALARM0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @tegra_rtc_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_rtc_read_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_wkalrm*, align 8
  %5 = alloca %struct.tegra_rtc_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %4, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.tegra_rtc_info* @dev_get_drvdata(%struct.device* %8)
  store %struct.tegra_rtc_info* %9, %struct.tegra_rtc_info** %5, align 8
  %10 = load %struct.tegra_rtc_info*, %struct.tegra_rtc_info** %5, align 8
  %11 = getelementptr inbounds %struct.tegra_rtc_info, %struct.tegra_rtc_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TEGRA_RTC_REG_SECONDS_ALARM0, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i64 @readl(i64 %14)
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %20 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %19, i32 0, i32 0
  store i32 0, i32* %20, align 4
  br label %28

21:                                               ; preds = %2
  %22 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %23 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %26 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %25, i32 0, i32 2
  %27 = call i32 @rtc_time64_to_tm(i64 %24, i32* %26)
  br label %28

28:                                               ; preds = %21, %18
  %29 = load %struct.tegra_rtc_info*, %struct.tegra_rtc_info** %5, align 8
  %30 = getelementptr inbounds %struct.tegra_rtc_info, %struct.tegra_rtc_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @TEGRA_RTC_REG_INTR_STATUS, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i64 @readl(i64 %33)
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* @TEGRA_RTC_INTR_STATUS_SEC_ALARM0, align 8
  %37 = and i64 %35, %36
  %38 = icmp ne i64 %37, 0
  %39 = zext i1 %38 to i32
  %40 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %41 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  ret i32 0
}

declare dso_local %struct.tegra_rtc_info* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @rtc_time64_to_tm(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
