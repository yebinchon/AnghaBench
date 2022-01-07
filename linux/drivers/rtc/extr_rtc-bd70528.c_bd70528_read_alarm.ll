; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-bd70528.c_bd70528_read_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-bd70528.c_bd70528_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.bd70528_rtc_alm = type { i32, i32 }
%struct.bd70528_rtc = type { %struct.rohm_regmap_dev* }
%struct.rohm_regmap_dev = type { i32 }

@BD70528_REG_RTC_ALM_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to read alarm regs\0A\00", align 1
@BD70528_MASK_ALM_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @bd70528_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bd70528_read_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.bd70528_rtc_alm, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bd70528_rtc*, align 8
  %9 = alloca %struct.rohm_regmap_dev*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.bd70528_rtc* @dev_get_drvdata(%struct.device* %10)
  store %struct.bd70528_rtc* %11, %struct.bd70528_rtc** %8, align 8
  %12 = load %struct.bd70528_rtc*, %struct.bd70528_rtc** %8, align 8
  %13 = getelementptr inbounds %struct.bd70528_rtc, %struct.bd70528_rtc* %12, i32 0, i32 0
  %14 = load %struct.rohm_regmap_dev*, %struct.rohm_regmap_dev** %13, align 8
  store %struct.rohm_regmap_dev* %14, %struct.rohm_regmap_dev** %9, align 8
  %15 = load %struct.rohm_regmap_dev*, %struct.rohm_regmap_dev** %9, align 8
  %16 = getelementptr inbounds %struct.rohm_regmap_dev, %struct.rohm_regmap_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @BD70528_REG_RTC_ALM_START, align 4
  %19 = call i32 @regmap_bulk_read(i32 %17, i32 %18, %struct.bd70528_rtc_alm* %6, i32 8)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = call i32 @dev_err(%struct.device* %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %51

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.bd70528_rtc_alm, %struct.bd70528_rtc_alm* %6, i32 0, i32 1
  %28 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %29 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %28, i32 0, i32 2
  %30 = call i32 @rtc2tm(i32* %27, %struct.TYPE_2__* %29)
  %31 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %32 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 -1, i32* %33, align 8
  %34 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %35 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i32 -1, i32* %36, align 4
  %37 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %38 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  store i32 -1, i32* %39, align 8
  %40 = getelementptr inbounds %struct.bd70528_rtc_alm, %struct.bd70528_rtc_alm* %6, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @BD70528_MASK_ALM_EN, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %48 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %50 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %26, %22
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.bd70528_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, %struct.bd70528_rtc_alm*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @rtc2tm(i32*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
