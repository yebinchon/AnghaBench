; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_e820.c_e820_register_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_e820.c_e820_register_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.nd_region_desc = type { i32, i32, i32, i32, %struct.resource* }
%struct.nvdimm_bus = type { i32 }

@e820_pmem_region_attribute_groups = common dso_local global i32 0, align 4
@ND_REGION_PAGEMAP = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.resource*, i8*)* @e820_register_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e820_register_one(%struct.resource* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.resource*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nd_region_desc, align 8
  %7 = alloca %struct.nvdimm_bus*, align 8
  store %struct.resource* %0, %struct.resource** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.nvdimm_bus*
  store %struct.nvdimm_bus* %9, %struct.nvdimm_bus** %7, align 8
  %10 = call i32 @memset(%struct.nd_region_desc* %6, i32 0, i32 24)
  %11 = load %struct.resource*, %struct.resource** %4, align 8
  %12 = getelementptr inbounds %struct.nd_region_desc, %struct.nd_region_desc* %6, i32 0, i32 4
  store %struct.resource* %11, %struct.resource** %12, align 8
  %13 = load i32, i32* @e820_pmem_region_attribute_groups, align 4
  %14 = getelementptr inbounds %struct.nd_region_desc, %struct.nd_region_desc* %6, i32 0, i32 3
  store i32 %13, i32* %14, align 4
  %15 = load %struct.resource*, %struct.resource** %4, align 8
  %16 = getelementptr inbounds %struct.resource, %struct.resource* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @e820_range_to_nid(i32 %17)
  %19 = getelementptr inbounds %struct.nd_region_desc, %struct.nd_region_desc* %6, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds %struct.nd_region_desc, %struct.nd_region_desc* %6, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.nd_region_desc, %struct.nd_region_desc* %6, i32 0, i32 2
  store i32 %21, i32* %22, align 8
  %23 = load i32, i32* @ND_REGION_PAGEMAP, align 4
  %24 = getelementptr inbounds %struct.nd_region_desc, %struct.nd_region_desc* %6, i32 0, i32 0
  %25 = call i32 @set_bit(i32 %23, i32* %24)
  %26 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %7, align 8
  %27 = call i32 @nvdimm_pmem_region_create(%struct.nvdimm_bus* %26, %struct.nd_region_desc* %6)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @ENXIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %33

32:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %29
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @memset(%struct.nd_region_desc*, i32, i32) #1

declare dso_local i32 @e820_range_to_nid(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @nvdimm_pmem_region_create(%struct.nvdimm_bus*, %struct.nd_region_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
