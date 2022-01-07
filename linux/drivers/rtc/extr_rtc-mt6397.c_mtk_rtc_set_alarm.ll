; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mt6397.c_mtk_rtc_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mt6397.c_mtk_rtc_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i64, %struct.rtc_time }
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
@RTC_AL_SEC = common dso_local global i64 0, align 8
@RTC_AL_MASK = common dso_local global i64 0, align 8
@RTC_AL_MASK_DOW = common dso_local global i32 0, align 4
@RTC_IRQ_EN = common dso_local global i64 0, align 8
@RTC_IRQ_EN_ONESHOT_AL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @mtk_rtc_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_rtc_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_wkalrm*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.mt6397_rtc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %4, align 8
  %10 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %11 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %10, i32 0, i32 1
  store %struct.rtc_time* %11, %struct.rtc_time** %5, align 8
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = call %struct.mt6397_rtc* @dev_get_drvdata(%struct.device* %12)
  store %struct.mt6397_rtc* %13, %struct.mt6397_rtc** %6, align 8
  %14 = load i32, i32* @RTC_OFFSET_COUNT, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i64, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load i64, i64* @RTC_MIN_YEAR_OFFSET, align 8
  %19 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %20 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %21, %18
  store i64 %22, i64* %20, align 8
  %23 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %24 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %24, align 8
  %27 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %28 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @RTC_OFFSET_SEC, align 8
  %31 = getelementptr inbounds i64, i64* %17, i64 %30
  store i64 %29, i64* %31, align 8
  %32 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %33 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @RTC_OFFSET_MIN, align 8
  %36 = getelementptr inbounds i64, i64* %17, i64 %35
  store i64 %34, i64* %36, align 8
  %37 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %38 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @RTC_OFFSET_HOUR, align 8
  %41 = getelementptr inbounds i64, i64* %17, i64 %40
  store i64 %39, i64* %41, align 8
  %42 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %43 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @RTC_OFFSET_DOM, align 8
  %46 = getelementptr inbounds i64, i64* %17, i64 %45
  store i64 %44, i64* %46, align 8
  %47 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %48 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @RTC_OFFSET_MTH, align 8
  %51 = getelementptr inbounds i64, i64* %17, i64 %50
  store i64 %49, i64* %51, align 8
  %52 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %53 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @RTC_OFFSET_YEAR, align 8
  %56 = getelementptr inbounds i64, i64* %17, i64 %55
  store i64 %54, i64* %56, align 8
  %57 = load %struct.mt6397_rtc*, %struct.mt6397_rtc** %6, align 8
  %58 = getelementptr inbounds %struct.mt6397_rtc, %struct.mt6397_rtc* %57, i32 0, i32 0
  %59 = call i32 @mutex_lock(i32* %58)
  %60 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %61 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %108

64:                                               ; preds = %2
  %65 = load %struct.mt6397_rtc*, %struct.mt6397_rtc** %6, align 8
  %66 = getelementptr inbounds %struct.mt6397_rtc, %struct.mt6397_rtc* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.mt6397_rtc*, %struct.mt6397_rtc** %6, align 8
  %69 = getelementptr inbounds %struct.mt6397_rtc, %struct.mt6397_rtc* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @RTC_AL_SEC, align 8
  %72 = add nsw i64 %70, %71
  %73 = load i32, i32* @RTC_OFFSET_COUNT, align 4
  %74 = call i32 @regmap_bulk_write(i32 %67, i64 %72, i64* %17, i32 %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %64
  br label %126

78:                                               ; preds = %64
  %79 = load %struct.mt6397_rtc*, %struct.mt6397_rtc** %6, align 8
  %80 = getelementptr inbounds %struct.mt6397_rtc, %struct.mt6397_rtc* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.mt6397_rtc*, %struct.mt6397_rtc** %6, align 8
  %83 = getelementptr inbounds %struct.mt6397_rtc, %struct.mt6397_rtc* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @RTC_AL_MASK, align 8
  %86 = add nsw i64 %84, %85
  %87 = load i32, i32* @RTC_AL_MASK_DOW, align 4
  %88 = call i32 @regmap_write(i32 %81, i64 %86, i32 %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %78
  br label %126

92:                                               ; preds = %78
  %93 = load %struct.mt6397_rtc*, %struct.mt6397_rtc** %6, align 8
  %94 = getelementptr inbounds %struct.mt6397_rtc, %struct.mt6397_rtc* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.mt6397_rtc*, %struct.mt6397_rtc** %6, align 8
  %97 = getelementptr inbounds %struct.mt6397_rtc, %struct.mt6397_rtc* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @RTC_IRQ_EN, align 8
  %100 = add nsw i64 %98, %99
  %101 = load i32, i32* @RTC_IRQ_EN_ONESHOT_AL, align 4
  %102 = load i32, i32* @RTC_IRQ_EN_ONESHOT_AL, align 4
  %103 = call i32 @regmap_update_bits(i32 %95, i64 %100, i32 %101, i32 %102)
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %92
  br label %126

107:                                              ; preds = %92
  br label %123

108:                                              ; preds = %2
  %109 = load %struct.mt6397_rtc*, %struct.mt6397_rtc** %6, align 8
  %110 = getelementptr inbounds %struct.mt6397_rtc, %struct.mt6397_rtc* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.mt6397_rtc*, %struct.mt6397_rtc** %6, align 8
  %113 = getelementptr inbounds %struct.mt6397_rtc, %struct.mt6397_rtc* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @RTC_IRQ_EN, align 8
  %116 = add nsw i64 %114, %115
  %117 = load i32, i32* @RTC_IRQ_EN_ONESHOT_AL, align 4
  %118 = call i32 @regmap_update_bits(i32 %111, i64 %116, i32 %117, i32 0)
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %7, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %108
  br label %126

122:                                              ; preds = %108
  br label %123

123:                                              ; preds = %122, %107
  %124 = load %struct.mt6397_rtc*, %struct.mt6397_rtc** %6, align 8
  %125 = call i32 @mtk_rtc_write_trigger(%struct.mt6397_rtc* %124)
  store i32 %125, i32* %7, align 4
  br label %126

126:                                              ; preds = %123, %121, %106, %91, %77
  %127 = load %struct.mt6397_rtc*, %struct.mt6397_rtc** %6, align 8
  %128 = getelementptr inbounds %struct.mt6397_rtc, %struct.mt6397_rtc* %127, i32 0, i32 0
  %129 = call i32 @mutex_unlock(i32* %128)
  %130 = load i32, i32* %7, align 4
  %131 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %131)
  ret i32 %130
}

declare dso_local %struct.mt6397_rtc* @dev_get_drvdata(%struct.device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_bulk_write(i32, i64, i64*, i32) #1

declare dso_local i32 @regmap_write(i32, i64, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

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
