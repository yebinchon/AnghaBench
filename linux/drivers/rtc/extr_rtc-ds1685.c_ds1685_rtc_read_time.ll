; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1685.c_ds1685_rtc_read_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1685.c_ds1685_rtc_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i64, i8*, i8*, i32, i8*, i8*, i8*, i8* }
%struct.ds1685_priv = type { i32 (%struct.ds1685_priv*, i32)* }

@RTC_SECS = common dso_local global i32 0, align 4
@RTC_MINS = common dso_local global i32 0, align 4
@RTC_HRS = common dso_local global i32 0, align 4
@RTC_WDAY = common dso_local global i32 0, align 4
@RTC_MDAY = common dso_local global i32 0, align 4
@RTC_MONTH = common dso_local global i32 0, align 4
@RTC_YEAR = common dso_local global i32 0, align 4
@RTC_CENTURY = common dso_local global i32 0, align 4
@RTC_CTRL_B = common dso_local global i32 0, align 4
@RTC_YEAR_BCD_MASK = common dso_local global i32 0, align 4
@RTC_YEAR_BIN_MASK = common dso_local global i32 0, align 4
@RTC_CENTURY_MASK = common dso_local global i32 0, align 4
@RTC_SECS_BCD_MASK = common dso_local global i32 0, align 4
@RTC_SECS_BIN_MASK = common dso_local global i32 0, align 4
@RTC_MINS_BCD_MASK = common dso_local global i32 0, align 4
@RTC_MINS_BIN_MASK = common dso_local global i32 0, align 4
@RTC_HRS_24_BCD_MASK = common dso_local global i32 0, align 4
@RTC_HRS_24_BIN_MASK = common dso_local global i32 0, align 4
@RTC_WDAY_MASK = common dso_local global i32 0, align 4
@RTC_MDAY_BCD_MASK = common dso_local global i32 0, align 4
@RTC_MDAY_BIN_MASK = common dso_local global i32 0, align 4
@RTC_MONTH_BCD_MASK = common dso_local global i32 0, align 4
@RTC_MONTH_BIN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @ds1685_rtc_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1685_rtc_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.ds1685_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = call %struct.ds1685_priv* @dev_get_drvdata(%struct.device* %15)
  store %struct.ds1685_priv* %16, %struct.ds1685_priv** %5, align 8
  %17 = load %struct.ds1685_priv*, %struct.ds1685_priv** %5, align 8
  %18 = call i32 @ds1685_rtc_begin_data_access(%struct.ds1685_priv* %17)
  %19 = load %struct.ds1685_priv*, %struct.ds1685_priv** %5, align 8
  %20 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %19, i32 0, i32 0
  %21 = load i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32)** %20, align 8
  %22 = load %struct.ds1685_priv*, %struct.ds1685_priv** %5, align 8
  %23 = load i32, i32* @RTC_SECS, align 4
  %24 = call i32 %21(%struct.ds1685_priv* %22, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.ds1685_priv*, %struct.ds1685_priv** %5, align 8
  %26 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %25, i32 0, i32 0
  %27 = load i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32)** %26, align 8
  %28 = load %struct.ds1685_priv*, %struct.ds1685_priv** %5, align 8
  %29 = load i32, i32* @RTC_MINS, align 4
  %30 = call i32 %27(%struct.ds1685_priv* %28, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load %struct.ds1685_priv*, %struct.ds1685_priv** %5, align 8
  %32 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %31, i32 0, i32 0
  %33 = load i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32)** %32, align 8
  %34 = load %struct.ds1685_priv*, %struct.ds1685_priv** %5, align 8
  %35 = load i32, i32* @RTC_HRS, align 4
  %36 = call i32 %33(%struct.ds1685_priv* %34, i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load %struct.ds1685_priv*, %struct.ds1685_priv** %5, align 8
  %38 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %37, i32 0, i32 0
  %39 = load i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32)** %38, align 8
  %40 = load %struct.ds1685_priv*, %struct.ds1685_priv** %5, align 8
  %41 = load i32, i32* @RTC_WDAY, align 4
  %42 = call i32 %39(%struct.ds1685_priv* %40, i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load %struct.ds1685_priv*, %struct.ds1685_priv** %5, align 8
  %44 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %43, i32 0, i32 0
  %45 = load i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32)** %44, align 8
  %46 = load %struct.ds1685_priv*, %struct.ds1685_priv** %5, align 8
  %47 = load i32, i32* @RTC_MDAY, align 4
  %48 = call i32 %45(%struct.ds1685_priv* %46, i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load %struct.ds1685_priv*, %struct.ds1685_priv** %5, align 8
  %50 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %49, i32 0, i32 0
  %51 = load i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32)** %50, align 8
  %52 = load %struct.ds1685_priv*, %struct.ds1685_priv** %5, align 8
  %53 = load i32, i32* @RTC_MONTH, align 4
  %54 = call i32 %51(%struct.ds1685_priv* %52, i32 %53)
  store i32 %54, i32* %13, align 4
  %55 = load %struct.ds1685_priv*, %struct.ds1685_priv** %5, align 8
  %56 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %55, i32 0, i32 0
  %57 = load i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32)** %56, align 8
  %58 = load %struct.ds1685_priv*, %struct.ds1685_priv** %5, align 8
  %59 = load i32, i32* @RTC_YEAR, align 4
  %60 = call i32 %57(%struct.ds1685_priv* %58, i32 %59)
  store i32 %60, i32* %14, align 4
  %61 = load %struct.ds1685_priv*, %struct.ds1685_priv** %5, align 8
  %62 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %61, i32 0, i32 0
  %63 = load i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32)** %62, align 8
  %64 = load %struct.ds1685_priv*, %struct.ds1685_priv** %5, align 8
  %65 = load i32, i32* @RTC_CENTURY, align 4
  %66 = call i32 %63(%struct.ds1685_priv* %64, i32 %65)
  store i32 %66, i32* %7, align 4
  %67 = load %struct.ds1685_priv*, %struct.ds1685_priv** %5, align 8
  %68 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %67, i32 0, i32 0
  %69 = load i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32)** %68, align 8
  %70 = load %struct.ds1685_priv*, %struct.ds1685_priv** %5, align 8
  %71 = load i32, i32* @RTC_CTRL_B, align 4
  %72 = call i32 %69(%struct.ds1685_priv* %70, i32 %71)
  store i32 %72, i32* %6, align 4
  %73 = load %struct.ds1685_priv*, %struct.ds1685_priv** %5, align 8
  %74 = call i32 @ds1685_rtc_end_data_access(%struct.ds1685_priv* %73)
  %75 = load %struct.ds1685_priv*, %struct.ds1685_priv** %5, align 8
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* @RTC_YEAR_BCD_MASK, align 4
  %78 = load i32, i32* @RTC_YEAR_BIN_MASK, align 4
  %79 = call i8* @ds1685_rtc_bcd2bin(%struct.ds1685_priv* %75, i32 %76, i32 %77, i32 %78)
  %80 = ptrtoint i8* %79 to i32
  store i32 %80, i32* %14, align 4
  %81 = load %struct.ds1685_priv*, %struct.ds1685_priv** %5, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @RTC_CENTURY_MASK, align 4
  %84 = load i32, i32* @RTC_CENTURY_MASK, align 4
  %85 = call i8* @ds1685_rtc_bcd2bin(%struct.ds1685_priv* %81, i32 %82, i32 %83, i32 %84)
  %86 = ptrtoint i8* %85 to i32
  store i32 %86, i32* %7, align 4
  %87 = load %struct.ds1685_priv*, %struct.ds1685_priv** %5, align 8
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @RTC_SECS_BCD_MASK, align 4
  %90 = load i32, i32* @RTC_SECS_BIN_MASK, align 4
  %91 = call i8* @ds1685_rtc_bcd2bin(%struct.ds1685_priv* %87, i32 %88, i32 %89, i32 %90)
  %92 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %93 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %92, i32 0, i32 8
  store i8* %91, i8** %93, align 8
  %94 = load %struct.ds1685_priv*, %struct.ds1685_priv** %5, align 8
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @RTC_MINS_BCD_MASK, align 4
  %97 = load i32, i32* @RTC_MINS_BIN_MASK, align 4
  %98 = call i8* @ds1685_rtc_bcd2bin(%struct.ds1685_priv* %94, i32 %95, i32 %96, i32 %97)
  %99 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %100 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %99, i32 0, i32 7
  store i8* %98, i8** %100, align 8
  %101 = load %struct.ds1685_priv*, %struct.ds1685_priv** %5, align 8
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* @RTC_HRS_24_BCD_MASK, align 4
  %104 = load i32, i32* @RTC_HRS_24_BIN_MASK, align 4
  %105 = call i8* @ds1685_rtc_bcd2bin(%struct.ds1685_priv* %101, i32 %102, i32 %103, i32 %104)
  %106 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %107 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %106, i32 0, i32 6
  store i8* %105, i8** %107, align 8
  %108 = load %struct.ds1685_priv*, %struct.ds1685_priv** %5, align 8
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* @RTC_WDAY_MASK, align 4
  %111 = load i32, i32* @RTC_WDAY_MASK, align 4
  %112 = call i8* @ds1685_rtc_bcd2bin(%struct.ds1685_priv* %108, i32 %109, i32 %110, i32 %111)
  %113 = getelementptr i8, i8* %112, i64 -1
  %114 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %115 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %114, i32 0, i32 5
  store i8* %113, i8** %115, align 8
  %116 = load %struct.ds1685_priv*, %struct.ds1685_priv** %5, align 8
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* @RTC_MDAY_BCD_MASK, align 4
  %119 = load i32, i32* @RTC_MDAY_BIN_MASK, align 4
  %120 = call i8* @ds1685_rtc_bcd2bin(%struct.ds1685_priv* %116, i32 %117, i32 %118, i32 %119)
  %121 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %122 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %121, i32 0, i32 3
  store i8* %120, i8** %122, align 8
  %123 = load %struct.ds1685_priv*, %struct.ds1685_priv** %5, align 8
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* @RTC_MONTH_BCD_MASK, align 4
  %126 = load i32, i32* @RTC_MONTH_BIN_MASK, align 4
  %127 = call i8* @ds1685_rtc_bcd2bin(%struct.ds1685_priv* %123, i32 %124, i32 %125, i32 %126)
  %128 = getelementptr i8, i8* %127, i64 -1
  %129 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %130 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %129, i32 0, i32 2
  store i8* %128, i8** %130, align 8
  %131 = load i32, i32* %14, align 4
  %132 = load i32, i32* %7, align 4
  %133 = mul nsw i32 %132, 100
  %134 = add nsw i32 %131, %133
  %135 = sub nsw i32 %134, 1900
  %136 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %137 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  %138 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %139 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %138, i32 0, i32 3
  %140 = load i8*, i8** %139, align 8
  %141 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %142 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %141, i32 0, i32 2
  %143 = load i8*, i8** %142, align 8
  %144 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %145 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @rtc_year_days(i8* %140, i8* %143, i32 %146)
  %148 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %149 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %148, i32 0, i32 4
  store i32 %147, i32* %149, align 8
  %150 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %151 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %150, i32 0, i32 1
  store i64 0, i64* %151, align 8
  ret i32 0
}

declare dso_local %struct.ds1685_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @ds1685_rtc_begin_data_access(%struct.ds1685_priv*) #1

declare dso_local i32 @ds1685_rtc_end_data_access(%struct.ds1685_priv*) #1

declare dso_local i8* @ds1685_rtc_bcd2bin(%struct.ds1685_priv*, i32, i32, i32) #1

declare dso_local i32 @rtc_year_days(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
