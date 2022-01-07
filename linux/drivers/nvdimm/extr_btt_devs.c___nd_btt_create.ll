; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_btt_devs.c___nd_btt_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_btt_devs.c___nd_btt_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32, i32*, i32* }
%struct.nd_region = type { i32, i32, i32 }
%struct.nd_namespace_common = type { i32, i32 }
%struct.nd_btt = type { i64, i64, i32, %struct.device, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"btt%d.%d\00", align 1
@nd_btt_device_type = common dso_local global i32 0, align 4
@nd_btt_attribute_groups = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"failed, already claimed by %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.device* (%struct.nd_region*, i64, i32*, %struct.nd_namespace_common*)* @__nd_btt_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.device* @__nd_btt_create(%struct.nd_region* %0, i64 %1, i32* %2, %struct.nd_namespace_common* %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.nd_region*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.nd_namespace_common*, align 8
  %10 = alloca %struct.nd_btt*, align 8
  %11 = alloca %struct.device*, align 8
  store %struct.nd_region* %0, %struct.nd_region** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.nd_namespace_common* %3, %struct.nd_namespace_common** %9, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.nd_btt* @kzalloc(i32 56, i32 %12)
  store %struct.nd_btt* %13, %struct.nd_btt** %10, align 8
  %14 = load %struct.nd_btt*, %struct.nd_btt** %10, align 8
  %15 = icmp ne %struct.nd_btt* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store %struct.device* null, %struct.device** %5, align 8
  br label %101

17:                                               ; preds = %4
  %18 = load %struct.nd_region*, %struct.nd_region** %6, align 8
  %19 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %18, i32 0, i32 0
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i64 @ida_simple_get(i32* %19, i32 0, i32 0, i32 %20)
  %22 = load %struct.nd_btt*, %struct.nd_btt** %10, align 8
  %23 = getelementptr inbounds %struct.nd_btt, %struct.nd_btt* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.nd_btt*, %struct.nd_btt** %10, align 8
  %25 = getelementptr inbounds %struct.nd_btt, %struct.nd_btt* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %98

29:                                               ; preds = %17
  %30 = load i64, i64* %7, align 8
  %31 = load %struct.nd_btt*, %struct.nd_btt** %10, align 8
  %32 = getelementptr inbounds %struct.nd_btt, %struct.nd_btt* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i32* @kmemdup(i32* %36, i32 16, i32 %37)
  store i32* %38, i32** %8, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  br label %91

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42, %29
  %44 = load i32*, i32** %8, align 8
  %45 = load %struct.nd_btt*, %struct.nd_btt** %10, align 8
  %46 = getelementptr inbounds %struct.nd_btt, %struct.nd_btt* %45, i32 0, i32 4
  store i32* %44, i32** %46, align 8
  %47 = load %struct.nd_btt*, %struct.nd_btt** %10, align 8
  %48 = getelementptr inbounds %struct.nd_btt, %struct.nd_btt* %47, i32 0, i32 3
  store %struct.device* %48, %struct.device** %11, align 8
  %49 = load %struct.device*, %struct.device** %11, align 8
  %50 = load %struct.nd_region*, %struct.nd_region** %6, align 8
  %51 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.nd_btt*, %struct.nd_btt** %10, align 8
  %54 = getelementptr inbounds %struct.nd_btt, %struct.nd_btt* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @dev_set_name(%struct.device* %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %52, i64 %55)
  %57 = load %struct.nd_region*, %struct.nd_region** %6, align 8
  %58 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %57, i32 0, i32 1
  %59 = load %struct.device*, %struct.device** %11, align 8
  %60 = getelementptr inbounds %struct.device, %struct.device* %59, i32 0, i32 2
  store i32* %58, i32** %60, align 8
  %61 = load %struct.device*, %struct.device** %11, align 8
  %62 = getelementptr inbounds %struct.device, %struct.device* %61, i32 0, i32 1
  store i32* @nd_btt_device_type, i32** %62, align 8
  %63 = load i32, i32* @nd_btt_attribute_groups, align 4
  %64 = load %struct.device*, %struct.device** %11, align 8
  %65 = getelementptr inbounds %struct.device, %struct.device* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.nd_btt*, %struct.nd_btt** %10, align 8
  %67 = getelementptr inbounds %struct.nd_btt, %struct.nd_btt* %66, i32 0, i32 3
  %68 = call i32 @device_initialize(%struct.device* %67)
  %69 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %9, align 8
  %70 = icmp ne %struct.nd_namespace_common* %69, null
  br i1 %70, label %71, label %89

71:                                               ; preds = %43
  %72 = load %struct.nd_btt*, %struct.nd_btt** %10, align 8
  %73 = getelementptr inbounds %struct.nd_btt, %struct.nd_btt* %72, i32 0, i32 3
  %74 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %9, align 8
  %75 = load %struct.nd_btt*, %struct.nd_btt** %10, align 8
  %76 = getelementptr inbounds %struct.nd_btt, %struct.nd_btt* %75, i32 0, i32 2
  %77 = call i32 @__nd_attach_ndns(%struct.device* %73, %struct.nd_namespace_common* %74, i32* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %89, label %79

79:                                               ; preds = %71
  %80 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %9, align 8
  %81 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %80, i32 0, i32 1
  %82 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %9, align 8
  %83 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @dev_name(i32 %84)
  %86 = call i32 @dev_dbg(i32* %81, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  %87 = load %struct.device*, %struct.device** %11, align 8
  %88 = call i32 @put_device(%struct.device* %87)
  store %struct.device* null, %struct.device** %5, align 8
  br label %101

89:                                               ; preds = %71, %43
  %90 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %90, %struct.device** %5, align 8
  br label %101

91:                                               ; preds = %41
  %92 = load %struct.nd_region*, %struct.nd_region** %6, align 8
  %93 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %92, i32 0, i32 0
  %94 = load %struct.nd_btt*, %struct.nd_btt** %10, align 8
  %95 = getelementptr inbounds %struct.nd_btt, %struct.nd_btt* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @ida_simple_remove(i32* %93, i64 %96)
  br label %98

98:                                               ; preds = %91, %28
  %99 = load %struct.nd_btt*, %struct.nd_btt** %10, align 8
  %100 = call i32 @kfree(%struct.nd_btt* %99)
  store %struct.device* null, %struct.device** %5, align 8
  br label %101

101:                                              ; preds = %98, %89, %79, %16
  %102 = load %struct.device*, %struct.device** %5, align 8
  ret %struct.device* %102
}

declare dso_local %struct.nd_btt* @kzalloc(i32, i32) #1

declare dso_local i64 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32* @kmemdup(i32*, i32, i32) #1

declare dso_local i32 @dev_set_name(%struct.device*, i8*, i32, i64) #1

declare dso_local i32 @device_initialize(%struct.device*) #1

declare dso_local i32 @__nd_attach_ndns(%struct.device*, %struct.nd_namespace_common*, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i32 @ida_simple_remove(i32*, i64) #1

declare dso_local i32 @kfree(%struct.nd_btt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
