; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c___reserve_free_pmem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c___reserve_free_pmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nvdimm = type { i32 }
%struct.nd_region = type { i32, i32, %struct.nd_mapping* }
%struct.nd_mapping = type { %struct.nvdimm* }
%struct.nd_label_id = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"pmem-reserve\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"pmem reserve underrun: %#llx of %#llx bytes\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__reserve_free_pmem(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nvdimm*, align 8
  %7 = alloca %struct.nd_region*, align 8
  %8 = alloca %struct.nd_label_id, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nd_mapping*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.nvdimm*
  store %struct.nvdimm* %14, %struct.nvdimm** %6, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call i32 @is_memory(%struct.device* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %83

19:                                               ; preds = %2
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = call %struct.nd_region* @to_nd_region(%struct.device* %20)
  store %struct.nd_region* %21, %struct.nd_region** %7, align 8
  %22 = load %struct.nd_region*, %struct.nd_region** %7, align 8
  %23 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %83

27:                                               ; preds = %19
  %28 = call i32 @memset(%struct.nd_label_id* %8, i32 0, i32 4)
  %29 = getelementptr inbounds %struct.nd_label_id, %struct.nd_label_id* %8, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @strcat(i32 %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %79, %27
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.nd_region*, %struct.nd_region** %7, align 8
  %35 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %82

38:                                               ; preds = %32
  %39 = load %struct.nd_region*, %struct.nd_region** %7, align 8
  %40 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %39, i32 0, i32 2
  %41 = load %struct.nd_mapping*, %struct.nd_mapping** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.nd_mapping, %struct.nd_mapping* %41, i64 %43
  store %struct.nd_mapping* %44, %struct.nd_mapping** %10, align 8
  store i64 0, i64* %12, align 8
  %45 = load %struct.nd_mapping*, %struct.nd_mapping** %10, align 8
  %46 = getelementptr inbounds %struct.nd_mapping, %struct.nd_mapping* %45, i32 0, i32 0
  %47 = load %struct.nvdimm*, %struct.nvdimm** %46, align 8
  %48 = load %struct.nvdimm*, %struct.nvdimm** %6, align 8
  %49 = icmp ne %struct.nvdimm* %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %38
  br label %79

51:                                               ; preds = %38
  %52 = load %struct.nd_region*, %struct.nd_region** %7, align 8
  %53 = load %struct.nd_mapping*, %struct.nd_mapping** %10, align 8
  %54 = call i64 @nd_pmem_available_dpa(%struct.nd_region* %52, %struct.nd_mapping* %53, i64* %12)
  store i64 %54, i64* %11, align 8
  %55 = load i64, i64* %11, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %83

58:                                               ; preds = %51
  %59 = load %struct.nd_region*, %struct.nd_region** %7, align 8
  %60 = load %struct.nd_mapping*, %struct.nd_mapping** %10, align 8
  %61 = load i64, i64* %11, align 8
  %62 = call i64 @scan_allocate(%struct.nd_region* %59, %struct.nd_mapping* %60, %struct.nd_label_id* %8, i64 %61)
  store i64 %62, i64* %12, align 8
  %63 = load %struct.nd_region*, %struct.nd_region** %7, align 8
  %64 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %63, i32 0, i32 1
  %65 = load i64, i64* %12, align 8
  %66 = load i64, i64* %11, align 8
  %67 = load i64, i64* %12, align 8
  %68 = sub i64 %66, %67
  %69 = load i64, i64* %11, align 8
  %70 = call i32 @dev_WARN_ONCE(i32* %64, i64 %65, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %68, i64 %69)
  %71 = load i64, i64* %12, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %58
  %74 = load i32, i32* @ENXIO, align 4
  %75 = sub nsw i32 0, %74
  br label %77

76:                                               ; preds = %58
  br label %77

77:                                               ; preds = %76, %73
  %78 = phi i32 [ %75, %73 ], [ 0, %76 ]
  store i32 %78, i32* %3, align 4
  br label %83

79:                                               ; preds = %50
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %9, align 4
  br label %32

82:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %77, %57, %26, %18
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @is_memory(%struct.device*) #1

declare dso_local %struct.nd_region* @to_nd_region(%struct.device*) #1

declare dso_local i32 @memset(%struct.nd_label_id*, i32, i32) #1

declare dso_local i32 @strcat(i32, i8*) #1

declare dso_local i64 @nd_pmem_available_dpa(%struct.nd_region*, %struct.nd_mapping*, i64*) #1

declare dso_local i64 @scan_allocate(%struct.nd_region*, %struct.nd_mapping*, %struct.nd_label_id*, i64) #1

declare dso_local i32 @dev_WARN_ONCE(i32*, i64, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
