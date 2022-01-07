; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-cpcap.c_cpcap_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-cpcap.c_cpcap_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.cpcap_rtc = type { i8*, i8*, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"cpcap_rtc\00", align 1
@cpcap_rtc_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@cpcap_rtc_alarm_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"rtc_alarm\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Could not request alarm irq: %d\0A\00", align 1
@cpcap_rtc_update_irq = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"rtc_1hz\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Could not request update irq: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"wakeup initialization failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cpcap_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpcap_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.cpcap_rtc*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.cpcap_rtc* @devm_kzalloc(%struct.device* %9, i32 32, i32 %10)
  store %struct.cpcap_rtc* %11, %struct.cpcap_rtc** %5, align 8
  %12 = load %struct.cpcap_rtc*, %struct.cpcap_rtc** %5, align 8
  %13 = icmp ne %struct.cpcap_rtc* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %120

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = getelementptr inbounds %struct.device, %struct.device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dev_get_regmap(i32 %20, i32* null)
  %22 = load %struct.cpcap_rtc*, %struct.cpcap_rtc** %5, align 8
  %23 = getelementptr inbounds %struct.cpcap_rtc, %struct.cpcap_rtc* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = load %struct.cpcap_rtc*, %struct.cpcap_rtc** %5, align 8
  %25 = getelementptr inbounds %struct.cpcap_rtc, %struct.cpcap_rtc* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %17
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %120

31:                                               ; preds = %17
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = load %struct.cpcap_rtc*, %struct.cpcap_rtc** %5, align 8
  %34 = call i32 @platform_set_drvdata(%struct.platform_device* %32, %struct.cpcap_rtc* %33)
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = load i32, i32* @THIS_MODULE, align 4
  %37 = call i32 @devm_rtc_device_register(%struct.device* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* @cpcap_rtc_ops, i32 %36)
  %38 = load %struct.cpcap_rtc*, %struct.cpcap_rtc** %5, align 8
  %39 = getelementptr inbounds %struct.cpcap_rtc, %struct.cpcap_rtc* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 8
  %40 = load %struct.cpcap_rtc*, %struct.cpcap_rtc** %5, align 8
  %41 = getelementptr inbounds %struct.cpcap_rtc, %struct.cpcap_rtc* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @IS_ERR(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %31
  %46 = load %struct.cpcap_rtc*, %struct.cpcap_rtc** %5, align 8
  %47 = getelementptr inbounds %struct.cpcap_rtc, %struct.cpcap_rtc* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @PTR_ERR(i32 %48)
  store i32 %49, i32* %2, align 4
  br label %120

50:                                               ; preds = %31
  %51 = load %struct.device*, %struct.device** %4, align 8
  %52 = load %struct.cpcap_rtc*, %struct.cpcap_rtc** %5, align 8
  %53 = getelementptr inbounds %struct.cpcap_rtc, %struct.cpcap_rtc* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.cpcap_rtc*, %struct.cpcap_rtc** %5, align 8
  %56 = getelementptr inbounds %struct.cpcap_rtc, %struct.cpcap_rtc* %55, i32 0, i32 2
  %57 = call i32 @cpcap_get_vendor(%struct.device* %51, i32 %54, i32* %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %50
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %2, align 4
  br label %120

62:                                               ; preds = %50
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = call i8* @platform_get_irq(%struct.platform_device* %63, i32 0)
  %65 = load %struct.cpcap_rtc*, %struct.cpcap_rtc** %5, align 8
  %66 = getelementptr inbounds %struct.cpcap_rtc, %struct.cpcap_rtc* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  %67 = load %struct.device*, %struct.device** %4, align 8
  %68 = load %struct.cpcap_rtc*, %struct.cpcap_rtc** %5, align 8
  %69 = getelementptr inbounds %struct.cpcap_rtc, %struct.cpcap_rtc* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = load i32, i32* @cpcap_rtc_alarm_irq, align 4
  %72 = load i32, i32* @IRQF_TRIGGER_NONE, align 4
  %73 = load %struct.cpcap_rtc*, %struct.cpcap_rtc** %5, align 8
  %74 = call i32 @devm_request_threaded_irq(%struct.device* %67, i8* %70, i32* null, i32 %71, i32 %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %struct.cpcap_rtc* %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %62
  %78 = load %struct.device*, %struct.device** %4, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @dev_err(%struct.device* %78, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %2, align 4
  br label %120

82:                                               ; preds = %62
  %83 = load %struct.cpcap_rtc*, %struct.cpcap_rtc** %5, align 8
  %84 = getelementptr inbounds %struct.cpcap_rtc, %struct.cpcap_rtc* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @disable_irq(i8* %85)
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = call i8* @platform_get_irq(%struct.platform_device* %87, i32 1)
  %89 = load %struct.cpcap_rtc*, %struct.cpcap_rtc** %5, align 8
  %90 = getelementptr inbounds %struct.cpcap_rtc, %struct.cpcap_rtc* %89, i32 0, i32 0
  store i8* %88, i8** %90, align 8
  %91 = load %struct.device*, %struct.device** %4, align 8
  %92 = load %struct.cpcap_rtc*, %struct.cpcap_rtc** %5, align 8
  %93 = getelementptr inbounds %struct.cpcap_rtc, %struct.cpcap_rtc* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = load i32, i32* @cpcap_rtc_update_irq, align 4
  %96 = load i32, i32* @IRQF_TRIGGER_NONE, align 4
  %97 = load %struct.cpcap_rtc*, %struct.cpcap_rtc** %5, align 8
  %98 = call i32 @devm_request_threaded_irq(%struct.device* %91, i8* %94, i32* null, i32 %95, i32 %96, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), %struct.cpcap_rtc* %97)
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %82
  %102 = load %struct.device*, %struct.device** %4, align 8
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @dev_err(%struct.device* %102, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %6, align 4
  store i32 %105, i32* %2, align 4
  br label %120

106:                                              ; preds = %82
  %107 = load %struct.cpcap_rtc*, %struct.cpcap_rtc** %5, align 8
  %108 = getelementptr inbounds %struct.cpcap_rtc, %struct.cpcap_rtc* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @disable_irq(i8* %109)
  %111 = load %struct.device*, %struct.device** %4, align 8
  %112 = call i32 @device_init_wakeup(%struct.device* %111, i32 1)
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %106
  %116 = load %struct.device*, %struct.device** %4, align 8
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @dev_err(%struct.device* %116, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %117)
  br label %119

119:                                              ; preds = %115, %106
  store i32 0, i32* %2, align 4
  br label %120

120:                                              ; preds = %119, %101, %77, %60, %45, %28, %14
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local %struct.cpcap_rtc* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_get_regmap(i32, i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.cpcap_rtc*) #1

declare dso_local i32 @devm_rtc_device_register(%struct.device*, i8*, i32*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @cpcap_get_vendor(%struct.device*, i32, i32*) #1

declare dso_local i8* @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i8*, i32*, i32, i32, i8*, %struct.cpcap_rtc*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @disable_irq(i8*) #1

declare dso_local i32 @device_init_wakeup(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
