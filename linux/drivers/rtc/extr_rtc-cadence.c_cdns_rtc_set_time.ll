; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-cadence.c_cdns_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-cadence.c_cdns_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i64 }
%struct.cdns_rtc = type { i64 }

@EIO = common dso_local global i32 0, align 4
@CDNS_RTC_CAL_D = common dso_local global i32 0, align 4
@CDNS_RTC_CAL_M = common dso_local global i32 0, align 4
@CDNS_RTC_CAL_Y = common dso_local global i32 0, align 4
@CDNS_RTC_CAL_C = common dso_local global i32 0, align 4
@CDNS_RTC_CAL_DAY = common dso_local global i32 0, align 4
@CDNS_RTC_MAX_REGS_TRIES = common dso_local global i32 0, align 4
@CDNS_RTC_TIMR = common dso_local global i64 0, align 8
@CDNS_RTC_CALR = common dso_local global i64 0, align 8
@CDNS_RTC_STSR = common dso_local global i64 0, align 8
@CDNS_RTC_STSR_VT_VC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @cdns_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.cdns_rtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = call %struct.cdns_rtc* @dev_get_drvdata(%struct.device* %12)
  store %struct.cdns_rtc* %13, %struct.cdns_rtc** %5, align 8
  %14 = load i32, i32* @EIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %9, align 4
  %16 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %17 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 1900
  store i32 %19, i32* %10, align 4
  %20 = load %struct.cdns_rtc*, %struct.cdns_rtc** %5, align 8
  %21 = call i32 @cdns_rtc_set_enabled(%struct.cdns_rtc* %20, i32 0)
  %22 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %23 = call i32 @cdns_rtc_time2reg(%struct.rtc_time* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* @CDNS_RTC_CAL_D, align 4
  %25 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %26 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @bin2bcd(i32 %27)
  %29 = call i32 @FIELD_PREP(i32 %24, i64 %28)
  %30 = load i32, i32* @CDNS_RTC_CAL_M, align 4
  %31 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %32 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  %35 = call i64 @bin2bcd(i32 %34)
  %36 = call i32 @FIELD_PREP(i32 %30, i64 %35)
  %37 = or i32 %29, %36
  %38 = load i32, i32* @CDNS_RTC_CAL_Y, align 4
  %39 = load i32, i32* %10, align 4
  %40 = srem i32 %39, 100
  %41 = call i64 @bin2bcd(i32 %40)
  %42 = call i32 @FIELD_PREP(i32 %38, i64 %41)
  %43 = or i32 %37, %42
  %44 = load i32, i32* @CDNS_RTC_CAL_C, align 4
  %45 = load i32, i32* %10, align 4
  %46 = sdiv i32 %45, 100
  %47 = call i64 @bin2bcd(i32 %46)
  %48 = call i32 @FIELD_PREP(i32 %44, i64 %47)
  %49 = or i32 %43, %48
  %50 = load i32, i32* @CDNS_RTC_CAL_DAY, align 4
  %51 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %52 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 1
  %55 = call i32 @FIELD_PREP(i32 %50, i64 %54)
  %56 = or i32 %49, %55
  store i32 %56, i32* %7, align 4
  store i32 0, i32* %11, align 4
  br label %57

57:                                               ; preds = %89, %2
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @CDNS_RTC_MAX_REGS_TRIES, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %92

61:                                               ; preds = %57
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.cdns_rtc*, %struct.cdns_rtc** %5, align 8
  %64 = getelementptr inbounds %struct.cdns_rtc, %struct.cdns_rtc* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @CDNS_RTC_TIMR, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @writel(i32 %62, i64 %67)
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.cdns_rtc*, %struct.cdns_rtc** %5, align 8
  %71 = getelementptr inbounds %struct.cdns_rtc, %struct.cdns_rtc* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @CDNS_RTC_CALR, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @writel(i32 %69, i64 %74)
  %76 = load %struct.cdns_rtc*, %struct.cdns_rtc** %5, align 8
  %77 = getelementptr inbounds %struct.cdns_rtc, %struct.cdns_rtc* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @CDNS_RTC_STSR, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @readl(i64 %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @CDNS_RTC_STSR_VT_VC, align 4
  %84 = and i32 %82, %83
  %85 = load i32, i32* @CDNS_RTC_STSR_VT_VC, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %61
  store i32 0, i32* %9, align 4
  br label %92

88:                                               ; preds = %61
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %11, align 4
  br label %57

92:                                               ; preds = %87, %57
  %93 = load %struct.cdns_rtc*, %struct.cdns_rtc** %5, align 8
  %94 = call i32 @cdns_rtc_set_enabled(%struct.cdns_rtc* %93, i32 1)
  %95 = load i32, i32* %9, align 4
  ret i32 %95
}

declare dso_local %struct.cdns_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @cdns_rtc_set_enabled(%struct.cdns_rtc*, i32) #1

declare dso_local i32 @cdns_rtc_time2reg(%struct.rtc_time*) #1

declare dso_local i32 @FIELD_PREP(i32, i64) #1

declare dso_local i64 @bin2bcd(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
