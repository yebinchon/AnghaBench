; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mt6397.c_mtk_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mt6397.c_mtk_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i64, i64, i64, i64, i64, i64 }
%struct.mt6397_rtc = type { i32, i64, i32 }

@RTC_OFFSET_COUNT = common dso_local global i32 0, align 4
@RTC_MIN_YEAR_OFFSET = common dso_local global i64 0, align 8
@RTC_OFFSET_SEC = common dso_local global i64 0, align 8
@RTC_OFFSET_MIN = common dso_local global i64 0, align 8
@RTC_OFFSET_HOUR = common dso_local global i64 0, align 8
@RTC_OFFSET_DOM = common dso_local global i64 0, align 8
@RTC_OFFSET_MTH = common dso_local global i64 0, align 8
@RTC_OFFSET_YEAR = common dso_local global i64 0, align 8
@RTC_TC_SEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @mtk_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.mt6397_rtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.mt6397_rtc* @dev_get_drvdata(%struct.device* %9)
  store %struct.mt6397_rtc* %10, %struct.mt6397_rtc** %5, align 8
  %11 = load i32, i32* @RTC_OFFSET_COUNT, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i64, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = load i64, i64* @RTC_MIN_YEAR_OFFSET, align 8
  %16 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %17 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %18, %15
  store i64 %19, i64* %17, align 8
  %20 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %21 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %21, align 8
  %24 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %25 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @RTC_OFFSET_SEC, align 8
  %28 = getelementptr inbounds i64, i64* %14, i64 %27
  store i64 %26, i64* %28, align 8
  %29 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %30 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @RTC_OFFSET_MIN, align 8
  %33 = getelementptr inbounds i64, i64* %14, i64 %32
  store i64 %31, i64* %33, align 8
  %34 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %35 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @RTC_OFFSET_HOUR, align 8
  %38 = getelementptr inbounds i64, i64* %14, i64 %37
  store i64 %36, i64* %38, align 8
  %39 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %40 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @RTC_OFFSET_DOM, align 8
  %43 = getelementptr inbounds i64, i64* %14, i64 %42
  store i64 %41, i64* %43, align 8
  %44 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %45 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @RTC_OFFSET_MTH, align 8
  %48 = getelementptr inbounds i64, i64* %14, i64 %47
  store i64 %46, i64* %48, align 8
  %49 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %50 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @RTC_OFFSET_YEAR, align 8
  %53 = getelementptr inbounds i64, i64* %14, i64 %52
  store i64 %51, i64* %53, align 8
  %54 = load %struct.mt6397_rtc*, %struct.mt6397_rtc** %5, align 8
  %55 = getelementptr inbounds %struct.mt6397_rtc, %struct.mt6397_rtc* %54, i32 0, i32 0
  %56 = call i32 @mutex_lock(i32* %55)
  %57 = load %struct.mt6397_rtc*, %struct.mt6397_rtc** %5, align 8
  %58 = getelementptr inbounds %struct.mt6397_rtc, %struct.mt6397_rtc* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.mt6397_rtc*, %struct.mt6397_rtc** %5, align 8
  %61 = getelementptr inbounds %struct.mt6397_rtc, %struct.mt6397_rtc* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @RTC_TC_SEC, align 8
  %64 = add nsw i64 %62, %63
  %65 = load i32, i32* @RTC_OFFSET_COUNT, align 4
  %66 = call i32 @regmap_bulk_write(i32 %59, i64 %64, i64* %14, i32 %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %2
  br label %73

70:                                               ; preds = %2
  %71 = load %struct.mt6397_rtc*, %struct.mt6397_rtc** %5, align 8
  %72 = call i32 @mtk_rtc_write_trigger(%struct.mt6397_rtc* %71)
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %70, %69
  %74 = load %struct.mt6397_rtc*, %struct.mt6397_rtc** %5, align 8
  %75 = getelementptr inbounds %struct.mt6397_rtc, %struct.mt6397_rtc* %74, i32 0, i32 0
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = load i32, i32* %6, align 4
  %78 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %78)
  ret i32 %77
}

declare dso_local %struct.mt6397_rtc* @dev_get_drvdata(%struct.device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_bulk_write(i32, i64, i64*, i32) #1

declare dso_local i32 @mtk_rtc_write_trigger(%struct.mt6397_rtc*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
