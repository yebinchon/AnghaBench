; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max8997.c_max8997_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max8997.c_max8997_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.max8997_dev = type { i32, i32 }
%struct.max8997_rtc_info = type { i32, i32, i32, %struct.max8997_dev*, %struct.TYPE_6__*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to initialize RTC reg:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"max8997-rtc\00", align 1
@max8997_rtc_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to register RTC device: %d\0A\00", align 1
@MAX8997_PMICIRQ_RTCA1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Failed to create mapping alarm IRQ\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@max8997_rtc_alarm_irq = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"rtc-alarm0\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Failed to request alarm IRQ: %d: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @max8997_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8997_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.max8997_dev*, align 8
  %5 = alloca %struct.max8997_rtc_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.max8997_dev* @dev_get_drvdata(i32 %11)
  store %struct.max8997_dev* %12, %struct.max8997_dev** %4, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.max8997_rtc_info* @devm_kzalloc(%struct.TYPE_6__* %14, i32 40, i32 %15)
  store %struct.max8997_rtc_info* %16, %struct.max8997_rtc_info** %5, align 8
  %17 = load %struct.max8997_rtc_info*, %struct.max8997_rtc_info** %5, align 8
  %18 = icmp ne %struct.max8997_rtc_info* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %117

22:                                               ; preds = %1
  %23 = load %struct.max8997_rtc_info*, %struct.max8997_rtc_info** %5, align 8
  %24 = getelementptr inbounds %struct.max8997_rtc_info, %struct.max8997_rtc_info* %23, i32 0, i32 5
  %25 = call i32 @mutex_init(i32* %24)
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load %struct.max8997_rtc_info*, %struct.max8997_rtc_info** %5, align 8
  %29 = getelementptr inbounds %struct.max8997_rtc_info, %struct.max8997_rtc_info* %28, i32 0, i32 4
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %29, align 8
  %30 = load %struct.max8997_dev*, %struct.max8997_dev** %4, align 8
  %31 = load %struct.max8997_rtc_info*, %struct.max8997_rtc_info** %5, align 8
  %32 = getelementptr inbounds %struct.max8997_rtc_info, %struct.max8997_rtc_info* %31, i32 0, i32 3
  store %struct.max8997_dev* %30, %struct.max8997_dev** %32, align 8
  %33 = load %struct.max8997_dev*, %struct.max8997_dev** %4, align 8
  %34 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.max8997_rtc_info*, %struct.max8997_rtc_info** %5, align 8
  %37 = getelementptr inbounds %struct.max8997_rtc_info, %struct.max8997_rtc_info* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = load %struct.max8997_rtc_info*, %struct.max8997_rtc_info** %5, align 8
  %40 = call i32 @platform_set_drvdata(%struct.platform_device* %38, %struct.max8997_rtc_info* %39)
  %41 = load %struct.max8997_rtc_info*, %struct.max8997_rtc_info** %5, align 8
  %42 = call i32 @max8997_rtc_init_reg(%struct.max8997_rtc_info* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %22
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = load i32, i32* %6, align 4
  %49 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %47, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %117

51:                                               ; preds = %22
  %52 = load %struct.max8997_rtc_info*, %struct.max8997_rtc_info** %5, align 8
  %53 = call i32 @max8997_rtc_enable_wtsr(%struct.max8997_rtc_info* %52, i32 1)
  %54 = load %struct.max8997_rtc_info*, %struct.max8997_rtc_info** %5, align 8
  %55 = call i32 @max8997_rtc_enable_smpl(%struct.max8997_rtc_info* %54, i32 1)
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = call i32 @device_init_wakeup(%struct.TYPE_6__* %57, i32 1)
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = load i32, i32* @THIS_MODULE, align 4
  %62 = call i32 @devm_rtc_device_register(%struct.TYPE_6__* %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* @max8997_rtc_ops, i32 %61)
  %63 = load %struct.max8997_rtc_info*, %struct.max8997_rtc_info** %5, align 8
  %64 = getelementptr inbounds %struct.max8997_rtc_info, %struct.max8997_rtc_info* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.max8997_rtc_info*, %struct.max8997_rtc_info** %5, align 8
  %66 = getelementptr inbounds %struct.max8997_rtc_info, %struct.max8997_rtc_info* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @IS_ERR(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %51
  %71 = load %struct.max8997_rtc_info*, %struct.max8997_rtc_info** %5, align 8
  %72 = getelementptr inbounds %struct.max8997_rtc_info, %struct.max8997_rtc_info* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @PTR_ERR(i32 %73)
  store i32 %74, i32* %6, align 4
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = load i32, i32* %6, align 4
  %78 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %76, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %2, align 4
  br label %117

80:                                               ; preds = %51
  %81 = load %struct.max8997_dev*, %struct.max8997_dev** %4, align 8
  %82 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @MAX8997_PMICIRQ_RTCA1, align 4
  %85 = call i32 @irq_create_mapping(i32 %83, i32 %84)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %80
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 0
  %91 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %90, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %92 = load i32, i32* @ENXIO, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %6, align 4
  br label %115

94:                                               ; preds = %80
  %95 = load i32, i32* %7, align 4
  %96 = load %struct.max8997_rtc_info*, %struct.max8997_rtc_info** %5, align 8
  %97 = getelementptr inbounds %struct.max8997_rtc_info, %struct.max8997_rtc_info* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 0
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @max8997_rtc_alarm_irq, align 4
  %102 = load %struct.max8997_rtc_info*, %struct.max8997_rtc_info** %5, align 8
  %103 = call i32 @devm_request_threaded_irq(%struct.TYPE_6__* %99, i32 %100, i32* null, i32 %101, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), %struct.max8997_rtc_info* %102)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %94
  %107 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %108 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %107, i32 0, i32 0
  %109 = load %struct.max8997_rtc_info*, %struct.max8997_rtc_info** %5, align 8
  %110 = getelementptr inbounds %struct.max8997_rtc_info, %struct.max8997_rtc_info* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %108, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %106, %94
  br label %115

115:                                              ; preds = %114, %88
  %116 = load i32, i32* %6, align 4
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %115, %70, %45, %19
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local %struct.max8997_dev* @dev_get_drvdata(i32) #1

declare dso_local %struct.max8997_rtc_info* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.max8997_rtc_info*) #1

declare dso_local i32 @max8997_rtc_init_reg(%struct.max8997_rtc_info*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, ...) #1

declare dso_local i32 @max8997_rtc_enable_wtsr(%struct.max8997_rtc_info*, i32) #1

declare dso_local i32 @max8997_rtc_enable_smpl(%struct.max8997_rtc_info*, i32) #1

declare dso_local i32 @device_init_wakeup(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @devm_rtc_device_register(%struct.TYPE_6__*, i8*, i32*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @irq_create_mapping(i32, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_6__*, i32, i32*, i32, i32, i8*, %struct.max8997_rtc_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
