; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-bd70528.c_bd70528_get_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-bd70528.c_bd70528_get_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }
%struct.bd70528_rtc = type { %struct.rohm_regmap_dev* }
%struct.rohm_regmap_dev = type { i32 }
%struct.bd70528_rtc_data = type { i32 }

@BD70528_REG_RTC_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to read RTC time (err %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @bd70528_get_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bd70528_get_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.bd70528_rtc*, align 8
  %7 = alloca %struct.rohm_regmap_dev*, align 8
  %8 = alloca %struct.bd70528_rtc_data, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.bd70528_rtc* @dev_get_drvdata(%struct.device* %10)
  store %struct.bd70528_rtc* %11, %struct.bd70528_rtc** %6, align 8
  %12 = load %struct.bd70528_rtc*, %struct.bd70528_rtc** %6, align 8
  %13 = getelementptr inbounds %struct.bd70528_rtc, %struct.bd70528_rtc* %12, i32 0, i32 0
  %14 = load %struct.rohm_regmap_dev*, %struct.rohm_regmap_dev** %13, align 8
  store %struct.rohm_regmap_dev* %14, %struct.rohm_regmap_dev** %7, align 8
  %15 = load %struct.rohm_regmap_dev*, %struct.rohm_regmap_dev** %7, align 8
  %16 = getelementptr inbounds %struct.rohm_regmap_dev, %struct.rohm_regmap_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @BD70528_REG_RTC_START, align 4
  %19 = call i32 @regmap_bulk_read(i32 %17, i32 %18, %struct.bd70528_rtc_data* %8, i32 4)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @dev_err(%struct.device* %23, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %3, align 4
  br label %30

27:                                               ; preds = %2
  %28 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %29 = call i32 @rtc2tm(%struct.bd70528_rtc_data* %8, %struct.rtc_time* %28)
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %27, %22
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.bd70528_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, %struct.bd70528_rtc_data*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @rtc2tm(%struct.bd70528_rtc_data*, %struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
