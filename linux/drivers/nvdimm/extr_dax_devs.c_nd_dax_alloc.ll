; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_dax_devs.c_nd_dax_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_dax_devs.c_nd_dax_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_dax = type { %struct.nd_pfn }
%struct.nd_pfn = type { i64, %struct.device }
%struct.device = type { i32*, i32*, i32 }
%struct.nd_region = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"dax%d.%d\00", align 1
@nd_dax_attribute_groups = common dso_local global i32 0, align 4
@nd_dax_device_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nd_dax* (%struct.nd_region*)* @nd_dax_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nd_dax* @nd_dax_alloc(%struct.nd_region* %0) #0 {
  %2 = alloca %struct.nd_dax*, align 8
  %3 = alloca %struct.nd_region*, align 8
  %4 = alloca %struct.nd_pfn*, align 8
  %5 = alloca %struct.nd_dax*, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.nd_region* %0, %struct.nd_region** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.nd_dax* @kzalloc(i32 32, i32 %7)
  store %struct.nd_dax* %8, %struct.nd_dax** %5, align 8
  %9 = load %struct.nd_dax*, %struct.nd_dax** %5, align 8
  %10 = icmp ne %struct.nd_dax* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.nd_dax* null, %struct.nd_dax** %2, align 8
  br label %49

12:                                               ; preds = %1
  %13 = load %struct.nd_dax*, %struct.nd_dax** %5, align 8
  %14 = getelementptr inbounds %struct.nd_dax, %struct.nd_dax* %13, i32 0, i32 0
  store %struct.nd_pfn* %14, %struct.nd_pfn** %4, align 8
  %15 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %16 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %15, i32 0, i32 2
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i64 @ida_simple_get(i32* %16, i32 0, i32 0, i32 %17)
  %19 = load %struct.nd_pfn*, %struct.nd_pfn** %4, align 8
  %20 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.nd_pfn*, %struct.nd_pfn** %4, align 8
  %22 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %12
  %26 = load %struct.nd_dax*, %struct.nd_dax** %5, align 8
  %27 = call i32 @kfree(%struct.nd_dax* %26)
  store %struct.nd_dax* null, %struct.nd_dax** %2, align 8
  br label %49

28:                                               ; preds = %12
  %29 = load %struct.nd_pfn*, %struct.nd_pfn** %4, align 8
  %30 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %29, i32 0, i32 1
  store %struct.device* %30, %struct.device** %6, align 8
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %33 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.nd_pfn*, %struct.nd_pfn** %4, align 8
  %36 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @dev_set_name(%struct.device* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %34, i64 %37)
  %39 = load i32, i32* @nd_dax_attribute_groups, align 4
  %40 = load %struct.device*, %struct.device** %6, align 8
  %41 = getelementptr inbounds %struct.device, %struct.device* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.device*, %struct.device** %6, align 8
  %43 = getelementptr inbounds %struct.device, %struct.device* %42, i32 0, i32 1
  store i32* @nd_dax_device_type, i32** %43, align 8
  %44 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %45 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %44, i32 0, i32 0
  %46 = load %struct.device*, %struct.device** %6, align 8
  %47 = getelementptr inbounds %struct.device, %struct.device* %46, i32 0, i32 0
  store i32* %45, i32** %47, align 8
  %48 = load %struct.nd_dax*, %struct.nd_dax** %5, align 8
  store %struct.nd_dax* %48, %struct.nd_dax** %2, align 8
  br label %49

49:                                               ; preds = %28, %25, %11
  %50 = load %struct.nd_dax*, %struct.nd_dax** %2, align 8
  ret %struct.nd_dax* %50
}

declare dso_local %struct.nd_dax* @kzalloc(i32, i32) #1

declare dso_local i64 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.nd_dax*) #1

declare dso_local i32 @dev_set_name(%struct.device*, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
