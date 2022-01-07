; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_pmem_should_map_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_pmem_should_map_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nd_region = type { i32 }
%struct.nd_namespace_common = type { i64 }
%struct.nd_namespace_io = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CONFIG_ZONE_DEVICE = common dso_local global i32 0, align 4
@ND_REGION_PAGEMAP = common dso_local global i32 0, align 4
@IORESOURCE_SYSTEM_RAM = common dso_local global i32 0, align 4
@IORES_DESC_NONE = common dso_local global i32 0, align 4
@REGION_MIXED = common dso_local global i64 0, align 8
@ARCH_MEMREMAP_PMEM = common dso_local global i64 0, align 8
@MEMREMAP_WB = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmem_should_map_pages(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.nd_region*, align 8
  %5 = alloca %struct.nd_namespace_common*, align 8
  %6 = alloca %struct.nd_namespace_io*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.nd_region* @to_nd_region(i32 %9)
  store %struct.nd_region* %10, %struct.nd_region** %4, align 8
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = call %struct.nd_namespace_common* @to_ndns(%struct.device* %11)
  store %struct.nd_namespace_common* %12, %struct.nd_namespace_common** %5, align 8
  %13 = load i32, i32* @CONFIG_ZONE_DEVICE, align 4
  %14 = call i32 @IS_ENABLED(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %60

17:                                               ; preds = %1
  %18 = load i32, i32* @ND_REGION_PAGEMAP, align 4
  %19 = load %struct.nd_region*, %struct.nd_region** %4, align 8
  %20 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %19, i32 0, i32 0
  %21 = call i32 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %60

24:                                               ; preds = %17
  %25 = load %struct.device*, %struct.device** %3, align 8
  %26 = call i64 @is_nd_pfn(%struct.device* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load %struct.device*, %struct.device** %3, align 8
  %30 = call i64 @is_nd_btt(%struct.device* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %24
  store i32 0, i32* %2, align 4
  br label %60

33:                                               ; preds = %28
  %34 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %5, align 8
  %35 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %60

39:                                               ; preds = %33
  %40 = load %struct.device*, %struct.device** %3, align 8
  %41 = call %struct.nd_namespace_io* @to_nd_namespace_io(%struct.device* %40)
  store %struct.nd_namespace_io* %41, %struct.nd_namespace_io** %6, align 8
  %42 = load %struct.nd_namespace_io*, %struct.nd_namespace_io** %6, align 8
  %43 = getelementptr inbounds %struct.nd_namespace_io, %struct.nd_namespace_io* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.nd_namespace_io*, %struct.nd_namespace_io** %6, align 8
  %47 = getelementptr inbounds %struct.nd_namespace_io, %struct.nd_namespace_io* %46, i32 0, i32 0
  %48 = call i32 @resource_size(%struct.TYPE_2__* %47)
  %49 = load i32, i32* @IORESOURCE_SYSTEM_RAM, align 4
  %50 = load i32, i32* @IORES_DESC_NONE, align 4
  %51 = call i64 @region_intersects(i32 %45, i32 %48, i32 %49, i32 %50)
  %52 = load i64, i64* @REGION_MIXED, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %60

55:                                               ; preds = %39
  %56 = load i64, i64* @ARCH_MEMREMAP_PMEM, align 8
  %57 = load i64, i64* @MEMREMAP_WB, align 8
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %55, %54, %38, %32, %23, %16
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.nd_region* @to_nd_region(i32) #1

declare dso_local %struct.nd_namespace_common* @to_ndns(%struct.device*) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @is_nd_pfn(%struct.device*) #1

declare dso_local i64 @is_nd_btt(%struct.device*) #1

declare dso_local %struct.nd_namespace_io* @to_nd_namespace_io(%struct.device*) #1

declare dso_local i64 @region_intersects(i32, i32, i32, i32) #1

declare dso_local i32 @resource_size(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
