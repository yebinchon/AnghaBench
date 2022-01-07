; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-tegra.c_tegra_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-tegra.c_tegra_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }
%struct.tegra_rtc_info = type { i64 }

@.str = private unnamed_addr constant [22 x i8] c"time set to %u, %ptR\0A\00", align 1
@TEGRA_RTC_REG_SECONDS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"time read back as %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @tegra_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.tegra_rtc_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.tegra_rtc_info* @dev_get_drvdata(%struct.device* %8)
  store %struct.tegra_rtc_info* %9, %struct.tegra_rtc_info** %5, align 8
  %10 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %11 = call i32 @rtc_tm_to_time64(%struct.rtc_time* %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %15 = call i32 (%struct.device*, i8*, i32, ...) @dev_vdbg(%struct.device* %12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %13, %struct.rtc_time* %14)
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = call i32 @tegra_rtc_wait_while_busy(%struct.device* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.tegra_rtc_info*, %struct.tegra_rtc_info** %5, align 8
  %23 = getelementptr inbounds %struct.tegra_rtc_info, %struct.tegra_rtc_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @TEGRA_RTC_REG_SECONDS, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel(i32 %21, i64 %26)
  br label %28

28:                                               ; preds = %20, %2
  %29 = load %struct.device*, %struct.device** %3, align 8
  %30 = load %struct.tegra_rtc_info*, %struct.tegra_rtc_info** %5, align 8
  %31 = getelementptr inbounds %struct.tegra_rtc_info, %struct.tegra_rtc_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @TEGRA_RTC_REG_SECONDS, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @readl(i64 %34)
  %36 = call i32 (%struct.device*, i8*, i32, ...) @dev_vdbg(%struct.device* %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %7, align 4
  ret i32 %37
}

declare dso_local %struct.tegra_rtc_info* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @rtc_tm_to_time64(%struct.rtc_time*) #1

declare dso_local i32 @dev_vdbg(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @tegra_rtc_wait_while_busy(%struct.device*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
