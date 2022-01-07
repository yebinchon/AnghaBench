; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_pfn_devs.c_nd_pfn_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_pfn_devs.c_nd_pfn_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_pfn = type { i64, %struct.device }
%struct.device = type { i32*, i32*, i32 }
%struct.nd_region = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"pfn%d.%d\00", align 1
@nd_pfn_attribute_groups = common dso_local global i32 0, align 4
@nd_pfn_device_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nd_pfn* (%struct.nd_region*)* @nd_pfn_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nd_pfn* @nd_pfn_alloc(%struct.nd_region* %0) #0 {
  %2 = alloca %struct.nd_pfn*, align 8
  %3 = alloca %struct.nd_region*, align 8
  %4 = alloca %struct.nd_pfn*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.nd_region* %0, %struct.nd_region** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.nd_pfn* @kzalloc(i32 32, i32 %6)
  store %struct.nd_pfn* %7, %struct.nd_pfn** %4, align 8
  %8 = load %struct.nd_pfn*, %struct.nd_pfn** %4, align 8
  %9 = icmp ne %struct.nd_pfn* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.nd_pfn* null, %struct.nd_pfn** %2, align 8
  br label %46

11:                                               ; preds = %1
  %12 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %13 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %12, i32 0, i32 2
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i64 @ida_simple_get(i32* %13, i32 0, i32 0, i32 %14)
  %16 = load %struct.nd_pfn*, %struct.nd_pfn** %4, align 8
  %17 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load %struct.nd_pfn*, %struct.nd_pfn** %4, align 8
  %19 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %11
  %23 = load %struct.nd_pfn*, %struct.nd_pfn** %4, align 8
  %24 = call i32 @kfree(%struct.nd_pfn* %23)
  store %struct.nd_pfn* null, %struct.nd_pfn** %2, align 8
  br label %46

25:                                               ; preds = %11
  %26 = load %struct.nd_pfn*, %struct.nd_pfn** %4, align 8
  %27 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %26, i32 0, i32 1
  store %struct.device* %27, %struct.device** %5, align 8
  %28 = load %struct.device*, %struct.device** %5, align 8
  %29 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %30 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.nd_pfn*, %struct.nd_pfn** %4, align 8
  %33 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @dev_set_name(%struct.device* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %31, i64 %34)
  %36 = load i32, i32* @nd_pfn_attribute_groups, align 4
  %37 = load %struct.device*, %struct.device** %5, align 8
  %38 = getelementptr inbounds %struct.device, %struct.device* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.device*, %struct.device** %5, align 8
  %40 = getelementptr inbounds %struct.device, %struct.device* %39, i32 0, i32 1
  store i32* @nd_pfn_device_type, i32** %40, align 8
  %41 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %42 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %41, i32 0, i32 0
  %43 = load %struct.device*, %struct.device** %5, align 8
  %44 = getelementptr inbounds %struct.device, %struct.device* %43, i32 0, i32 0
  store i32* %42, i32** %44, align 8
  %45 = load %struct.nd_pfn*, %struct.nd_pfn** %4, align 8
  store %struct.nd_pfn* %45, %struct.nd_pfn** %2, align 8
  br label %46

46:                                               ; preds = %25, %22, %10
  %47 = load %struct.nd_pfn*, %struct.nd_pfn** %2, align 8
  ret %struct.nd_pfn* %47
}

declare dso_local %struct.nd_pfn* @kzalloc(i32, i32) #1

declare dso_local i64 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.nd_pfn*) #1

declare dso_local i32 @dev_set_name(%struct.device*, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
