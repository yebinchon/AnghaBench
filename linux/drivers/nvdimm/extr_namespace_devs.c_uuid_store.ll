; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_uuid_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_uuid_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.nd_region = type { i32 }
%struct.nd_namespace_pmem = type { i32* }
%struct.nd_namespace_blk = type { i32* }
%struct.TYPE_2__ = type { i64 }

@ENXIO = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"result: %zd wrote: %s%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @uuid_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @uuid_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.nd_region*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32**, align 8
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
  store i32* null, i32** %11, align 8
  store i64 0, i64* %12, align 8
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = call i64 @is_namespace_pmem(%struct.device* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %4
  %24 = load %struct.device*, %struct.device** %6, align 8
  %25 = call %struct.nd_namespace_pmem* @to_nd_namespace_pmem(%struct.device* %24)
  store %struct.nd_namespace_pmem* %25, %struct.nd_namespace_pmem** %14, align 8
  %26 = load %struct.nd_namespace_pmem*, %struct.nd_namespace_pmem** %14, align 8
  %27 = getelementptr inbounds %struct.nd_namespace_pmem, %struct.nd_namespace_pmem* %26, i32 0, i32 0
  store i32** %27, i32*** %13, align 8
  br label %41

28:                                               ; preds = %4
  %29 = load %struct.device*, %struct.device** %6, align 8
  %30 = call i64 @is_namespace_blk(%struct.device* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = call %struct.nd_namespace_blk* @to_nd_namespace_blk(%struct.device* %33)
  store %struct.nd_namespace_blk* %34, %struct.nd_namespace_blk** %15, align 8
  %35 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %15, align 8
  %36 = getelementptr inbounds %struct.nd_namespace_blk, %struct.nd_namespace_blk* %35, i32 0, i32 0
  store i32** %36, i32*** %13, align 8
  br label %40

37:                                               ; preds = %28
  %38 = load i64, i64* @ENXIO, align 8
  %39 = sub i64 0, %38
  store i64 %39, i64* %5, align 8
  br label %109

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40, %23
  %42 = load %struct.device*, %struct.device** %6, align 8
  %43 = call i32 @nd_device_lock(%struct.device* %42)
  %44 = load %struct.device*, %struct.device** %6, align 8
  %45 = call i32 @nvdimm_bus_lock(%struct.device* %44)
  %46 = load %struct.device*, %struct.device** %6, align 8
  %47 = call i32 @wait_nvdimm_bus_probe_idle(%struct.device* %46)
  %48 = load %struct.device*, %struct.device** %6, align 8
  %49 = call %struct.TYPE_2__* @to_ndns(%struct.device* %48)
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %41
  %54 = load i64, i64* @EBUSY, align 8
  %55 = sub i64 0, %54
  store i64 %55, i64* %12, align 8
  br label %56

56:                                               ; preds = %53, %41
  %57 = load i64, i64* %12, align 8
  %58 = icmp uge i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load %struct.device*, %struct.device** %6, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = load i64, i64* %9, align 8
  %63 = call i64 @nd_uuid_store(%struct.device* %60, i32** %11, i8* %61, i64 %62)
  store i64 %63, i64* %12, align 8
  br label %64

64:                                               ; preds = %59, %56
  %65 = load i64, i64* %12, align 8
  %66 = icmp uge i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load %struct.nd_region*, %struct.nd_region** %10, align 8
  %69 = load %struct.device*, %struct.device** %6, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = load i32**, i32*** %13, align 8
  %72 = call i64 @namespace_update_uuid(%struct.nd_region* %68, %struct.device* %69, i32* %70, i32** %71)
  store i64 %72, i64* %12, align 8
  br label %73

73:                                               ; preds = %67, %64
  %74 = load i64, i64* %12, align 8
  %75 = icmp uge i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load %struct.nd_region*, %struct.nd_region** %10, align 8
  %78 = load %struct.device*, %struct.device** %6, align 8
  %79 = call i64 @nd_namespace_label_update(%struct.nd_region* %77, %struct.device* %78)
  store i64 %79, i64* %12, align 8
  br label %83

80:                                               ; preds = %73
  %81 = load i32*, i32** %11, align 8
  %82 = call i32 @kfree(i32* %81)
  br label %83

83:                                               ; preds = %80, %76
  %84 = load %struct.device*, %struct.device** %6, align 8
  %85 = load i64, i64* %12, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = load i64, i64* %9, align 8
  %89 = sub i64 %88, 1
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 10
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %96 = call i32 @dev_dbg(%struct.device* %84, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %85, i8* %86, i8* %95)
  %97 = load %struct.device*, %struct.device** %6, align 8
  %98 = call i32 @nvdimm_bus_unlock(%struct.device* %97)
  %99 = load %struct.device*, %struct.device** %6, align 8
  %100 = call i32 @nd_device_unlock(%struct.device* %99)
  %101 = load i64, i64* %12, align 8
  %102 = icmp ult i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %83
  %104 = load i64, i64* %12, align 8
  br label %107

105:                                              ; preds = %83
  %106 = load i64, i64* %9, align 8
  br label %107

107:                                              ; preds = %105, %103
  %108 = phi i64 [ %104, %103 ], [ %106, %105 ]
  store i64 %108, i64* %5, align 8
  br label %109

109:                                              ; preds = %107, %37
  %110 = load i64, i64* %5, align 8
  ret i64 %110
}

declare dso_local %struct.nd_region* @to_nd_region(i32) #1

declare dso_local i64 @is_namespace_pmem(%struct.device*) #1

declare dso_local %struct.nd_namespace_pmem* @to_nd_namespace_pmem(%struct.device*) #1

declare dso_local i64 @is_namespace_blk(%struct.device*) #1

declare dso_local %struct.nd_namespace_blk* @to_nd_namespace_blk(%struct.device*) #1

declare dso_local i32 @nd_device_lock(%struct.device*) #1

declare dso_local i32 @nvdimm_bus_lock(%struct.device*) #1

declare dso_local i32 @wait_nvdimm_bus_probe_idle(%struct.device*) #1

declare dso_local %struct.TYPE_2__* @to_ndns(%struct.device*) #1

declare dso_local i64 @nd_uuid_store(%struct.device*, i32**, i8*, i64) #1

declare dso_local i64 @namespace_update_uuid(%struct.nd_region*, %struct.device*, i32*, i32**) #1

declare dso_local i64 @nd_namespace_label_update(%struct.nd_region*, %struct.device*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64, i8*, i8*) #1

declare dso_local i32 @nvdimm_bus_unlock(%struct.device*) #1

declare dso_local i32 @nd_device_unlock(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
