; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ls1x.c_ls1x_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ls1x.c_ls1x_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.rtc_device = type { i32, i32, i32* }

@SYS_COUNTER_CNTRL = common dso_local global i32 0, align 4
@RTC_CNTR_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"rtc counters not working\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@SYS_TOYTRIM = common dso_local global i32 0, align 4
@SYS_CNTRL_TTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"time out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@ls1x_rtc_ops = common dso_local global i32 0, align 4
@RTC_TIMESTAMP_BEGIN_1900 = common dso_local global i32 0, align 4
@RTC_TIMESTAMP_END_2099 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ls1x_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ls1x_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.rtc_device*, align 8
  %5 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load i32, i32* @SYS_COUNTER_CNTRL, align 4
  %7 = call i32 @readl(i32 %6)
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @RTC_CNTR_OK, align 8
  %11 = and i64 %9, %10
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %83

19:                                               ; preds = %1
  %20 = load i32, i32* @SYS_TOYTRIM, align 4
  %21 = call i32 @readl(i32 %20)
  %22 = icmp ne i32 %21, 32767
  br i1 %22, label %23, label %50

23:                                               ; preds = %19
  store i64 1048576, i64* %5, align 8
  br label %24

24:                                               ; preds = %36, %23
  %25 = load i32, i32* @SYS_COUNTER_CNTRL, align 4
  %26 = call i32 @readl(i32 %25)
  %27 = load i32, i32* @SYS_CNTRL_TTS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i64, i64* %5, align 8
  %32 = add i64 %31, -1
  store i64 %32, i64* %5, align 8
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %30, %24
  %35 = phi i1 [ false, %24 ], [ %33, %30 ]
  br i1 %35, label %36, label %38

36:                                               ; preds = %34
  %37 = call i32 @usleep_range(i32 1000, i32 3000)
  br label %24

38:                                               ; preds = %34
  %39 = load i64, i64* %5, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @ETIMEDOUT, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %83

47:                                               ; preds = %38
  %48 = load i32, i32* @SYS_TOYTRIM, align 4
  %49 = call i32 @writel(i32 32767, i32 %48)
  br label %50

50:                                               ; preds = %47, %19
  br label %51

51:                                               ; preds = %57, %50
  %52 = load i32, i32* @SYS_COUNTER_CNTRL, align 4
  %53 = call i32 @readl(i32 %52)
  %54 = load i32, i32* @SYS_CNTRL_TTS, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = call i32 @usleep_range(i32 1000, i32 3000)
  br label %51

59:                                               ; preds = %51
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = call %struct.rtc_device* @devm_rtc_allocate_device(i32* %61)
  store %struct.rtc_device* %62, %struct.rtc_device** %4, align 8
  %63 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %64 = call i64 @IS_ERR(%struct.rtc_device* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %68 = call i32 @PTR_ERR(%struct.rtc_device* %67)
  store i32 %68, i32* %2, align 4
  br label %83

69:                                               ; preds = %59
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %72 = call i32 @platform_set_drvdata(%struct.platform_device* %70, %struct.rtc_device* %71)
  %73 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %74 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %73, i32 0, i32 2
  store i32* @ls1x_rtc_ops, i32** %74, align 8
  %75 = load i32, i32* @RTC_TIMESTAMP_BEGIN_1900, align 4
  %76 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %77 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @RTC_TIMESTAMP_END_2099, align 4
  %79 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %80 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %82 = call i32 @rtc_register_device(%struct.rtc_device* %81)
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %69, %66, %41, %13
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local %struct.rtc_device* @devm_rtc_allocate_device(i32*) #1

declare dso_local i64 @IS_ERR(%struct.rtc_device*) #1

declare dso_local i32 @PTR_ERR(%struct.rtc_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rtc_device*) #1

declare dso_local i32 @rtc_register_device(%struct.rtc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
