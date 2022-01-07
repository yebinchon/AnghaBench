; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sun6i.c_sun6i_rtc_setalarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sun6i.c_sun6i_rtc_setalarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, %struct.rtc_time }
%struct.rtc_time = type { i32 }
%struct.sun6i_rtc_dev = type { i64, i64 }

@.str = private unnamed_addr constant [23 x i8] c"Error in getting time\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Date to set in the past\0A\00", align 1
@U32_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"Date too far in the future\0A\00", align 1
@SUN6I_ALRM_COUNTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @sun6i_rtc_setalarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun6i_rtc_setalarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.sun6i_rtc_dev*, align 8
  %7 = alloca %struct.rtc_time*, align 8
  %8 = alloca %struct.rtc_time, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.sun6i_rtc_dev* @dev_get_drvdata(%struct.device* %13)
  store %struct.sun6i_rtc_dev* %14, %struct.sun6i_rtc_dev** %6, align 8
  %15 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %16 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %15, i32 0, i32 1
  store %struct.rtc_time* %16, %struct.rtc_time** %7, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = call i32 @sun6i_rtc_gettime(%struct.device* %17, %struct.rtc_time* %8)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = call i32 @dev_err(%struct.device* %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %75

26:                                               ; preds = %2
  %27 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %28 = call i32 @rtc_tm_to_time(%struct.rtc_time* %27, i64* %10)
  %29 = call i32 @rtc_tm_to_time(%struct.rtc_time* %8, i64* %9)
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* %9, align 8
  %32 = icmp ule i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = call i32 @dev_err(%struct.device* %34, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %75

38:                                               ; preds = %26
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* %9, align 8
  %41 = sub i64 %39, %40
  store i64 %41, i64* %11, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* @U32_MAX, align 8
  %44 = icmp ugt i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = call i32 @dev_err(%struct.device* %46, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %75

50:                                               ; preds = %38
  %51 = load %struct.sun6i_rtc_dev*, %struct.sun6i_rtc_dev** %6, align 8
  %52 = call i32 @sun6i_rtc_setaie(i32 0, %struct.sun6i_rtc_dev* %51)
  %53 = load %struct.sun6i_rtc_dev*, %struct.sun6i_rtc_dev** %6, align 8
  %54 = getelementptr inbounds %struct.sun6i_rtc_dev, %struct.sun6i_rtc_dev* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @SUN6I_ALRM_COUNTER, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writel(i64 0, i64 %57)
  %59 = call i32 @usleep_range(i32 100, i32 300)
  %60 = load i64, i64* %11, align 8
  %61 = load %struct.sun6i_rtc_dev*, %struct.sun6i_rtc_dev** %6, align 8
  %62 = getelementptr inbounds %struct.sun6i_rtc_dev, %struct.sun6i_rtc_dev* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SUN6I_ALRM_COUNTER, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @writel(i64 %60, i64 %65)
  %67 = load i64, i64* %10, align 8
  %68 = load %struct.sun6i_rtc_dev*, %struct.sun6i_rtc_dev** %6, align 8
  %69 = getelementptr inbounds %struct.sun6i_rtc_dev, %struct.sun6i_rtc_dev* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %71 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.sun6i_rtc_dev*, %struct.sun6i_rtc_dev** %6, align 8
  %74 = call i32 @sun6i_rtc_setaie(i32 %72, %struct.sun6i_rtc_dev* %73)
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %50, %45, %33, %21
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.sun6i_rtc_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @sun6i_rtc_gettime(%struct.device*, %struct.rtc_time*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @rtc_tm_to_time(%struct.rtc_time*, i64*) #1

declare dso_local i32 @sun6i_rtc_setaie(i32, %struct.sun6i_rtc_dev*) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
