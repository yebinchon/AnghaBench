; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sc27xx.c_sprd_rtc_lock_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sc27xx.c_sprd_rtc_lock_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sprd_rtc = type { i64, i32, i32 }

@SPRD_RTC_SPG_VALUE = common dso_local global i64 0, align 8
@SPRD_RTC_ALMLOCK_MASK = common dso_local global i32 0, align 4
@SPRD_RTC_ALM_LOCK = common dso_local global i32 0, align 4
@SPRD_RTC_ALM_UNLOCK = common dso_local global i32 0, align 4
@SPRD_RTC_POWEROFF_ALM_FLAG = common dso_local global i32 0, align 4
@SPRD_RTC_SPG_UPD = common dso_local global i64 0, align 8
@SPRD_RTC_INT_RAW_STS = common dso_local global i64 0, align 8
@SPRD_RTC_SPG_UPD_EN = common dso_local global i32 0, align 4
@SPRD_RTC_POLL_DELAY_US = common dso_local global i32 0, align 4
@SPRD_RTC_POLL_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to update SPG value:%d\0A\00", align 1
@SPRD_RTC_INT_CLR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sprd_rtc*, i32)* @sprd_rtc_lock_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_rtc_lock_alarm(%struct.sprd_rtc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sprd_rtc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sprd_rtc* %0, %struct.sprd_rtc** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.sprd_rtc*, %struct.sprd_rtc** %4, align 8
  %9 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.sprd_rtc*, %struct.sprd_rtc** %4, align 8
  %12 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SPRD_RTC_SPG_VALUE, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @regmap_read(i32 %10, i64 %15, i32* %7)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %89

21:                                               ; preds = %2
  %22 = load i32, i32* @SPRD_RTC_ALMLOCK_MASK, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %7, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i32, i32* @SPRD_RTC_ALM_LOCK, align 4
  %30 = load i32, i32* %7, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %7, align 4
  br label %38

32:                                               ; preds = %21
  %33 = load i32, i32* @SPRD_RTC_ALM_UNLOCK, align 4
  %34 = load i32, i32* @SPRD_RTC_POWEROFF_ALM_FLAG, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %32, %28
  %39 = load %struct.sprd_rtc*, %struct.sprd_rtc** %4, align 8
  %40 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.sprd_rtc*, %struct.sprd_rtc** %4, align 8
  %43 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SPRD_RTC_SPG_UPD, align 8
  %46 = add nsw i64 %44, %45
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @regmap_write(i32 %41, i64 %46, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %38
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %3, align 4
  br label %89

53:                                               ; preds = %38
  %54 = load %struct.sprd_rtc*, %struct.sprd_rtc** %4, align 8
  %55 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.sprd_rtc*, %struct.sprd_rtc** %4, align 8
  %58 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @SPRD_RTC_INT_RAW_STS, align 8
  %61 = add nsw i64 %59, %60
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @SPRD_RTC_SPG_UPD_EN, align 4
  %65 = and i32 %63, %64
  %66 = load i32, i32* @SPRD_RTC_POLL_DELAY_US, align 4
  %67 = load i32, i32* @SPRD_RTC_POLL_TIMEOUT, align 4
  %68 = call i32 @regmap_read_poll_timeout(i32 %56, i64 %61, i32 %62, i32 %65, i32 %66, i32 %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %53
  %72 = load %struct.sprd_rtc*, %struct.sprd_rtc** %4, align 8
  %73 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @dev_err(i32 %74, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %3, align 4
  br label %89

78:                                               ; preds = %53
  %79 = load %struct.sprd_rtc*, %struct.sprd_rtc** %4, align 8
  %80 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.sprd_rtc*, %struct.sprd_rtc** %4, align 8
  %83 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @SPRD_RTC_INT_CLR, align 8
  %86 = add nsw i64 %84, %85
  %87 = load i32, i32* @SPRD_RTC_SPG_UPD_EN, align 4
  %88 = call i32 @regmap_write(i32 %81, i64 %86, i32 %87)
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %78, %71, %51, %19
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

declare dso_local i32 @regmap_write(i32, i64, i32) #1

declare dso_local i32 @regmap_read_poll_timeout(i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
