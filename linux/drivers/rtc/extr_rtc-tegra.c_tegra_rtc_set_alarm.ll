; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-tegra.c_tegra_rtc_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-tegra.c_tegra_rtc_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i64 }
%struct.tegra_rtc_info = type { i64 }

@TEGRA_RTC_REG_SECONDS_ALARM0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"alarm read back as %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"alarm set as %u, %ptR\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"alarm disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @tegra_rtc_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_rtc_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_wkalrm*, align 8
  %5 = alloca %struct.tegra_rtc_info*, align 8
  %6 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %4, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.tegra_rtc_info* @dev_get_drvdata(%struct.device* %7)
  store %struct.tegra_rtc_info* %8, %struct.tegra_rtc_info** %5, align 8
  %9 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %10 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %15 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %14, i32 0, i32 0
  %16 = call i64 @rtc_tm_to_time64(i32* %15)
  store i64 %16, i64* %6, align 8
  br label %18

17:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  br label %18

18:                                               ; preds = %17, %13
  %19 = load %struct.device*, %struct.device** %3, align 8
  %20 = call i32 @tegra_rtc_wait_while_busy(%struct.device* %19)
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.tegra_rtc_info*, %struct.tegra_rtc_info** %5, align 8
  %23 = getelementptr inbounds %struct.tegra_rtc_info, %struct.tegra_rtc_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @TEGRA_RTC_REG_SECONDS_ALARM0, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel(i64 %21, i64 %26)
  %28 = load %struct.device*, %struct.device** %3, align 8
  %29 = load %struct.tegra_rtc_info*, %struct.tegra_rtc_info** %5, align 8
  %30 = getelementptr inbounds %struct.tegra_rtc_info, %struct.tegra_rtc_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @TEGRA_RTC_REG_SECONDS_ALARM0, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @readl(i64 %33)
  %35 = call i32 (%struct.device*, i8*, ...) @dev_vdbg(%struct.device* %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i64, i64* %6, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %18
  %39 = load %struct.device*, %struct.device** %3, align 8
  %40 = call i32 @tegra_rtc_alarm_irq_enable(%struct.device* %39, i32 1)
  %41 = load %struct.device*, %struct.device** %3, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %44 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %43, i32 0, i32 0
  %45 = call i32 (%struct.device*, i8*, ...) @dev_vdbg(%struct.device* %41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %42, i32* %44)
  br label %51

46:                                               ; preds = %18
  %47 = load %struct.device*, %struct.device** %3, align 8
  %48 = call i32 (%struct.device*, i8*, ...) @dev_vdbg(%struct.device* %47, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %49 = load %struct.device*, %struct.device** %3, align 8
  %50 = call i32 @tegra_rtc_alarm_irq_enable(%struct.device* %49, i32 0)
  br label %51

51:                                               ; preds = %46, %38
  ret i32 0
}

declare dso_local %struct.tegra_rtc_info* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @rtc_tm_to_time64(i32*) #1

declare dso_local i32 @tegra_rtc_wait_while_busy(%struct.device*) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @dev_vdbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @tegra_rtc_alarm_irq_enable(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
