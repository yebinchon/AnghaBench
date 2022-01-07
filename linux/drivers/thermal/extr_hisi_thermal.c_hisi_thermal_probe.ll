; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_hisi_thermal.c_hisi_thermal_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_hisi_thermal.c_hisi_thermal_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.hisi_thermal_data = type { i32, %struct.TYPE_2__*, %struct.hisi_thermal_sensor*, i32, %struct.platform_device* }
%struct.TYPE_2__ = type { i32 (%struct.hisi_thermal_data*)*, i32 (%struct.hisi_thermal_sensor*)* }
%struct.hisi_thermal_sensor = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to get io address\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"failed to register thermal sensor: %d\0A\00", align 1
@hisi_thermal_alarm_irq_thread = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to request alarm irq: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to setup the sensor: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hisi_thermal_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_thermal_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.hisi_thermal_data*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hisi_thermal_sensor*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %5, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.hisi_thermal_data* @devm_kzalloc(%struct.device* %12, i32 40, i32 %13)
  store %struct.hisi_thermal_data* %14, %struct.hisi_thermal_data** %4, align 8
  %15 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %4, align 8
  %16 = icmp ne %struct.hisi_thermal_data* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %133

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %4, align 8
  %23 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %22, i32 0, i32 4
  store %struct.platform_device* %21, %struct.platform_device** %23, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %4, align 8
  %26 = call i32 @platform_set_drvdata(%struct.platform_device* %24, %struct.hisi_thermal_data* %25)
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = call %struct.TYPE_2__* @of_device_get_match_data(%struct.device* %27)
  %29 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %4, align 8
  %30 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %29, i32 0, i32 1
  store %struct.TYPE_2__* %28, %struct.TYPE_2__** %30, align 8
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = load i32, i32* @IORESOURCE_MEM, align 4
  %33 = call %struct.resource* @platform_get_resource(%struct.platform_device* %31, i32 %32, i32 0)
  store %struct.resource* %33, %struct.resource** %6, align 8
  %34 = load %struct.device*, %struct.device** %5, align 8
  %35 = load %struct.resource*, %struct.resource** %6, align 8
  %36 = call i32 @devm_ioremap_resource(%struct.device* %34, %struct.resource* %35)
  %37 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %4, align 8
  %38 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  %39 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %4, align 8
  %40 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @IS_ERR(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %20
  %45 = load %struct.device*, %struct.device** %5, align 8
  %46 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %47 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %4, align 8
  %48 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @PTR_ERR(i32 %49)
  store i32 %50, i32* %2, align 4
  br label %133

51:                                               ; preds = %20
  %52 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %4, align 8
  %53 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32 (%struct.hisi_thermal_data*)*, i32 (%struct.hisi_thermal_data*)** %55, align 8
  %57 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %4, align 8
  %58 = call i32 %56(%struct.hisi_thermal_data* %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %51
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %2, align 4
  br label %133

63:                                               ; preds = %51
  store i32 0, i32* %7, align 4
  br label %64

64:                                               ; preds = %129, %63
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %4, align 8
  %67 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %132

70:                                               ; preds = %64
  %71 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %4, align 8
  %72 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %71, i32 0, i32 2
  %73 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %73, i64 %75
  store %struct.hisi_thermal_sensor* %76, %struct.hisi_thermal_sensor** %9, align 8
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %9, align 8
  %79 = call i32 @hisi_thermal_register_sensor(%struct.platform_device* %77, %struct.hisi_thermal_sensor* %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %70
  %83 = load %struct.device*, %struct.device** %5, align 8
  %84 = load i32, i32* %8, align 4
  %85 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %83, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %2, align 4
  br label %133

87:                                               ; preds = %70
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = call i32 @platform_get_irq(%struct.platform_device* %88, i32 0)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %2, align 4
  br label %133

94:                                               ; preds = %87
  %95 = load %struct.device*, %struct.device** %5, align 8
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @hisi_thermal_alarm_irq_thread, align 4
  %98 = load i32, i32* @IRQF_ONESHOT, align 4
  %99 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %9, align 8
  %100 = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %9, align 8
  %103 = call i32 @devm_request_threaded_irq(%struct.device* %95, i32 %96, i32* null, i32 %97, i32 %98, i32 %101, %struct.hisi_thermal_sensor* %102)
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %94
  %107 = load %struct.device*, %struct.device** %5, align 8
  %108 = load i32, i32* %8, align 4
  %109 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %107, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* %8, align 4
  store i32 %110, i32* %2, align 4
  br label %133

111:                                              ; preds = %94
  %112 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %4, align 8
  %113 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %112, i32 0, i32 1
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  %116 = load i32 (%struct.hisi_thermal_sensor*)*, i32 (%struct.hisi_thermal_sensor*)** %115, align 8
  %117 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %9, align 8
  %118 = call i32 %116(%struct.hisi_thermal_sensor* %117)
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %8, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %111
  %122 = load %struct.device*, %struct.device** %5, align 8
  %123 = load i32, i32* %8, align 4
  %124 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %122, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* %8, align 4
  store i32 %125, i32* %2, align 4
  br label %133

126:                                              ; preds = %111
  %127 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %9, align 8
  %128 = call i32 @hisi_thermal_toggle_sensor(%struct.hisi_thermal_sensor* %127, i32 1)
  br label %129

129:                                              ; preds = %126
  %130 = load i32, i32* %7, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %7, align 4
  br label %64

132:                                              ; preds = %64
  store i32 0, i32* %2, align 4
  br label %133

133:                                              ; preds = %132, %121, %106, %92, %82, %61, %44, %17
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local %struct.hisi_thermal_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.hisi_thermal_data*) #1

declare dso_local %struct.TYPE_2__* @of_device_get_match_data(%struct.device*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @hisi_thermal_register_sensor(%struct.platform_device*, %struct.hisi_thermal_sensor*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i32, %struct.hisi_thermal_sensor*) #1

declare dso_local i32 @hisi_thermal_toggle_sensor(%struct.hisi_thermal_sensor*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
