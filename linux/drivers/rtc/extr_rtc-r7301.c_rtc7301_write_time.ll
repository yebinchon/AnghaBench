; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-r7301.c_rtc7301_write_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-r7301.c_rtc7301_write_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc7301_priv = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }

@RTC7301_1_SEC = common dso_local global i32 0, align 4
@RTC7301_10_SEC = common dso_local global i32 0, align 4
@RTC7301_1_MIN = common dso_local global i32 0, align 4
@RTC7301_10_MIN = common dso_local global i32 0, align 4
@RTC7301_1_HOUR = common dso_local global i32 0, align 4
@RTC7301_10_HOUR = common dso_local global i32 0, align 4
@RTC7301_1_DAY = common dso_local global i32 0, align 4
@RTC7301_10_DAY = common dso_local global i32 0, align 4
@RTC7301_AE = common dso_local global i32 0, align 4
@RTC7301_DAY_OF_WEEK = common dso_local global i32 0, align 4
@RTC7301_1_MONTH = common dso_local global i32 0, align 4
@RTC7301_10_MONTH = common dso_local global i32 0, align 4
@RTC7301_1_YEAR = common dso_local global i32 0, align 4
@RTC7301_10_YEAR = common dso_local global i32 0, align 4
@RTC7301_100_YEAR = common dso_local global i32 0, align 4
@RTC7301_1000_YEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtc7301_priv*, %struct.rtc_time*, i32)* @rtc7301_write_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtc7301_write_time(%struct.rtc7301_priv* %0, %struct.rtc_time* %1, i32 %2) #0 {
  %4 = alloca %struct.rtc7301_priv*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rtc7301_priv* %0, %struct.rtc7301_priv** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.rtc7301_priv*, %struct.rtc7301_priv** %4, align 8
  %9 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %10 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = srem i32 %11, 10
  %13 = load i32, i32* @RTC7301_1_SEC, align 4
  %14 = call i32 @rtc7301_write(%struct.rtc7301_priv* %8, i32 %12, i32 %13)
  %15 = load %struct.rtc7301_priv*, %struct.rtc7301_priv** %4, align 8
  %16 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %17 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sdiv i32 %18, 10
  %20 = load i32, i32* @RTC7301_10_SEC, align 4
  %21 = call i32 @rtc7301_write(%struct.rtc7301_priv* %15, i32 %19, i32 %20)
  %22 = load %struct.rtc7301_priv*, %struct.rtc7301_priv** %4, align 8
  %23 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %24 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = srem i32 %25, 10
  %27 = load i32, i32* @RTC7301_1_MIN, align 4
  %28 = call i32 @rtc7301_write(%struct.rtc7301_priv* %22, i32 %26, i32 %27)
  %29 = load %struct.rtc7301_priv*, %struct.rtc7301_priv** %4, align 8
  %30 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %31 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sdiv i32 %32, 10
  %34 = load i32, i32* @RTC7301_10_MIN, align 4
  %35 = call i32 @rtc7301_write(%struct.rtc7301_priv* %29, i32 %33, i32 %34)
  %36 = load %struct.rtc7301_priv*, %struct.rtc7301_priv** %4, align 8
  %37 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %38 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = srem i32 %39, 10
  %41 = load i32, i32* @RTC7301_1_HOUR, align 4
  %42 = call i32 @rtc7301_write(%struct.rtc7301_priv* %36, i32 %40, i32 %41)
  %43 = load %struct.rtc7301_priv*, %struct.rtc7301_priv** %4, align 8
  %44 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %45 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = sdiv i32 %46, 10
  %48 = load i32, i32* @RTC7301_10_HOUR, align 4
  %49 = call i32 @rtc7301_write(%struct.rtc7301_priv* %43, i32 %47, i32 %48)
  %50 = load %struct.rtc7301_priv*, %struct.rtc7301_priv** %4, align 8
  %51 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %52 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = srem i32 %53, 10
  %55 = load i32, i32* @RTC7301_1_DAY, align 4
  %56 = call i32 @rtc7301_write(%struct.rtc7301_priv* %50, i32 %54, i32 %55)
  %57 = load %struct.rtc7301_priv*, %struct.rtc7301_priv** %4, align 8
  %58 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %59 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = sdiv i32 %60, 10
  %62 = load i32, i32* @RTC7301_10_DAY, align 4
  %63 = call i32 @rtc7301_write(%struct.rtc7301_priv* %57, i32 %61, i32 %62)
  %64 = load %struct.rtc7301_priv*, %struct.rtc7301_priv** %4, align 8
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %3
  %68 = load i32, i32* @RTC7301_AE, align 4
  br label %73

69:                                               ; preds = %3
  %70 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %71 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  br label %73

73:                                               ; preds = %69, %67
  %74 = phi i32 [ %68, %67 ], [ %72, %69 ]
  %75 = load i32, i32* @RTC7301_DAY_OF_WEEK, align 4
  %76 = call i32 @rtc7301_write(%struct.rtc7301_priv* %64, i32 %74, i32 %75)
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %123

80:                                               ; preds = %73
  %81 = load %struct.rtc7301_priv*, %struct.rtc7301_priv** %4, align 8
  %82 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %83 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  %86 = srem i32 %85, 10
  %87 = load i32, i32* @RTC7301_1_MONTH, align 4
  %88 = call i32 @rtc7301_write(%struct.rtc7301_priv* %81, i32 %86, i32 %87)
  %89 = load %struct.rtc7301_priv*, %struct.rtc7301_priv** %4, align 8
  %90 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %91 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  %94 = sdiv i32 %93, 10
  %95 = load i32, i32* @RTC7301_10_MONTH, align 4
  %96 = call i32 @rtc7301_write(%struct.rtc7301_priv* %89, i32 %94, i32 %95)
  %97 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %98 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1900
  store i32 %100, i32* %7, align 4
  %101 = load %struct.rtc7301_priv*, %struct.rtc7301_priv** %4, align 8
  %102 = load i32, i32* %7, align 4
  %103 = srem i32 %102, 10
  %104 = load i32, i32* @RTC7301_1_YEAR, align 4
  %105 = call i32 @rtc7301_write(%struct.rtc7301_priv* %101, i32 %103, i32 %104)
  %106 = load %struct.rtc7301_priv*, %struct.rtc7301_priv** %4, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sdiv i32 %107, 10
  %109 = srem i32 %108, 10
  %110 = load i32, i32* @RTC7301_10_YEAR, align 4
  %111 = call i32 @rtc7301_write(%struct.rtc7301_priv* %106, i32 %109, i32 %110)
  %112 = load %struct.rtc7301_priv*, %struct.rtc7301_priv** %4, align 8
  %113 = load i32, i32* %7, align 4
  %114 = sdiv i32 %113, 100
  %115 = srem i32 %114, 10
  %116 = load i32, i32* @RTC7301_100_YEAR, align 4
  %117 = call i32 @rtc7301_write(%struct.rtc7301_priv* %112, i32 %115, i32 %116)
  %118 = load %struct.rtc7301_priv*, %struct.rtc7301_priv** %4, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sdiv i32 %119, 1000
  %121 = load i32, i32* @RTC7301_1000_YEAR, align 4
  %122 = call i32 @rtc7301_write(%struct.rtc7301_priv* %118, i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %80, %79
  ret void
}

declare dso_local i32 @rtc7301_write(%struct.rtc7301_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
