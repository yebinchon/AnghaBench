; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-bd70528.c_bd70528_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-bd70528.c_bd70528_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i64, i32 }
%struct.bd70528_rtc_wake = type { i32, i32, i32, i32 }
%struct.bd70528_rtc_alm = type { i32, i32, i32, i32 }
%struct.bd70528_rtc = type { %struct.rohm_regmap_dev* }
%struct.rohm_regmap_dev = type { i32 }

@BD70528_REG_RTC_WAKE_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to read wake regs\0A\00", align 1
@BD70528_REG_RTC_ALM_START = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to read alarm regs\0A\00", align 1
@BD70528_MASK_ALM_EN = common dso_local global i32 0, align 4
@BD70528_MASK_WAKE_EN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Failed to set wake time\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Failed to set alarm time\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @bd70528_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bd70528_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.bd70528_rtc_wake, align 4
  %7 = alloca %struct.bd70528_rtc_alm, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bd70528_rtc*, align 8
  %10 = alloca %struct.rohm_regmap_dev*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.bd70528_rtc* @dev_get_drvdata(%struct.device* %11)
  store %struct.bd70528_rtc* %12, %struct.bd70528_rtc** %9, align 8
  %13 = load %struct.bd70528_rtc*, %struct.bd70528_rtc** %9, align 8
  %14 = getelementptr inbounds %struct.bd70528_rtc, %struct.bd70528_rtc* %13, i32 0, i32 0
  %15 = load %struct.rohm_regmap_dev*, %struct.rohm_regmap_dev** %14, align 8
  store %struct.rohm_regmap_dev* %15, %struct.rohm_regmap_dev** %10, align 8
  %16 = load %struct.rohm_regmap_dev*, %struct.rohm_regmap_dev** %10, align 8
  %17 = getelementptr inbounds %struct.rohm_regmap_dev, %struct.rohm_regmap_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @BD70528_REG_RTC_WAKE_START, align 4
  %20 = call i32 @regmap_bulk_read(i32 %18, i32 %19, %struct.bd70528_rtc_wake* %6, i32 16)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = call i32 @dev_err(%struct.device* %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %3, align 4
  br label %99

27:                                               ; preds = %2
  %28 = load %struct.rohm_regmap_dev*, %struct.rohm_regmap_dev** %10, align 8
  %29 = getelementptr inbounds %struct.rohm_regmap_dev, %struct.rohm_regmap_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @BD70528_REG_RTC_ALM_START, align 4
  %32 = bitcast %struct.bd70528_rtc_alm* %7 to %struct.bd70528_rtc_wake*
  %33 = call i32 @regmap_bulk_read(i32 %30, i32 %31, %struct.bd70528_rtc_wake* %32, i32 16)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %27
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = call i32 @dev_err(%struct.device* %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %3, align 4
  br label %99

40:                                               ; preds = %27
  %41 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %42 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.bd70528_rtc_alm, %struct.bd70528_rtc_alm* %7, i32 0, i32 3
  %44 = call i32 @tm2rtc(i32* %42, i32* %43)
  %45 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %46 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.bd70528_rtc_wake, %struct.bd70528_rtc_wake* %6, i32 0, i32 2
  %48 = call i32 @tmday2rtc(i32* %46, i32* %47)
  %49 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %50 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %40
  %54 = load i32, i32* @BD70528_MASK_ALM_EN, align 4
  %55 = xor i32 %54, -1
  %56 = getelementptr inbounds %struct.bd70528_rtc_alm, %struct.bd70528_rtc_alm* %7, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, %55
  store i32 %58, i32* %56, align 4
  %59 = load i32, i32* @BD70528_MASK_WAKE_EN, align 4
  %60 = getelementptr inbounds %struct.bd70528_rtc_wake, %struct.bd70528_rtc_wake* %6, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %59
  store i32 %62, i32* %60, align 4
  br label %73

63:                                               ; preds = %40
  %64 = load i32, i32* @BD70528_MASK_ALM_EN, align 4
  %65 = getelementptr inbounds %struct.bd70528_rtc_alm, %struct.bd70528_rtc_alm* %7, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %64
  store i32 %67, i32* %65, align 4
  %68 = load i32, i32* @BD70528_MASK_WAKE_EN, align 4
  %69 = xor i32 %68, -1
  %70 = getelementptr inbounds %struct.bd70528_rtc_wake, %struct.bd70528_rtc_wake* %6, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, %69
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %63, %53
  %74 = load %struct.rohm_regmap_dev*, %struct.rohm_regmap_dev** %10, align 8
  %75 = getelementptr inbounds %struct.rohm_regmap_dev, %struct.rohm_regmap_dev* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @BD70528_REG_RTC_WAKE_START, align 4
  %78 = call i32 @regmap_bulk_write(i32 %76, i32 %77, %struct.bd70528_rtc_wake* %6, i32 16)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %73
  %82 = load %struct.device*, %struct.device** %4, align 8
  %83 = call i32 @dev_err(%struct.device* %82, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %3, align 4
  br label %99

85:                                               ; preds = %73
  %86 = load %struct.rohm_regmap_dev*, %struct.rohm_regmap_dev** %10, align 8
  %87 = getelementptr inbounds %struct.rohm_regmap_dev, %struct.rohm_regmap_dev* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @BD70528_REG_RTC_ALM_START, align 4
  %90 = bitcast %struct.bd70528_rtc_alm* %7 to %struct.bd70528_rtc_wake*
  %91 = call i32 @regmap_bulk_write(i32 %88, i32 %89, %struct.bd70528_rtc_wake* %90, i32 16)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %85
  %95 = load %struct.device*, %struct.device** %4, align 8
  %96 = call i32 @dev_err(%struct.device* %95, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %97

97:                                               ; preds = %94, %85
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %97, %81, %36, %23
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local %struct.bd70528_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, %struct.bd70528_rtc_wake*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @tm2rtc(i32*, i32*) #1

declare dso_local i32 @tmday2rtc(i32*, i32*) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, %struct.bd70528_rtc_wake*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
