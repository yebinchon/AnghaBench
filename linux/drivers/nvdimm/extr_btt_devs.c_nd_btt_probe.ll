; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_btt_devs.c_nd_btt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_btt_devs.c_nd_btt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nd_namespace_common = type { i32, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.btt_sb = type { i32 }
%struct.nd_region = type { i32 }
%struct.nd_btt = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"btt: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"<none>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nd_btt_probe(%struct.device* %0, %struct.nd_namespace_common* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.nd_namespace_common*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.btt_sb*, align 8
  %9 = alloca %struct.nd_region*, align 8
  %10 = alloca %struct.nd_btt*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.nd_namespace_common* %1, %struct.nd_namespace_common** %5, align 8
  %11 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %5, align 8
  %12 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.nd_region* @to_nd_region(i32 %14)
  store %struct.nd_region* %15, %struct.nd_region** %9, align 8
  %16 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %5, align 8
  %17 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %78

23:                                               ; preds = %2
  %24 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %5, align 8
  %25 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %28 [
    i32 128, label %27
    i32 130, label %27
    i32 129, label %27
  ]

27:                                               ; preds = %23, %23, %23
  br label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %78

31:                                               ; preds = %27
  %32 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %5, align 8
  %33 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %32, i32 0, i32 1
  %34 = call i32 @nvdimm_bus_lock(%struct.TYPE_3__* %33)
  %35 = load %struct.nd_region*, %struct.nd_region** %9, align 8
  %36 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %5, align 8
  %37 = call %struct.device* @__nd_btt_create(%struct.nd_region* %35, i32 0, i32* null, %struct.nd_namespace_common* %36)
  store %struct.device* %37, %struct.device** %7, align 8
  %38 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %5, align 8
  %39 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %38, i32 0, i32 1
  %40 = call i32 @nvdimm_bus_unlock(%struct.TYPE_3__* %39)
  %41 = load %struct.device*, %struct.device** %7, align 8
  %42 = icmp ne %struct.device* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %31
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %78

46:                                               ; preds = %31
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call %struct.btt_sb* @devm_kzalloc(%struct.device* %47, i32 4, i32 %48)
  store %struct.btt_sb* %49, %struct.btt_sb** %8, align 8
  %50 = load %struct.device*, %struct.device** %7, align 8
  %51 = call %struct.nd_btt* @to_nd_btt(%struct.device* %50)
  %52 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %5, align 8
  %53 = load %struct.btt_sb*, %struct.btt_sb** %8, align 8
  %54 = call i32 @__nd_btt_probe(%struct.nd_btt* %51, %struct.nd_namespace_common* %52, %struct.btt_sb* %53)
  store i32 %54, i32* %6, align 4
  %55 = load %struct.device*, %struct.device** %4, align 8
  %56 = load i32, i32* %6, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %46
  %59 = load %struct.device*, %struct.device** %7, align 8
  %60 = call i8* @dev_name(%struct.device* %59)
  br label %62

61:                                               ; preds = %46
  br label %62

62:                                               ; preds = %61, %58
  %63 = phi i8* [ %60, %58 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %61 ]
  %64 = call i32 @dev_dbg(%struct.device* %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %63)
  %65 = load i32, i32* %6, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %62
  %68 = load %struct.device*, %struct.device** %7, align 8
  %69 = call %struct.nd_btt* @to_nd_btt(%struct.device* %68)
  store %struct.nd_btt* %69, %struct.nd_btt** %10, align 8
  %70 = load %struct.device*, %struct.device** %7, align 8
  %71 = load %struct.nd_btt*, %struct.nd_btt** %10, align 8
  %72 = getelementptr inbounds %struct.nd_btt, %struct.nd_btt* %71, i32 0, i32 0
  %73 = call i32 @nd_detach_ndns(%struct.device* %70, i32* %72)
  %74 = load %struct.device*, %struct.device** %7, align 8
  %75 = call i32 @put_device(%struct.device* %74)
  br label %76

76:                                               ; preds = %67, %62
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %76, %43, %28, %20
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.nd_region* @to_nd_region(i32) #1

declare dso_local i32 @nvdimm_bus_lock(%struct.TYPE_3__*) #1

declare dso_local %struct.device* @__nd_btt_create(%struct.nd_region*, i32, i32*, %struct.nd_namespace_common*) #1

declare dso_local i32 @nvdimm_bus_unlock(%struct.TYPE_3__*) #1

declare dso_local %struct.btt_sb* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @__nd_btt_probe(%struct.nd_btt*, %struct.nd_namespace_common*, %struct.btt_sb*) #1

declare dso_local %struct.nd_btt* @to_nd_btt(%struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*) #1

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local i32 @nd_detach_ndns(%struct.device*, i32*) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
