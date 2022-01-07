; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-fsl-ftm-alarm.c_ftm_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-fsl-ftm-alarm.c_ftm_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.resource = type { i32 }
%struct.ftm_rtc = type { i32, %struct.TYPE_13__*, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"cannot alloc memory for rtc\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"cannot get resource for rtc\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"cannot ioremap resource for rtc\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"unable to get IRQ from DT, %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ftm_rtc_alarm_interrupt = common dso_local global i32 0, align 4
@IRQF_NO_SUSPEND = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"failed to request irq\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"big-endian\00", align 1
@FIXED_FREQ_CLK = common dso_local global i64 0, align 8
@MAX_FREQ_DIV = common dso_local global i64 0, align 8
@ftm_rtc_ops = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"can't register rtc device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ftm_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftm_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ftm_rtc*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %4, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.ftm_rtc* @devm_kzalloc(%struct.TYPE_14__* %14, i32 32, i32 %15)
  store %struct.ftm_rtc* %16, %struct.ftm_rtc** %8, align 8
  %17 = load %struct.ftm_rtc*, %struct.ftm_rtc** %8, align 8
  %18 = icmp ne %struct.ftm_rtc* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %141

29:                                               ; preds = %1
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = load %struct.ftm_rtc*, %struct.ftm_rtc** %8, align 8
  %32 = call i32 @platform_set_drvdata(%struct.platform_device* %30, %struct.ftm_rtc* %31)
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = call %struct.TYPE_13__* @devm_rtc_allocate_device(%struct.TYPE_14__* %34)
  %36 = load %struct.ftm_rtc*, %struct.ftm_rtc** %8, align 8
  %37 = getelementptr inbounds %struct.ftm_rtc, %struct.ftm_rtc* %36, i32 0, i32 1
  store %struct.TYPE_13__* %35, %struct.TYPE_13__** %37, align 8
  %38 = load %struct.ftm_rtc*, %struct.ftm_rtc** %8, align 8
  %39 = getelementptr inbounds %struct.ftm_rtc, %struct.ftm_rtc* %38, i32 0, i32 1
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  %41 = call i64 @IS_ERR(%struct.TYPE_13__* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %29
  %44 = load %struct.ftm_rtc*, %struct.ftm_rtc** %8, align 8
  %45 = getelementptr inbounds %struct.ftm_rtc, %struct.ftm_rtc* %44, i32 0, i32 1
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = call i32 @PTR_ERR(%struct.TYPE_13__* %46)
  store i32 %47, i32* %2, align 4
  br label %141

48:                                               ; preds = %29
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = load i32, i32* @IORESOURCE_MEM, align 4
  %51 = call %struct.resource* @platform_get_resource(%struct.platform_device* %49, i32 %50, i32 0)
  store %struct.resource* %51, %struct.resource** %5, align 8
  %52 = load %struct.resource*, %struct.resource** %5, align 8
  %53 = icmp ne %struct.resource* %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %56, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @ENODEV, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %141

60:                                               ; preds = %48
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = load %struct.resource*, %struct.resource** %5, align 8
  %64 = call %struct.TYPE_13__* @devm_ioremap_resource(%struct.TYPE_14__* %62, %struct.resource* %63)
  %65 = load %struct.ftm_rtc*, %struct.ftm_rtc** %8, align 8
  %66 = getelementptr inbounds %struct.ftm_rtc, %struct.ftm_rtc* %65, i32 0, i32 3
  store %struct.TYPE_13__* %64, %struct.TYPE_13__** %66, align 8
  %67 = load %struct.ftm_rtc*, %struct.ftm_rtc** %8, align 8
  %68 = getelementptr inbounds %struct.ftm_rtc, %struct.ftm_rtc* %67, i32 0, i32 3
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %68, align 8
  %70 = call i64 @IS_ERR(%struct.TYPE_13__* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %60
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %74, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %76 = load %struct.ftm_rtc*, %struct.ftm_rtc** %8, align 8
  %77 = getelementptr inbounds %struct.ftm_rtc, %struct.ftm_rtc* %76, i32 0, i32 3
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %77, align 8
  %79 = call i32 @PTR_ERR(%struct.TYPE_13__* %78)
  store i32 %79, i32* %2, align 4
  br label %141

80:                                               ; preds = %60
  %81 = load %struct.device_node*, %struct.device_node** %4, align 8
  %82 = call i32 @irq_of_parse_and_map(%struct.device_node* %81, i32 0)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp sle i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %80
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %86, i32 0, i32 0
  %88 = load i32, i32* %6, align 4
  %89 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %87, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %141

92:                                               ; preds = %80
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @ftm_rtc_alarm_interrupt, align 4
  %97 = load i32, i32* @IRQF_NO_SUSPEND, align 4
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 0
  %100 = call i32 @dev_name(%struct.TYPE_14__* %99)
  %101 = load %struct.ftm_rtc*, %struct.ftm_rtc** %8, align 8
  %102 = call i32 @devm_request_irq(%struct.TYPE_14__* %94, i32 %95, i32 %96, i32 %97, i32 %100, %struct.ftm_rtc* %101)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %92
  %106 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %107 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %106, i32 0, i32 0
  %108 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %107, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %109 = load i32, i32* %7, align 4
  store i32 %109, i32* %2, align 4
  br label %141

110:                                              ; preds = %92
  %111 = load %struct.device_node*, %struct.device_node** %4, align 8
  %112 = call i32 @of_property_read_bool(%struct.device_node* %111, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %113 = load %struct.ftm_rtc*, %struct.ftm_rtc** %8, align 8
  %114 = getelementptr inbounds %struct.ftm_rtc, %struct.ftm_rtc* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 8
  %115 = load i64, i64* @FIXED_FREQ_CLK, align 8
  %116 = trunc i64 %115 to i32
  %117 = load i64, i64* @MAX_FREQ_DIV, align 8
  %118 = trunc i64 %117 to i32
  %119 = sdiv i32 %116, %118
  %120 = load %struct.ftm_rtc*, %struct.ftm_rtc** %8, align 8
  %121 = getelementptr inbounds %struct.ftm_rtc, %struct.ftm_rtc* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  %122 = load %struct.ftm_rtc*, %struct.ftm_rtc** %8, align 8
  %123 = getelementptr inbounds %struct.ftm_rtc, %struct.ftm_rtc* %122, i32 0, i32 1
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  store i32* @ftm_rtc_ops, i32** %125, align 8
  %126 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %127 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %126, i32 0, i32 0
  %128 = call i32 @device_init_wakeup(%struct.TYPE_14__* %127, i32 1)
  %129 = load %struct.ftm_rtc*, %struct.ftm_rtc** %8, align 8
  %130 = getelementptr inbounds %struct.ftm_rtc, %struct.ftm_rtc* %129, i32 0, i32 1
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %130, align 8
  %132 = call i32 @rtc_register_device(%struct.TYPE_13__* %131)
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %7, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %110
  %136 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %137 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %136, i32 0, i32 0
  %138 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %137, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %139 = load i32, i32* %7, align 4
  store i32 %139, i32* %2, align 4
  br label %141

140:                                              ; preds = %110
  store i32 0, i32* %2, align 4
  br label %141

141:                                              ; preds = %140, %135, %105, %85, %72, %54, %43, %23
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local %struct.ftm_rtc* @devm_kzalloc(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_14__*, i8*, ...) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ftm_rtc*) #1

declare dso_local %struct.TYPE_13__* @devm_rtc_allocate_device(%struct.TYPE_14__*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_13__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_13__*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.TYPE_13__* @devm_ioremap_resource(%struct.TYPE_14__*, %struct.resource*) #1

declare dso_local i32 @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_14__*, i32, i32, i32, i32, %struct.ftm_rtc*) #1

declare dso_local i32 @dev_name(%struct.TYPE_14__*) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @device_init_wakeup(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @rtc_register_device(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
