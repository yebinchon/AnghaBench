; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_init_dpa_allocation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_init_dpa_allocation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_label_id = type { i32 }
%struct.nd_region = type { i32 }
%struct.nd_mapping = type { i64, i64 }
%struct.nvdimm_drvdata = type { i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"blk\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"init %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.nd_label_id*, %struct.nd_region*, %struct.nd_mapping*, i64)* @init_dpa_allocation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @init_dpa_allocation(%struct.nd_label_id* %0, %struct.nd_region* %1, %struct.nd_mapping* %2, i64 %3) #0 {
  %5 = alloca %struct.nd_label_id*, align 8
  %6 = alloca %struct.nd_region*, align 8
  %7 = alloca %struct.nd_mapping*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nvdimm_drvdata*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.resource*, align 8
  %13 = alloca i32, align 4
  store %struct.nd_label_id* %0, %struct.nd_label_id** %5, align 8
  store %struct.nd_region* %1, %struct.nd_region** %6, align 8
  store %struct.nd_mapping* %2, %struct.nd_mapping** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load %struct.nd_label_id*, %struct.nd_label_id** %5, align 8
  %15 = getelementptr inbounds %struct.nd_label_id, %struct.nd_label_id* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @strncmp(i32 %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %18 = icmp eq i64 %17, 0
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %9, align 4
  %20 = load %struct.nd_mapping*, %struct.nd_mapping** %7, align 8
  %21 = call %struct.nvdimm_drvdata* @to_ndd(%struct.nd_mapping* %20)
  store %struct.nvdimm_drvdata* %21, %struct.nvdimm_drvdata** %10, align 8
  store i32 0, i32* %13, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %4
  %25 = load %struct.nd_mapping*, %struct.nd_mapping** %7, align 8
  %26 = getelementptr inbounds %struct.nd_mapping, %struct.nd_mapping* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.nd_mapping*, %struct.nd_mapping** %7, align 8
  %29 = getelementptr inbounds %struct.nd_mapping, %struct.nd_mapping* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  %32 = load i64, i64* %8, align 8
  %33 = sub nsw i64 %31, %32
  store i64 %33, i64* %11, align 8
  br label %38

34:                                               ; preds = %4
  %35 = load %struct.nd_mapping*, %struct.nd_mapping** %7, align 8
  %36 = getelementptr inbounds %struct.nd_mapping, %struct.nd_mapping* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %11, align 8
  br label %38

38:                                               ; preds = %34, %24
  %39 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %10, align 8
  %40 = load %struct.nd_label_id*, %struct.nd_label_id** %5, align 8
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* %8, align 8
  %43 = call %struct.resource* @nvdimm_allocate_dpa(%struct.nvdimm_drvdata* %39, %struct.nd_label_id* %40, i64 %41, i64 %42)
  store %struct.resource* %43, %struct.resource** %12, align 8
  %44 = load %struct.resource*, %struct.resource** %12, align 8
  %45 = icmp ne %struct.resource* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %38
  %47 = load i32, i32* @EBUSY, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %13, align 4
  br label %49

49:                                               ; preds = %46, %38
  %50 = load %struct.nd_region*, %struct.nd_region** %6, align 8
  %51 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %10, align 8
  %52 = load %struct.resource*, %struct.resource** %12, align 8
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @nd_dbg_dpa(%struct.nd_region* %50, %struct.nvdimm_drvdata* %51, %struct.resource* %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %13, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i64, i64* %8, align 8
  br label %60

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %59, %57
  %61 = phi i64 [ %58, %57 ], [ 0, %59 ]
  ret i64 %61
}

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local %struct.nvdimm_drvdata* @to_ndd(%struct.nd_mapping*) #1

declare dso_local %struct.resource* @nvdimm_allocate_dpa(%struct.nvdimm_drvdata*, %struct.nd_label_id*, i64, i64) #1

declare dso_local i32 @nd_dbg_dpa(%struct.nd_region*, %struct.nvdimm_drvdata*, %struct.resource*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
