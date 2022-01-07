; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_da9062-thermal.c_da9062_thermal_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_da9062-thermal.c_da9062_thermal_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i32 }
%struct.da9062 = type { i32 }
%struct.da9062_thermal = type { i32, %struct.TYPE_11__*, %struct.TYPE_10__*, i32, i32, %struct.TYPE_12__*, i32, %struct.da9062* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.of_device_id = type { %struct.TYPE_10__* }

@DA9062_DEFAULT_POLLING_MS_PERIOD = common dso_local global i32 0, align 4
@da9062_compatible_reg_id_table = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"polling-delay-passive\00", align 1
@DA9062_MIN_POLLING_MS_PERIOD = common dso_local global i32 0, align 4
@DA9062_MAX_POLLING_MS_PERIOD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Out-of-range polling period %d ms\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@THERMAL_DEVICE_ENABLED = common dso_local global i32 0, align 4
@da9062_thermal_poll_on = common dso_local global i32 0, align 4
@da9062_thermal_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Cannot register thermal zone device\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"TJUNC temperature polling period set at %d ms\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"THERMAL\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Failed to get platform IRQ.\0A\00", align 1
@da9062_thermal_irq_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"Failed to request thermal device IRQ.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @da9062_thermal_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9062_thermal_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.da9062*, align 8
  %5 = alloca %struct.da9062_thermal*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.of_device_id*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.da9062* @dev_get_drvdata(i32 %12)
  store %struct.da9062* %13, %struct.da9062** %4, align 8
  %14 = load i32, i32* @DA9062_DEFAULT_POLLING_MS_PERIOD, align 4
  store i32 %14, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %15 = load i32, i32* @da9062_compatible_reg_id_table, align 4
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call %struct.of_device_id* @of_match_node(i32 %15, i64 %19)
  store %struct.of_device_id* %20, %struct.of_device_id** %7, align 8
  %21 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %22 = icmp ne %struct.of_device_id* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENXIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %158

26:                                               ; preds = %1
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %55

32:                                               ; preds = %26
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @of_property_read_u32(i64 %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32* %6)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %54, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @DA9062_MIN_POLLING_MS_PERIOD, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @DA9062_MAX_POLLING_MS_PERIOD, align 4
  %46 = icmp ugt i32 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %43, %39
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @dev_warn(%struct.TYPE_12__* %49, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @DA9062_DEFAULT_POLLING_MS_PERIOD, align 4
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %47, %43
  br label %54

54:                                               ; preds = %53, %32
  br label %55

55:                                               ; preds = %54, %26
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call %struct.da9062_thermal* @devm_kzalloc(%struct.TYPE_12__* %57, i32 56, i32 %58)
  store %struct.da9062_thermal* %59, %struct.da9062_thermal** %5, align 8
  %60 = load %struct.da9062_thermal*, %struct.da9062_thermal** %5, align 8
  %61 = icmp ne %struct.da9062_thermal* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %55
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %8, align 4
  br label %156

65:                                               ; preds = %55
  %66 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %67 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %66, i32 0, i32 0
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = load %struct.da9062_thermal*, %struct.da9062_thermal** %5, align 8
  %70 = getelementptr inbounds %struct.da9062_thermal, %struct.da9062_thermal* %69, i32 0, i32 2
  store %struct.TYPE_10__* %68, %struct.TYPE_10__** %70, align 8
  %71 = load %struct.da9062*, %struct.da9062** %4, align 8
  %72 = load %struct.da9062_thermal*, %struct.da9062_thermal** %5, align 8
  %73 = getelementptr inbounds %struct.da9062_thermal, %struct.da9062_thermal* %72, i32 0, i32 7
  store %struct.da9062* %71, %struct.da9062** %73, align 8
  %74 = load i32, i32* @THERMAL_DEVICE_ENABLED, align 4
  %75 = load %struct.da9062_thermal*, %struct.da9062_thermal** %5, align 8
  %76 = getelementptr inbounds %struct.da9062_thermal, %struct.da9062_thermal* %75, i32 0, i32 6
  store i32 %74, i32* %76, align 8
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = load %struct.da9062_thermal*, %struct.da9062_thermal** %5, align 8
  %80 = getelementptr inbounds %struct.da9062_thermal, %struct.da9062_thermal* %79, i32 0, i32 5
  store %struct.TYPE_12__* %78, %struct.TYPE_12__** %80, align 8
  %81 = load %struct.da9062_thermal*, %struct.da9062_thermal** %5, align 8
  %82 = getelementptr inbounds %struct.da9062_thermal, %struct.da9062_thermal* %81, i32 0, i32 4
  %83 = load i32, i32* @da9062_thermal_poll_on, align 4
  %84 = call i32 @INIT_DELAYED_WORK(i32* %82, i32 %83)
  %85 = load %struct.da9062_thermal*, %struct.da9062_thermal** %5, align 8
  %86 = getelementptr inbounds %struct.da9062_thermal, %struct.da9062_thermal* %85, i32 0, i32 3
  %87 = call i32 @mutex_init(i32* %86)
  %88 = load %struct.da9062_thermal*, %struct.da9062_thermal** %5, align 8
  %89 = getelementptr inbounds %struct.da9062_thermal, %struct.da9062_thermal* %88, i32 0, i32 2
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.da9062_thermal*, %struct.da9062_thermal** %5, align 8
  %94 = load i32, i32* %6, align 4
  %95 = call %struct.TYPE_11__* @thermal_zone_device_register(i32 %92, i32 1, i32 0, %struct.da9062_thermal* %93, i32* @da9062_thermal_ops, i32* null, i32 %94, i32 0)
  %96 = load %struct.da9062_thermal*, %struct.da9062_thermal** %5, align 8
  %97 = getelementptr inbounds %struct.da9062_thermal, %struct.da9062_thermal* %96, i32 0, i32 1
  store %struct.TYPE_11__* %95, %struct.TYPE_11__** %97, align 8
  %98 = load %struct.da9062_thermal*, %struct.da9062_thermal** %5, align 8
  %99 = getelementptr inbounds %struct.da9062_thermal, %struct.da9062_thermal* %98, i32 0, i32 1
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %99, align 8
  %101 = call i64 @IS_ERR(%struct.TYPE_11__* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %65
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %104, i32 0, i32 0
  %106 = call i32 @dev_err(%struct.TYPE_12__* %105, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %107 = load %struct.da9062_thermal*, %struct.da9062_thermal** %5, align 8
  %108 = getelementptr inbounds %struct.da9062_thermal, %struct.da9062_thermal* %107, i32 0, i32 1
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %108, align 8
  %110 = call i32 @PTR_ERR(%struct.TYPE_11__* %109)
  store i32 %110, i32* %8, align 4
  br label %156

111:                                              ; preds = %65
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %112, i32 0, i32 0
  %114 = load %struct.da9062_thermal*, %struct.da9062_thermal** %5, align 8
  %115 = getelementptr inbounds %struct.da9062_thermal, %struct.da9062_thermal* %114, i32 0, i32 1
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @dev_dbg(%struct.TYPE_12__* %113, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %118)
  %120 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %121 = call i32 @platform_get_irq_byname(%struct.platform_device* %120, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* %8, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %111
  %125 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %126 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %125, i32 0, i32 0
  %127 = call i32 @dev_err(%struct.TYPE_12__* %126, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %151

128:                                              ; preds = %111
  %129 = load i32, i32* %8, align 4
  %130 = load %struct.da9062_thermal*, %struct.da9062_thermal** %5, align 8
  %131 = getelementptr inbounds %struct.da9062_thermal, %struct.da9062_thermal* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  %132 = load %struct.da9062_thermal*, %struct.da9062_thermal** %5, align 8
  %133 = getelementptr inbounds %struct.da9062_thermal, %struct.da9062_thermal* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @da9062_thermal_irq_handler, align 4
  %136 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %137 = load i32, i32* @IRQF_ONESHOT, align 4
  %138 = or i32 %136, %137
  %139 = load %struct.da9062_thermal*, %struct.da9062_thermal** %5, align 8
  %140 = call i32 @request_threaded_irq(i32 %134, i32* null, i32 %135, i32 %138, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), %struct.da9062_thermal* %139)
  store i32 %140, i32* %8, align 4
  %141 = load i32, i32* %8, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %128
  %144 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %145 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %144, i32 0, i32 0
  %146 = call i32 @dev_err(%struct.TYPE_12__* %145, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  br label %151

147:                                              ; preds = %128
  %148 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %149 = load %struct.da9062_thermal*, %struct.da9062_thermal** %5, align 8
  %150 = call i32 @platform_set_drvdata(%struct.platform_device* %148, %struct.da9062_thermal* %149)
  store i32 0, i32* %2, align 4
  br label %158

151:                                              ; preds = %143, %124
  %152 = load %struct.da9062_thermal*, %struct.da9062_thermal** %5, align 8
  %153 = getelementptr inbounds %struct.da9062_thermal, %struct.da9062_thermal* %152, i32 0, i32 1
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %153, align 8
  %155 = call i32 @thermal_zone_device_unregister(%struct.TYPE_11__* %154)
  br label %156

156:                                              ; preds = %151, %103, %62
  %157 = load i32, i32* %8, align 4
  store i32 %157, i32* %2, align 4
  br label %158

158:                                              ; preds = %156, %147, %23
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local %struct.da9062* @dev_get_drvdata(i32) #1

declare dso_local %struct.of_device_id* @of_match_node(i32, i64) #1

declare dso_local i32 @of_property_read_u32(i64, i8*, i32*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_12__*, i8*, i32) #1

declare dso_local %struct.da9062_thermal* @devm_kzalloc(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.TYPE_11__* @thermal_zone_device_register(i32, i32, i32, %struct.da9062_thermal*, i32*, i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_11__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_11__*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_12__*, i8*, i32) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i8*, %struct.da9062_thermal*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.da9062_thermal*) #1

declare dso_local i32 @thermal_zone_device_unregister(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
