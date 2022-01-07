; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-tps65910.c_tps65910_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-tps65910.c_tps65910_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.tps65910 = type { i32 }
%struct.tps65910_rtc = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TPS65910_RTC_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Enabling rtc-tps65910.\0A\00", align 1
@TPS65910_DEVCTRL = common dso_local global i32 0, align 4
@DEVCTRL_RTC_PWDN_MASK = common dso_local global i32 0, align 4
@DEVCTRL_RTC_PWDN_SHIFT = common dso_local global i32 0, align 4
@TPS65910_RTC_CTRL_STOP_RTC = common dso_local global i32 0, align 4
@TPS65910_RTC_CTRL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Wake up is not possible as irq = %d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@tps65910_rtc_interrupt = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"IRQ is not free.\0A\00", align 1
@tps65910_rtc_ops = common dso_local global i32 0, align 4
@RTC_TIMESTAMP_BEGIN_2000 = common dso_local global i32 0, align 4
@RTC_TIMESTAMP_END_2099 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tps65910_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65910_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.tps65910*, align 8
  %5 = alloca %struct.tps65910_rtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.tps65910* null, %struct.tps65910** %4, align 8
  store %struct.tps65910_rtc* null, %struct.tps65910_rtc** %5, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.tps65910* @dev_get_drvdata(i32 %12)
  store %struct.tps65910* %13, %struct.tps65910** %4, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.tps65910_rtc* @devm_kzalloc(%struct.TYPE_15__* %15, i32 16, i32 %16)
  store %struct.tps65910_rtc* %17, %struct.tps65910_rtc** %5, align 8
  %18 = load %struct.tps65910_rtc*, %struct.tps65910_rtc** %5, align 8
  %19 = icmp ne %struct.tps65910_rtc* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %147

23:                                               ; preds = %1
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = call %struct.TYPE_14__* @devm_rtc_allocate_device(%struct.TYPE_15__* %25)
  %27 = load %struct.tps65910_rtc*, %struct.tps65910_rtc** %5, align 8
  %28 = getelementptr inbounds %struct.tps65910_rtc, %struct.tps65910_rtc* %27, i32 0, i32 1
  store %struct.TYPE_14__* %26, %struct.TYPE_14__** %28, align 8
  %29 = load %struct.tps65910_rtc*, %struct.tps65910_rtc** %5, align 8
  %30 = getelementptr inbounds %struct.tps65910_rtc, %struct.tps65910_rtc* %29, i32 0, i32 1
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %32 = call i64 @IS_ERR(%struct.TYPE_14__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %23
  %35 = load %struct.tps65910_rtc*, %struct.tps65910_rtc** %5, align 8
  %36 = getelementptr inbounds %struct.tps65910_rtc, %struct.tps65910_rtc* %35, i32 0, i32 1
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  %38 = call i32 @PTR_ERR(%struct.TYPE_14__* %37)
  store i32 %38, i32* %2, align 4
  br label %147

39:                                               ; preds = %23
  %40 = load %struct.tps65910*, %struct.tps65910** %4, align 8
  %41 = getelementptr inbounds %struct.tps65910, %struct.tps65910* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @TPS65910_RTC_STATUS, align 4
  %44 = call i32 @regmap_read(i32 %42, i32 %43, i32* %8)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %147

49:                                               ; preds = %39
  %50 = load %struct.tps65910*, %struct.tps65910** %4, align 8
  %51 = getelementptr inbounds %struct.tps65910, %struct.tps65910* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @TPS65910_RTC_STATUS, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @regmap_write(i32 %52, i32 %53, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %2, align 4
  br label %147

60:                                               ; preds = %49
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = call i32 @dev_dbg(%struct.TYPE_15__* %62, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %64 = load %struct.tps65910*, %struct.tps65910** %4, align 8
  %65 = getelementptr inbounds %struct.tps65910, %struct.tps65910* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @TPS65910_DEVCTRL, align 4
  %68 = load i32, i32* @DEVCTRL_RTC_PWDN_MASK, align 4
  %69 = load i32, i32* @DEVCTRL_RTC_PWDN_SHIFT, align 4
  %70 = shl i32 0, %69
  %71 = call i32 @regmap_update_bits(i32 %66, i32 %67, i32 %68, i32 %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %60
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %2, align 4
  br label %147

76:                                               ; preds = %60
  %77 = load i32, i32* @TPS65910_RTC_CTRL_STOP_RTC, align 4
  store i32 %77, i32* %8, align 4
  %78 = load %struct.tps65910*, %struct.tps65910** %4, align 8
  %79 = getelementptr inbounds %struct.tps65910, %struct.tps65910* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @TPS65910_RTC_CTRL, align 4
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @regmap_write(i32 %80, i32 %81, i32 %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %76
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %2, align 4
  br label %147

88:                                               ; preds = %76
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = load %struct.tps65910_rtc*, %struct.tps65910_rtc** %5, align 8
  %91 = call i32 @platform_set_drvdata(%struct.platform_device* %89, %struct.tps65910_rtc* %90)
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = call i32 @platform_get_irq(%struct.platform_device* %92, i32 0)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp sle i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %88
  %97 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %98 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %97, i32 0, i32 0
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @dev_warn(%struct.TYPE_15__* %98, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* @ENXIO, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %2, align 4
  br label %147

103:                                              ; preds = %88
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %104, i32 0, i32 0
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @tps65910_rtc_interrupt, align 4
  %108 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %109, i32 0, i32 0
  %111 = call i32 @dev_name(%struct.TYPE_15__* %110)
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %112, i32 0, i32 0
  %114 = call i32 @devm_request_threaded_irq(%struct.TYPE_15__* %105, i32 %106, i32* null, i32 %107, i32 %108, i32 %111, %struct.TYPE_15__* %113)
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* %6, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %103
  %118 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %119 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %118, i32 0, i32 0
  %120 = call i32 @dev_err(%struct.TYPE_15__* %119, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %121 = load i32, i32* %6, align 4
  store i32 %121, i32* %2, align 4
  br label %147

122:                                              ; preds = %103
  %123 = load i32, i32* %7, align 4
  %124 = load %struct.tps65910_rtc*, %struct.tps65910_rtc** %5, align 8
  %125 = getelementptr inbounds %struct.tps65910_rtc, %struct.tps65910_rtc* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  %126 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %127 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %126, i32 0, i32 0
  %128 = call i32 @device_set_wakeup_capable(%struct.TYPE_15__* %127, i32 1)
  %129 = load %struct.tps65910_rtc*, %struct.tps65910_rtc** %5, align 8
  %130 = getelementptr inbounds %struct.tps65910_rtc, %struct.tps65910_rtc* %129, i32 0, i32 1
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 2
  store i32* @tps65910_rtc_ops, i32** %132, align 8
  %133 = load i32, i32* @RTC_TIMESTAMP_BEGIN_2000, align 4
  %134 = load %struct.tps65910_rtc*, %struct.tps65910_rtc** %5, align 8
  %135 = getelementptr inbounds %struct.tps65910_rtc, %struct.tps65910_rtc* %134, i32 0, i32 1
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 1
  store i32 %133, i32* %137, align 4
  %138 = load i32, i32* @RTC_TIMESTAMP_END_2099, align 4
  %139 = load %struct.tps65910_rtc*, %struct.tps65910_rtc** %5, align 8
  %140 = getelementptr inbounds %struct.tps65910_rtc, %struct.tps65910_rtc* %139, i32 0, i32 1
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 0
  store i32 %138, i32* %142, align 8
  %143 = load %struct.tps65910_rtc*, %struct.tps65910_rtc** %5, align 8
  %144 = getelementptr inbounds %struct.tps65910_rtc, %struct.tps65910_rtc* %143, i32 0, i32 1
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %144, align 8
  %146 = call i32 @rtc_register_device(%struct.TYPE_14__* %145)
  store i32 %146, i32* %2, align 4
  br label %147

147:                                              ; preds = %122, %117, %96, %86, %74, %58, %47, %34, %20
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local %struct.tps65910* @dev_get_drvdata(i32) #1

declare dso_local %struct.tps65910_rtc* @devm_kzalloc(%struct.TYPE_15__*, i32, i32) #1

declare dso_local %struct.TYPE_14__* @devm_rtc_allocate_device(%struct.TYPE_15__*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_14__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_14__*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.tps65910_rtc*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_15__*, i8*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_15__*, i32, i32*, i32, i32, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @dev_name(%struct.TYPE_15__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @device_set_wakeup_capable(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @rtc_register_device(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
