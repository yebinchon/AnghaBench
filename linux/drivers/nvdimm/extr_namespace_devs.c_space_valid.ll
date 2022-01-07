; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_space_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_space_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_region = type { i32, %struct.nd_mapping* }
%struct.nd_mapping = type { i32 }
%struct.nvdimm_drvdata = type { i32 }
%struct.nd_label_id = type { i32 }
%struct.resource = type { i64, i64 }
%struct.nvdimm_bus = type { i32 }
%struct.blk_alloc_info = type { %struct.resource*, i32, %struct.nd_mapping* }

@.str = private unnamed_addr constant [13 x i8] c"pmem-reserve\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"pmem\00", align 1
@alias_dpa_busy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nd_region*, %struct.nvdimm_drvdata*, %struct.nd_label_id*, %struct.resource*, %struct.resource*, %struct.resource*, i64, %struct.resource*)* @space_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @space_valid(%struct.nd_region* %0, %struct.nvdimm_drvdata* %1, %struct.nd_label_id* %2, %struct.resource* %3, %struct.resource* %4, %struct.resource* %5, i64 %6, %struct.resource* %7) #0 {
  %9 = alloca %struct.nd_region*, align 8
  %10 = alloca %struct.nvdimm_drvdata*, align 8
  %11 = alloca %struct.nd_label_id*, align 8
  %12 = alloca %struct.resource*, align 8
  %13 = alloca %struct.resource*, align 8
  %14 = alloca %struct.resource*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.resource*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.nd_mapping*, align 8
  %20 = alloca %struct.nvdimm_bus*, align 8
  %21 = alloca %struct.blk_alloc_info, align 8
  store %struct.nd_region* %0, %struct.nd_region** %9, align 8
  store %struct.nvdimm_drvdata* %1, %struct.nvdimm_drvdata** %10, align 8
  store %struct.nd_label_id* %2, %struct.nd_label_id** %11, align 8
  store %struct.resource* %3, %struct.resource** %12, align 8
  store %struct.resource* %4, %struct.resource** %13, align 8
  store %struct.resource* %5, %struct.resource** %14, align 8
  store i64 %6, i64* %15, align 8
  store %struct.resource* %7, %struct.resource** %16, align 8
  %22 = load %struct.nd_label_id*, %struct.nd_label_id** %11, align 8
  %23 = getelementptr inbounds %struct.nd_label_id, %struct.nd_label_id* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @strcmp(i32 %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %17, align 4
  %28 = load %struct.nd_label_id*, %struct.nd_label_id** %11, align 8
  %29 = getelementptr inbounds %struct.nd_label_id, %struct.nd_label_id* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @strncmp(i32 %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %32 = icmp eq i64 %31, 0
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %18, align 4
  %34 = load %struct.resource*, %struct.resource** %16, align 8
  %35 = getelementptr inbounds %struct.resource, %struct.resource* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.resource*, %struct.resource** %16, align 8
  %38 = getelementptr inbounds %struct.resource, %struct.resource* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp sge i64 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %8
  br label %106

42:                                               ; preds = %8
  %43 = load i32, i32* %17, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %113

46:                                               ; preds = %42
  %47 = load i32, i32* %18, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %76, label %49

49:                                               ; preds = %46
  %50 = load %struct.nd_region*, %struct.nd_region** %9, align 8
  %51 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %50, i32 0, i32 1
  %52 = load %struct.nd_mapping*, %struct.nd_mapping** %51, align 8
  %53 = getelementptr inbounds %struct.nd_mapping, %struct.nd_mapping* %52, i64 0
  store %struct.nd_mapping* %53, %struct.nd_mapping** %19, align 8
  %54 = getelementptr inbounds %struct.blk_alloc_info, %struct.blk_alloc_info* %21, i32 0, i32 0
  %55 = load %struct.resource*, %struct.resource** %16, align 8
  store %struct.resource* %55, %struct.resource** %54, align 8
  %56 = getelementptr inbounds %struct.blk_alloc_info, %struct.blk_alloc_info* %21, i32 0, i32 1
  %57 = load %struct.nd_mapping*, %struct.nd_mapping** %19, align 8
  %58 = getelementptr inbounds %struct.nd_mapping, %struct.nd_mapping* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %56, align 8
  %60 = getelementptr inbounds %struct.blk_alloc_info, %struct.blk_alloc_info* %21, i32 0, i32 2
  %61 = load %struct.nd_mapping*, %struct.nd_mapping** %19, align 8
  store %struct.nd_mapping* %61, %struct.nd_mapping** %60, align 8
  %62 = load %struct.nd_region*, %struct.nd_region** %9, align 8
  %63 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %62, i32 0, i32 0
  %64 = call i32 @is_nd_blk(i32* %63)
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call i32 @WARN_ON(i32 %67)
  %69 = load %struct.nd_region*, %struct.nd_region** %9, align 8
  %70 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %69, i32 0, i32 0
  %71 = call %struct.nvdimm_bus* @walk_to_nvdimm_bus(i32* %70)
  store %struct.nvdimm_bus* %71, %struct.nvdimm_bus** %20, align 8
  %72 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %20, align 8
  %73 = getelementptr inbounds %struct.nvdimm_bus, %struct.nvdimm_bus* %72, i32 0, i32 0
  %74 = load i32, i32* @alias_dpa_busy, align 4
  %75 = call i32 @device_for_each_child(i32* %73, %struct.blk_alloc_info* %21, i32 %74)
  br label %113

76:                                               ; preds = %46
  %77 = load %struct.resource*, %struct.resource** %16, align 8
  %78 = call i64 @resource_size(%struct.resource* %77)
  %79 = load i64, i64* %15, align 8
  %80 = icmp slt i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %106

82:                                               ; preds = %76
  %83 = load %struct.resource*, %struct.resource** %14, align 8
  %84 = icmp ne %struct.resource* %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %82
  br label %113

86:                                               ; preds = %82
  %87 = load %struct.resource*, %struct.resource** %16, align 8
  %88 = getelementptr inbounds %struct.resource, %struct.resource* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.resource*, %struct.resource** %14, align 8
  %91 = getelementptr inbounds %struct.resource, %struct.resource* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %92, 1
  %94 = icmp eq i64 %89, %93
  br i1 %94, label %104, label %95

95:                                               ; preds = %86
  %96 = load %struct.resource*, %struct.resource** %16, align 8
  %97 = getelementptr inbounds %struct.resource, %struct.resource* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.resource*, %struct.resource** %14, align 8
  %100 = getelementptr inbounds %struct.resource, %struct.resource* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = sub nsw i64 %101, 1
  %103 = icmp eq i64 %98, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %95, %86
  br label %113

105:                                              ; preds = %95
  br label %106

106:                                              ; preds = %105, %81, %41
  %107 = load %struct.resource*, %struct.resource** %16, align 8
  %108 = getelementptr inbounds %struct.resource, %struct.resource* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = sub nsw i64 %109, 1
  %111 = load %struct.resource*, %struct.resource** %16, align 8
  %112 = getelementptr inbounds %struct.resource, %struct.resource* %111, i32 0, i32 1
  store i64 %110, i64* %112, align 8
  br label %113

113:                                              ; preds = %106, %104, %85, %49, %45
  ret void
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @is_nd_blk(i32*) #1

declare dso_local %struct.nvdimm_bus* @walk_to_nvdimm_bus(i32*) #1

declare dso_local i32 @device_for_each_child(i32*, %struct.blk_alloc_info*, i32) #1

declare dso_local i64 @resource_size(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
