; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sc27xx.c_sprd_rtc_get_secs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sc27xx.c_sprd_rtc_get_secs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sprd_rtc = type { i32, i32 }

@SPRD_RTC_SEC_CNT_VALUE = common dso_local global i32 0, align 4
@SPRD_RTC_MIN_CNT_VALUE = common dso_local global i32 0, align 4
@SPRD_RTC_HOUR_CNT_VALUE = common dso_local global i32 0, align 4
@SPRD_RTC_DAY_CNT_VALUE = common dso_local global i32 0, align 4
@SPRD_RTC_SEC_ALM_VALUE = common dso_local global i32 0, align 4
@SPRD_RTC_MIN_ALM_VALUE = common dso_local global i32 0, align 4
@SPRD_RTC_HOUR_ALM_VALUE = common dso_local global i32 0, align 4
@SPRD_RTC_DAY_ALM_VALUE = common dso_local global i32 0, align 4
@SPRD_RTC_SEC_AUXALM_UPD = common dso_local global i32 0, align 4
@SPRD_RTC_MIN_AUXALM_UPD = common dso_local global i32 0, align 4
@SPRD_RTC_HOUR_AUXALM_UPD = common dso_local global i32 0, align 4
@SPRD_RTC_DAY_AUXALM_UPD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SPRD_RTC_SEC_MASK = common dso_local global i32 0, align 4
@SPRD_RTC_MIN_MASK = common dso_local global i32 0, align 4
@SPRD_RTC_HOUR_MASK = common dso_local global i32 0, align 4
@SPRD_RTC_DAY_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sprd_rtc*, i32, i32*)* @sprd_rtc_get_secs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_rtc_get_secs(%struct.sprd_rtc* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sprd_rtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.sprd_rtc* %0, %struct.sprd_rtc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %34 [
    i32 128, label %19
    i32 130, label %24
    i32 129, label %29
  ]

19:                                               ; preds = %3
  %20 = load i32, i32* @SPRD_RTC_SEC_CNT_VALUE, align 4
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* @SPRD_RTC_MIN_CNT_VALUE, align 4
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* @SPRD_RTC_HOUR_CNT_VALUE, align 4
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* @SPRD_RTC_DAY_CNT_VALUE, align 4
  store i32 %23, i32* %11, align 4
  br label %37

24:                                               ; preds = %3
  %25 = load i32, i32* @SPRD_RTC_SEC_ALM_VALUE, align 4
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* @SPRD_RTC_MIN_ALM_VALUE, align 4
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* @SPRD_RTC_HOUR_ALM_VALUE, align 4
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* @SPRD_RTC_DAY_ALM_VALUE, align 4
  store i32 %28, i32* %11, align 4
  br label %37

29:                                               ; preds = %3
  %30 = load i32, i32* @SPRD_RTC_SEC_AUXALM_UPD, align 4
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* @SPRD_RTC_MIN_AUXALM_UPD, align 4
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* @SPRD_RTC_HOUR_AUXALM_UPD, align 4
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* @SPRD_RTC_DAY_AUXALM_UPD, align 4
  store i32 %33, i32* %11, align 4
  br label %37

34:                                               ; preds = %3
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %117

37:                                               ; preds = %29, %24, %19
  %38 = load %struct.sprd_rtc*, %struct.sprd_rtc** %5, align 8
  %39 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.sprd_rtc*, %struct.sprd_rtc** %5, align 8
  %42 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %43, %44
  %46 = call i32 @regmap_read(i32 %40, i32 %45, i32* %12)
  store i32 %46, i32* %17, align 4
  %47 = load i32, i32* %17, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %37
  %50 = load i32, i32* %17, align 4
  store i32 %50, i32* %4, align 4
  br label %117

51:                                               ; preds = %37
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* @SPRD_RTC_SEC_MASK, align 4
  %54 = and i32 %52, %53
  store i32 %54, i32* %13, align 4
  %55 = load %struct.sprd_rtc*, %struct.sprd_rtc** %5, align 8
  %56 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.sprd_rtc*, %struct.sprd_rtc** %5, align 8
  %59 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %60, %61
  %63 = call i32 @regmap_read(i32 %57, i32 %62, i32* %12)
  store i32 %63, i32* %17, align 4
  %64 = load i32, i32* %17, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %51
  %67 = load i32, i32* %17, align 4
  store i32 %67, i32* %4, align 4
  br label %117

68:                                               ; preds = %51
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* @SPRD_RTC_MIN_MASK, align 4
  %71 = and i32 %69, %70
  store i32 %71, i32* %14, align 4
  %72 = load %struct.sprd_rtc*, %struct.sprd_rtc** %5, align 8
  %73 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.sprd_rtc*, %struct.sprd_rtc** %5, align 8
  %76 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %77, %78
  %80 = call i32 @regmap_read(i32 %74, i32 %79, i32* %12)
  store i32 %80, i32* %17, align 4
  %81 = load i32, i32* %17, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %68
  %84 = load i32, i32* %17, align 4
  store i32 %84, i32* %4, align 4
  br label %117

85:                                               ; preds = %68
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @SPRD_RTC_HOUR_MASK, align 4
  %88 = and i32 %86, %87
  store i32 %88, i32* %15, align 4
  %89 = load %struct.sprd_rtc*, %struct.sprd_rtc** %5, align 8
  %90 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.sprd_rtc*, %struct.sprd_rtc** %5, align 8
  %93 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %94, %95
  %97 = call i32 @regmap_read(i32 %91, i32 %96, i32* %12)
  store i32 %97, i32* %17, align 4
  %98 = load i32, i32* %17, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %85
  %101 = load i32, i32* %17, align 4
  store i32 %101, i32* %4, align 4
  br label %117

102:                                              ; preds = %85
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* @SPRD_RTC_DAY_MASK, align 4
  %105 = and i32 %103, %104
  store i32 %105, i32* %16, align 4
  %106 = load i32, i32* %16, align 4
  %107 = mul nsw i32 %106, 24
  %108 = load i32, i32* %15, align 4
  %109 = add nsw i32 %107, %108
  %110 = mul nsw i32 %109, 60
  %111 = load i32, i32* %14, align 4
  %112 = add nsw i32 %110, %111
  %113 = mul nsw i32 %112, 60
  %114 = load i32, i32* %13, align 4
  %115 = add nsw i32 %113, %114
  %116 = load i32*, i32** %7, align 8
  store i32 %115, i32* %116, align 4
  store i32 0, i32* %4, align 4
  br label %117

117:                                              ; preds = %102, %100, %83, %66, %49, %34
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
