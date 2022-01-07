; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf85363.c_pcf85363_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf85363.c_pcf85363_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i8, i32, i32 }
%struct.pcf85363 = type { i32 }

@STOP_EN_STOP = common dso_local global i32 0, align 4
@RESET_CPR = common dso_local global i32 0, align 4
@DT_100THS = common dso_local global i64 0, align 8
@DT_SECS = common dso_local global i64 0, align 8
@DT_MINUTES = common dso_local global i64 0, align 8
@DT_HOURS = common dso_local global i64 0, align 8
@DT_DAYS = common dso_local global i64 0, align 8
@DT_WEEKDAYS = common dso_local global i64 0, align 8
@DT_MONTHS = common dso_local global i64 0, align 8
@DT_YEARS = common dso_local global i64 0, align 8
@CTRL_STOP_EN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @pcf85363_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf85363_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.pcf85363*, align 8
  %7 = alloca [11 x i8], align 1
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.pcf85363* @dev_get_drvdata(%struct.device* %10)
  store %struct.pcf85363* %11, %struct.pcf85363** %6, align 8
  %12 = getelementptr inbounds [11 x i8], [11 x i8]* %7, i64 0, i64 2
  store i8* %12, i8** %8, align 8
  %13 = load i32, i32* @STOP_EN_STOP, align 4
  %14 = trunc i32 %13 to i8
  %15 = getelementptr inbounds [11 x i8], [11 x i8]* %7, i64 0, i64 0
  store i8 %14, i8* %15, align 1
  %16 = load i32, i32* @RESET_CPR, align 4
  %17 = trunc i32 %16 to i8
  %18 = getelementptr inbounds [11 x i8], [11 x i8]* %7, i64 0, i64 1
  store i8 %17, i8* %18, align 1
  %19 = load i8*, i8** %8, align 8
  %20 = load i64, i64* @DT_100THS, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  store i8 0, i8* %21, align 1
  %22 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %23 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call zeroext i8 @bin2bcd(i32 %24)
  %26 = load i8*, i8** %8, align 8
  %27 = load i64, i64* @DT_SECS, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  store i8 %25, i8* %28, align 1
  %29 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %30 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call zeroext i8 @bin2bcd(i32 %31)
  %33 = load i8*, i8** %8, align 8
  %34 = load i64, i64* @DT_MINUTES, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  store i8 %32, i8* %35, align 1
  %36 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %37 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call zeroext i8 @bin2bcd(i32 %38)
  %40 = load i8*, i8** %8, align 8
  %41 = load i64, i64* @DT_HOURS, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  store i8 %39, i8* %42, align 1
  %43 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %44 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call zeroext i8 @bin2bcd(i32 %45)
  %47 = load i8*, i8** %8, align 8
  %48 = load i64, i64* @DT_DAYS, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8 %46, i8* %49, align 1
  %50 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %51 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %50, i32 0, i32 4
  %52 = load i8, i8* %51, align 4
  %53 = load i8*, i8** %8, align 8
  %54 = load i64, i64* @DT_WEEKDAYS, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8 %52, i8* %55, align 1
  %56 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %57 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  %60 = call zeroext i8 @bin2bcd(i32 %59)
  %61 = load i8*, i8** %8, align 8
  %62 = load i64, i64* @DT_MONTHS, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8 %60, i8* %63, align 1
  %64 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %65 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 4
  %67 = srem i32 %66, 100
  %68 = call zeroext i8 @bin2bcd(i32 %67)
  %69 = load i8*, i8** %8, align 8
  %70 = load i64, i64* @DT_YEARS, align 8
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  store i8 %68, i8* %71, align 1
  %72 = load %struct.pcf85363*, %struct.pcf85363** %6, align 8
  %73 = getelementptr inbounds %struct.pcf85363, %struct.pcf85363* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i64, i64* @CTRL_STOP_EN, align 8
  %76 = getelementptr inbounds [11 x i8], [11 x i8]* %7, i64 0, i64 0
  %77 = call i32 @regmap_bulk_write(i32 %74, i64 %75, i8* %76, i32 2)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %2
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %3, align 4
  br label %99

82:                                               ; preds = %2
  %83 = load %struct.pcf85363*, %struct.pcf85363** %6, align 8
  %84 = getelementptr inbounds %struct.pcf85363, %struct.pcf85363* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i64, i64* @DT_100THS, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = call i32 @regmap_bulk_write(i32 %85, i64 %86, i8* %87, i32 9)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %82
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %3, align 4
  br label %99

93:                                               ; preds = %82
  %94 = load %struct.pcf85363*, %struct.pcf85363** %6, align 8
  %95 = getelementptr inbounds %struct.pcf85363, %struct.pcf85363* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i64, i64* @CTRL_STOP_EN, align 8
  %98 = call i32 @regmap_write(i32 %96, i64 %97, i32 0)
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %93, %91, %80
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local %struct.pcf85363* @dev_get_drvdata(%struct.device*) #1

declare dso_local zeroext i8 @bin2bcd(i32) #1

declare dso_local i32 @regmap_bulk_write(i32, i64, i8*, i32) #1

declare dso_local i32 @regmap_write(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
