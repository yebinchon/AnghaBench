; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rk808.c_rk808_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rk808.c_rk808_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.platform_device = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.rk808 = type { i32, i32 }
%struct.rk808_rtc = type { i32, %struct.TYPE_12__*, %struct.TYPE_13__*, %struct.rk808* }
%struct.TYPE_12__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rk817_creg = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@rk808_creg = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@BIT_RTC_CTRL_REG_STOP_RTC_M = common dso_local global i32 0, align 4
@BIT_RTC_CTRL_REG_RTC_READSEL_M = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to update RTC control: %d\0A\00", align 1
@RTC_STATUS_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to write RTC status: %d\0A\00", align 1
@rk808_rtc_ops = common dso_local global i32 0, align 4
@rk808_alarm_irq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"RTC alarm\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Failed to request alarm IRQ %d: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rk808_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk808_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.rk808*, align 8
  %5 = alloca %struct.rk808_rtc*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.rk808* @dev_get_drvdata(i32 %10)
  store %struct.rk808* %11, %struct.rk808** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.rk808_rtc* @devm_kzalloc(%struct.TYPE_14__* %13, i32 32, i32 %14)
  store %struct.rk808_rtc* %15, %struct.rk808_rtc** %5, align 8
  %16 = load %struct.rk808_rtc*, %struct.rk808_rtc** %5, align 8
  %17 = icmp eq %struct.rk808_rtc* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %139

21:                                               ; preds = %1
  %22 = load %struct.rk808*, %struct.rk808** %4, align 8
  %23 = getelementptr inbounds %struct.rk808, %struct.rk808* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %28 [
    i32 129, label %25
    i32 128, label %25
  ]

25:                                               ; preds = %21, %21
  %26 = load %struct.rk808_rtc*, %struct.rk808_rtc** %5, align 8
  %27 = getelementptr inbounds %struct.rk808_rtc, %struct.rk808_rtc* %26, i32 0, i32 2
  store %struct.TYPE_13__* @rk817_creg, %struct.TYPE_13__** %27, align 8
  br label %31

28:                                               ; preds = %21
  %29 = load %struct.rk808_rtc*, %struct.rk808_rtc** %5, align 8
  %30 = getelementptr inbounds %struct.rk808_rtc, %struct.rk808_rtc* %29, i32 0, i32 2
  store %struct.TYPE_13__* @rk808_creg, %struct.TYPE_13__** %30, align 8
  br label %31

31:                                               ; preds = %28, %25
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = load %struct.rk808_rtc*, %struct.rk808_rtc** %5, align 8
  %34 = call i32 @platform_set_drvdata(%struct.platform_device* %32, %struct.rk808_rtc* %33)
  %35 = load %struct.rk808*, %struct.rk808** %4, align 8
  %36 = load %struct.rk808_rtc*, %struct.rk808_rtc** %5, align 8
  %37 = getelementptr inbounds %struct.rk808_rtc, %struct.rk808_rtc* %36, i32 0, i32 3
  store %struct.rk808* %35, %struct.rk808** %37, align 8
  %38 = load %struct.rk808*, %struct.rk808** %4, align 8
  %39 = getelementptr inbounds %struct.rk808, %struct.rk808* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.rk808_rtc*, %struct.rk808_rtc** %5, align 8
  %42 = getelementptr inbounds %struct.rk808_rtc, %struct.rk808_rtc* %41, i32 0, i32 2
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @BIT_RTC_CTRL_REG_STOP_RTC_M, align 4
  %47 = load i32, i32* @BIT_RTC_CTRL_REG_RTC_READSEL_M, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @BIT_RTC_CTRL_REG_RTC_READSEL_M, align 4
  %50 = call i32 @regmap_update_bits(i32 %40, i32 %45, i32 %48, i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %31
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = load i32, i32* %6, align 4
  %57 = call i32 (%struct.TYPE_14__*, i8*, i32, ...) @dev_err(%struct.TYPE_14__* %55, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %2, align 4
  br label %139

59:                                               ; preds = %31
  %60 = load %struct.rk808*, %struct.rk808** %4, align 8
  %61 = getelementptr inbounds %struct.rk808, %struct.rk808* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.rk808_rtc*, %struct.rk808_rtc** %5, align 8
  %64 = getelementptr inbounds %struct.rk808_rtc, %struct.rk808_rtc* %63, i32 0, i32 2
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @RTC_STATUS_MASK, align 4
  %69 = call i32 @regmap_write(i32 %62, i32 %67, i32 %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %59
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = load i32, i32* %6, align 4
  %76 = call i32 (%struct.TYPE_14__*, i8*, i32, ...) @dev_err(%struct.TYPE_14__* %74, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %2, align 4
  br label %139

78:                                               ; preds = %59
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %79, i32 0, i32 0
  %81 = call i32 @device_init_wakeup(%struct.TYPE_14__* %80, i32 1)
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = call %struct.TYPE_12__* @devm_rtc_allocate_device(%struct.TYPE_14__* %83)
  %85 = load %struct.rk808_rtc*, %struct.rk808_rtc** %5, align 8
  %86 = getelementptr inbounds %struct.rk808_rtc, %struct.rk808_rtc* %85, i32 0, i32 1
  store %struct.TYPE_12__* %84, %struct.TYPE_12__** %86, align 8
  %87 = load %struct.rk808_rtc*, %struct.rk808_rtc** %5, align 8
  %88 = getelementptr inbounds %struct.rk808_rtc, %struct.rk808_rtc* %87, i32 0, i32 1
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %88, align 8
  %90 = call i64 @IS_ERR(%struct.TYPE_12__* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %78
  %93 = load %struct.rk808_rtc*, %struct.rk808_rtc** %5, align 8
  %94 = getelementptr inbounds %struct.rk808_rtc, %struct.rk808_rtc* %93, i32 0, i32 1
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %94, align 8
  %96 = call i32 @PTR_ERR(%struct.TYPE_12__* %95)
  store i32 %96, i32* %2, align 4
  br label %139

97:                                               ; preds = %78
  %98 = load %struct.rk808_rtc*, %struct.rk808_rtc** %5, align 8
  %99 = getelementptr inbounds %struct.rk808_rtc, %struct.rk808_rtc* %98, i32 0, i32 1
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  store i32* @rk808_rtc_ops, i32** %101, align 8
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = call i32 @platform_get_irq(%struct.platform_device* %102, i32 0)
  %104 = load %struct.rk808_rtc*, %struct.rk808_rtc** %5, align 8
  %105 = getelementptr inbounds %struct.rk808_rtc, %struct.rk808_rtc* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load %struct.rk808_rtc*, %struct.rk808_rtc** %5, align 8
  %107 = getelementptr inbounds %struct.rk808_rtc, %struct.rk808_rtc* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %97
  %111 = load %struct.rk808_rtc*, %struct.rk808_rtc** %5, align 8
  %112 = getelementptr inbounds %struct.rk808_rtc, %struct.rk808_rtc* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  store i32 %113, i32* %2, align 4
  br label %139

114:                                              ; preds = %97
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %115, i32 0, i32 0
  %117 = load %struct.rk808_rtc*, %struct.rk808_rtc** %5, align 8
  %118 = getelementptr inbounds %struct.rk808_rtc, %struct.rk808_rtc* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @rk808_alarm_irq, align 4
  %121 = load %struct.rk808_rtc*, %struct.rk808_rtc** %5, align 8
  %122 = call i32 @devm_request_threaded_irq(%struct.TYPE_14__* %116, i32 %119, i32* null, i32 %120, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), %struct.rk808_rtc* %121)
  store i32 %122, i32* %6, align 4
  %123 = load i32, i32* %6, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %114
  %126 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %127 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %126, i32 0, i32 0
  %128 = load %struct.rk808_rtc*, %struct.rk808_rtc** %5, align 8
  %129 = getelementptr inbounds %struct.rk808_rtc, %struct.rk808_rtc* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %6, align 4
  %132 = call i32 (%struct.TYPE_14__*, i8*, i32, ...) @dev_err(%struct.TYPE_14__* %127, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %130, i32 %131)
  %133 = load i32, i32* %6, align 4
  store i32 %133, i32* %2, align 4
  br label %139

134:                                              ; preds = %114
  %135 = load %struct.rk808_rtc*, %struct.rk808_rtc** %5, align 8
  %136 = getelementptr inbounds %struct.rk808_rtc, %struct.rk808_rtc* %135, i32 0, i32 1
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %136, align 8
  %138 = call i32 @rtc_register_device(%struct.TYPE_12__* %137)
  store i32 %138, i32* %2, align 4
  br label %139

139:                                              ; preds = %134, %125, %110, %92, %72, %53, %18
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local %struct.rk808* @dev_get_drvdata(i32) #1

declare dso_local %struct.rk808_rtc* @devm_kzalloc(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rk808_rtc*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_14__*, i8*, i32, ...) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @device_init_wakeup(%struct.TYPE_14__*, i32) #1

declare dso_local %struct.TYPE_12__* @devm_rtc_allocate_device(%struct.TYPE_14__*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_12__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_12__*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_14__*, i32, i32*, i32, i32, i8*, %struct.rk808_rtc*) #1

declare dso_local i32 @rtc_register_device(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
