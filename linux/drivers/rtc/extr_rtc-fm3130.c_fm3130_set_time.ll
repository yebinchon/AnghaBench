; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-fm3130.c_fm3130_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-fm3130.c_fm3130_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.fm3130 = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [66 x i8] c"%s secs=%d, mins=%d, hours=%d, mday=%d, mon=%d, year=%d, wday=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@FM3130_RTC_SECONDS = common dso_local global i64 0, align 8
@FM3130_RTC_MINUTES = common dso_local global i64 0, align 8
@FM3130_RTC_HOURS = common dso_local global i64 0, align 8
@FM3130_RTC_DAY = common dso_local global i64 0, align 8
@FM3130_RTC_DATE = common dso_local global i64 0, align 8
@FM3130_RTC_MONTHS = common dso_local global i64 0, align 8
@FM3130_RTC_YEARS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"%s: %15ph\0A\00", align 1
@FM3130_MODE_WRITE = common dso_local global i32 0, align 4
@FM3130_CLOCK_REGS = common dso_local global i32 0, align 4
@FM3130_MODE_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @fm3130_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm3130_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.fm3130*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.fm3130* @dev_get_drvdata(%struct.device* %9)
  store %struct.fm3130* %10, %struct.fm3130** %5, align 8
  %11 = load %struct.fm3130*, %struct.fm3130** %5, align 8
  %12 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %8, align 8
  %14 = load %struct.device*, %struct.device** %3, align 8
  %15 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %16 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %19 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %22 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %25 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %28 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %31 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %34 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (%struct.device*, i8*, i8*, i32, ...) @dev_dbg(%struct.device* %14, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %17, i32 %20, i32 %23, i32 %26, i32 %29, i32 %32, i32 %35)
  %37 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %38 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @bin2bcd(i32 %39)
  %41 = load i32*, i32** %8, align 8
  %42 = load i64, i64* @FM3130_RTC_SECONDS, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  store i32 %40, i32* %43, align 4
  %44 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %45 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @bin2bcd(i32 %46)
  %48 = load i32*, i32** %8, align 8
  %49 = load i64, i64* @FM3130_RTC_MINUTES, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32 %47, i32* %50, align 4
  %51 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %52 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @bin2bcd(i32 %53)
  %55 = load i32*, i32** %8, align 8
  %56 = load i64, i64* @FM3130_RTC_HOURS, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32 %54, i32* %57, align 4
  %58 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %59 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  %62 = call i32 @bin2bcd(i32 %61)
  %63 = load i32*, i32** %8, align 8
  %64 = load i64, i64* @FM3130_RTC_DAY, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  store i32 %62, i32* %65, align 4
  %66 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %67 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @bin2bcd(i32 %68)
  %70 = load i32*, i32** %8, align 8
  %71 = load i64, i64* @FM3130_RTC_DATE, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32 %69, i32* %72, align 4
  %73 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %74 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  %77 = call i32 @bin2bcd(i32 %76)
  %78 = load i32*, i32** %8, align 8
  %79 = load i64, i64* @FM3130_RTC_MONTHS, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  store i32 %77, i32* %80, align 4
  %81 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %82 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 %83, 100
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @bin2bcd(i32 %85)
  %87 = load i32*, i32** %8, align 8
  %88 = load i64, i64* @FM3130_RTC_YEARS, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  store i32 %86, i32* %89, align 4
  %90 = load %struct.device*, %struct.device** %3, align 8
  %91 = load i32*, i32** %8, align 8
  %92 = ptrtoint i32* %91 to i32
  %93 = call i32 (%struct.device*, i8*, i8*, i32, ...) @dev_dbg(%struct.device* %90, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  %94 = load %struct.device*, %struct.device** %3, align 8
  %95 = load i32, i32* @FM3130_MODE_WRITE, align 4
  %96 = call i32 @fm3130_rtc_mode(%struct.device* %94, i32 %95)
  store i32 0, i32* %7, align 4
  br label %97

97:                                               ; preds = %119, %2
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @FM3130_CLOCK_REGS, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %122

101:                                              ; preds = %97
  %102 = load %struct.fm3130*, %struct.fm3130** %5, align 8
  %103 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load i64, i64* @FM3130_RTC_SECONDS, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = add i64 %105, %107
  %109 = load %struct.fm3130*, %struct.fm3130** %5, align 8
  %110 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = load i64, i64* @FM3130_RTC_SECONDS, align 8
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = add i64 %112, %114
  %116 = getelementptr inbounds i32, i32* %111, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @i2c_smbus_write_byte_data(i32 %104, i64 %108, i32 %117)
  br label %119

119:                                              ; preds = %101
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %7, align 4
  br label %97

122:                                              ; preds = %97
  %123 = load %struct.device*, %struct.device** %3, align 8
  %124 = load i32, i32* @FM3130_MODE_NORMAL, align 4
  %125 = call i32 @fm3130_rtc_mode(%struct.device* %123, i32 %124)
  %126 = load %struct.fm3130*, %struct.fm3130** %5, align 8
  %127 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %122
  %131 = load %struct.fm3130*, %struct.fm3130** %5, align 8
  %132 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %131, i32 0, i32 0
  store i32 1, i32* %132, align 8
  br label %133

133:                                              ; preds = %130, %122
  ret i32 0
}

declare dso_local %struct.fm3130* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*, i32, ...) #1

declare dso_local i32 @bin2bcd(i32) #1

declare dso_local i32 @fm3130_rtc_mode(%struct.device*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
