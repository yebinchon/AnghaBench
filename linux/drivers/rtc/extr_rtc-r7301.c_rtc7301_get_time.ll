; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-r7301.c_rtc7301_get_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-r7301.c_rtc7301_get_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc7301_priv = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@RTC7301_1_SEC = common dso_local global i32 0, align 4
@RTC7301_10_SEC = common dso_local global i32 0, align 4
@RTC7301_AE = common dso_local global i32 0, align 4
@RTC7301_1_MIN = common dso_local global i32 0, align 4
@RTC7301_10_MIN = common dso_local global i32 0, align 4
@RTC7301_1_HOUR = common dso_local global i32 0, align 4
@RTC7301_10_HOUR = common dso_local global i32 0, align 4
@RTC7301_1_DAY = common dso_local global i32 0, align 4
@RTC7301_10_DAY = common dso_local global i32 0, align 4
@RTC7301_DAY_OF_WEEK = common dso_local global i32 0, align 4
@RTC7301_10_MONTH = common dso_local global i32 0, align 4
@RTC7301_1_MONTH = common dso_local global i32 0, align 4
@RTC7301_1000_YEAR = common dso_local global i32 0, align 4
@RTC7301_100_YEAR = common dso_local global i32 0, align 4
@RTC7301_10_YEAR = common dso_local global i32 0, align 4
@RTC7301_1_YEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtc7301_priv*, %struct.rtc_time*, i32)* @rtc7301_get_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtc7301_get_time(%struct.rtc7301_priv* %0, %struct.rtc_time* %1, i32 %2) #0 {
  %4 = alloca %struct.rtc7301_priv*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rtc7301_priv* %0, %struct.rtc7301_priv** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.rtc7301_priv*, %struct.rtc7301_priv** %4, align 8
  %9 = load i32, i32* @RTC7301_1_SEC, align 4
  %10 = call i32 @rtc7301_read(%struct.rtc7301_priv* %8, i32 %9)
  %11 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %12 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load %struct.rtc7301_priv*, %struct.rtc7301_priv** %4, align 8
  %14 = load i32, i32* @RTC7301_10_SEC, align 4
  %15 = call i32 @rtc7301_read(%struct.rtc7301_priv* %13, i32 %14)
  %16 = load i32, i32* @RTC7301_AE, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = mul nsw i32 %18, 10
  %20 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %21 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load %struct.rtc7301_priv*, %struct.rtc7301_priv** %4, align 8
  %25 = load i32, i32* @RTC7301_1_MIN, align 4
  %26 = call i32 @rtc7301_read(%struct.rtc7301_priv* %24, i32 %25)
  %27 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %28 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.rtc7301_priv*, %struct.rtc7301_priv** %4, align 8
  %30 = load i32, i32* @RTC7301_10_MIN, align 4
  %31 = call i32 @rtc7301_read(%struct.rtc7301_priv* %29, i32 %30)
  %32 = load i32, i32* @RTC7301_AE, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  %35 = mul nsw i32 %34, 10
  %36 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %37 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load %struct.rtc7301_priv*, %struct.rtc7301_priv** %4, align 8
  %41 = load i32, i32* @RTC7301_1_HOUR, align 4
  %42 = call i32 @rtc7301_read(%struct.rtc7301_priv* %40, i32 %41)
  %43 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %44 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.rtc7301_priv*, %struct.rtc7301_priv** %4, align 8
  %46 = load i32, i32* @RTC7301_10_HOUR, align 4
  %47 = call i32 @rtc7301_read(%struct.rtc7301_priv* %45, i32 %46)
  %48 = load i32, i32* @RTC7301_AE, align 4
  %49 = xor i32 %48, -1
  %50 = and i32 %47, %49
  %51 = mul nsw i32 %50, 10
  %52 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %53 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load %struct.rtc7301_priv*, %struct.rtc7301_priv** %4, align 8
  %57 = load i32, i32* @RTC7301_1_DAY, align 4
  %58 = call i32 @rtc7301_read(%struct.rtc7301_priv* %56, i32 %57)
  %59 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %60 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load %struct.rtc7301_priv*, %struct.rtc7301_priv** %4, align 8
  %62 = load i32, i32* @RTC7301_10_DAY, align 4
  %63 = call i32 @rtc7301_read(%struct.rtc7301_priv* %61, i32 %62)
  %64 = load i32, i32* @RTC7301_AE, align 4
  %65 = xor i32 %64, -1
  %66 = and i32 %63, %65
  %67 = mul nsw i32 %66, 10
  %68 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %69 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %3
  %75 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %76 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %75, i32 0, i32 4
  store i32 -1, i32* %76, align 4
  %77 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %78 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %77, i32 0, i32 5
  store i32 -1, i32* %78, align 4
  %79 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %80 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %79, i32 0, i32 6
  store i32 -1, i32* %80, align 4
  %81 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %82 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %81, i32 0, i32 7
  store i32 -1, i32* %82, align 4
  %83 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %84 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %83, i32 0, i32 8
  store i32 -1, i32* %84, align 4
  br label %127

85:                                               ; preds = %3
  %86 = load %struct.rtc7301_priv*, %struct.rtc7301_priv** %4, align 8
  %87 = load i32, i32* @RTC7301_DAY_OF_WEEK, align 4
  %88 = call i32 @rtc7301_read(%struct.rtc7301_priv* %86, i32 %87)
  %89 = load i32, i32* @RTC7301_AE, align 4
  %90 = xor i32 %89, -1
  %91 = and i32 %88, %90
  %92 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %93 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %92, i32 0, i32 4
  store i32 %91, i32* %93, align 4
  %94 = load %struct.rtc7301_priv*, %struct.rtc7301_priv** %4, align 8
  %95 = load i32, i32* @RTC7301_10_MONTH, align 4
  %96 = call i32 @rtc7301_read(%struct.rtc7301_priv* %94, i32 %95)
  %97 = mul nsw i32 %96, 10
  %98 = load %struct.rtc7301_priv*, %struct.rtc7301_priv** %4, align 8
  %99 = load i32, i32* @RTC7301_1_MONTH, align 4
  %100 = call i32 @rtc7301_read(%struct.rtc7301_priv* %98, i32 %99)
  %101 = add nsw i32 %97, %100
  %102 = sub nsw i32 %101, 1
  %103 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %104 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %103, i32 0, i32 5
  store i32 %102, i32* %104, align 4
  %105 = load %struct.rtc7301_priv*, %struct.rtc7301_priv** %4, align 8
  %106 = load i32, i32* @RTC7301_1000_YEAR, align 4
  %107 = call i32 @rtc7301_read(%struct.rtc7301_priv* %105, i32 %106)
  %108 = mul nsw i32 %107, 1000
  %109 = load %struct.rtc7301_priv*, %struct.rtc7301_priv** %4, align 8
  %110 = load i32, i32* @RTC7301_100_YEAR, align 4
  %111 = call i32 @rtc7301_read(%struct.rtc7301_priv* %109, i32 %110)
  %112 = mul nsw i32 %111, 100
  %113 = add nsw i32 %108, %112
  %114 = load %struct.rtc7301_priv*, %struct.rtc7301_priv** %4, align 8
  %115 = load i32, i32* @RTC7301_10_YEAR, align 4
  %116 = call i32 @rtc7301_read(%struct.rtc7301_priv* %114, i32 %115)
  %117 = mul nsw i32 %116, 10
  %118 = add nsw i32 %113, %117
  %119 = load %struct.rtc7301_priv*, %struct.rtc7301_priv** %4, align 8
  %120 = load i32, i32* @RTC7301_1_YEAR, align 4
  %121 = call i32 @rtc7301_read(%struct.rtc7301_priv* %119, i32 %120)
  %122 = add nsw i32 %118, %121
  store i32 %122, i32* %7, align 4
  %123 = load i32, i32* %7, align 4
  %124 = sub nsw i32 %123, 1900
  %125 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %126 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %125, i32 0, i32 6
  store i32 %124, i32* %126, align 4
  br label %127

127:                                              ; preds = %85, %74
  ret void
}

declare dso_local i32 @rtc7301_read(%struct.rtc7301_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
