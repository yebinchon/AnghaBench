; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rtd119x.c_rtd119x_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rtd119x.c_rtd119x_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i64 }
%struct.rtd119x_rtc = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@RTD_RTCSEC_RTCSEC_MASK = common dso_local global i32 0, align 4
@RTD_RTCSEC = common dso_local global i64 0, align 8
@RTD_RTCMIN_RTCMIN_MASK = common dso_local global i32 0, align 4
@RTD_RTCMIN = common dso_local global i64 0, align 8
@RTD_RTCHR_RTCHR_MASK = common dso_local global i32 0, align 4
@RTD_RTCHR = common dso_local global i64 0, align 8
@RTD_RTCDATE1_RTCDATE1_MASK = common dso_local global i32 0, align 4
@RTD_RTCDATE1 = common dso_local global i64 0, align 8
@RTD_RTCDATE2_RTCDATE2_MASK = common dso_local global i32 0, align 4
@RTD_RTCDATE2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @rtd119x_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtd119x_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.rtd119x_rtc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.rtd119x_rtc* @dev_get_drvdata(%struct.device* %9)
  store %struct.rtd119x_rtc* %10, %struct.rtd119x_rtc** %6, align 8
  %11 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %12 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 1900, %13
  %15 = load %struct.rtd119x_rtc*, %struct.rtd119x_rtc** %6, align 8
  %16 = getelementptr inbounds %struct.rtd119x_rtc, %struct.rtd119x_rtc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %114

22:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %23 = load %struct.rtd119x_rtc*, %struct.rtd119x_rtc** %6, align 8
  %24 = getelementptr inbounds %struct.rtd119x_rtc, %struct.rtd119x_rtc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %40, %22
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %29 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 1900, %30
  %32 = icmp slt i32 %27, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %26
  %34 = load i32, i32* %8, align 4
  %35 = call i64 @rtd119x_rtc_days_in_year(i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = zext i32 %36 to i64
  %38 = add nsw i64 %37, %35
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %33
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %26

43:                                               ; preds = %26
  %44 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %45 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = zext i32 %47 to i64
  %49 = add nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ugt i32 %51, 32767
  br i1 %52, label %53, label %56

53:                                               ; preds = %43
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %114

56:                                               ; preds = %43
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = call i32 @rtd119x_rtc_set_enabled(%struct.device* %57, i32 0)
  %59 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %60 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = shl i32 %61, 1
  %63 = load i32, i32* @RTD_RTCSEC_RTCSEC_MASK, align 4
  %64 = and i32 %62, %63
  %65 = load %struct.rtd119x_rtc*, %struct.rtd119x_rtc** %6, align 8
  %66 = getelementptr inbounds %struct.rtd119x_rtc, %struct.rtd119x_rtc* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @RTD_RTCSEC, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @writel_relaxed(i32 %64, i64 %69)
  %71 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %72 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @RTD_RTCMIN_RTCMIN_MASK, align 4
  %75 = and i32 %73, %74
  %76 = load %struct.rtd119x_rtc*, %struct.rtd119x_rtc** %6, align 8
  %77 = getelementptr inbounds %struct.rtd119x_rtc, %struct.rtd119x_rtc* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @RTD_RTCMIN, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @writel_relaxed(i32 %75, i64 %80)
  %82 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %83 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @RTD_RTCHR_RTCHR_MASK, align 4
  %86 = and i32 %84, %85
  %87 = load %struct.rtd119x_rtc*, %struct.rtd119x_rtc** %6, align 8
  %88 = getelementptr inbounds %struct.rtd119x_rtc, %struct.rtd119x_rtc* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @RTD_RTCHR, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @writel_relaxed(i32 %86, i64 %91)
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @RTD_RTCDATE1_RTCDATE1_MASK, align 4
  %95 = and i32 %93, %94
  %96 = load %struct.rtd119x_rtc*, %struct.rtd119x_rtc** %6, align 8
  %97 = getelementptr inbounds %struct.rtd119x_rtc, %struct.rtd119x_rtc* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @RTD_RTCDATE1, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @writel_relaxed(i32 %95, i64 %100)
  %102 = load i32, i32* %7, align 4
  %103 = lshr i32 %102, 8
  %104 = load i32, i32* @RTD_RTCDATE2_RTCDATE2_MASK, align 4
  %105 = and i32 %103, %104
  %106 = load %struct.rtd119x_rtc*, %struct.rtd119x_rtc** %6, align 8
  %107 = getelementptr inbounds %struct.rtd119x_rtc, %struct.rtd119x_rtc* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @RTD_RTCDATE2, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @writel_relaxed(i32 %105, i64 %110)
  %112 = load %struct.device*, %struct.device** %4, align 8
  %113 = call i32 @rtd119x_rtc_set_enabled(%struct.device* %112, i32 1)
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %56, %53, %19
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.rtd119x_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @rtd119x_rtc_days_in_year(i32) #1

declare dso_local i32 @rtd119x_rtc_set_enabled(%struct.device*, i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
