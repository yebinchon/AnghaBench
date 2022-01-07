; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_devfreq_cooling.c_get_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_devfreq_cooling.c_get_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devfreq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.dev_pm_opp = type { i32 }

@ERANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Failed to find OPP for frequency %lu: %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Failed to get voltage for frequency %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.devfreq*, i64)* @get_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_voltage(%struct.devfreq* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.devfreq*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.dev_pm_opp*, align 8
  store %struct.devfreq* %0, %struct.devfreq** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.devfreq*, %struct.devfreq** %4, align 8
  %10 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call %struct.dev_pm_opp* @dev_pm_opp_find_freq_exact(%struct.device* %13, i64 %14, i32 1)
  store %struct.dev_pm_opp* %15, %struct.dev_pm_opp** %8, align 8
  %16 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %8, align 8
  %17 = call i32 @PTR_ERR(%struct.dev_pm_opp* %16)
  %18 = load i32, i32* @ERANGE, align 4
  %19 = sub nsw i32 0, %18
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.device*, %struct.device** %6, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call %struct.dev_pm_opp* @dev_pm_opp_find_freq_exact(%struct.device* %22, i64 %23, i32 0)
  store %struct.dev_pm_opp* %24, %struct.dev_pm_opp** %8, align 8
  br label %25

25:                                               ; preds = %21, %2
  %26 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %8, align 8
  %27 = call i64 @IS_ERR(%struct.dev_pm_opp* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load %struct.device*, %struct.device** %6, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %8, align 8
  %33 = call i32 @PTR_ERR(%struct.dev_pm_opp* %32)
  %34 = call i32 (%struct.device*, i8*, i64, ...) @dev_err_ratelimited(%struct.device* %30, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %31, i32 %33)
  store i64 0, i64* %3, align 8
  br label %50

35:                                               ; preds = %25
  %36 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %8, align 8
  %37 = call i32 @dev_pm_opp_get_voltage(%struct.dev_pm_opp* %36)
  %38 = sdiv i32 %37, 1000
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %7, align 8
  %40 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %8, align 8
  %41 = call i32 @dev_pm_opp_put(%struct.dev_pm_opp* %40)
  %42 = load i64, i64* %7, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %35
  %45 = load %struct.device*, %struct.device** %6, align 8
  %46 = load i64, i64* %5, align 8
  %47 = call i32 (%struct.device*, i8*, i64, ...) @dev_err_ratelimited(%struct.device* %45, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %46)
  br label %48

48:                                               ; preds = %44, %35
  %49 = load i64, i64* %7, align 8
  store i64 %49, i64* %3, align 8
  br label %50

50:                                               ; preds = %48, %29
  %51 = load i64, i64* %3, align 8
  ret i64 %51
}

declare dso_local %struct.dev_pm_opp* @dev_pm_opp_find_freq_exact(%struct.device*, i64, i32) #1

declare dso_local i32 @PTR_ERR(%struct.dev_pm_opp*) #1

declare dso_local i64 @IS_ERR(%struct.dev_pm_opp*) #1

declare dso_local i32 @dev_err_ratelimited(%struct.device*, i8*, i64, ...) #1

declare dso_local i32 @dev_pm_opp_get_voltage(%struct.dev_pm_opp*) #1

declare dso_local i32 @dev_pm_opp_put(%struct.dev_pm_opp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
