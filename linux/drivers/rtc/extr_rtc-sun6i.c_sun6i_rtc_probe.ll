; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sun6i.c_sun6i_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sun6i.c_sun6i_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun6i_rtc_dev = type { i64, i32, i32, i64, i32* }
%struct.platform_device = type { i32 }

@sun6i_rtc = common dso_local global %struct.sun6i_rtc_dev* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@sun6i_rtc_alarmirq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Could not request IRQ\0A\00", align 1
@SUN6I_ALRM_COUNTER = common dso_local global i64 0, align 8
@SUN6I_ALRM_EN = common dso_local global i64 0, align 8
@SUN6I_ALRM_IRQ_EN = common dso_local global i64 0, align 8
@SUN6I_ALRM1_EN = common dso_local global i64 0, align 8
@SUN6I_ALRM1_IRQ_EN = common dso_local global i64 0, align 8
@SUN6I_ALRM_IRQ_STA_CNT_IRQ_PEND = common dso_local global i32 0, align 4
@SUN6I_ALRM_IRQ_STA = common dso_local global i64 0, align 8
@SUN6I_ALRM1_IRQ_STA_WEEK_IRQ_PEND = common dso_local global i32 0, align 4
@SUN6I_ALRM1_IRQ_STA = common dso_local global i64 0, align 8
@SUN6I_ALARM_CONFIG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"rtc-sun6i\00", align 1
@sun6i_rtc_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"unable to register device\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"RTC enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sun6i_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun6i_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sun6i_rtc_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.sun6i_rtc_dev*, %struct.sun6i_rtc_dev** @sun6i_rtc, align 8
  store %struct.sun6i_rtc_dev* %6, %struct.sun6i_rtc_dev** %4, align 8
  %7 = load %struct.sun6i_rtc_dev*, %struct.sun6i_rtc_dev** %4, align 8
  %8 = icmp ne %struct.sun6i_rtc_dev* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %134

12:                                               ; preds = %1
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = load %struct.sun6i_rtc_dev*, %struct.sun6i_rtc_dev** %4, align 8
  %15 = call i32 @platform_set_drvdata(%struct.platform_device* %13, %struct.sun6i_rtc_dev* %14)
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load %struct.sun6i_rtc_dev*, %struct.sun6i_rtc_dev** %4, align 8
  %19 = getelementptr inbounds %struct.sun6i_rtc_dev, %struct.sun6i_rtc_dev* %18, i32 0, i32 4
  store i32* %17, i32** %19, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = call i64 @platform_get_irq(%struct.platform_device* %20, i32 0)
  %22 = load %struct.sun6i_rtc_dev*, %struct.sun6i_rtc_dev** %4, align 8
  %23 = getelementptr inbounds %struct.sun6i_rtc_dev, %struct.sun6i_rtc_dev* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.sun6i_rtc_dev*, %struct.sun6i_rtc_dev** %4, align 8
  %25 = getelementptr inbounds %struct.sun6i_rtc_dev, %struct.sun6i_rtc_dev* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %12
  %29 = load %struct.sun6i_rtc_dev*, %struct.sun6i_rtc_dev** %4, align 8
  %30 = getelementptr inbounds %struct.sun6i_rtc_dev, %struct.sun6i_rtc_dev* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %2, align 4
  br label %134

33:                                               ; preds = %12
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = load %struct.sun6i_rtc_dev*, %struct.sun6i_rtc_dev** %4, align 8
  %37 = getelementptr inbounds %struct.sun6i_rtc_dev, %struct.sun6i_rtc_dev* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = load i32, i32* @sun6i_rtc_alarmirq, align 4
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = call i32 @dev_name(i32* %42)
  %44 = load %struct.sun6i_rtc_dev*, %struct.sun6i_rtc_dev** %4, align 8
  %45 = call i32 @devm_request_irq(i32* %35, i32 %39, i32 %40, i32 0, i32 %43, %struct.sun6i_rtc_dev* %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %33
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = call i32 @dev_err(i32* %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %134

53:                                               ; preds = %33
  %54 = load %struct.sun6i_rtc_dev*, %struct.sun6i_rtc_dev** %4, align 8
  %55 = getelementptr inbounds %struct.sun6i_rtc_dev, %struct.sun6i_rtc_dev* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @SUN6I_ALRM_COUNTER, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writel(i32 0, i64 %58)
  %60 = load %struct.sun6i_rtc_dev*, %struct.sun6i_rtc_dev** %4, align 8
  %61 = getelementptr inbounds %struct.sun6i_rtc_dev, %struct.sun6i_rtc_dev* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @SUN6I_ALRM_EN, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @writel(i32 0, i64 %64)
  %66 = load %struct.sun6i_rtc_dev*, %struct.sun6i_rtc_dev** %4, align 8
  %67 = getelementptr inbounds %struct.sun6i_rtc_dev, %struct.sun6i_rtc_dev* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @SUN6I_ALRM_IRQ_EN, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @writel(i32 0, i64 %70)
  %72 = load %struct.sun6i_rtc_dev*, %struct.sun6i_rtc_dev** %4, align 8
  %73 = getelementptr inbounds %struct.sun6i_rtc_dev, %struct.sun6i_rtc_dev* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @SUN6I_ALRM1_EN, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @writel(i32 0, i64 %76)
  %78 = load %struct.sun6i_rtc_dev*, %struct.sun6i_rtc_dev** %4, align 8
  %79 = getelementptr inbounds %struct.sun6i_rtc_dev, %struct.sun6i_rtc_dev* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @SUN6I_ALRM1_IRQ_EN, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @writel(i32 0, i64 %82)
  %84 = load i32, i32* @SUN6I_ALRM_IRQ_STA_CNT_IRQ_PEND, align 4
  %85 = load %struct.sun6i_rtc_dev*, %struct.sun6i_rtc_dev** %4, align 8
  %86 = getelementptr inbounds %struct.sun6i_rtc_dev, %struct.sun6i_rtc_dev* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @SUN6I_ALRM_IRQ_STA, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @writel(i32 %84, i64 %89)
  %91 = load i32, i32* @SUN6I_ALRM1_IRQ_STA_WEEK_IRQ_PEND, align 4
  %92 = load %struct.sun6i_rtc_dev*, %struct.sun6i_rtc_dev** %4, align 8
  %93 = getelementptr inbounds %struct.sun6i_rtc_dev, %struct.sun6i_rtc_dev* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @SUN6I_ALRM1_IRQ_STA, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @writel(i32 %91, i64 %96)
  %98 = load %struct.sun6i_rtc_dev*, %struct.sun6i_rtc_dev** %4, align 8
  %99 = getelementptr inbounds %struct.sun6i_rtc_dev, %struct.sun6i_rtc_dev* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @SUN6I_ALARM_CONFIG, align 8
  %102 = add nsw i64 %100, %101
  %103 = call i32 @writel(i32 0, i64 %102)
  %104 = load %struct.sun6i_rtc_dev*, %struct.sun6i_rtc_dev** %4, align 8
  %105 = getelementptr inbounds %struct.sun6i_rtc_dev, %struct.sun6i_rtc_dev* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @clk_prepare_enable(i32 %106)
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 0
  %110 = call i32 @device_init_wakeup(i32* %109, i32 1)
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 0
  %113 = load i32, i32* @THIS_MODULE, align 4
  %114 = call i32 @devm_rtc_device_register(i32* %112, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* @sun6i_rtc_ops, i32 %113)
  %115 = load %struct.sun6i_rtc_dev*, %struct.sun6i_rtc_dev** %4, align 8
  %116 = getelementptr inbounds %struct.sun6i_rtc_dev, %struct.sun6i_rtc_dev* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 8
  %117 = load %struct.sun6i_rtc_dev*, %struct.sun6i_rtc_dev** %4, align 8
  %118 = getelementptr inbounds %struct.sun6i_rtc_dev, %struct.sun6i_rtc_dev* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call i64 @IS_ERR(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %53
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %123, i32 0, i32 0
  %125 = call i32 @dev_err(i32* %124, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %126 = load %struct.sun6i_rtc_dev*, %struct.sun6i_rtc_dev** %4, align 8
  %127 = getelementptr inbounds %struct.sun6i_rtc_dev, %struct.sun6i_rtc_dev* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @PTR_ERR(i32 %128)
  store i32 %129, i32* %2, align 4
  br label %134

130:                                              ; preds = %53
  %131 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %132 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %131, i32 0, i32 0
  %133 = call i32 @dev_info(i32* %132, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %134

134:                                              ; preds = %130, %122, %48, %28, %9
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sun6i_rtc_dev*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i32, %struct.sun6i_rtc_dev*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

declare dso_local i32 @devm_rtc_device_register(i32*, i8*, i32*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
