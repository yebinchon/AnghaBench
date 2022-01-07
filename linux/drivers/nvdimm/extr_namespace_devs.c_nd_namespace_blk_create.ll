; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_nd_namespace_blk_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_nd_namespace_blk_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32, i32*, i32* }
%struct.nd_region = type { i32, i32, i32 }
%struct.nd_namespace_blk = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device }

@GFP_KERNEL = common dso_local global i32 0, align 4
@namespace_blk_device_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"namespace%d.%d\00", align 1
@nd_namespace_attribute_groups = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.device* (%struct.nd_region*)* @nd_namespace_blk_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.device* @nd_namespace_blk_create(%struct.nd_region* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.nd_region*, align 8
  %4 = alloca %struct.nd_namespace_blk*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.nd_region* %0, %struct.nd_region** %3, align 8
  %6 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %7 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %6, i32 0, i32 0
  %8 = call i32 @is_nd_blk(i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.device* null, %struct.device** %2, align 8
  br label %55

11:                                               ; preds = %1
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.nd_namespace_blk* @kzalloc(i32 32, i32 %12)
  store %struct.nd_namespace_blk* %13, %struct.nd_namespace_blk** %4, align 8
  %14 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %4, align 8
  %15 = icmp ne %struct.nd_namespace_blk* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  store %struct.device* null, %struct.device** %2, align 8
  br label %55

17:                                               ; preds = %11
  %18 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %4, align 8
  %19 = getelementptr inbounds %struct.nd_namespace_blk, %struct.nd_namespace_blk* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.device* %20, %struct.device** %5, align 8
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = getelementptr inbounds %struct.device, %struct.device* %21, i32 0, i32 2
  store i32* @namespace_blk_device_type, i32** %22, align 8
  %23 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %24 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %23, i32 0, i32 2
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i64 @ida_simple_get(i32* %24, i32 0, i32 0, i32 %25)
  %27 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %4, align 8
  %28 = getelementptr inbounds %struct.nd_namespace_blk, %struct.nd_namespace_blk* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %4, align 8
  %30 = getelementptr inbounds %struct.nd_namespace_blk, %struct.nd_namespace_blk* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %17
  %34 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %4, align 8
  %35 = call i32 @kfree(%struct.nd_namespace_blk* %34)
  store %struct.device* null, %struct.device** %2, align 8
  br label %55

36:                                               ; preds = %17
  %37 = load %struct.device*, %struct.device** %5, align 8
  %38 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %39 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %4, align 8
  %42 = getelementptr inbounds %struct.nd_namespace_blk, %struct.nd_namespace_blk* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @dev_set_name(%struct.device* %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %40, i64 %43)
  %45 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %46 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %45, i32 0, i32 0
  %47 = load %struct.device*, %struct.device** %5, align 8
  %48 = getelementptr inbounds %struct.device, %struct.device* %47, i32 0, i32 1
  store i32* %46, i32** %48, align 8
  %49 = load i32, i32* @nd_namespace_attribute_groups, align 4
  %50 = load %struct.device*, %struct.device** %5, align 8
  %51 = getelementptr inbounds %struct.device, %struct.device* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %4, align 8
  %53 = getelementptr inbounds %struct.nd_namespace_blk, %struct.nd_namespace_blk* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store %struct.device* %54, %struct.device** %2, align 8
  br label %55

55:                                               ; preds = %36, %33, %16, %10
  %56 = load %struct.device*, %struct.device** %2, align 8
  ret %struct.device* %56
}

declare dso_local i32 @is_nd_blk(i32*) #1

declare dso_local %struct.nd_namespace_blk* @kzalloc(i32, i32) #1

declare dso_local i64 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.nd_namespace_blk*) #1

declare dso_local i32 @dev_set_name(%struct.device*, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
