; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_pfn_devs.c_nd_pfn_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_pfn_devs.c_nd_pfn_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nd_namespace_common = type { i32, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.nd_pfn = type { i32, %struct.nd_pfn_sb* }
%struct.nd_pfn_sb = type { i32 }
%struct.nd_region = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@PFN_SIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"pfn: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"<none>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nd_pfn_probe(%struct.device* %0, %struct.nd_namespace_common* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.nd_namespace_common*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nd_pfn*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.nd_pfn_sb*, align 8
  %10 = alloca %struct.nd_region*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.nd_namespace_common* %1, %struct.nd_namespace_common** %5, align 8
  %11 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %5, align 8
  %12 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.nd_region* @to_nd_region(i32 %14)
  store %struct.nd_region* %15, %struct.nd_region** %10, align 8
  %16 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %5, align 8
  %17 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %84

23:                                               ; preds = %2
  %24 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %5, align 8
  %25 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %28 [
    i32 129, label %27
    i32 128, label %27
  ]

27:                                               ; preds = %23, %23
  br label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %84

31:                                               ; preds = %27
  %32 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %5, align 8
  %33 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %32, i32 0, i32 1
  %34 = call i32 @nvdimm_bus_lock(%struct.TYPE_3__* %33)
  %35 = load %struct.nd_region*, %struct.nd_region** %10, align 8
  %36 = call %struct.nd_pfn* @nd_pfn_alloc(%struct.nd_region* %35)
  store %struct.nd_pfn* %36, %struct.nd_pfn** %7, align 8
  %37 = load %struct.nd_pfn*, %struct.nd_pfn** %7, align 8
  %38 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %5, align 8
  %39 = call %struct.device* @nd_pfn_devinit(%struct.nd_pfn* %37, %struct.nd_namespace_common* %38)
  store %struct.device* %39, %struct.device** %8, align 8
  %40 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %5, align 8
  %41 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %40, i32 0, i32 1
  %42 = call i32 @nvdimm_bus_unlock(%struct.TYPE_3__* %41)
  %43 = load %struct.device*, %struct.device** %8, align 8
  %44 = icmp ne %struct.device* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %31
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %84

48:                                               ; preds = %31
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call %struct.nd_pfn_sb* @devm_kmalloc(%struct.device* %49, i32 4, i32 %50)
  store %struct.nd_pfn_sb* %51, %struct.nd_pfn_sb** %9, align 8
  %52 = load %struct.device*, %struct.device** %8, align 8
  %53 = call %struct.nd_pfn* @to_nd_pfn(%struct.device* %52)
  store %struct.nd_pfn* %53, %struct.nd_pfn** %7, align 8
  %54 = load %struct.nd_pfn_sb*, %struct.nd_pfn_sb** %9, align 8
  %55 = load %struct.nd_pfn*, %struct.nd_pfn** %7, align 8
  %56 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %55, i32 0, i32 1
  store %struct.nd_pfn_sb* %54, %struct.nd_pfn_sb** %56, align 8
  %57 = load %struct.nd_pfn*, %struct.nd_pfn** %7, align 8
  %58 = load i32, i32* @PFN_SIG, align 4
  %59 = call i32 @nd_pfn_validate(%struct.nd_pfn* %57, i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = load i32, i32* %6, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %48
  %64 = load %struct.device*, %struct.device** %8, align 8
  %65 = call i8* @dev_name(%struct.device* %64)
  br label %67

66:                                               ; preds = %48
  br label %67

67:                                               ; preds = %66, %63
  %68 = phi i8* [ %65, %63 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %66 ]
  %69 = call i32 @dev_dbg(%struct.device* %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %68)
  %70 = load i32, i32* %6, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %67
  %73 = load %struct.device*, %struct.device** %8, align 8
  %74 = load %struct.nd_pfn*, %struct.nd_pfn** %7, align 8
  %75 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %74, i32 0, i32 0
  %76 = call i32 @nd_detach_ndns(%struct.device* %73, i32* %75)
  %77 = load %struct.device*, %struct.device** %8, align 8
  %78 = call i32 @put_device(%struct.device* %77)
  br label %82

79:                                               ; preds = %67
  %80 = load %struct.device*, %struct.device** %8, align 8
  %81 = call i32 @__nd_device_register(%struct.device* %80)
  br label %82

82:                                               ; preds = %79, %72
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %82, %45, %28, %20
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.nd_region* @to_nd_region(i32) #1

declare dso_local i32 @nvdimm_bus_lock(%struct.TYPE_3__*) #1

declare dso_local %struct.nd_pfn* @nd_pfn_alloc(%struct.nd_region*) #1

declare dso_local %struct.device* @nd_pfn_devinit(%struct.nd_pfn*, %struct.nd_namespace_common*) #1

declare dso_local i32 @nvdimm_bus_unlock(%struct.TYPE_3__*) #1

declare dso_local %struct.nd_pfn_sb* @devm_kmalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.nd_pfn* @to_nd_pfn(%struct.device*) #1

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
