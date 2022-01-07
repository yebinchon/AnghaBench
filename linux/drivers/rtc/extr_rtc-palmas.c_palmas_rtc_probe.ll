; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-palmas.c_palmas_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-palmas.c_palmas_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.palmas = type { i32 }
%struct.palmas_rtc = type { i32, i32, %struct.TYPE_8__* }

@.str = private unnamed_addr constant [29 x i8] c"ti,backup-battery-chargeable\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"ti,backup-battery-charge-high-current\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"clear RTC int failed, err = %d\0A\00", align 1
@PALMAS_BACKUP_BATTERY_CTRL_BBS_BBC_LOW_ICHRG = common dso_local global i32 0, align 4
@PALMAS_PMU_CONTROL_BASE = common dso_local global i32 0, align 4
@PALMAS_BACKUP_BATTERY_CTRL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"BACKUP_BATTERY_CTRL update failed, %d\0A\00", align 1
@PALMAS_BACKUP_BATTERY_CTRL_BB_CHG_EN = common dso_local global i32 0, align 4
@PALMAS_RTC_BASE = common dso_local global i32 0, align 4
@PALMAS_RTC_CTRL_REG = common dso_local global i32 0, align 4
@PALMAS_RTC_CTRL_REG_STOP_RTC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"RTC_CTRL write failed, err = %d\0A\00", align 1
@palmas_rtc_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"RTC register failed, err = %d\0A\00", align 1
@palmas_rtc_interrupt = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"IRQ request failed, err = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @palmas_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @palmas_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.palmas*, align 8
  %5 = alloca %struct.palmas_rtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.palmas* @dev_get_drvdata(i32 %13)
  store %struct.palmas* %14, %struct.palmas** %4, align 8
  store %struct.palmas_rtc* null, %struct.palmas_rtc** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @of_property_read_bool(i64 %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 %25, i32* %7, align 4
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @of_property_read_bool(i64 %29, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %20, %1
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.palmas_rtc* @devm_kzalloc(%struct.TYPE_8__* %33, i32 16, i32 %34)
  store %struct.palmas_rtc* %35, %struct.palmas_rtc** %5, align 8
  %36 = load %struct.palmas_rtc*, %struct.palmas_rtc** %5, align 8
  %37 = icmp ne %struct.palmas_rtc* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %170

41:                                               ; preds = %31
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = call i32 @palmas_clear_interrupts(%struct.TYPE_8__* %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @dev_err(%struct.TYPE_8__* %49, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %2, align 4
  br label %170

53:                                               ; preds = %41
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = load %struct.palmas_rtc*, %struct.palmas_rtc** %5, align 8
  %57 = getelementptr inbounds %struct.palmas_rtc, %struct.palmas_rtc* %56, i32 0, i32 2
  store %struct.TYPE_8__* %55, %struct.TYPE_8__** %57, align 8
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = load %struct.palmas_rtc*, %struct.palmas_rtc** %5, align 8
  %60 = call i32 @platform_set_drvdata(%struct.platform_device* %58, %struct.palmas_rtc* %59)
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %99

63:                                               ; preds = %53
  %64 = load i32, i32* @PALMAS_BACKUP_BATTERY_CTRL_BBS_BBC_LOW_ICHRG, align 4
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i32 0, i32* %9, align 4
  br label %68

68:                                               ; preds = %67, %63
  %69 = load %struct.palmas*, %struct.palmas** %4, align 8
  %70 = load i32, i32* @PALMAS_PMU_CONTROL_BASE, align 4
  %71 = load i32, i32* @PALMAS_BACKUP_BATTERY_CTRL, align 4
  %72 = load i32, i32* @PALMAS_BACKUP_BATTERY_CTRL_BBS_BBC_LOW_ICHRG, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @palmas_update_bits(%struct.palmas* %69, i32 %70, i32 %71, i32 %72, i32 %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %68
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @dev_err(%struct.TYPE_8__* %79, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %2, align 4
  br label %170

83:                                               ; preds = %68
  %84 = load %struct.palmas*, %struct.palmas** %4, align 8
  %85 = load i32, i32* @PALMAS_PMU_CONTROL_BASE, align 4
  %86 = load i32, i32* @PALMAS_BACKUP_BATTERY_CTRL, align 4
  %87 = load i32, i32* @PALMAS_BACKUP_BATTERY_CTRL_BB_CHG_EN, align 4
  %88 = load i32, i32* @PALMAS_BACKUP_BATTERY_CTRL_BB_CHG_EN, align 4
  %89 = call i32 @palmas_update_bits(%struct.palmas* %84, i32 %85, i32 %86, i32 %87, i32 %88)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %83
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @dev_err(%struct.TYPE_8__* %94, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %2, align 4
  br label %170

98:                                               ; preds = %83
  br label %99

99:                                               ; preds = %98, %53
  %100 = load %struct.palmas*, %struct.palmas** %4, align 8
  %101 = load i32, i32* @PALMAS_RTC_BASE, align 4
  %102 = load i32, i32* @PALMAS_RTC_CTRL_REG, align 4
  %103 = load i32, i32* @PALMAS_RTC_CTRL_REG_STOP_RTC, align 4
  %104 = load i32, i32* @PALMAS_RTC_CTRL_REG_STOP_RTC, align 4
  %105 = call i32 @palmas_update_bits(%struct.palmas* %100, i32 %101, i32 %102, i32 %103, i32 %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %99
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %109, i32 0, i32 0
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @dev_err(%struct.TYPE_8__* %110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* %6, align 4
  store i32 %113, i32* %2, align 4
  br label %170

114:                                              ; preds = %99
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = call i32 @platform_get_irq(%struct.platform_device* %115, i32 0)
  %117 = load %struct.palmas_rtc*, %struct.palmas_rtc** %5, align 8
  %118 = getelementptr inbounds %struct.palmas_rtc, %struct.palmas_rtc* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %119, i32 0, i32 0
  %121 = call i32 @device_init_wakeup(%struct.TYPE_8__* %120, i32 1)
  %122 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %123 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %122, i32 0, i32 0
  %124 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %125 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @THIS_MODULE, align 4
  %128 = call i32 @devm_rtc_device_register(%struct.TYPE_8__* %123, i32 %126, i32* @palmas_rtc_ops, i32 %127)
  %129 = load %struct.palmas_rtc*, %struct.palmas_rtc** %5, align 8
  %130 = getelementptr inbounds %struct.palmas_rtc, %struct.palmas_rtc* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load %struct.palmas_rtc*, %struct.palmas_rtc** %5, align 8
  %132 = getelementptr inbounds %struct.palmas_rtc, %struct.palmas_rtc* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i64 @IS_ERR(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %114
  %137 = load %struct.palmas_rtc*, %struct.palmas_rtc** %5, align 8
  %138 = getelementptr inbounds %struct.palmas_rtc, %struct.palmas_rtc* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @PTR_ERR(i32 %139)
  store i32 %140, i32* %6, align 4
  %141 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %142 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %141, i32 0, i32 0
  %143 = load i32, i32* %6, align 4
  %144 = call i32 @dev_err(%struct.TYPE_8__* %142, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %143)
  %145 = load i32, i32* %6, align 4
  store i32 %145, i32* %2, align 4
  br label %170

146:                                              ; preds = %114
  %147 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %148 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %147, i32 0, i32 0
  %149 = load %struct.palmas_rtc*, %struct.palmas_rtc** %5, align 8
  %150 = getelementptr inbounds %struct.palmas_rtc, %struct.palmas_rtc* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @palmas_rtc_interrupt, align 4
  %153 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %154 = load i32, i32* @IRQF_ONESHOT, align 4
  %155 = or i32 %153, %154
  %156 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %157 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %156, i32 0, i32 0
  %158 = call i32 @dev_name(%struct.TYPE_8__* %157)
  %159 = load %struct.palmas_rtc*, %struct.palmas_rtc** %5, align 8
  %160 = call i32 @devm_request_threaded_irq(%struct.TYPE_8__* %148, i32 %151, i32* null, i32 %152, i32 %155, i32 %158, %struct.palmas_rtc* %159)
  store i32 %160, i32* %6, align 4
  %161 = load i32, i32* %6, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %146
  %164 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %165 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %164, i32 0, i32 0
  %166 = load i32, i32* %6, align 4
  %167 = call i32 @dev_err(%struct.TYPE_8__* %165, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %166)
  %168 = load i32, i32* %6, align 4
  store i32 %168, i32* %2, align 4
  br label %170

169:                                              ; preds = %146
  store i32 0, i32* %2, align 4
  br label %170

170:                                              ; preds = %169, %163, %136, %108, %92, %77, %47, %38
  %171 = load i32, i32* %2, align 4
  ret i32 %171
}

declare dso_local %struct.palmas* @dev_get_drvdata(i32) #1

declare dso_local i32 @of_property_read_bool(i64, i8*) #1

declare dso_local %struct.palmas_rtc* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @palmas_clear_interrupts(%struct.TYPE_8__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.palmas_rtc*) #1

declare dso_local i32 @palmas_update_bits(%struct.palmas*, i32, i32, i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @device_init_wakeup(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @devm_rtc_device_register(%struct.TYPE_8__*, i32, i32*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_8__*, i32, i32*, i32, i32, i32, %struct.palmas_rtc*) #1

declare dso_local i32 @dev_name(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
