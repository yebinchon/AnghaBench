; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mt6397.c_mtk_rtc_read_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mt6397.c_mtk_rtc_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i32, %struct.rtc_time }
%struct.rtc_time = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.mt6397_rtc = type { i32, i64, i32 }

@RTC_OFFSET_COUNT = common dso_local global i32 0, align 4
@RTC_IRQ_EN = common dso_local global i64 0, align 8
@RTC_PDN2 = common dso_local global i64 0, align 8
@RTC_AL_SEC = common dso_local global i64 0, align 8
@RTC_IRQ_EN_AL = common dso_local global i32 0, align 4
@RTC_PDN2_PWRON_ALARM = common dso_local global i32 0, align 4
@RTC_OFFSET_SEC = common dso_local global i64 0, align 8
@RTC_OFFSET_MIN = common dso_local global i64 0, align 8
@RTC_OFFSET_HOUR = common dso_local global i64 0, align 8
@RTC_OFFSET_DOM = common dso_local global i64 0, align 8
@RTC_OFFSET_MTH = common dso_local global i64 0, align 8
@RTC_OFFSET_YEAR = common dso_local global i64 0, align 8
@RTC_MIN_YEAR_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @mtk_rtc_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_rtc_read_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.rtc_time*, align 8
  %7 = alloca %struct.mt6397_rtc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %14 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %15 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %14, i32 0, i32 2
  store %struct.rtc_time* %15, %struct.rtc_time** %6, align 8
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = call %struct.mt6397_rtc* @dev_get_drvdata(%struct.device* %16)
  store %struct.mt6397_rtc* %17, %struct.mt6397_rtc** %7, align 8
  %18 = load i32, i32* @RTC_OFFSET_COUNT, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %11, align 8
  %21 = alloca i8*, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  %22 = load %struct.mt6397_rtc*, %struct.mt6397_rtc** %7, align 8
  %23 = getelementptr inbounds %struct.mt6397_rtc, %struct.mt6397_rtc* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.mt6397_rtc*, %struct.mt6397_rtc** %7, align 8
  %26 = getelementptr inbounds %struct.mt6397_rtc, %struct.mt6397_rtc* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.mt6397_rtc*, %struct.mt6397_rtc** %7, align 8
  %29 = getelementptr inbounds %struct.mt6397_rtc, %struct.mt6397_rtc* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @RTC_IRQ_EN, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @regmap_read(i32 %27, i64 %32, i32* %8)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %2
  br label %125

37:                                               ; preds = %2
  %38 = load %struct.mt6397_rtc*, %struct.mt6397_rtc** %7, align 8
  %39 = getelementptr inbounds %struct.mt6397_rtc, %struct.mt6397_rtc* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.mt6397_rtc*, %struct.mt6397_rtc** %7, align 8
  %42 = getelementptr inbounds %struct.mt6397_rtc, %struct.mt6397_rtc* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @RTC_PDN2, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @regmap_read(i32 %40, i64 %45, i32* %9)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %37
  br label %125

50:                                               ; preds = %37
  %51 = load %struct.mt6397_rtc*, %struct.mt6397_rtc** %7, align 8
  %52 = getelementptr inbounds %struct.mt6397_rtc, %struct.mt6397_rtc* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.mt6397_rtc*, %struct.mt6397_rtc** %7, align 8
  %55 = getelementptr inbounds %struct.mt6397_rtc, %struct.mt6397_rtc* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @RTC_AL_SEC, align 8
  %58 = add nsw i64 %56, %57
  %59 = load i32, i32* @RTC_OFFSET_COUNT, align 4
  %60 = call i32 @regmap_bulk_read(i32 %53, i64 %58, i8** %21, i32 %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %50
  br label %125

64:                                               ; preds = %50
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @RTC_IRQ_EN_AL, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %73 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @RTC_PDN2_PWRON_ALARM, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %82 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.mt6397_rtc*, %struct.mt6397_rtc** %7, align 8
  %84 = getelementptr inbounds %struct.mt6397_rtc, %struct.mt6397_rtc* %83, i32 0, i32 0
  %85 = call i32 @mutex_unlock(i32* %84)
  %86 = load i64, i64* @RTC_OFFSET_SEC, align 8
  %87 = getelementptr inbounds i8*, i8** %21, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %90 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %89, i32 0, i32 5
  store i8* %88, i8** %90, align 8
  %91 = load i64, i64* @RTC_OFFSET_MIN, align 8
  %92 = getelementptr inbounds i8*, i8** %21, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %95 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %94, i32 0, i32 4
  store i8* %93, i8** %95, align 8
  %96 = load i64, i64* @RTC_OFFSET_HOUR, align 8
  %97 = getelementptr inbounds i8*, i8** %21, i64 %96
  %98 = load i8*, i8** %97, align 8
  %99 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %100 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %99, i32 0, i32 3
  store i8* %98, i8** %100, align 8
  %101 = load i64, i64* @RTC_OFFSET_DOM, align 8
  %102 = getelementptr inbounds i8*, i8** %21, i64 %101
  %103 = load i8*, i8** %102, align 8
  %104 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %105 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %104, i32 0, i32 2
  store i8* %103, i8** %105, align 8
  %106 = load i64, i64* @RTC_OFFSET_MTH, align 8
  %107 = getelementptr inbounds i8*, i8** %21, i64 %106
  %108 = load i8*, i8** %107, align 8
  %109 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %110 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %109, i32 0, i32 0
  store i8* %108, i8** %110, align 8
  %111 = load i64, i64* @RTC_OFFSET_YEAR, align 8
  %112 = getelementptr inbounds i8*, i8** %21, i64 %111
  %113 = load i8*, i8** %112, align 8
  %114 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %115 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %114, i32 0, i32 1
  store i8* %113, i8** %115, align 8
  %116 = load i64, i64* @RTC_MIN_YEAR_OFFSET, align 8
  %117 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %118 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = getelementptr i8, i8* %119, i64 %116
  store i8* %120, i8** %118, align 8
  %121 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %122 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 -1
  store i8* %124, i8** %122, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %130

125:                                              ; preds = %63, %49, %36
  %126 = load %struct.mt6397_rtc*, %struct.mt6397_rtc** %7, align 8
  %127 = getelementptr inbounds %struct.mt6397_rtc, %struct.mt6397_rtc* %126, i32 0, i32 0
  %128 = call i32 @mutex_unlock(i32* %127)
  %129 = load i32, i32* %10, align 4
  store i32 %129, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %130

130:                                              ; preds = %125, %64
  %131 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %131)
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local %struct.mt6397_rtc* @dev_get_drvdata(%struct.device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

declare dso_local i32 @regmap_bulk_read(i32, i64, i8**, i32) #1

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
