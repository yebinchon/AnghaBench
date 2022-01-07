; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-tegra.c_tegra_rtc_read_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-tegra.c_tegra_rtc_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }
%struct.tegra_rtc_info = type { i32, i64 }

@TEGRA_RTC_REG_MILLI_SECONDS = common dso_local global i64 0, align 8
@TEGRA_RTC_REG_SHADOW_SECONDS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"time read as %u, %ptR\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @tegra_rtc_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_rtc_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.tegra_rtc_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.tegra_rtc_info* @dev_get_drvdata(%struct.device* %9)
  store %struct.tegra_rtc_info* %10, %struct.tegra_rtc_info** %5, align 8
  %11 = load %struct.tegra_rtc_info*, %struct.tegra_rtc_info** %5, align 8
  %12 = getelementptr inbounds %struct.tegra_rtc_info, %struct.tegra_rtc_info* %11, i32 0, i32 0
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.tegra_rtc_info*, %struct.tegra_rtc_info** %5, align 8
  %16 = getelementptr inbounds %struct.tegra_rtc_info, %struct.tegra_rtc_info* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TEGRA_RTC_REG_MILLI_SECONDS, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl(i64 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.tegra_rtc_info*, %struct.tegra_rtc_info** %5, align 8
  %22 = getelementptr inbounds %struct.tegra_rtc_info, %struct.tegra_rtc_info* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TEGRA_RTC_REG_SHADOW_SECONDS, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @readl(i64 %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.tegra_rtc_info*, %struct.tegra_rtc_info** %5, align 8
  %28 = getelementptr inbounds %struct.tegra_rtc_info, %struct.tegra_rtc_info* %27, i32 0, i32 0
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %33 = call i32 @rtc_time64_to_tm(i32 %31, %struct.rtc_time* %32)
  %34 = load %struct.device*, %struct.device** %3, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %37 = call i32 @dev_vdbg(%struct.device* %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %35, %struct.rtc_time* %36)
  ret i32 0
}

declare dso_local %struct.tegra_rtc_info* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @rtc_time64_to_tm(i32, %struct.rtc_time*) #1

declare dso_local i32 @dev_vdbg(%struct.device*, i8*, i32, %struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
