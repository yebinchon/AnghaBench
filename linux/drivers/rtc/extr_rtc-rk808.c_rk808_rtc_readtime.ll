; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rk808.c_rk808_rtc_readtime.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rk808.c_rk808_rtc_readtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.rk808_rtc = type { %struct.TYPE_2__*, %struct.rk808* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.rk808 = type { i32 }

@NUM_TIME_REGS = common dso_local global i32 0, align 4
@BIT_RTC_CTRL_REG_RTC_GET_TIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to update bits rtc_ctrl: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to bulk read rtc_data: %d\0A\00", align 1
@SECONDS_REG_MSK = common dso_local global i32 0, align 4
@MINUTES_REG_MAK = common dso_local global i32 0, align 4
@HOURS_REG_MSK = common dso_local global i32 0, align 4
@DAYS_REG_MSK = common dso_local global i32 0, align 4
@MONTHS_REG_MSK = common dso_local global i32 0, align 4
@YEARS_REG_MSK = common dso_local global i32 0, align 4
@WEEKS_REG_MSK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"RTC date/time %ptRd(%d) %ptRt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @rk808_rtc_readtime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk808_rtc_readtime(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.rk808_rtc*, align 8
  %7 = alloca %struct.rk808*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.rk808_rtc* @dev_get_drvdata(%struct.device* %12)
  store %struct.rk808_rtc* %13, %struct.rk808_rtc** %6, align 8
  %14 = load %struct.rk808_rtc*, %struct.rk808_rtc** %6, align 8
  %15 = getelementptr inbounds %struct.rk808_rtc, %struct.rk808_rtc* %14, i32 0, i32 1
  %16 = load %struct.rk808*, %struct.rk808** %15, align 8
  store %struct.rk808* %16, %struct.rk808** %7, align 8
  %17 = load i32, i32* @NUM_TIME_REGS, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %21 = load %struct.rk808*, %struct.rk808** %7, align 8
  %22 = getelementptr inbounds %struct.rk808, %struct.rk808* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.rk808_rtc*, %struct.rk808_rtc** %6, align 8
  %25 = getelementptr inbounds %struct.rk808_rtc, %struct.rk808_rtc* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @BIT_RTC_CTRL_REG_RTC_GET_TIME, align 4
  %30 = load i32, i32* @BIT_RTC_CTRL_REG_RTC_GET_TIME, align 4
  %31 = call i32 @regmap_update_bits(i32 %23, i32 %28, i32 %29, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %2
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @dev_err(%struct.device* %35, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %137

39:                                               ; preds = %2
  %40 = load %struct.rk808*, %struct.rk808** %7, align 8
  %41 = getelementptr inbounds %struct.rk808, %struct.rk808* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.rk808_rtc*, %struct.rk808_rtc** %6, align 8
  %44 = getelementptr inbounds %struct.rk808_rtc, %struct.rk808_rtc* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @BIT_RTC_CTRL_REG_RTC_GET_TIME, align 4
  %49 = call i32 @regmap_update_bits(i32 %42, i32 %47, i32 %48, i32 0)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %39
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @dev_err(%struct.device* %53, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %137

57:                                               ; preds = %39
  %58 = load %struct.rk808*, %struct.rk808** %7, align 8
  %59 = getelementptr inbounds %struct.rk808, %struct.rk808* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.rk808_rtc*, %struct.rk808_rtc** %6, align 8
  %62 = getelementptr inbounds %struct.rk808_rtc, %struct.rk808_rtc* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @NUM_TIME_REGS, align 4
  %67 = call i32 @regmap_bulk_read(i32 %60, i32 %65, i32* %20, i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %57
  %71 = load %struct.device*, %struct.device** %4, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @dev_err(%struct.device* %71, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %137

75:                                               ; preds = %57
  %76 = getelementptr inbounds i32, i32* %20, i64 0
  %77 = load i32, i32* %76, align 16
  %78 = load i32, i32* @SECONDS_REG_MSK, align 4
  %79 = and i32 %77, %78
  %80 = call i8* @bcd2bin(i32 %79)
  %81 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %82 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %81, i32 0, i32 6
  store i8* %80, i8** %82, align 8
  %83 = getelementptr inbounds i32, i32* %20, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @MINUTES_REG_MAK, align 4
  %86 = and i32 %84, %85
  %87 = call i8* @bcd2bin(i32 %86)
  %88 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %89 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %88, i32 0, i32 5
  store i8* %87, i8** %89, align 8
  %90 = getelementptr inbounds i32, i32* %20, i64 2
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @HOURS_REG_MSK, align 4
  %93 = and i32 %91, %92
  %94 = call i8* @bcd2bin(i32 %93)
  %95 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %96 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %95, i32 0, i32 4
  store i8* %94, i8** %96, align 8
  %97 = getelementptr inbounds i32, i32* %20, i64 3
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @DAYS_REG_MSK, align 4
  %100 = and i32 %98, %99
  %101 = call i8* @bcd2bin(i32 %100)
  %102 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %103 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %102, i32 0, i32 3
  store i8* %101, i8** %103, align 8
  %104 = getelementptr inbounds i32, i32* %20, i64 4
  %105 = load i32, i32* %104, align 16
  %106 = load i32, i32* @MONTHS_REG_MSK, align 4
  %107 = and i32 %105, %106
  %108 = call i8* @bcd2bin(i32 %107)
  %109 = getelementptr i8, i8* %108, i64 -1
  %110 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %111 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %110, i32 0, i32 2
  store i8* %109, i8** %111, align 8
  %112 = getelementptr inbounds i32, i32* %20, i64 5
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @YEARS_REG_MSK, align 4
  %115 = and i32 %113, %114
  %116 = call i8* @bcd2bin(i32 %115)
  %117 = getelementptr i8, i8* %116, i64 100
  %118 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %119 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %118, i32 0, i32 1
  store i8* %117, i8** %119, align 8
  %120 = getelementptr inbounds i32, i32* %20, i64 6
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @WEEKS_REG_MSK, align 4
  %123 = and i32 %121, %122
  %124 = call i8* @bcd2bin(i32 %123)
  %125 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %126 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %125, i32 0, i32 0
  store i8* %124, i8** %126, align 8
  %127 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %128 = call i32 @rockchip_to_gregorian(%struct.rtc_time* %127)
  %129 = load %struct.device*, %struct.device** %4, align 8
  %130 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %131 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %132 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %135 = call i32 @dev_dbg(%struct.device* %129, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), %struct.rtc_time* %130, i8* %133, %struct.rtc_time* %134)
  %136 = load i32, i32* %10, align 4
  store i32 %136, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %137

137:                                              ; preds = %75, %70, %52, %34
  %138 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %138)
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local %struct.rk808_rtc* @dev_get_drvdata(%struct.device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i8* @bcd2bin(i32) #1

declare dso_local i32 @rockchip_to_gregorian(%struct.rtc_time*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, %struct.rtc_time*, i8*, %struct.rtc_time*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
