; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_grow_dpa_allocation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_grow_dpa_allocation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_region = type { i32, i32, %struct.nd_mapping* }
%struct.nd_mapping = type { i32 }
%struct.nd_label_id = type { i32 }
%struct.nvdimm_bus = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"pmem\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"allocation underrun: %#llx of %#llx bytes\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nd_region*, %struct.nd_label_id*, i64)* @grow_dpa_allocation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grow_dpa_allocation(%struct.nd_region* %0, %struct.nd_label_id* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nd_region*, align 8
  %6 = alloca %struct.nd_label_id*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nvdimm_bus*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nd_mapping*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.nd_region* %0, %struct.nd_region** %5, align 8
  store %struct.nd_label_id* %1, %struct.nd_label_id** %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load %struct.nd_region*, %struct.nd_region** %5, align 8
  %17 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %16, i32 0, i32 1
  %18 = call %struct.nvdimm_bus* @walk_to_nvdimm_bus(i32* %17)
  store %struct.nvdimm_bus* %18, %struct.nvdimm_bus** %8, align 8
  %19 = load %struct.nd_label_id*, %struct.nd_label_id** %6, align 8
  %20 = getelementptr inbounds %struct.nd_label_id, %struct.nd_label_id* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @strncmp(i32 %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %23 = icmp eq i64 %22, 0
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %102, %3
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.nd_region*, %struct.nd_region** %5, align 8
  %28 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %105

31:                                               ; preds = %25
  %32 = load %struct.nd_region*, %struct.nd_region** %5, align 8
  %33 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %32, i32 0, i32 2
  %34 = load %struct.nd_mapping*, %struct.nd_mapping** %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.nd_mapping, %struct.nd_mapping* %34, i64 %36
  store %struct.nd_mapping* %37, %struct.nd_mapping** %11, align 8
  %38 = load i64, i64* %7, align 8
  store i64 %38, i64* %12, align 8
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %14, align 4
  br label %40

40:                                               ; preds = %75, %31
  %41 = load i32, i32* %14, align 4
  %42 = icmp slt i32 %41, 2
  br i1 %42, label %43, label %78

43:                                               ; preds = %40
  %44 = load i32, i32* %14, align 4
  %45 = icmp eq i32 %44, 0
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %43
  %50 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %8, align 8
  %51 = load %struct.nd_mapping*, %struct.nd_mapping** %11, align 8
  %52 = call i32 @reserve_free_pmem(%struct.nvdimm_bus* %50, %struct.nd_mapping* %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %4, align 4
  br label %106

57:                                               ; preds = %49
  br label %58

58:                                               ; preds = %57, %43
  %59 = load %struct.nd_region*, %struct.nd_region** %5, align 8
  %60 = load %struct.nd_mapping*, %struct.nd_mapping** %11, align 8
  %61 = load %struct.nd_label_id*, %struct.nd_label_id** %6, align 8
  %62 = load i64, i64* %12, align 8
  %63 = call i64 @scan_allocate(%struct.nd_region* %59, %struct.nd_mapping* %60, %struct.nd_label_id* %61, i64 %62)
  store i64 %63, i64* %12, align 8
  %64 = load i32, i32* %15, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %58
  %67 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %8, align 8
  %68 = load %struct.nd_mapping*, %struct.nd_mapping** %11, align 8
  %69 = call i32 @release_free_pmem(%struct.nvdimm_bus* %67, %struct.nd_mapping* %68)
  br label %70

70:                                               ; preds = %66, %58
  %71 = load i64, i64* %12, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %78

74:                                               ; preds = %70
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %14, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %14, align 4
  br label %40

78:                                               ; preds = %73, %40
  %79 = load %struct.nd_region*, %struct.nd_region** %5, align 8
  %80 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %79, i32 0, i32 1
  %81 = load i64, i64* %12, align 8
  %82 = load i64, i64* %7, align 8
  %83 = load i64, i64* %12, align 8
  %84 = sub i64 %82, %83
  %85 = load i64, i64* %7, align 8
  %86 = call i32 @dev_WARN_ONCE(i32* %80, i64 %81, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %84, i64 %85)
  %87 = load i64, i64* %12, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %78
  %90 = load i32, i32* @ENXIO, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %106

92:                                               ; preds = %78
  %93 = load %struct.nd_region*, %struct.nd_region** %5, align 8
  %94 = load %struct.nd_mapping*, %struct.nd_mapping** %11, align 8
  %95 = load %struct.nd_label_id*, %struct.nd_label_id** %6, align 8
  %96 = call i32 @merge_dpa(%struct.nd_region* %93, %struct.nd_mapping* %94, %struct.nd_label_id* %95)
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %13, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %92
  %100 = load i32, i32* %13, align 4
  store i32 %100, i32* %4, align 4
  br label %106

101:                                              ; preds = %92
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %10, align 4
  br label %25

105:                                              ; preds = %25
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %105, %99, %89, %55
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local %struct.nvdimm_bus* @walk_to_nvdimm_bus(i32*) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @reserve_free_pmem(%struct.nvdimm_bus*, %struct.nd_mapping*) #1

declare dso_local i64 @scan_allocate(%struct.nd_region*, %struct.nd_mapping*, %struct.nd_label_id*, i64) #1

declare dso_local i32 @release_free_pmem(%struct.nvdimm_bus*, %struct.nd_mapping*) #1

declare dso_local i32 @dev_WARN_ONCE(i32*, i64, i8*, i64, i64) #1

declare dso_local i32 @merge_dpa(%struct.nd_region*, %struct.nd_mapping*, %struct.nd_label_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
