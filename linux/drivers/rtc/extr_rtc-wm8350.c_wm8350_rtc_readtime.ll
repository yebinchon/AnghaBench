; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-wm8350.c_wm8350_rtc_readtime.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-wm8350.c_wm8350_rtc_readtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wm8350 = type { i32 }

@WM8350_GET_TIME_RETRIES = common dso_local global i32 0, align 4
@WM8350_RTC_SECONDS_MINUTES = common dso_local global i32 0, align 4
@WM8350_RTC_SECS_MASK = common dso_local global i32 0, align 4
@WM8350_RTC_MINS_MASK = common dso_local global i32 0, align 4
@WM8350_RTC_MINS_SHIFT = common dso_local global i32 0, align 4
@WM8350_RTC_HRS_MASK = common dso_local global i32 0, align 4
@WM8350_RTC_DAY_SHIFT = common dso_local global i32 0, align 4
@WM8350_RTC_MTH_MASK = common dso_local global i32 0, align 4
@WM8350_RTC_MTH_SHIFT = common dso_local global i32 0, align 4
@WM8350_RTC_DATE_MASK = common dso_local global i32 0, align 4
@WM8350_RTC_YHUNDREDS_MASK = common dso_local global i32 0, align 4
@WM8350_RTC_YHUNDREDS_SHIFT = common dso_local global i32 0, align 4
@WM8350_RTC_YUNITS_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Read (%d left): %04x %04x %04x %04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"timed out reading RTC time\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @wm8350_rtc_readtime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_rtc_readtime(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.wm8350*, align 8
  %7 = alloca [4 x i32], align 16
  %8 = alloca [4 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.wm8350* @dev_get_drvdata(%struct.device* %11)
  store %struct.wm8350* %12, %struct.wm8350** %6, align 8
  %13 = load i32, i32* @WM8350_GET_TIME_RETRIES, align 4
  store i32 %13, i32* %9, align 4
  br label %14

14:                                               ; preds = %126, %2
  %15 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %16 = load i32, i32* @WM8350_RTC_SECONDS_MINUTES, align 4
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %18 = call i32 @wm8350_block_read(%struct.wm8350* %15, i32 %16, i32 4, i32* %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %3, align 4
  br label %135

23:                                               ; preds = %14
  %24 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %25 = load i32, i32* @WM8350_RTC_SECONDS_MINUTES, align 4
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %27 = call i32 @wm8350_block_read(%struct.wm8350* %24, i32 %25, i32 4, i32* %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %3, align 4
  br label %135

32:                                               ; preds = %23
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %35 = call i64 @memcmp(i32* %33, i32* %34, i32 16)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %125

37:                                               ; preds = %32
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %39 = load i32, i32* %38, align 16
  %40 = load i32, i32* @WM8350_RTC_SECS_MASK, align 4
  %41 = and i32 %39, %40
  %42 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %43 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %45 = load i32, i32* %44, align 16
  %46 = load i32, i32* @WM8350_RTC_MINS_MASK, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* @WM8350_RTC_MINS_SHIFT, align 4
  %49 = ashr i32 %47, %48
  %50 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %51 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @WM8350_RTC_HRS_MASK, align 4
  %55 = and i32 %53, %54
  %56 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %57 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @WM8350_RTC_DAY_SHIFT, align 4
  %61 = ashr i32 %59, %60
  %62 = and i32 %61, 7
  %63 = sub nsw i32 %62, 1
  %64 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %65 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @WM8350_RTC_MTH_MASK, align 4
  %69 = and i32 %67, %68
  %70 = load i32, i32* @WM8350_RTC_MTH_SHIFT, align 4
  %71 = ashr i32 %69, %70
  %72 = sub nsw i32 %71, 1
  %73 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %74 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 4
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @WM8350_RTC_DATE_MASK, align 4
  %78 = and i32 %76, %77
  %79 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %80 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 4
  %81 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @WM8350_RTC_YHUNDREDS_MASK, align 4
  %84 = and i32 %82, %83
  %85 = load i32, i32* @WM8350_RTC_YHUNDREDS_SHIFT, align 4
  %86 = ashr i32 %84, %85
  %87 = mul nsw i32 %86, 100
  %88 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %89 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %88, i32 0, i32 6
  store i32 %87, i32* %89, align 4
  %90 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @WM8350_RTC_YUNITS_MASK, align 4
  %93 = and i32 %91, %92
  %94 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %95 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, %93
  store i32 %97, i32* %95, align 4
  %98 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %99 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %102 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %105 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %104, i32 0, i32 6
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @rtc_year_days(i32 %100, i32 %103, i32 %106)
  %108 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %109 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %108, i32 0, i32 7
  store i32 %107, i32* %109, align 4
  %110 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %111 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 4
  %113 = sub nsw i32 %112, 1900
  store i32 %113, i32* %111, align 4
  %114 = load %struct.device*, %struct.device** %4, align 8
  %115 = load i32, i32* %9, align 4
  %116 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %117 = load i32, i32* %116, align 16
  %118 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %121 = load i32, i32* %120, align 8
  %122 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @dev_dbg(%struct.device* %114, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %115, i32 %117, i32 %119, i32 %121, i32 %123)
  store i32 0, i32* %3, align 4
  br label %135

125:                                              ; preds = %32
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 %127, -1
  store i32 %128, i32* %9, align 4
  %129 = icmp ne i32 %127, 0
  br i1 %129, label %14, label %130

130:                                              ; preds = %126
  %131 = load %struct.device*, %struct.device** %4, align 8
  %132 = call i32 @dev_err(%struct.device* %131, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %133 = load i32, i32* @EIO, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %3, align 4
  br label %135

135:                                              ; preds = %130, %37, %30, %21
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local %struct.wm8350* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @wm8350_block_read(%struct.wm8350*, i32, i32, i32*) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @rtc_year_days(i32, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
