; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rc5t583.c_rc5t583_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rc5t583.c_rc5t583_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.rc5t583 = type { i32, i32 }
%struct.rc5t583_rtc = type { i32 }
%struct.rc5t583_platform_data = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RC5T583_RTC_CTL2 = common dso_local global i32 0, align 4
@RC5T583_RTC_ADJ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"unable to program rtc_adjust reg\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Wake up is not possible as irq = %d\0A\00", align 1
@RC5T583_IRQ_YALE = common dso_local global i64 0, align 8
@rc5t583_rtc_interrupt = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"rtc-rc5t583\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"IRQ is not free.\0A\00", align 1
@rc5t583_rtc_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"RTC device register: err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rc5t583_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rc5t583_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.rc5t583*, align 8
  %5 = alloca %struct.rc5t583_rtc*, align 8
  %6 = alloca %struct.rc5t583_platform_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.rc5t583* @dev_get_drvdata(i32 %12)
  store %struct.rc5t583* %13, %struct.rc5t583** %4, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.rc5t583_rtc* @devm_kzalloc(%struct.TYPE_8__* %15, i32 4, i32 %16)
  store %struct.rc5t583_rtc* %17, %struct.rc5t583_rtc** %5, align 8
  %18 = load %struct.rc5t583_rtc*, %struct.rc5t583_rtc** %5, align 8
  %19 = icmp ne %struct.rc5t583_rtc* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %116

23:                                               ; preds = %1
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load %struct.rc5t583_rtc*, %struct.rc5t583_rtc** %5, align 8
  %26 = call i32 @platform_set_drvdata(%struct.platform_device* %24, %struct.rc5t583_rtc* %25)
  %27 = load %struct.rc5t583*, %struct.rc5t583** %4, align 8
  %28 = getelementptr inbounds %struct.rc5t583, %struct.rc5t583* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @RC5T583_RTC_CTL2, align 4
  %31 = call i32 @regmap_write(i32 %29, i32 %30, i32 0)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %2, align 4
  br label %116

36:                                               ; preds = %23
  %37 = load %struct.rc5t583*, %struct.rc5t583** %4, align 8
  %38 = getelementptr inbounds %struct.rc5t583, %struct.rc5t583* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @RC5T583_RTC_ADJ, align 4
  %41 = call i32 @regmap_write(i32 %39, i32 %40, i32 0)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %36
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %46, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @EBUSY, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %116

50:                                               ; preds = %36
  %51 = load %struct.rc5t583*, %struct.rc5t583** %4, align 8
  %52 = getelementptr inbounds %struct.rc5t583, %struct.rc5t583* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.rc5t583_platform_data* @dev_get_platdata(i32 %53)
  store %struct.rc5t583_platform_data* %54, %struct.rc5t583_platform_data** %6, align 8
  %55 = load %struct.rc5t583_platform_data*, %struct.rc5t583_platform_data** %6, align 8
  %56 = getelementptr inbounds %struct.rc5t583_platform_data, %struct.rc5t583_platform_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp sle i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %50
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @dev_warn(%struct.TYPE_8__* %62, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %2, align 4
  br label %116

66:                                               ; preds = %50
  %67 = load i64, i64* @RC5T583_IRQ_YALE, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %69, %67
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %8, align 4
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @rc5t583_rtc_interrupt, align 4
  %76 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = call i32 @devm_request_threaded_irq(%struct.TYPE_8__* %73, i32 %74, i32* null, i32 %75, i32 %76, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_8__* %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %66
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %84, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %86 = load i32, i32* %7, align 4
  store i32 %86, i32* %2, align 4
  br label %116

87:                                               ; preds = %66
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = call i32 @device_init_wakeup(%struct.TYPE_8__* %89, i32 1)
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %91, i32 0, i32 0
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @THIS_MODULE, align 4
  %97 = call i32 @devm_rtc_device_register(%struct.TYPE_8__* %92, i32 %95, i32* @rc5t583_rtc_ops, i32 %96)
  %98 = load %struct.rc5t583_rtc*, %struct.rc5t583_rtc** %5, align 8
  %99 = getelementptr inbounds %struct.rc5t583_rtc, %struct.rc5t583_rtc* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  %100 = load %struct.rc5t583_rtc*, %struct.rc5t583_rtc** %5, align 8
  %101 = getelementptr inbounds %struct.rc5t583_rtc, %struct.rc5t583_rtc* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @IS_ERR(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %87
  %106 = load %struct.rc5t583_rtc*, %struct.rc5t583_rtc** %5, align 8
  %107 = getelementptr inbounds %struct.rc5t583_rtc, %struct.rc5t583_rtc* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @PTR_ERR(i32 %108)
  store i32 %109, i32* %7, align 4
  %110 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %111 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %110, i32 0, i32 0
  %112 = load i32, i32* %7, align 4
  %113 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %111, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* %7, align 4
  store i32 %114, i32* %2, align 4
  br label %116

115:                                              ; preds = %87
  store i32 0, i32* %2, align 4
  br label %116

116:                                              ; preds = %115, %105, %82, %60, %44, %34, %20
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local %struct.rc5t583* @dev_get_drvdata(i32) #1

declare dso_local %struct.rc5t583_rtc* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rc5t583_rtc*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local %struct.rc5t583_platform_data* @dev_get_platdata(i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_8__*, i32, i32*, i32, i32, i8*, %struct.TYPE_8__*) #1

declare dso_local i32 @device_init_wakeup(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @devm_rtc_device_register(%struct.TYPE_8__*, i32, i32*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
