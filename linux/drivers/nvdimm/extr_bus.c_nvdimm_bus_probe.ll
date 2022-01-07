; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_bus.c_nvdimm_bus_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_bus.c_nvdimm_bus_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.nd_device_driver = type { i32 (%struct.device.0*)* }
%struct.device.0 = type opaque
%struct.module = type { i32 }
%struct.nvdimm_bus = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"START: %s.probe(%s)\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"END: %s.probe(%s) = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @nvdimm_bus_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvdimm_bus_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.nd_device_driver*, align 8
  %5 = alloca %struct.module*, align 8
  %6 = alloca %struct.nvdimm_bus*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = call %struct.nd_device_driver* @to_nd_device_driver(%struct.TYPE_2__* %10)
  store %struct.nd_device_driver* %11, %struct.nd_device_driver** %4, align 8
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = call %struct.module* @to_bus_provider(%struct.device* %12)
  store %struct.module* %13, %struct.module** %5, align 8
  %14 = load %struct.device*, %struct.device** %3, align 8
  %15 = call %struct.nvdimm_bus* @walk_to_nvdimm_bus(%struct.device* %14)
  store %struct.nvdimm_bus* %15, %struct.nvdimm_bus** %6, align 8
  %16 = load %struct.module*, %struct.module** %5, align 8
  %17 = call i32 @try_module_get(%struct.module* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENXIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %91

22:                                               ; preds = %1
  %23 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %6, align 8
  %24 = getelementptr inbounds %struct.nvdimm_bus, %struct.nvdimm_bus* %23, i32 0, i32 0
  %25 = load %struct.device*, %struct.device** %3, align 8
  %26 = getelementptr inbounds %struct.device, %struct.device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.device*, %struct.device** %3, align 8
  %31 = call i32 @dev_name(%struct.device* %30)
  %32 = call i32 (i32*, i8*, i32, i32, ...) @dev_dbg(i32* %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %31)
  %33 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %6, align 8
  %34 = call i32 @nvdimm_bus_probe_start(%struct.nvdimm_bus* %33)
  %35 = load %struct.device*, %struct.device** %3, align 8
  %36 = call i32 @debug_nvdimm_lock(%struct.device* %35)
  %37 = load %struct.nd_device_driver*, %struct.nd_device_driver** %4, align 8
  %38 = getelementptr inbounds %struct.nd_device_driver, %struct.nd_device_driver* %37, i32 0, i32 0
  %39 = load i32 (%struct.device.0*)*, i32 (%struct.device.0*)** %38, align 8
  %40 = load %struct.device*, %struct.device** %3, align 8
  %41 = bitcast %struct.device* %40 to %struct.device.0*
  %42 = call i32 %39(%struct.device.0* %41)
  store i32 %42, i32* %7, align 4
  %43 = load %struct.device*, %struct.device** %3, align 8
  %44 = call i32 @debug_nvdimm_unlock(%struct.device* %43)
  %45 = load i32, i32* %7, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %22
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @EOPNOTSUPP, align 4
  %50 = sub nsw i32 0, %49
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %70

52:                                               ; preds = %47, %22
  %53 = load %struct.device*, %struct.device** %3, align 8
  %54 = getelementptr inbounds %struct.device, %struct.device* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %52
  %58 = load %struct.device*, %struct.device** %3, align 8
  %59 = getelementptr inbounds %struct.device, %struct.device* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @is_nd_region(i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %57
  %64 = load %struct.device*, %struct.device** %3, align 8
  %65 = getelementptr inbounds %struct.device, %struct.device* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @to_nd_region(i64 %66)
  %68 = load %struct.device*, %struct.device** %3, align 8
  %69 = call i32 @nd_region_advance_seeds(i32 %67, %struct.device* %68)
  br label %70

70:                                               ; preds = %63, %57, %52, %47
  %71 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %6, align 8
  %72 = call i32 @nvdimm_bus_probe_end(%struct.nvdimm_bus* %71)
  %73 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %6, align 8
  %74 = getelementptr inbounds %struct.nvdimm_bus, %struct.nvdimm_bus* %73, i32 0, i32 0
  %75 = load %struct.device*, %struct.device** %3, align 8
  %76 = getelementptr inbounds %struct.device, %struct.device* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.device*, %struct.device** %3, align 8
  %81 = call i32 @dev_name(%struct.device* %80)
  %82 = load i32, i32* %7, align 4
  %83 = call i32 (i32*, i8*, i32, i32, ...) @dev_dbg(i32* %74, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %81, i32 %82)
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %70
  %87 = load %struct.module*, %struct.module** %5, align 8
  %88 = call i32 @module_put(%struct.module* %87)
  br label %89

89:                                               ; preds = %86, %70
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %89, %19
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local %struct.nd_device_driver* @to_nd_device_driver(%struct.TYPE_2__*) #1

declare dso_local %struct.module* @to_bus_provider(%struct.device*) #1

declare dso_local %struct.nvdimm_bus* @walk_to_nvdimm_bus(%struct.device*) #1

declare dso_local i32 @try_module_get(%struct.module*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, ...) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @nvdimm_bus_probe_start(%struct.nvdimm_bus*) #1

declare dso_local i32 @debug_nvdimm_lock(%struct.device*) #1

declare dso_local i32 @debug_nvdimm_unlock(%struct.device*) #1

declare dso_local i64 @is_nd_region(i64) #1

declare dso_local i32 @nd_region_advance_seeds(i32, %struct.device*) #1

declare dso_local i32 @to_nd_region(i64) #1

declare dso_local i32 @nvdimm_bus_probe_end(%struct.nvdimm_bus*) #1

declare dso_local i32 @module_put(%struct.module*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
