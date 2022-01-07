; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-tps80031.c_tps80031_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-tps80031.c_tps80031_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.tps80031_rtc = type { i32, i32 }
%struct.rtc_time = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TPS80031_SLAVE_ID1 = common dso_local global i32 0, align 4
@TPS80031_RTC_CTRL_REG = common dso_local global i32 0, align 4
@STOP_RTC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to start RTC. err = %d\0A\00", align 1
@RTC_YEAR_OFFSET = common dso_local global i32 0, align 4
@TPS80031_RTC_POR_YEAR = common dso_local global i32 0, align 4
@TPS80031_RTC_POR_MONTH = common dso_local global i32 0, align 4
@TPS80031_RTC_POR_DAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"RTC set time failed, err = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Clear alarm int failed, err = %d\0A\00", align 1
@tps80031_rtc_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"RTC registration failed, err %d\0A\00", align 1
@tps80031_rtc_irq = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"request IRQ:%d failed, err = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tps80031_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps80031_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.tps80031_rtc*, align 8
  %5 = alloca %struct.rtc_time, align 4
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.tps80031_rtc* @devm_kzalloc(%struct.TYPE_10__* %8, i32 8, i32 %9)
  store %struct.tps80031_rtc* %10, %struct.tps80031_rtc** %4, align 8
  %11 = load %struct.tps80031_rtc*, %struct.tps80031_rtc** %4, align 8
  %12 = icmp ne %struct.tps80031_rtc* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %143

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = call i32 @platform_get_irq(%struct.platform_device* %17, i32 0)
  %19 = load %struct.tps80031_rtc*, %struct.tps80031_rtc** %4, align 8
  %20 = getelementptr inbounds %struct.tps80031_rtc, %struct.tps80031_rtc* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = load %struct.tps80031_rtc*, %struct.tps80031_rtc** %4, align 8
  %23 = call i32 @platform_set_drvdata(%struct.platform_device* %21, %struct.tps80031_rtc* %22)
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @TPS80031_SLAVE_ID1, align 4
  %29 = load i32, i32* @TPS80031_RTC_CTRL_REG, align 4
  %30 = load i32, i32* @STOP_RTC, align 4
  %31 = call i32 @tps80031_set_bits(i32 %27, i32 %28, i32 %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %16
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = load i32, i32* %6, align 4
  %38 = call i32 (%struct.TYPE_10__*, i8*, i32, ...) @dev_err(%struct.TYPE_10__* %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %2, align 4
  br label %143

40:                                               ; preds = %16
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = call i32 @tps80031_rtc_read_time(%struct.TYPE_10__* %42, %struct.rtc_time* %5)
  %44 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %5, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @RTC_YEAR_OFFSET, align 4
  %47 = load i32, i32* @TPS80031_RTC_POR_YEAR, align 4
  %48 = add nsw i32 %46, %47
  %49 = icmp eq i32 %45, %48
  br i1 %49, label %50, label %77

50:                                               ; preds = %40
  %51 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %5, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @TPS80031_RTC_POR_MONTH, align 4
  %54 = sub nsw i32 %53, 1
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %77

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %5, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @TPS80031_RTC_POR_DAY, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %77

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %5, i32 0, i32 0
  store i32 2000, i32* %62, align 4
  %63 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %5, i32 0, i32 2
  store i32 1, i32* %63, align 4
  %64 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %5, i32 0, i32 1
  store i32 1, i32* %64, align 4
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = call i32 @tps80031_rtc_set_time(%struct.TYPE_10__* %66, %struct.rtc_time* %5)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %61
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = load i32, i32* %6, align 4
  %74 = call i32 (%struct.TYPE_10__*, i8*, i32, ...) @dev_err(%struct.TYPE_10__* %72, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %2, align 4
  br label %143

76:                                               ; preds = %61
  br label %77

77:                                               ; preds = %76, %56, %50, %40
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = load %struct.tps80031_rtc*, %struct.tps80031_rtc** %4, align 8
  %81 = call i32 @clear_alarm_int_status(%struct.TYPE_10__* %79, %struct.tps80031_rtc* %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %77
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = load i32, i32* %6, align 4
  %88 = call i32 (%struct.TYPE_10__*, i8*, i32, ...) @dev_err(%struct.TYPE_10__* %86, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* %6, align 4
  store i32 %89, i32* %2, align 4
  br label %143

90:                                               ; preds = %77
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %91, i32 0, i32 0
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @THIS_MODULE, align 4
  %97 = call i32 @devm_rtc_device_register(%struct.TYPE_10__* %92, i32 %95, i32* @tps80031_rtc_ops, i32 %96)
  %98 = load %struct.tps80031_rtc*, %struct.tps80031_rtc** %4, align 8
  %99 = getelementptr inbounds %struct.tps80031_rtc, %struct.tps80031_rtc* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load %struct.tps80031_rtc*, %struct.tps80031_rtc** %4, align 8
  %101 = getelementptr inbounds %struct.tps80031_rtc, %struct.tps80031_rtc* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @IS_ERR(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %90
  %106 = load %struct.tps80031_rtc*, %struct.tps80031_rtc** %4, align 8
  %107 = getelementptr inbounds %struct.tps80031_rtc, %struct.tps80031_rtc* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @PTR_ERR(i32 %108)
  store i32 %109, i32* %6, align 4
  %110 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %111 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %110, i32 0, i32 0
  %112 = load i32, i32* %6, align 4
  %113 = call i32 (%struct.TYPE_10__*, i8*, i32, ...) @dev_err(%struct.TYPE_10__* %111, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* %6, align 4
  store i32 %114, i32* %2, align 4
  br label %143

115:                                              ; preds = %90
  %116 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %117 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %116, i32 0, i32 0
  %118 = load %struct.tps80031_rtc*, %struct.tps80031_rtc** %4, align 8
  %119 = getelementptr inbounds %struct.tps80031_rtc, %struct.tps80031_rtc* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @tps80031_rtc_irq, align 4
  %122 = load i32, i32* @IRQF_ONESHOT, align 4
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %123, i32 0, i32 0
  %125 = call i32 @dev_name(%struct.TYPE_10__* %124)
  %126 = load %struct.tps80031_rtc*, %struct.tps80031_rtc** %4, align 8
  %127 = call i32 @devm_request_threaded_irq(%struct.TYPE_10__* %117, i32 %120, i32* null, i32 %121, i32 %122, i32 %125, %struct.tps80031_rtc* %126)
  store i32 %127, i32* %6, align 4
  %128 = load i32, i32* %6, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %115
  %131 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %132 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %131, i32 0, i32 0
  %133 = load %struct.tps80031_rtc*, %struct.tps80031_rtc** %4, align 8
  %134 = getelementptr inbounds %struct.tps80031_rtc, %struct.tps80031_rtc* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %6, align 4
  %137 = call i32 (%struct.TYPE_10__*, i8*, i32, ...) @dev_err(%struct.TYPE_10__* %132, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %135, i32 %136)
  %138 = load i32, i32* %6, align 4
  store i32 %138, i32* %2, align 4
  br label %143

139:                                              ; preds = %115
  %140 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %141 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %140, i32 0, i32 0
  %142 = call i32 @device_set_wakeup_capable(%struct.TYPE_10__* %141, i32 1)
  store i32 0, i32* %2, align 4
  br label %143

143:                                              ; preds = %139, %130, %105, %84, %70, %34, %13
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local %struct.tps80031_rtc* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.tps80031_rtc*) #1

declare dso_local i32 @tps80031_set_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, i32, ...) #1

declare dso_local i32 @tps80031_rtc_read_time(%struct.TYPE_10__*, %struct.rtc_time*) #1

declare dso_local i32 @tps80031_rtc_set_time(%struct.TYPE_10__*, %struct.rtc_time*) #1

declare dso_local i32 @clear_alarm_int_status(%struct.TYPE_10__*, %struct.tps80031_rtc*) #1

declare dso_local i32 @devm_rtc_device_register(%struct.TYPE_10__*, i32, i32*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_10__*, i32, i32*, i32, i32, i32, %struct.tps80031_rtc*) #1

declare dso_local i32 @dev_name(%struct.TYPE_10__*) #1

declare dso_local i32 @device_set_wakeup_capable(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
