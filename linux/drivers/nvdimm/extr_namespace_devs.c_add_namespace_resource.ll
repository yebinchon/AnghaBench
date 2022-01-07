; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_add_namespace_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_add_namespace_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_region = type { i32, %struct.nd_mapping* }
%struct.nd_mapping = type { i32 }
%struct.nd_namespace_label = type { i32, i32 }
%struct.device = type { i32 }
%struct.nvdimm_drvdata = type { i32 }
%struct.resource = type { i32 }

@NSLABEL_UUID_LEN = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%d assign\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"error: conflicting extents for uuid: %pUb\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nd_region*, %struct.nd_namespace_label*, %struct.device**, i32)* @add_namespace_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_namespace_resource(%struct.nd_region* %0, %struct.nd_namespace_label* %1, %struct.device** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nd_region*, align 8
  %7 = alloca %struct.nd_namespace_label*, align 8
  %8 = alloca %struct.device**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nd_mapping*, align 8
  %11 = alloca %struct.nvdimm_drvdata*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.resource*, align 8
  store %struct.nd_region* %0, %struct.nd_region** %6, align 8
  store %struct.nd_namespace_label* %1, %struct.nd_namespace_label** %7, align 8
  store %struct.device** %2, %struct.device*** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.nd_region*, %struct.nd_region** %6, align 8
  %16 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %15, i32 0, i32 1
  %17 = load %struct.nd_mapping*, %struct.nd_mapping** %16, align 8
  %18 = getelementptr inbounds %struct.nd_mapping, %struct.nd_mapping* %17, i64 0
  store %struct.nd_mapping* %18, %struct.nd_mapping** %10, align 8
  %19 = load %struct.nd_mapping*, %struct.nd_mapping** %10, align 8
  %20 = call %struct.nvdimm_drvdata* @to_ndd(%struct.nd_mapping* %19)
  store %struct.nvdimm_drvdata* %20, %struct.nvdimm_drvdata** %11, align 8
  store i32 0, i32* %12, align 4
  br label %21

21:                                               ; preds = %89, %4
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %92

25:                                               ; preds = %21
  %26 = load %struct.device**, %struct.device*** %8, align 8
  %27 = load i32, i32* %12, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.device*, %struct.device** %26, i64 %28
  %30 = load %struct.device*, %struct.device** %29, align 8
  %31 = call i32* @namespace_to_uuid(%struct.device* %30)
  store i32* %31, i32** %13, align 8
  %32 = load i32*, i32** %13, align 8
  %33 = call i64 @IS_ERR_OR_NULL(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = call i32 @WARN_ON(i32 1)
  br label %89

37:                                               ; preds = %25
  %38 = load i32*, i32** %13, align 8
  %39 = load %struct.nd_namespace_label*, %struct.nd_namespace_label** %7, align 8
  %40 = getelementptr inbounds %struct.nd_namespace_label, %struct.nd_namespace_label* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @NSLABEL_UUID_LEN, align 4
  %43 = call i64 @memcmp(i32* %38, i32 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %89

46:                                               ; preds = %37
  %47 = load %struct.device**, %struct.device*** %8, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.device*, %struct.device** %47, i64 %49
  %51 = load %struct.device*, %struct.device** %50, align 8
  %52 = call i64 @is_namespace_blk(%struct.device* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %79

54:                                               ; preds = %46
  %55 = load %struct.nd_region*, %struct.nd_region** %6, align 8
  %56 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %11, align 8
  %57 = load %struct.device**, %struct.device*** %8, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.device*, %struct.device** %57, i64 %59
  %61 = load %struct.device*, %struct.device** %60, align 8
  %62 = call i32 @to_nd_namespace_blk(%struct.device* %61)
  %63 = load %struct.nd_namespace_label*, %struct.nd_namespace_label** %7, align 8
  %64 = getelementptr inbounds %struct.nd_namespace_label, %struct.nd_namespace_label* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @__le64_to_cpu(i32 %65)
  %67 = call %struct.resource* @nsblk_add_resource(%struct.nd_region* %55, %struct.nvdimm_drvdata* %56, i32 %62, i32 %66)
  store %struct.resource* %67, %struct.resource** %14, align 8
  %68 = load %struct.resource*, %struct.resource** %14, align 8
  %69 = icmp ne %struct.resource* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %54
  %71 = load i32, i32* @ENXIO, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %5, align 4
  br label %94

73:                                               ; preds = %54
  %74 = load %struct.nd_region*, %struct.nd_region** %6, align 8
  %75 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %11, align 8
  %76 = load %struct.resource*, %struct.resource** %14, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @nd_dbg_dpa(%struct.nd_region* %74, %struct.nvdimm_drvdata* %75, %struct.resource* %76, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %77)
  br label %88

79:                                               ; preds = %46
  %80 = load %struct.nd_region*, %struct.nd_region** %6, align 8
  %81 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %80, i32 0, i32 0
  %82 = load %struct.nd_namespace_label*, %struct.nd_namespace_label** %7, align 8
  %83 = getelementptr inbounds %struct.nd_namespace_label, %struct.nd_namespace_label* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @dev_err(i32* %81, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* @ENXIO, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %5, align 4
  br label %94

88:                                               ; preds = %73
  br label %92

89:                                               ; preds = %45, %35
  %90 = load i32, i32* %12, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %12, align 4
  br label %21

92:                                               ; preds = %88, %21
  %93 = load i32, i32* %12, align 4
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %92, %79, %70
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local %struct.nvdimm_drvdata* @to_ndd(%struct.nd_mapping*) #1

declare dso_local i32* @namespace_to_uuid(%struct.device*) #1

declare dso_local i64 @IS_ERR_OR_NULL(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #1

declare dso_local i64 @is_namespace_blk(%struct.device*) #1

declare dso_local %struct.resource* @nsblk_add_resource(%struct.nd_region*, %struct.nvdimm_drvdata*, i32, i32) #1

declare dso_local i32 @to_nd_namespace_blk(%struct.device*) #1

declare dso_local i32 @__le64_to_cpu(i32) #1

declare dso_local i32 @nd_dbg_dpa(%struct.nd_region*, %struct.nvdimm_drvdata*, %struct.resource*, i8*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
