; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_core.c_do_map_region.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_core.c_do_map_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gasket_dev = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.gasket_driver_desc* }
%struct.gasket_driver_desc = type { i64 }
%struct.vm_area_struct = type { i32, i32, i32, i32 }
%struct.gasket_mappable_region = type { i32, i32 }

@DO_MAP_REGION_INVALID = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Error remapping PFN range.\0A\00", align 1
@DO_MAP_REGION_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Error unmapping partial region 0x%lx (0x%lx bytes)\0A\00", align 1
@DO_MAP_REGION_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gasket_dev*, %struct.vm_area_struct*, %struct.gasket_mappable_region*)* @do_map_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_map_region(%struct.gasket_dev* %0, %struct.vm_area_struct* %1, %struct.gasket_mappable_region* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gasket_dev*, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca %struct.gasket_mappable_region*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.gasket_driver_desc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.gasket_mappable_region, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.gasket_dev* %0, %struct.gasket_dev** %5, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %6, align 8
  store %struct.gasket_mappable_region* %2, %struct.gasket_mappable_region** %7, align 8
  store i32 67108864, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %21 = load %struct.gasket_dev*, %struct.gasket_dev** %5, align 8
  %22 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %21, i32 0, i32 2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %24, align 8
  store %struct.gasket_driver_desc* %25, %struct.gasket_driver_desc** %11, align 8
  %26 = load %struct.gasket_dev*, %struct.gasket_dev** %5, align 8
  %27 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %28 = call i32 @gasket_mm_vma_bar_offset(%struct.gasket_dev* %26, %struct.vm_area_struct* %27, i32* %12)
  store i32 %28, i32* %20, align 4
  %29 = load i32, i32* %20, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i32, i32* @DO_MAP_REGION_INVALID, align 4
  store i32 %32, i32* %4, align 4
  br label %134

33:                                               ; preds = %3
  %34 = load %struct.gasket_mappable_region*, %struct.gasket_mappable_region** %7, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %37 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %40 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %38, %41
  %43 = call i32 @gasket_mm_get_mapping_addrs(%struct.gasket_mappable_region* %34, i32 %35, i32 %42, %struct.gasket_mappable_region* %14, i32* %13)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %33
  %46 = load i32, i32* @DO_MAP_REGION_INVALID, align 4
  store i32 %46, i32* %4, align 4
  br label %134

47:                                               ; preds = %33
  %48 = getelementptr inbounds %struct.gasket_mappable_region, %struct.gasket_mappable_region* %14, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %15, align 4
  %50 = getelementptr inbounds %struct.gasket_mappable_region, %struct.gasket_mappable_region* %14, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %16, align 4
  %52 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %53 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %13, align 4
  %56 = add nsw i32 %54, %55
  store i32 %56, i32* %17, align 4
  %57 = load %struct.gasket_dev*, %struct.gasket_dev** %5, align 8
  %58 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %59 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @PAGE_SHIFT, align 4
  %62 = shl i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %11, align 8
  %65 = getelementptr inbounds %struct.gasket_driver_desc, %struct.gasket_driver_desc* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %63, %66
  %68 = call i32 @gasket_get_bar_index(%struct.gasket_dev* %57, i64 %67)
  store i32 %68, i32* %19, align 4
  %69 = load %struct.gasket_dev*, %struct.gasket_dev** %5, align 8
  %70 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = load i32, i32* %19, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %15, align 4
  %78 = add nsw i32 %76, %77
  store i32 %78, i32* %18, align 4
  br label %79

79:                                               ; preds = %110, %47
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %16, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %114

83:                                               ; preds = %79
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* %10, align 4
  %86 = sub nsw i32 %84, %85
  %87 = call i32 @min(i32 67108864, i32 %86)
  store i32 %87, i32* %9, align 4
  %88 = call i32 (...) @cond_resched()
  %89 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %90 = load i32, i32* %17, align 4
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %90, %91
  %93 = load i32, i32* %18, align 4
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %93, %94
  %96 = load i32, i32* @PAGE_SHIFT, align 4
  %97 = ashr i32 %95, %96
  %98 = load i32, i32* %9, align 4
  %99 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %100 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @io_remap_pfn_range(%struct.vm_area_struct* %89, i32 %92, i32 %97, i32 %98, i32 %101)
  store i32 %102, i32* %20, align 4
  %103 = load i32, i32* %20, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %83
  %106 = load %struct.gasket_dev*, %struct.gasket_dev** %5, align 8
  %107 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 (i32, i8*, ...) @dev_err(i32 %108, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %116

110:                                              ; preds = %83
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, %111
  store i32 %113, i32* %10, align 4
  br label %79

114:                                              ; preds = %79
  %115 = load i32, i32* @DO_MAP_REGION_SUCCESS, align 4
  store i32 %115, i32* %4, align 4
  br label %134

116:                                              ; preds = %105
  %117 = load i32, i32* %10, align 4
  %118 = load %struct.gasket_mappable_region*, %struct.gasket_mappable_region** %7, align 8
  %119 = getelementptr inbounds %struct.gasket_mappable_region, %struct.gasket_mappable_region* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  %120 = load %struct.gasket_dev*, %struct.gasket_dev** %5, align 8
  %121 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %122 = load %struct.gasket_mappable_region*, %struct.gasket_mappable_region** %7, align 8
  %123 = call i64 @gasket_mm_unmap_region(%struct.gasket_dev* %120, %struct.vm_area_struct* %121, %struct.gasket_mappable_region* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %116
  %126 = load %struct.gasket_dev*, %struct.gasket_dev** %5, align 8
  %127 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* %10, align 4
  %131 = call i32 (i32, i8*, ...) @dev_err(i32 %128, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %125, %116
  %133 = load i32, i32* @DO_MAP_REGION_FAILURE, align 4
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %132, %114, %45, %31
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i32 @gasket_mm_vma_bar_offset(%struct.gasket_dev*, %struct.vm_area_struct*, i32*) #1

declare dso_local i32 @gasket_mm_get_mapping_addrs(%struct.gasket_mappable_region*, i32, i32, %struct.gasket_mappable_region*, i32*) #1

declare dso_local i32 @gasket_get_bar_index(%struct.gasket_dev*, i64) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @io_remap_pfn_range(%struct.vm_area_struct*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i64 @gasket_mm_unmap_region(%struct.gasket_dev*, %struct.vm_area_struct*, %struct.gasket_mappable_region*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
