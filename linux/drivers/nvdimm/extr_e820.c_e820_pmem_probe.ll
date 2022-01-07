; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_e820.c_e820_pmem_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_e820.c_e820_pmem_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvdimm_bus_descriptor = type { i8*, i32, i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.nvdimm_bus = type { i32 }

@e820_pmem_probe.nd_desc = internal global %struct.nvdimm_bus_descriptor zeroinitializer, align 8
@ENXIO = common dso_local global i32 0, align 4
@e820_pmem_attribute_groups = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"e820\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@IORES_DESC_PERSISTENT_MEMORY_LEGACY = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@e820_register_one = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"failed to register legacy persistent memory ranges\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @e820_pmem_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e820_pmem_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.nvdimm_bus*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load i32, i32* @ENXIO, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @e820_pmem_attribute_groups, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.nvdimm_bus_descriptor, %struct.nvdimm_bus_descriptor* @e820_pmem_probe.nd_desc, i32 0, i32 2), align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.nvdimm_bus_descriptor, %struct.nvdimm_bus_descriptor* @e820_pmem_probe.nd_desc, i32 0, i32 0), align 8
  %12 = load i32, i32* @THIS_MODULE, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.nvdimm_bus_descriptor, %struct.nvdimm_bus_descriptor* @e820_pmem_probe.nd_desc, i32 0, i32 1), align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.nvdimm_bus* @nvdimm_bus_register(%struct.device* %13, %struct.nvdimm_bus_descriptor* @e820_pmem_probe.nd_desc)
  store %struct.nvdimm_bus* %14, %struct.nvdimm_bus** %5, align 8
  %15 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %5, align 8
  %16 = icmp ne %struct.nvdimm_bus* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %31

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %5, align 8
  %21 = call i32 @platform_set_drvdata(%struct.platform_device* %19, %struct.nvdimm_bus* %20)
  %22 = load i32, i32* @IORES_DESC_PERSISTENT_MEMORY_LEGACY, align 4
  %23 = load i32, i32* @IORESOURCE_MEM, align 4
  %24 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %5, align 8
  %25 = load i32, i32* @e820_register_one, align 4
  %26 = call i32 @walk_iomem_res_desc(i32 %22, i32 %23, i32 0, i32 -1, %struct.nvdimm_bus* %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  br label %31

30:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %37

31:                                               ; preds = %29, %17
  %32 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %5, align 8
  %33 = call i32 @nvdimm_bus_unregister(%struct.nvdimm_bus* %32)
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = call i32 @dev_err(%struct.device* %34, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %31, %30
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.nvdimm_bus* @nvdimm_bus_register(%struct.device*, %struct.nvdimm_bus_descriptor*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.nvdimm_bus*) #1

declare dso_local i32 @walk_iomem_res_desc(i32, i32, i32, i32, %struct.nvdimm_bus*, i32) #1

declare dso_local i32 @nvdimm_bus_unregister(%struct.nvdimm_bus*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
