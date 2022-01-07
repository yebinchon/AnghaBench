; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-bd70528.c_bd70528_set_time_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-bd70528.c_bd70528_set_time_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }
%struct.bd70528_rtc_data = type { i32 }
%struct.bd70528_rtc = type { %struct.rohm_regmap_dev* }
%struct.rohm_regmap_dev = type { i32 }

@BD70528_REG_RTC_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to read RTC time registers\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Failed to set RTC time\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @bd70528_set_time_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bd70528_set_time_locked(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bd70528_rtc_data, align 4
  %10 = alloca %struct.bd70528_rtc*, align 8
  %11 = alloca %struct.rohm_regmap_dev*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.bd70528_rtc* @dev_get_drvdata(%struct.device* %12)
  store %struct.bd70528_rtc* %13, %struct.bd70528_rtc** %10, align 8
  %14 = load %struct.bd70528_rtc*, %struct.bd70528_rtc** %10, align 8
  %15 = getelementptr inbounds %struct.bd70528_rtc, %struct.bd70528_rtc* %14, i32 0, i32 0
  %16 = load %struct.rohm_regmap_dev*, %struct.rohm_regmap_dev** %15, align 8
  store %struct.rohm_regmap_dev* %16, %struct.rohm_regmap_dev** %11, align 8
  %17 = load %struct.bd70528_rtc*, %struct.bd70528_rtc** %10, align 8
  %18 = call i32 @bd70528_disable_rtc_based_timers(%struct.bd70528_rtc* %17, i32* %8)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %58

23:                                               ; preds = %2
  %24 = load %struct.rohm_regmap_dev*, %struct.rohm_regmap_dev** %11, align 8
  %25 = getelementptr inbounds %struct.rohm_regmap_dev, %struct.rohm_regmap_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @BD70528_REG_RTC_START, align 4
  %28 = call i32 @regmap_bulk_read(i32 %26, i32 %27, %struct.bd70528_rtc_data* %9, i32 4)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %48

34:                                               ; preds = %23
  %35 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %36 = call i32 @tm2rtc(%struct.rtc_time* %35, %struct.bd70528_rtc_data* %9)
  %37 = load %struct.rohm_regmap_dev*, %struct.rohm_regmap_dev** %11, align 8
  %38 = getelementptr inbounds %struct.rohm_regmap_dev, %struct.rohm_regmap_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @BD70528_REG_RTC_START, align 4
  %41 = call i32 @regmap_bulk_write(i32 %39, i32 %40, %struct.bd70528_rtc_data* %9, i32 4)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = call i32 @dev_err(%struct.device* %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %48

47:                                               ; preds = %34
  br label %48

48:                                               ; preds = %47, %44, %31
  %49 = load %struct.bd70528_rtc*, %struct.bd70528_rtc** %10, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @bd70528_re_enable_rtc_based_timers(%struct.bd70528_rtc* %49, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %54, %48
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %21
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.bd70528_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @bd70528_disable_rtc_based_timers(%struct.bd70528_rtc*, i32*) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, %struct.bd70528_rtc_data*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @tm2rtc(%struct.rtc_time*, %struct.bd70528_rtc_data*) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, %struct.bd70528_rtc_data*, i32) #1

declare dso_local i32 @bd70528_re_enable_rtc_based_timers(%struct.bd70528_rtc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
