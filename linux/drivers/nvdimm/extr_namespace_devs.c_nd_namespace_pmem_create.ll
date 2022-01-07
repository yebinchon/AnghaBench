; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_nd_namespace_pmem_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_nd_namespace_pmem_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32, i32*, i32* }
%struct.nd_region = type { i32, i32, i32 }
%struct.nd_namespace_pmem = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.resource, %struct.TYPE_3__ }
%struct.resource = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.device }

@GFP_KERNEL = common dso_local global i32 0, align 4
@namespace_pmem_device_type = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"namespace%d.%d\00", align 1
@nd_namespace_attribute_groups = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.device* (%struct.nd_region*)* @nd_namespace_pmem_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.device* @nd_namespace_pmem_create(%struct.nd_region* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.nd_region*, align 8
  %4 = alloca %struct.nd_namespace_pmem*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.nd_region* %0, %struct.nd_region** %3, align 8
  %7 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %8 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %7, i32 0, i32 2
  %9 = call i32 @is_memory(i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.device* null, %struct.device** %2, align 8
  br label %69

12:                                               ; preds = %1
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.nd_namespace_pmem* @kzalloc(i32 40, i32 %13)
  store %struct.nd_namespace_pmem* %14, %struct.nd_namespace_pmem** %4, align 8
  %15 = load %struct.nd_namespace_pmem*, %struct.nd_namespace_pmem** %4, align 8
  %16 = icmp ne %struct.nd_namespace_pmem* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  store %struct.device* null, %struct.device** %2, align 8
  br label %69

18:                                               ; preds = %12
  %19 = load %struct.nd_namespace_pmem*, %struct.nd_namespace_pmem** %4, align 8
  %20 = getelementptr inbounds %struct.nd_namespace_pmem, %struct.nd_namespace_pmem* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store %struct.device* %22, %struct.device** %6, align 8
  %23 = load %struct.device*, %struct.device** %6, align 8
  %24 = getelementptr inbounds %struct.device, %struct.device* %23, i32 0, i32 2
  store i32* @namespace_pmem_device_type, i32** %24, align 8
  %25 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %26 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %25, i32 0, i32 2
  %27 = load %struct.device*, %struct.device** %6, align 8
  %28 = getelementptr inbounds %struct.device, %struct.device* %27, i32 0, i32 1
  store i32* %26, i32** %28, align 8
  %29 = load %struct.nd_namespace_pmem*, %struct.nd_namespace_pmem** %4, align 8
  %30 = getelementptr inbounds %struct.nd_namespace_pmem, %struct.nd_namespace_pmem* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store %struct.resource* %31, %struct.resource** %5, align 8
  %32 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %33 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %32, i32 0, i32 2
  %34 = call i32 @dev_name(i32* %33)
  %35 = load %struct.resource*, %struct.resource** %5, align 8
  %36 = getelementptr inbounds %struct.resource, %struct.resource* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @IORESOURCE_MEM, align 4
  %38 = load %struct.resource*, %struct.resource** %5, align 8
  %39 = getelementptr inbounds %struct.resource, %struct.resource* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %41 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %40, i32 0, i32 1
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i64 @ida_simple_get(i32* %41, i32 0, i32 0, i32 %42)
  %44 = load %struct.nd_namespace_pmem*, %struct.nd_namespace_pmem** %4, align 8
  %45 = getelementptr inbounds %struct.nd_namespace_pmem, %struct.nd_namespace_pmem* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.nd_namespace_pmem*, %struct.nd_namespace_pmem** %4, align 8
  %47 = getelementptr inbounds %struct.nd_namespace_pmem, %struct.nd_namespace_pmem* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %18
  %51 = load %struct.nd_namespace_pmem*, %struct.nd_namespace_pmem** %4, align 8
  %52 = call i32 @kfree(%struct.nd_namespace_pmem* %51)
  store %struct.device* null, %struct.device** %2, align 8
  br label %69

53:                                               ; preds = %18
  %54 = load %struct.device*, %struct.device** %6, align 8
  %55 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %56 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.nd_namespace_pmem*, %struct.nd_namespace_pmem** %4, align 8
  %59 = getelementptr inbounds %struct.nd_namespace_pmem, %struct.nd_namespace_pmem* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @dev_set_name(%struct.device* %54, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %57, i64 %60)
  %62 = load i32, i32* @nd_namespace_attribute_groups, align 4
  %63 = load %struct.device*, %struct.device** %6, align 8
  %64 = getelementptr inbounds %struct.device, %struct.device* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %66 = load %struct.nd_namespace_pmem*, %struct.nd_namespace_pmem** %4, align 8
  %67 = call i32 @nd_namespace_pmem_set_resource(%struct.nd_region* %65, %struct.nd_namespace_pmem* %66, i32 0)
  %68 = load %struct.device*, %struct.device** %6, align 8
  store %struct.device* %68, %struct.device** %2, align 8
  br label %69

69:                                               ; preds = %53, %50, %17, %11
  %70 = load %struct.device*, %struct.device** %2, align 8
  ret %struct.device* %70
}

declare dso_local i32 @is_memory(i32*) #1

declare dso_local %struct.nd_namespace_pmem* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i64 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.nd_namespace_pmem*) #1

declare dso_local i32 @dev_set_name(%struct.device*, i8*, i32, i64) #1

declare dso_local i32 @nd_namespace_pmem_set_resource(%struct.nd_region*, %struct.nd_namespace_pmem*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
