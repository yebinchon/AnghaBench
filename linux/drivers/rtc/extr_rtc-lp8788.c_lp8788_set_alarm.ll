; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-lp8788.c_lp8788_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-lp8788.c_lp8788_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, %struct.rtc_time }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.lp8788_rtc = type { i64, %struct.lp8788* }
%struct.lp8788 = type { i32 }

@LPTIME_MAX = common dso_local global i32 0, align 4
@LP8788_BASE_YEAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"invalid year: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@LPTIME_SEC = common dso_local global i64 0, align 8
@LPTIME_MIN = common dso_local global i64 0, align 8
@LPTIME_HOUR = common dso_local global i64 0, align 8
@LPTIME_MDAY = common dso_local global i64 0, align 8
@LP8788_MONTH_OFFSET = common dso_local global i32 0, align 4
@LPTIME_MON = common dso_local global i64 0, align 8
@LPTIME_YEAR = common dso_local global i64 0, align 8
@LPTIME_WDAY = common dso_local global i64 0, align 8
@addr_alarm_sec = common dso_local global i32* null, align 8
@addr_alarm_en = common dso_local global i32* null, align 8
@LP8788_ALM_EN_M = common dso_local global i32 0, align 4
@LP8788_ALM_EN_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @lp8788_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp8788_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.lp8788_rtc*, align 8
  %7 = alloca %struct.lp8788*, align 8
  %8 = alloca %struct.rtc_time*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = call %struct.lp8788_rtc* @dev_get_drvdata(%struct.device* %16)
  store %struct.lp8788_rtc* %17, %struct.lp8788_rtc** %6, align 8
  %18 = load %struct.lp8788_rtc*, %struct.lp8788_rtc** %6, align 8
  %19 = getelementptr inbounds %struct.lp8788_rtc, %struct.lp8788_rtc* %18, i32 0, i32 1
  %20 = load %struct.lp8788*, %struct.lp8788** %19, align 8
  store %struct.lp8788* %20, %struct.lp8788** %7, align 8
  %21 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %22 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %21, i32 0, i32 1
  store %struct.rtc_time* %22, %struct.rtc_time** %8, align 8
  %23 = load i32, i32* @LPTIME_MAX, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %10, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %11, align 8
  %27 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %28 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1900
  %31 = load i32, i32* @LP8788_BASE_YEAR, align 4
  %32 = sub nsw i32 %30, %31
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %2
  %36 = load %struct.lp8788*, %struct.lp8788** %7, align 8
  %37 = getelementptr inbounds %struct.lp8788, %struct.lp8788* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %14, align 4
  %40 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %126

43:                                               ; preds = %2
  %44 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %45 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* @LPTIME_SEC, align 8
  %48 = getelementptr inbounds i32, i32* %26, i64 %47
  store i32 %46, i32* %48, align 4
  %49 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %50 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i64, i64* @LPTIME_MIN, align 8
  %53 = getelementptr inbounds i32, i32* %26, i64 %52
  store i32 %51, i32* %53, align 4
  %54 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %55 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load i64, i64* @LPTIME_HOUR, align 8
  %58 = getelementptr inbounds i32, i32* %26, i64 %57
  store i32 %56, i32* %58, align 4
  %59 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %60 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = load i64, i64* @LPTIME_MDAY, align 8
  %63 = getelementptr inbounds i32, i32* %26, i64 %62
  store i32 %61, i32* %63, align 4
  %64 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %65 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @LP8788_MONTH_OFFSET, align 4
  %68 = add nsw i32 %66, %67
  %69 = load i64, i64* @LPTIME_MON, align 8
  %70 = getelementptr inbounds i32, i32* %26, i64 %69
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* %14, align 4
  %72 = load i64, i64* @LPTIME_YEAR, align 8
  %73 = getelementptr inbounds i32, i32* %26, i64 %72
  store i32 %71, i32* %73, align 4
  %74 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %75 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @_to_lp8788_wday(i32 %76)
  %78 = load i64, i64* @LPTIME_WDAY, align 8
  %79 = getelementptr inbounds i32, i32* %26, i64 %78
  store i32 %77, i32* %79, align 4
  store i32 0, i32* %13, align 4
  br label %80

80:                                               ; preds = %105, %43
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @ARRAY_SIZE(i32* %26)
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %108

84:                                               ; preds = %80
  %85 = load i32*, i32** @addr_alarm_sec, align 8
  %86 = load %struct.lp8788_rtc*, %struct.lp8788_rtc** %6, align 8
  %87 = getelementptr inbounds %struct.lp8788_rtc, %struct.lp8788_rtc* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %13, align 4
  %92 = add nsw i32 %90, %91
  store i32 %92, i32* %9, align 4
  %93 = load %struct.lp8788*, %struct.lp8788** %7, align 8
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %13, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %26, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @lp8788_write_byte(%struct.lp8788* %93, i32 %94, i32 %98)
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %12, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %84
  %103 = load i32, i32* %12, align 4
  store i32 %103, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %126

104:                                              ; preds = %84
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %13, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %13, align 4
  br label %80

108:                                              ; preds = %80
  %109 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %110 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %109, i32 0, i32 0
  store i32 1, i32* %110, align 4
  %111 = load i32*, i32** @addr_alarm_en, align 8
  %112 = load %struct.lp8788_rtc*, %struct.lp8788_rtc** %6, align 8
  %113 = getelementptr inbounds %struct.lp8788_rtc, %struct.lp8788_rtc* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %9, align 4
  %117 = load %struct.lp8788*, %struct.lp8788** %7, align 8
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* @LP8788_ALM_EN_M, align 4
  %120 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %121 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @LP8788_ALM_EN_S, align 4
  %124 = shl i32 %122, %123
  %125 = call i32 @lp8788_update_bits(%struct.lp8788* %117, i32 %118, i32 %119, i32 %124)
  store i32 %125, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %126

126:                                              ; preds = %108, %102, %35
  %127 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %127)
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local %struct.lp8788_rtc* @dev_get_drvdata(%struct.device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @_to_lp8788_wday(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @lp8788_write_byte(%struct.lp8788*, i32, i32) #1

declare dso_local i32 @lp8788_update_bits(%struct.lp8788*, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
