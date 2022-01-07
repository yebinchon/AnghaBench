; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sa1100.c_sa1100_rtc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sa1100.c_sa1100_rtc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.sa1100_rtc = type { i32, %struct.rtc_device*, %struct.rtc_device*, i32, i32, i32 }
%struct.rtc_device = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"failed to find rtc clock source\0A\00", align 1
@RTC_DEF_DIVIDER = common dso_local global i32 0, align 4
@RTC_DEF_TRIM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"warning: initializing default clock divider/trim value\0A\00", align 1
@sa1100_rtc_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@RTC_FREQ = common dso_local global i32 0, align 4
@RTSR_AL = common dso_local global i32 0, align 4
@RTSR_HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sa1100_rtc_init(%struct.platform_device* %0, %struct.sa1100_rtc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.sa1100_rtc*, align 8
  %6 = alloca %struct.rtc_device*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.sa1100_rtc* %1, %struct.sa1100_rtc** %5, align 8
  %8 = load %struct.sa1100_rtc*, %struct.sa1100_rtc** %5, align 8
  %9 = getelementptr inbounds %struct.sa1100_rtc, %struct.sa1100_rtc* %8, i32 0, i32 5
  %10 = call i32 @spin_lock_init(i32* %9)
  %11 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 1
  %13 = call %struct.rtc_device* @devm_clk_get(i32* %12, i32* null)
  %14 = load %struct.sa1100_rtc*, %struct.sa1100_rtc** %5, align 8
  %15 = getelementptr inbounds %struct.sa1100_rtc, %struct.sa1100_rtc* %14, i32 0, i32 2
  store %struct.rtc_device* %13, %struct.rtc_device** %15, align 8
  %16 = load %struct.sa1100_rtc*, %struct.sa1100_rtc** %5, align 8
  %17 = getelementptr inbounds %struct.sa1100_rtc, %struct.sa1100_rtc* %16, i32 0, i32 2
  %18 = load %struct.rtc_device*, %struct.rtc_device** %17, align 8
  %19 = call i64 @IS_ERR(%struct.rtc_device* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 1
  %24 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.sa1100_rtc*, %struct.sa1100_rtc** %5, align 8
  %26 = getelementptr inbounds %struct.sa1100_rtc, %struct.sa1100_rtc* %25, i32 0, i32 2
  %27 = load %struct.rtc_device*, %struct.rtc_device** %26, align 8
  %28 = call i32 @PTR_ERR(%struct.rtc_device* %27)
  store i32 %28, i32* %3, align 4
  br label %92

29:                                               ; preds = %2
  %30 = load %struct.sa1100_rtc*, %struct.sa1100_rtc** %5, align 8
  %31 = getelementptr inbounds %struct.sa1100_rtc, %struct.sa1100_rtc* %30, i32 0, i32 2
  %32 = load %struct.rtc_device*, %struct.rtc_device** %31, align 8
  %33 = call i32 @clk_prepare_enable(%struct.rtc_device* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  br label %92

38:                                               ; preds = %29
  %39 = load %struct.sa1100_rtc*, %struct.sa1100_rtc** %5, align 8
  %40 = getelementptr inbounds %struct.sa1100_rtc, %struct.sa1100_rtc* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @readl_relaxed(i32 %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %38
  %45 = load i32, i32* @RTC_DEF_DIVIDER, align 4
  %46 = load i32, i32* @RTC_DEF_TRIM, align 4
  %47 = shl i32 %46, 16
  %48 = add nsw i32 %45, %47
  %49 = load %struct.sa1100_rtc*, %struct.sa1100_rtc** %5, align 8
  %50 = getelementptr inbounds %struct.sa1100_rtc, %struct.sa1100_rtc* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @writel_relaxed(i32 %48, i32 %51)
  %53 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 1
  %55 = call i32 @dev_warn(i32* %54, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %56 = load %struct.sa1100_rtc*, %struct.sa1100_rtc** %5, align 8
  %57 = getelementptr inbounds %struct.sa1100_rtc, %struct.sa1100_rtc* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @writel_relaxed(i32 0, i32 %58)
  br label %60

60:                                               ; preds = %44, %38
  %61 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 1
  %63 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @THIS_MODULE, align 4
  %67 = call %struct.rtc_device* @devm_rtc_device_register(i32* %62, i32 %65, i32* @sa1100_rtc_ops, i32 %66)
  store %struct.rtc_device* %67, %struct.rtc_device** %6, align 8
  %68 = load %struct.rtc_device*, %struct.rtc_device** %6, align 8
  %69 = call i64 @IS_ERR(%struct.rtc_device* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %60
  %72 = load %struct.sa1100_rtc*, %struct.sa1100_rtc** %5, align 8
  %73 = getelementptr inbounds %struct.sa1100_rtc, %struct.sa1100_rtc* %72, i32 0, i32 2
  %74 = load %struct.rtc_device*, %struct.rtc_device** %73, align 8
  %75 = call i32 @clk_disable_unprepare(%struct.rtc_device* %74)
  %76 = load %struct.rtc_device*, %struct.rtc_device** %6, align 8
  %77 = call i32 @PTR_ERR(%struct.rtc_device* %76)
  store i32 %77, i32* %3, align 4
  br label %92

78:                                               ; preds = %60
  %79 = load %struct.rtc_device*, %struct.rtc_device** %6, align 8
  %80 = load %struct.sa1100_rtc*, %struct.sa1100_rtc** %5, align 8
  %81 = getelementptr inbounds %struct.sa1100_rtc, %struct.sa1100_rtc* %80, i32 0, i32 1
  store %struct.rtc_device* %79, %struct.rtc_device** %81, align 8
  %82 = load i32, i32* @RTC_FREQ, align 4
  %83 = load %struct.rtc_device*, %struct.rtc_device** %6, align 8
  %84 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @RTSR_AL, align 4
  %86 = load i32, i32* @RTSR_HZ, align 4
  %87 = or i32 %85, %86
  %88 = load %struct.sa1100_rtc*, %struct.sa1100_rtc** %5, align 8
  %89 = getelementptr inbounds %struct.sa1100_rtc, %struct.sa1100_rtc* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @writel_relaxed(i32 %87, i32 %90)
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %78, %71, %36, %21
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.rtc_device* @devm_clk_get(i32*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.rtc_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.rtc_device*) #1

declare dso_local i32 @clk_prepare_enable(%struct.rtc_device*) #1

declare dso_local i64 @readl_relaxed(i32) #1

declare dso_local i32 @writel_relaxed(i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local %struct.rtc_device* @devm_rtc_device_register(i32*, i32, i32*, i32) #1

declare dso_local i32 @clk_disable_unprepare(%struct.rtc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
