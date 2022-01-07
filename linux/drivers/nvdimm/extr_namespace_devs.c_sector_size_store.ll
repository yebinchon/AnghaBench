; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_sector_size_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_sector_size_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.nd_region = type { i32 }
%struct.nd_namespace_blk = type { i64 }
%struct.nd_namespace_pmem = type { i64 }
%struct.TYPE_2__ = type { i64 }

@blk_lbasize_supported = common dso_local global i64* null, align 8
@pmem_lbasize_supported = common dso_local global i64* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"result: %zd %s: %s%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"tried\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"wrote\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @sector_size_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sector_size_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.nd_region*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.nd_namespace_blk*, align 8
  %15 = alloca %struct.nd_namespace_pmem*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.nd_region* @to_nd_region(i32 %18)
  store %struct.nd_region* %19, %struct.nd_region** %10, align 8
  store i32 0, i32* %13, align 4
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = call i64 @is_namespace_blk(%struct.device* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load %struct.device*, %struct.device** %6, align 8
  %25 = call %struct.nd_namespace_blk* @to_nd_namespace_blk(%struct.device* %24)
  store %struct.nd_namespace_blk* %25, %struct.nd_namespace_blk** %14, align 8
  %26 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %14, align 8
  %27 = getelementptr inbounds %struct.nd_namespace_blk, %struct.nd_namespace_blk* %26, i32 0, i32 0
  store i64* %27, i64** %12, align 8
  %28 = load i64*, i64** @blk_lbasize_supported, align 8
  store i64* %28, i64** %11, align 8
  br label %43

29:                                               ; preds = %4
  %30 = load %struct.device*, %struct.device** %6, align 8
  %31 = call i64 @is_namespace_pmem(%struct.device* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load %struct.device*, %struct.device** %6, align 8
  %35 = call %struct.nd_namespace_pmem* @to_nd_namespace_pmem(%struct.device* %34)
  store %struct.nd_namespace_pmem* %35, %struct.nd_namespace_pmem** %15, align 8
  %36 = load %struct.nd_namespace_pmem*, %struct.nd_namespace_pmem** %15, align 8
  %37 = getelementptr inbounds %struct.nd_namespace_pmem, %struct.nd_namespace_pmem* %36, i32 0, i32 0
  store i64* %37, i64** %12, align 8
  %38 = load i64*, i64** @pmem_lbasize_supported, align 8
  store i64* %38, i64** %11, align 8
  br label %42

39:                                               ; preds = %29
  %40 = load i32, i32* @ENXIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %104

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42, %23
  %44 = load %struct.device*, %struct.device** %6, align 8
  %45 = call i32 @nd_device_lock(%struct.device* %44)
  %46 = load %struct.device*, %struct.device** %6, align 8
  %47 = call i32 @nvdimm_bus_lock(%struct.device* %46)
  %48 = load %struct.device*, %struct.device** %6, align 8
  %49 = call %struct.TYPE_2__* @to_ndns(%struct.device* %48)
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %43
  %54 = load i32, i32* @EBUSY, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %13, align 4
  br label %56

56:                                               ; preds = %53, %43
  %57 = load i32, i32* %13, align 4
  %58 = icmp sge i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load %struct.device*, %struct.device** %6, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = load i64*, i64** %12, align 8
  %63 = load i64*, i64** %11, align 8
  %64 = call i32 @nd_size_select_store(%struct.device* %60, i8* %61, i64* %62, i64* %63)
  store i32 %64, i32* %13, align 4
  br label %65

65:                                               ; preds = %59, %56
  %66 = load i32, i32* %13, align 4
  %67 = icmp sge i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load %struct.nd_region*, %struct.nd_region** %10, align 8
  %70 = load %struct.device*, %struct.device** %6, align 8
  %71 = call i32 @nd_namespace_label_update(%struct.nd_region* %69, %struct.device* %70)
  store i32 %71, i32* %13, align 4
  br label %72

72:                                               ; preds = %68, %65
  %73 = load %struct.device*, %struct.device** %6, align 8
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp slt i32 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %79 = load i8*, i8** %8, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = load i64, i64* %9, align 8
  %82 = sub i64 %81, 1
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 10
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %89 = call i32 @dev_dbg(%struct.device* %73, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %74, i8* %78, i8* %79, i8* %88)
  %90 = load %struct.device*, %struct.device** %6, align 8
  %91 = call i32 @nvdimm_bus_unlock(%struct.device* %90)
  %92 = load %struct.device*, %struct.device** %6, align 8
  %93 = call i32 @nd_device_unlock(%struct.device* %92)
  %94 = load i32, i32* %13, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %72
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  br label %101

99:                                               ; preds = %72
  %100 = load i64, i64* %9, align 8
  br label %101

101:                                              ; preds = %99, %96
  %102 = phi i64 [ %98, %96 ], [ %100, %99 ]
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %101, %39
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local %struct.nd_region* @to_nd_region(i32) #1

declare dso_local i64 @is_namespace_blk(%struct.device*) #1

declare dso_local %struct.nd_namespace_blk* @to_nd_namespace_blk(%struct.device*) #1

declare dso_local i64 @is_namespace_pmem(%struct.device*) #1

declare dso_local %struct.nd_namespace_pmem* @to_nd_namespace_pmem(%struct.device*) #1

declare dso_local i32 @nd_device_lock(%struct.device*) #1

declare dso_local i32 @nvdimm_bus_lock(%struct.device*) #1

declare dso_local %struct.TYPE_2__* @to_ndns(%struct.device*) #1

declare dso_local i32 @nd_size_select_store(%struct.device*, i8*, i64*, i64*) #1

declare dso_local i32 @nd_namespace_label_update(%struct.nd_region*, %struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @nvdimm_bus_unlock(%struct.device*) #1

declare dso_local i32 @nd_device_unlock(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
