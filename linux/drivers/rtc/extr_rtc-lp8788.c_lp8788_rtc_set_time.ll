; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-lp8788.c_lp8788_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-lp8788.c_lp8788_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32 }
%struct.lp8788_rtc = type { %struct.lp8788* }
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
@LP8788_RTC_SEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @lp8788_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp8788_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.lp8788_rtc*, align 8
  %7 = alloca %struct.lp8788*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call %struct.lp8788_rtc* @dev_get_drvdata(%struct.device* %14)
  store %struct.lp8788_rtc* %15, %struct.lp8788_rtc** %6, align 8
  %16 = load %struct.lp8788_rtc*, %struct.lp8788_rtc** %6, align 8
  %17 = getelementptr inbounds %struct.lp8788_rtc, %struct.lp8788_rtc* %16, i32 0, i32 0
  %18 = load %struct.lp8788*, %struct.lp8788** %17, align 8
  store %struct.lp8788* %18, %struct.lp8788** %7, align 8
  %19 = load i32, i32* @LPTIME_MAX, align 4
  %20 = sub nsw i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %8, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %9, align 8
  %24 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %25 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1900
  %28 = load i32, i32* @LP8788_BASE_YEAR, align 4
  %29 = sub nsw i32 %27, %28
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %2
  %33 = load %struct.lp8788*, %struct.lp8788** %7, align 8
  %34 = getelementptr inbounds %struct.lp8788, %struct.lp8788* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %95

40:                                               ; preds = %2
  %41 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %42 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* @LPTIME_SEC, align 8
  %45 = getelementptr inbounds i32, i32* %23, i64 %44
  store i32 %43, i32* %45, align 4
  %46 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %47 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* @LPTIME_MIN, align 8
  %50 = getelementptr inbounds i32, i32* %23, i64 %49
  store i32 %48, i32* %50, align 4
  %51 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %52 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load i64, i64* @LPTIME_HOUR, align 8
  %55 = getelementptr inbounds i32, i32* %23, i64 %54
  store i32 %53, i32* %55, align 4
  %56 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %57 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* @LPTIME_MDAY, align 8
  %60 = getelementptr inbounds i32, i32* %23, i64 %59
  store i32 %58, i32* %60, align 4
  %61 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %62 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @LP8788_MONTH_OFFSET, align 4
  %65 = add nsw i32 %63, %64
  %66 = load i64, i64* @LPTIME_MON, align 8
  %67 = getelementptr inbounds i32, i32* %23, i64 %66
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %12, align 4
  %69 = load i64, i64* @LPTIME_YEAR, align 8
  %70 = getelementptr inbounds i32, i32* %23, i64 %69
  store i32 %68, i32* %70, align 4
  store i32 0, i32* %11, align 4
  br label %71

71:                                               ; preds = %91, %40
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @ARRAY_SIZE(i32* %23)
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %94

75:                                               ; preds = %71
  %76 = load %struct.lp8788*, %struct.lp8788** %7, align 8
  %77 = load i64, i64* @LP8788_RTC_SEC, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %77, %79
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %23, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @lp8788_write_byte(%struct.lp8788* %76, i64 %80, i32 %84)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %75
  %89 = load i32, i32* %10, align 4
  store i32 %89, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %95

90:                                               ; preds = %75
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %11, align 4
  br label %71

94:                                               ; preds = %71
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %95

95:                                               ; preds = %94, %88, %32
  %96 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %96)
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local %struct.lp8788_rtc* @dev_get_drvdata(%struct.device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @lp8788_write_byte(%struct.lp8788*, i64, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
