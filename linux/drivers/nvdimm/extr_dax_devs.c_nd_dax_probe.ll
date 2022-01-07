; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_dax_devs.c_nd_dax_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_dax_devs.c_nd_dax_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nd_namespace_common = type { i32, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.nd_dax = type { %struct.nd_pfn }
%struct.nd_pfn = type { i32, %struct.nd_pfn_sb* }
%struct.nd_pfn_sb = type { i32 }
%struct.nd_region = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@DAX_SIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"dax: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"<none>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nd_dax_probe(%struct.device* %0, %struct.nd_namespace_common* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.nd_namespace_common*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nd_dax*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.nd_pfn*, align 8
  %10 = alloca %struct.nd_pfn_sb*, align 8
  %11 = alloca %struct.nd_region*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.nd_namespace_common* %1, %struct.nd_namespace_common** %5, align 8
  %12 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %5, align 8
  %13 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.nd_region* @to_nd_region(i32 %15)
  store %struct.nd_region* %16, %struct.nd_region** %11, align 8
  %17 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %5, align 8
  %18 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %85

24:                                               ; preds = %2
  %25 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %5, align 8
  %26 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %29 [
    i32 128, label %28
    i32 129, label %28
  ]

28:                                               ; preds = %24, %24
  br label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %85

32:                                               ; preds = %28
  %33 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %5, align 8
  %34 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %33, i32 0, i32 1
  %35 = call i32 @nvdimm_bus_lock(%struct.TYPE_3__* %34)
  %36 = load %struct.nd_region*, %struct.nd_region** %11, align 8
  %37 = call %struct.nd_dax* @nd_dax_alloc(%struct.nd_region* %36)
  store %struct.nd_dax* %37, %struct.nd_dax** %7, align 8
  %38 = load %struct.nd_dax*, %struct.nd_dax** %7, align 8
  %39 = getelementptr inbounds %struct.nd_dax, %struct.nd_dax* %38, i32 0, i32 0
  store %struct.nd_pfn* %39, %struct.nd_pfn** %9, align 8
  %40 = load %struct.nd_pfn*, %struct.nd_pfn** %9, align 8
  %41 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %5, align 8
  %42 = call %struct.device* @nd_pfn_devinit(%struct.nd_pfn* %40, %struct.nd_namespace_common* %41)
  store %struct.device* %42, %struct.device** %8, align 8
  %43 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %5, align 8
  %44 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %43, i32 0, i32 1
  %45 = call i32 @nvdimm_bus_unlock(%struct.TYPE_3__* %44)
  %46 = load %struct.device*, %struct.device** %8, align 8
  %47 = icmp ne %struct.device* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %32
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %85

51:                                               ; preds = %32
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call %struct.nd_pfn_sb* @devm_kmalloc(%struct.device* %52, i32 4, i32 %53)
  store %struct.nd_pfn_sb* %54, %struct.nd_pfn_sb** %10, align 8
  %55 = load %struct.nd_pfn_sb*, %struct.nd_pfn_sb** %10, align 8
  %56 = load %struct.nd_pfn*, %struct.nd_pfn** %9, align 8
  %57 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %56, i32 0, i32 1
  store %struct.nd_pfn_sb* %55, %struct.nd_pfn_sb** %57, align 8
  %58 = load %struct.nd_pfn*, %struct.nd_pfn** %9, align 8
  %59 = load i32, i32* @DAX_SIG, align 4
  %60 = call i32 @nd_pfn_validate(%struct.nd_pfn* %58, i32 %59)
  store i32 %60, i32* %6, align 4
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = load i32, i32* %6, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %51
  %65 = load %struct.device*, %struct.device** %8, align 8
  %66 = call i8* @dev_name(%struct.device* %65)
  br label %68

67:                                               ; preds = %51
  br label %68

68:                                               ; preds = %67, %64
  %69 = phi i8* [ %66, %64 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %67 ]
  %70 = call i32 @dev_dbg(%struct.device* %61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %69)
  %71 = load i32, i32* %6, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = load %struct.device*, %struct.device** %8, align 8
  %75 = load %struct.nd_pfn*, %struct.nd_pfn** %9, align 8
  %76 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %75, i32 0, i32 0
  %77 = call i32 @nd_detach_ndns(%struct.device* %74, i32* %76)
  %78 = load %struct.device*, %struct.device** %8, align 8
  %79 = call i32 @put_device(%struct.device* %78)
  br label %83

80:                                               ; preds = %68
  %81 = load %struct.device*, %struct.device** %8, align 8
  %82 = call i32 @__nd_device_register(%struct.device* %81)
  br label %83

83:                                               ; preds = %80, %73
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %83, %48, %29, %21
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.nd_region* @to_nd_region(i32) #1

declare dso_local i32 @nvdimm_bus_lock(%struct.TYPE_3__*) #1

declare dso_local %struct.nd_dax* @nd_dax_alloc(%struct.nd_region*) #1

declare dso_local %struct.device* @nd_pfn_devinit(%struct.nd_pfn*, %struct.nd_namespace_common*) #1

declare dso_local i32 @nvdimm_bus_unlock(%struct.TYPE_3__*) #1

declare dso_local %struct.nd_pfn_sb* @devm_kmalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @nd_pfn_validate(%struct.nd_pfn*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*) #1

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local i32 @nd_detach_ndns(%struct.device*, i32*) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i32 @__nd_device_register(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
