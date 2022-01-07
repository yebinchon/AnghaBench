; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_of_pmem.c_of_pmem_region_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_of_pmem.c_of_pmem_region_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i8*, i32, i32 }
%struct.of_pmem_private = type { %struct.TYPE_2__, %struct.nvdimm_bus* }
%struct.TYPE_2__ = type { %struct.device_node*, i32, i32, i32 }
%struct.device_node = type { i32 }
%struct.nvdimm_bus = type { i32 }
%struct.nd_region_desc = type { i8*, i32, %struct.device_node*, i32, i32, i32 }
%struct.nd_region = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bus_attr_groups = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"volatile\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Registering %s regions from %pOF\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"non-volatile\00", align 1
@region_attr_groups = common dso_local global i32 0, align 4
@ND_REGION_PAGEMAP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Unable to register region %pR from %pOF\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Registered region %pR from %pOF\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @of_pmem_region_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @of_pmem_region_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.of_pmem_private*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.nvdimm_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nd_region_desc, align 8
  %10 = alloca %struct.nd_region*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 2
  %13 = call %struct.device_node* @dev_of_node(i32* %12)
  store %struct.device_node* %13, %struct.device_node** %5, align 8
  %14 = load %struct.device_node*, %struct.device_node** %5, align 8
  %15 = icmp ne %struct.device_node* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENXIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %139

19:                                               ; preds = %1
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.of_pmem_private* @kzalloc(i32 32, i32 %20)
  store %struct.of_pmem_private* %21, %struct.of_pmem_private** %4, align 8
  %22 = load %struct.of_pmem_private*, %struct.of_pmem_private** %4, align 8
  %23 = icmp ne %struct.of_pmem_private* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %139

27:                                               ; preds = %19
  %28 = load i32, i32* @bus_attr_groups, align 4
  %29 = load %struct.of_pmem_private*, %struct.of_pmem_private** %4, align 8
  %30 = getelementptr inbounds %struct.of_pmem_private, %struct.of_pmem_private* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  store i32 %28, i32* %31, align 8
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i32 @kstrdup(i32 %34, i32 %35)
  %37 = load %struct.of_pmem_private*, %struct.of_pmem_private** %4, align 8
  %38 = getelementptr inbounds %struct.of_pmem_private, %struct.of_pmem_private* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  store i32 %36, i32* %39, align 4
  %40 = load i32, i32* @THIS_MODULE, align 4
  %41 = load %struct.of_pmem_private*, %struct.of_pmem_private** %4, align 8
  %42 = getelementptr inbounds %struct.of_pmem_private, %struct.of_pmem_private* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 8
  %44 = load %struct.device_node*, %struct.device_node** %5, align 8
  %45 = load %struct.of_pmem_private*, %struct.of_pmem_private** %4, align 8
  %46 = getelementptr inbounds %struct.of_pmem_private, %struct.of_pmem_private* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store %struct.device_node* %44, %struct.device_node** %47, align 8
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 2
  %50 = load %struct.of_pmem_private*, %struct.of_pmem_private** %4, align 8
  %51 = getelementptr inbounds %struct.of_pmem_private, %struct.of_pmem_private* %50, i32 0, i32 0
  %52 = call %struct.nvdimm_bus* @nvdimm_bus_register(i32* %49, %struct.TYPE_2__* %51)
  store %struct.nvdimm_bus* %52, %struct.nvdimm_bus** %6, align 8
  %53 = load %struct.of_pmem_private*, %struct.of_pmem_private** %4, align 8
  %54 = getelementptr inbounds %struct.of_pmem_private, %struct.of_pmem_private* %53, i32 0, i32 1
  store %struct.nvdimm_bus* %52, %struct.nvdimm_bus** %54, align 8
  %55 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %6, align 8
  %56 = icmp ne %struct.nvdimm_bus* %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %27
  %58 = load %struct.of_pmem_private*, %struct.of_pmem_private** %4, align 8
  %59 = call i32 @kfree(%struct.of_pmem_private* %58)
  %60 = load i32, i32* @ENODEV, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %139

62:                                               ; preds = %27
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = load %struct.of_pmem_private*, %struct.of_pmem_private** %4, align 8
  %65 = call i32 @platform_set_drvdata(%struct.platform_device* %63, %struct.of_pmem_private* %64)
  %66 = load %struct.device_node*, %struct.device_node** %5, align 8
  %67 = call i32 @of_find_property(%struct.device_node* %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* null)
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %7, align 4
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 2
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0)
  %78 = load %struct.device_node*, %struct.device_node** %5, align 8
  %79 = call i32 @dev_dbg(i32* %73, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %77, %struct.device_node* %78)
  store i32 0, i32* %8, align 4
  br label %80

80:                                               ; preds = %135, %62
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %138

86:                                               ; preds = %80
  %87 = call i32 @memset(%struct.nd_region_desc* %9, i32 0, i32 40)
  %88 = load i32, i32* @region_attr_groups, align 4
  %89 = getelementptr inbounds %struct.nd_region_desc, %struct.nd_region_desc* %9, i32 0, i32 5
  store i32 %88, i32* %89, align 8
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %90, i32 0, i32 2
  %92 = call i32 @dev_to_node(i32* %91)
  %93 = getelementptr inbounds %struct.nd_region_desc, %struct.nd_region_desc* %9, i32 0, i32 3
  store i32 %92, i32* %93, align 8
  %94 = getelementptr inbounds %struct.nd_region_desc, %struct.nd_region_desc* %9, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = getelementptr inbounds %struct.nd_region_desc, %struct.nd_region_desc* %9, i32 0, i32 4
  store i32 %95, i32* %96, align 4
  %97 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %98 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  %103 = getelementptr inbounds %struct.nd_region_desc, %struct.nd_region_desc* %9, i32 0, i32 0
  store i8* %102, i8** %103, align 8
  %104 = load %struct.device_node*, %struct.device_node** %5, align 8
  %105 = getelementptr inbounds %struct.nd_region_desc, %struct.nd_region_desc* %9, i32 0, i32 2
  store %struct.device_node* %104, %struct.device_node** %105, align 8
  %106 = load i32, i32* @ND_REGION_PAGEMAP, align 4
  %107 = getelementptr inbounds %struct.nd_region_desc, %struct.nd_region_desc* %9, i32 0, i32 1
  %108 = call i32 @set_bit(i32 %106, i32* %107)
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %86
  %112 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %6, align 8
  %113 = call %struct.nd_region* @nvdimm_volatile_region_create(%struct.nvdimm_bus* %112, %struct.nd_region_desc* %9)
  store %struct.nd_region* %113, %struct.nd_region** %10, align 8
  br label %117

114:                                              ; preds = %86
  %115 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %6, align 8
  %116 = call %struct.nd_region* @nvdimm_pmem_region_create(%struct.nvdimm_bus* %115, %struct.nd_region_desc* %9)
  store %struct.nd_region* %116, %struct.nd_region** %10, align 8
  br label %117

117:                                              ; preds = %114, %111
  %118 = load %struct.nd_region*, %struct.nd_region** %10, align 8
  %119 = icmp ne %struct.nd_region* %118, null
  br i1 %119, label %127, label %120

120:                                              ; preds = %117
  %121 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %122 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.nd_region_desc, %struct.nd_region_desc* %9, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = load %struct.device_node*, %struct.device_node** %5, align 8
  %126 = call i32 @dev_warn(i32* %122, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* %124, %struct.device_node* %125)
  br label %134

127:                                              ; preds = %117
  %128 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %129 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.nd_region_desc, %struct.nd_region_desc* %9, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = load %struct.device_node*, %struct.device_node** %5, align 8
  %133 = call i32 @dev_dbg(i32* %129, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %131, %struct.device_node* %132)
  br label %134

134:                                              ; preds = %127, %120
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %8, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %8, align 4
  br label %80

138:                                              ; preds = %80
  store i32 0, i32* %2, align 4
  br label %139

139:                                              ; preds = %138, %57, %24, %16
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local %struct.device_node* @dev_of_node(i32*) #1

declare dso_local %struct.of_pmem_private* @kzalloc(i32, i32) #1

declare dso_local i32 @kstrdup(i32, i32) #1

declare dso_local %struct.nvdimm_bus* @nvdimm_bus_register(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.of_pmem_private*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.of_pmem_private*) #1

declare dso_local i32 @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8*, %struct.device_node*) #1

declare dso_local i32 @memset(%struct.nd_region_desc*, i32, i32) #1

declare dso_local i32 @dev_to_node(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local %struct.nd_region* @nvdimm_volatile_region_create(%struct.nvdimm_bus*, %struct.nd_region_desc*) #1

declare dso_local %struct.nd_region* @nvdimm_pmem_region_create(%struct.nvdimm_bus*, %struct.nd_region_desc*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i8*, %struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
