; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_create_namespace_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_create_namespace_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32*, i32* }
%struct.nd_region = type { i64, i64, i32 }
%struct.nd_namespace_io = type { %struct.resource, %struct.TYPE_2__ }
%struct.resource = type { i64, i64, i32, i32 }
%struct.TYPE_2__ = type { %struct.device }

@GFP_KERNEL = common dso_local global i32 0, align 4
@namespace_io_device_type = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.device** (%struct.nd_region*)* @create_namespace_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.device** @create_namespace_io(%struct.nd_region* %0) #0 {
  %2 = alloca %struct.device**, align 8
  %3 = alloca %struct.nd_region*, align 8
  %4 = alloca %struct.nd_namespace_io*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device**, align 8
  %7 = alloca %struct.resource*, align 8
  store %struct.nd_region* %0, %struct.nd_region** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.nd_namespace_io* @kzalloc(i32 40, i32 %8)
  store %struct.nd_namespace_io* %9, %struct.nd_namespace_io** %4, align 8
  %10 = load %struct.nd_namespace_io*, %struct.nd_namespace_io** %4, align 8
  %11 = icmp ne %struct.nd_namespace_io* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store %struct.device** null, %struct.device*** %2, align 8
  br label %60

13:                                               ; preds = %1
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.device** @kcalloc(i32 2, i32 8, i32 %14)
  store %struct.device** %15, %struct.device*** %6, align 8
  %16 = load %struct.device**, %struct.device*** %6, align 8
  %17 = icmp ne %struct.device** %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load %struct.nd_namespace_io*, %struct.nd_namespace_io** %4, align 8
  %20 = call i32 @kfree(%struct.nd_namespace_io* %19)
  store %struct.device** null, %struct.device*** %2, align 8
  br label %60

21:                                               ; preds = %13
  %22 = load %struct.nd_namespace_io*, %struct.nd_namespace_io** %4, align 8
  %23 = getelementptr inbounds %struct.nd_namespace_io, %struct.nd_namespace_io* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store %struct.device* %24, %struct.device** %5, align 8
  %25 = load %struct.device*, %struct.device** %5, align 8
  %26 = getelementptr inbounds %struct.device, %struct.device* %25, i32 0, i32 1
  store i32* @namespace_io_device_type, i32** %26, align 8
  %27 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %28 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %27, i32 0, i32 2
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = getelementptr inbounds %struct.device, %struct.device* %29, i32 0, i32 0
  store i32* %28, i32** %30, align 8
  %31 = load %struct.nd_namespace_io*, %struct.nd_namespace_io** %4, align 8
  %32 = getelementptr inbounds %struct.nd_namespace_io, %struct.nd_namespace_io* %31, i32 0, i32 0
  store %struct.resource* %32, %struct.resource** %7, align 8
  %33 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %34 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %33, i32 0, i32 2
  %35 = call i32 @dev_name(i32* %34)
  %36 = load %struct.resource*, %struct.resource** %7, align 8
  %37 = getelementptr inbounds %struct.resource, %struct.resource* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @IORESOURCE_MEM, align 4
  %39 = load %struct.resource*, %struct.resource** %7, align 8
  %40 = getelementptr inbounds %struct.resource, %struct.resource* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %42 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.resource*, %struct.resource** %7, align 8
  %45 = getelementptr inbounds %struct.resource, %struct.resource* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.resource*, %struct.resource** %7, align 8
  %47 = getelementptr inbounds %struct.resource, %struct.resource* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %50 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %48, %51
  %53 = sub nsw i64 %52, 1
  %54 = load %struct.resource*, %struct.resource** %7, align 8
  %55 = getelementptr inbounds %struct.resource, %struct.resource* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  %56 = load %struct.device*, %struct.device** %5, align 8
  %57 = load %struct.device**, %struct.device*** %6, align 8
  %58 = getelementptr inbounds %struct.device*, %struct.device** %57, i64 0
  store %struct.device* %56, %struct.device** %58, align 8
  %59 = load %struct.device**, %struct.device*** %6, align 8
  store %struct.device** %59, %struct.device*** %2, align 8
  br label %60

60:                                               ; preds = %21, %18, %12
  %61 = load %struct.device**, %struct.device*** %2, align 8
  ret %struct.device** %61
}

declare dso_local %struct.nd_namespace_io* @kzalloc(i32, i32) #1

declare dso_local %struct.device** @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.nd_namespace_io*) #1

declare dso_local i32 @dev_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
