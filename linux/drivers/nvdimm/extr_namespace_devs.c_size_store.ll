; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_size_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_size_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.nd_region = type { i32 }
%struct.nd_namespace_pmem = type { i32* }
%struct.nd_namespace_blk = type { i32* }

@.str = private unnamed_addr constant [14 x i8] c"%llx %s (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"fail\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @size_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @size_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.nd_region*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.nd_namespace_pmem*, align 8
  %15 = alloca %struct.nd_namespace_blk*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.nd_region* @to_nd_region(i32 %18)
  store %struct.nd_region* %19, %struct.nd_region** %10, align 8
  store i32** null, i32*** %12, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @kstrtoull(i8* %20, i32 0, i64* %11)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %13, align 4
  store i32 %25, i32* %5, align 4
  br label %98

26:                                               ; preds = %4
  %27 = load %struct.device*, %struct.device** %6, align 8
  %28 = call i32 @nd_device_lock(%struct.device* %27)
  %29 = load %struct.device*, %struct.device** %6, align 8
  %30 = call i32 @nvdimm_bus_lock(%struct.device* %29)
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = call i32 @wait_nvdimm_bus_probe_idle(%struct.device* %31)
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = load i64, i64* %11, align 8
  %35 = call i32 @__size_store(%struct.device* %33, i64 %34)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %26
  %39 = load %struct.nd_region*, %struct.nd_region** %10, align 8
  %40 = load %struct.device*, %struct.device** %6, align 8
  %41 = call i32 @nd_namespace_label_update(%struct.nd_region* %39, %struct.device* %40)
  store i32 %41, i32* %13, align 4
  br label %42

42:                                               ; preds = %38, %26
  %43 = load %struct.device*, %struct.device** %6, align 8
  %44 = call i64 @is_namespace_pmem(%struct.device* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load %struct.device*, %struct.device** %6, align 8
  %48 = call %struct.nd_namespace_pmem* @to_nd_namespace_pmem(%struct.device* %47)
  store %struct.nd_namespace_pmem* %48, %struct.nd_namespace_pmem** %14, align 8
  %49 = load %struct.nd_namespace_pmem*, %struct.nd_namespace_pmem** %14, align 8
  %50 = getelementptr inbounds %struct.nd_namespace_pmem, %struct.nd_namespace_pmem* %49, i32 0, i32 0
  store i32** %50, i32*** %12, align 8
  br label %61

51:                                               ; preds = %42
  %52 = load %struct.device*, %struct.device** %6, align 8
  %53 = call i64 @is_namespace_blk(%struct.device* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load %struct.device*, %struct.device** %6, align 8
  %57 = call %struct.nd_namespace_blk* @to_nd_namespace_blk(%struct.device* %56)
  store %struct.nd_namespace_blk* %57, %struct.nd_namespace_blk** %15, align 8
  %58 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %15, align 8
  %59 = getelementptr inbounds %struct.nd_namespace_blk, %struct.nd_namespace_blk* %58, i32 0, i32 0
  store i32** %59, i32*** %12, align 8
  br label %60

60:                                               ; preds = %55, %51
  br label %61

61:                                               ; preds = %60, %46
  %62 = load i32, i32* %13, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %61
  %65 = load i64, i64* %11, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load i32**, i32*** %12, align 8
  %69 = icmp ne i32** %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load i32**, i32*** %12, align 8
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @kfree(i32* %72)
  %74 = load i32**, i32*** %12, align 8
  store i32* null, i32** %74, align 8
  br label %75

75:                                               ; preds = %70, %67, %64, %61
  %76 = load %struct.device*, %struct.device** %6, align 8
  %77 = load i64, i64* %11, align 8
  %78 = load i32, i32* %13, align 4
  %79 = icmp slt i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %82 = load i32, i32* %13, align 4
  %83 = call i32 @dev_dbg(%struct.device* %76, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %77, i8* %81, i32 %82)
  %84 = load %struct.device*, %struct.device** %6, align 8
  %85 = call i32 @nvdimm_bus_unlock(%struct.device* %84)
  %86 = load %struct.device*, %struct.device** %6, align 8
  %87 = call i32 @nd_device_unlock(%struct.device* %86)
  %88 = load i32, i32* %13, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %75
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  br label %95

93:                                               ; preds = %75
  %94 = load i64, i64* %9, align 8
  br label %95

95:                                               ; preds = %93, %90
  %96 = phi i64 [ %92, %90 ], [ %94, %93 ]
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %95, %24
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local %struct.nd_region* @to_nd_region(i32) #1

declare dso_local i32 @kstrtoull(i8*, i32, i64*) #1

declare dso_local i32 @nd_device_lock(%struct.device*) #1

declare dso_local i32 @nvdimm_bus_lock(%struct.device*) #1

declare dso_local i32 @wait_nvdimm_bus_probe_idle(%struct.device*) #1

declare dso_local i32 @__size_store(%struct.device*, i64) #1

declare dso_local i32 @nd_namespace_label_update(%struct.nd_region*, %struct.device*) #1

declare dso_local i64 @is_namespace_pmem(%struct.device*) #1

declare dso_local %struct.nd_namespace_pmem* @to_nd_namespace_pmem(%struct.device*) #1

declare dso_local i64 @is_namespace_blk(%struct.device*) #1

declare dso_local %struct.nd_namespace_blk* @to_nd_namespace_blk(%struct.device*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64, i8*, i32) #1

declare dso_local i32 @nvdimm_bus_unlock(%struct.device*) #1

declare dso_local i32 @nd_device_unlock(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
