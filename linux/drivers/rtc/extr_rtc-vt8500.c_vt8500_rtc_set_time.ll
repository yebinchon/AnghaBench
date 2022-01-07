; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-vt8500.c_vt8500_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-vt8500.c_vt8500_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.vt8500_rtc = type { i64 }

@.str = private unnamed_addr constant [53 x i8] c"Only years 2000-2199 are supported by the hardware!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DATE_YEAR_S = common dso_local global i32 0, align 4
@DATE_MONTH_S = common dso_local global i32 0, align 4
@DATE_CENTURY_S = common dso_local global i32 0, align 4
@VT8500_RTC_DS = common dso_local global i64 0, align 8
@TIME_DOW_S = common dso_local global i32 0, align 4
@TIME_HOUR_S = common dso_local global i32 0, align 4
@TIME_MIN_S = common dso_local global i32 0, align 4
@VT8500_RTC_TS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @vt8500_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vt8500_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.vt8500_rtc*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = call %struct.vt8500_rtc* @dev_get_drvdata(%struct.device* %7)
  store %struct.vt8500_rtc* %8, %struct.vt8500_rtc** %6, align 8
  %9 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %10 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %11, 100
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call i32 @dev_warn(%struct.device* %14, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %84

18:                                               ; preds = %2
  %19 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %20 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = srem i32 %21, 100
  %23 = call i32 @bin2bcd(i32 %22)
  %24 = load i32, i32* @DATE_YEAR_S, align 4
  %25 = shl i32 %23, %24
  %26 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %27 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  %30 = call i32 @bin2bcd(i32 %29)
  %31 = load i32, i32* @DATE_MONTH_S, align 4
  %32 = shl i32 %30, %31
  %33 = or i32 %25, %32
  %34 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %35 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @bin2bcd(i32 %36)
  %38 = or i32 %33, %37
  %39 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %40 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp sge i32 %41, 200
  %43 = zext i1 %42 to i32
  %44 = load i32, i32* @DATE_CENTURY_S, align 4
  %45 = shl i32 %43, %44
  %46 = or i32 %38, %45
  %47 = load %struct.vt8500_rtc*, %struct.vt8500_rtc** %6, align 8
  %48 = getelementptr inbounds %struct.vt8500_rtc, %struct.vt8500_rtc* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @VT8500_RTC_DS, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @writel(i32 %46, i64 %51)
  %53 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %54 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @bin2bcd(i32 %55)
  %57 = load i32, i32* @TIME_DOW_S, align 4
  %58 = shl i32 %56, %57
  %59 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %60 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @bin2bcd(i32 %61)
  %63 = load i32, i32* @TIME_HOUR_S, align 4
  %64 = shl i32 %62, %63
  %65 = or i32 %58, %64
  %66 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %67 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @bin2bcd(i32 %68)
  %70 = load i32, i32* @TIME_MIN_S, align 4
  %71 = shl i32 %69, %70
  %72 = or i32 %65, %71
  %73 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %74 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @bin2bcd(i32 %75)
  %77 = or i32 %72, %76
  %78 = load %struct.vt8500_rtc*, %struct.vt8500_rtc** %6, align 8
  %79 = getelementptr inbounds %struct.vt8500_rtc, %struct.vt8500_rtc* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @VT8500_RTC_TS, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @writel(i32 %77, i64 %82)
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %18, %13
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.vt8500_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @bin2bcd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
