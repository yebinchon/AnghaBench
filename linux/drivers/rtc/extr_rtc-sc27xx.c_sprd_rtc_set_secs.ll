; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sc27xx.c_sprd_rtc_set_secs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sc27xx.c_sprd_rtc_set_secs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sprd_rtc = type { i32, i32, i32 }

@SPRD_RTC_SEC_CNT_UPD = common dso_local global i32 0, align 4
@SPRD_RTC_MIN_CNT_UPD = common dso_local global i32 0, align 4
@SPRD_RTC_HOUR_CNT_UPD = common dso_local global i32 0, align 4
@SPRD_RTC_DAY_CNT_UPD = common dso_local global i32 0, align 4
@SPRD_RTC_TIME_INT_MASK = common dso_local global i32 0, align 4
@SPRD_RTC_SEC_ALM_UPD = common dso_local global i32 0, align 4
@SPRD_RTC_MIN_ALM_UPD = common dso_local global i32 0, align 4
@SPRD_RTC_HOUR_ALM_UPD = common dso_local global i32 0, align 4
@SPRD_RTC_DAY_ALM_UPD = common dso_local global i32 0, align 4
@SPRD_RTC_ALMTIME_INT_MASK = common dso_local global i32 0, align 4
@SPRD_RTC_SEC_AUXALM_UPD = common dso_local global i32 0, align 4
@SPRD_RTC_MIN_AUXALM_UPD = common dso_local global i32 0, align 4
@SPRD_RTC_HOUR_AUXALM_UPD = common dso_local global i32 0, align 4
@SPRD_RTC_DAY_AUXALM_UPD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SPRD_RTC_INT_RAW_STS = common dso_local global i32 0, align 4
@SPRD_RTC_POLL_DELAY_US = common dso_local global i32 0, align 4
@SPRD_RTC_POLL_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"set time/alarm values timeout\0A\00", align 1
@SPRD_RTC_INT_CLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sprd_rtc*, i32, i32)* @sprd_rtc_set_secs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_rtc_set_secs(%struct.sprd_rtc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sprd_rtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
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
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.sprd_rtc* %0, %struct.sprd_rtc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @div_s64_rem(i32 %20, i32 86400, i32* %19)
  store i32 %21, i32* %16, align 4
  %22 = load i32, i32* %19, align 4
  %23 = sdiv i32 %22, 3600
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %15, align 4
  %25 = mul nsw i32 %24, 3600
  %26 = load i32, i32* %19, align 4
  %27 = sub nsw i32 %26, %25
  store i32 %27, i32* %19, align 4
  %28 = load i32, i32* %19, align 4
  %29 = sdiv i32 %28, 60
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %19, align 4
  %31 = load i32, i32* %14, align 4
  %32 = mul nsw i32 %31, 60
  %33 = sub nsw i32 %30, %32
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %6, align 4
  switch i32 %34, label %52 [
    i32 128, label %35
    i32 130, label %41
    i32 129, label %47
  ]

35:                                               ; preds = %3
  %36 = load i32, i32* @SPRD_RTC_SEC_CNT_UPD, align 4
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* @SPRD_RTC_MIN_CNT_UPD, align 4
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* @SPRD_RTC_HOUR_CNT_UPD, align 4
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* @SPRD_RTC_DAY_CNT_UPD, align 4
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* @SPRD_RTC_TIME_INT_MASK, align 4
  store i32 %40, i32* %12, align 4
  br label %55

41:                                               ; preds = %3
  %42 = load i32, i32* @SPRD_RTC_SEC_ALM_UPD, align 4
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* @SPRD_RTC_MIN_ALM_UPD, align 4
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* @SPRD_RTC_HOUR_ALM_UPD, align 4
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* @SPRD_RTC_DAY_ALM_UPD, align 4
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* @SPRD_RTC_ALMTIME_INT_MASK, align 4
  store i32 %46, i32* %12, align 4
  br label %55

47:                                               ; preds = %3
  %48 = load i32, i32* @SPRD_RTC_SEC_AUXALM_UPD, align 4
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* @SPRD_RTC_MIN_AUXALM_UPD, align 4
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* @SPRD_RTC_HOUR_AUXALM_UPD, align 4
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* @SPRD_RTC_DAY_AUXALM_UPD, align 4
  store i32 %51, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %55

52:                                               ; preds = %3
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %157

55:                                               ; preds = %47, %41, %35
  %56 = load %struct.sprd_rtc*, %struct.sprd_rtc** %5, align 8
  %57 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.sprd_rtc*, %struct.sprd_rtc** %5, align 8
  %60 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %61, %62
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @regmap_write(i32 %58, i32 %63, i32 %64)
  store i32 %65, i32* %18, align 4
  %66 = load i32, i32* %18, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %55
  %69 = load i32, i32* %18, align 4
  store i32 %69, i32* %4, align 4
  br label %157

70:                                               ; preds = %55
  %71 = load %struct.sprd_rtc*, %struct.sprd_rtc** %5, align 8
  %72 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.sprd_rtc*, %struct.sprd_rtc** %5, align 8
  %75 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %76, %77
  %79 = load i32, i32* %14, align 4
  %80 = call i32 @regmap_write(i32 %73, i32 %78, i32 %79)
  store i32 %80, i32* %18, align 4
  %81 = load i32, i32* %18, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %70
  %84 = load i32, i32* %18, align 4
  store i32 %84, i32* %4, align 4
  br label %157

85:                                               ; preds = %70
  %86 = load %struct.sprd_rtc*, %struct.sprd_rtc** %5, align 8
  %87 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.sprd_rtc*, %struct.sprd_rtc** %5, align 8
  %90 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %91, %92
  %94 = load i32, i32* %15, align 4
  %95 = call i32 @regmap_write(i32 %88, i32 %93, i32 %94)
  store i32 %95, i32* %18, align 4
  %96 = load i32, i32* %18, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %85
  %99 = load i32, i32* %18, align 4
  store i32 %99, i32* %4, align 4
  br label %157

100:                                              ; preds = %85
  %101 = load %struct.sprd_rtc*, %struct.sprd_rtc** %5, align 8
  %102 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.sprd_rtc*, %struct.sprd_rtc** %5, align 8
  %105 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %11, align 4
  %108 = add nsw i32 %106, %107
  %109 = load i32, i32* %16, align 4
  %110 = call i32 @regmap_write(i32 %103, i32 %108, i32 %109)
  store i32 %110, i32* %18, align 4
  %111 = load i32, i32* %18, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %100
  %114 = load i32, i32* %18, align 4
  store i32 %114, i32* %4, align 4
  br label %157

115:                                              ; preds = %100
  %116 = load i32, i32* %6, align 4
  %117 = icmp eq i32 %116, 129
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  store i32 0, i32* %4, align 4
  br label %157

119:                                              ; preds = %115
  %120 = load %struct.sprd_rtc*, %struct.sprd_rtc** %5, align 8
  %121 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.sprd_rtc*, %struct.sprd_rtc** %5, align 8
  %124 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @SPRD_RTC_INT_RAW_STS, align 4
  %127 = add nsw i32 %125, %126
  %128 = load i32, i32* %17, align 4
  %129 = load i32, i32* %17, align 4
  %130 = load i32, i32* %12, align 4
  %131 = and i32 %129, %130
  %132 = load i32, i32* %12, align 4
  %133 = icmp eq i32 %131, %132
  %134 = zext i1 %133 to i32
  %135 = load i32, i32* @SPRD_RTC_POLL_DELAY_US, align 4
  %136 = load i32, i32* @SPRD_RTC_POLL_TIMEOUT, align 4
  %137 = call i32 @regmap_read_poll_timeout(i32 %122, i32 %127, i32 %128, i32 %134, i32 %135, i32 %136)
  store i32 %137, i32* %18, align 4
  %138 = load i32, i32* %18, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %119
  %141 = load %struct.sprd_rtc*, %struct.sprd_rtc** %5, align 8
  %142 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @dev_err(i32 %143, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %145 = load i32, i32* %18, align 4
  store i32 %145, i32* %4, align 4
  br label %157

146:                                              ; preds = %119
  %147 = load %struct.sprd_rtc*, %struct.sprd_rtc** %5, align 8
  %148 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.sprd_rtc*, %struct.sprd_rtc** %5, align 8
  %151 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @SPRD_RTC_INT_CLR, align 4
  %154 = add nsw i32 %152, %153
  %155 = load i32, i32* %12, align 4
  %156 = call i32 @regmap_write(i32 %149, i32 %154, i32 %155)
  store i32 %156, i32* %4, align 4
  br label %157

157:                                              ; preds = %146, %140, %118, %113, %98, %83, %68, %52
  %158 = load i32, i32* %4, align 4
  ret i32 %158
}

declare dso_local i32 @div_s64_rem(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_read_poll_timeout(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
