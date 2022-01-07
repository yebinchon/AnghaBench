; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_bus_type.c_sdw_drv_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_bus_type.c_sdw_drv_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sdw_slave = type { %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.sdw_slave*)* }
%struct.sdw_driver = type { i32 (%struct.sdw_slave*, %struct.sdw_device_id*)*, i32, %struct.TYPE_4__* }
%struct.sdw_device_id = type opaque
%struct.sdw_device_id.0 = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Probe of %s failed: %d\0A\00", align 1
@u32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @sdw_drv_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdw_drv_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.sdw_slave*, align 8
  %5 = alloca %struct.sdw_driver*, align 8
  %6 = alloca %struct.sdw_device_id.0*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.sdw_slave* @dev_to_sdw_dev(%struct.device* %8)
  store %struct.sdw_slave* %9, %struct.sdw_slave** %4, align 8
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.sdw_driver* @drv_to_sdw_driver(i32 %12)
  store %struct.sdw_driver* %13, %struct.sdw_driver** %5, align 8
  %14 = load %struct.sdw_slave*, %struct.sdw_slave** %4, align 8
  %15 = load %struct.sdw_driver*, %struct.sdw_driver** %5, align 8
  %16 = call %struct.sdw_device_id.0* @sdw_get_device_id(%struct.sdw_slave* %14, %struct.sdw_driver* %15)
  store %struct.sdw_device_id.0* %16, %struct.sdw_device_id.0** %6, align 8
  %17 = load %struct.sdw_device_id.0*, %struct.sdw_device_id.0** %6, align 8
  %18 = icmp ne %struct.sdw_device_id.0* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %100

22:                                               ; preds = %1
  %23 = load %struct.sdw_driver*, %struct.sdw_driver** %5, align 8
  %24 = getelementptr inbounds %struct.sdw_driver, %struct.sdw_driver* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load %struct.sdw_slave*, %struct.sdw_slave** %4, align 8
  %27 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %26, i32 0, i32 2
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** %27, align 8
  %28 = load %struct.device*, %struct.device** %3, align 8
  %29 = call i32 @dev_pm_domain_attach(%struct.device* %28, i32 0)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %2, align 4
  br label %100

34:                                               ; preds = %22
  %35 = load %struct.sdw_driver*, %struct.sdw_driver** %5, align 8
  %36 = getelementptr inbounds %struct.sdw_driver, %struct.sdw_driver* %35, i32 0, i32 0
  %37 = load i32 (%struct.sdw_slave*, %struct.sdw_device_id*)*, i32 (%struct.sdw_slave*, %struct.sdw_device_id*)** %36, align 8
  %38 = load %struct.sdw_slave*, %struct.sdw_slave** %4, align 8
  %39 = load %struct.sdw_device_id.0*, %struct.sdw_device_id.0** %6, align 8
  %40 = bitcast %struct.sdw_device_id.0* %39 to %struct.sdw_device_id*
  %41 = call i32 %37(%struct.sdw_slave* %38, %struct.sdw_device_id* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %34
  %45 = load %struct.device*, %struct.device** %3, align 8
  %46 = load %struct.sdw_driver*, %struct.sdw_driver** %5, align 8
  %47 = getelementptr inbounds %struct.sdw_driver, %struct.sdw_driver* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @dev_err(%struct.device* %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %49)
  %51 = load %struct.device*, %struct.device** %3, align 8
  %52 = call i32 @dev_pm_domain_detach(%struct.device* %51, i32 0)
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %2, align 4
  br label %100

54:                                               ; preds = %34
  %55 = load %struct.sdw_slave*, %struct.sdw_slave** %4, align 8
  %56 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %55, i32 0, i32 2
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = icmp ne %struct.TYPE_4__* %57, null
  br i1 %58, label %59, label %74

59:                                               ; preds = %54
  %60 = load %struct.sdw_slave*, %struct.sdw_slave** %4, align 8
  %61 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %60, i32 0, i32 2
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32 (%struct.sdw_slave*)*, i32 (%struct.sdw_slave*)** %63, align 8
  %65 = icmp ne i32 (%struct.sdw_slave*)* %64, null
  br i1 %65, label %66, label %74

66:                                               ; preds = %59
  %67 = load %struct.sdw_slave*, %struct.sdw_slave** %4, align 8
  %68 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %67, i32 0, i32 2
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32 (%struct.sdw_slave*)*, i32 (%struct.sdw_slave*)** %70, align 8
  %72 = load %struct.sdw_slave*, %struct.sdw_slave** %4, align 8
  %73 = call i32 %71(%struct.sdw_slave* %72)
  br label %74

74:                                               ; preds = %66, %59, %54
  %75 = load %struct.sdw_slave*, %struct.sdw_slave** %4, align 8
  %76 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load %struct.sdw_slave*, %struct.sdw_slave** %4, align 8
  %82 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  store i32 300, i32* %83, align 8
  br label %84

84:                                               ; preds = %80, %74
  %85 = load i32, i32* @u32, align 4
  %86 = load %struct.sdw_slave*, %struct.sdw_slave** %4, align 8
  %87 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %86, i32 0, i32 1
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.sdw_slave*, %struct.sdw_slave** %4, align 8
  %92 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @max_t(i32 %85, i32 %90, i32 %94)
  %96 = load %struct.sdw_slave*, %struct.sdw_slave** %4, align 8
  %97 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %96, i32 0, i32 1
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  store i32 %95, i32* %99, align 4
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %84, %44, %32, %19
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local %struct.sdw_slave* @dev_to_sdw_dev(%struct.device*) #1

declare dso_local %struct.sdw_driver* @drv_to_sdw_driver(i32) #1

declare dso_local %struct.sdw_device_id.0* @sdw_get_device_id(%struct.sdw_slave*, %struct.sdw_driver*) #1

declare dso_local i32 @dev_pm_domain_attach(%struct.device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @dev_pm_domain_detach(%struct.device*, i32) #1

declare dso_local i32 @max_t(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
