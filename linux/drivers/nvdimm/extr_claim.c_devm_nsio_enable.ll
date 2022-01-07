; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_claim.c_devm_nsio_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_claim.c_devm_nsio_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nd_namespace_io = type { i32, %struct.resource, i32, i32, %struct.nd_namespace_common }
%struct.resource = type { i32 }
%struct.nd_namespace_common = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"could not reserve region %pR\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@nsio_rw_bytes = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ARCH_MEMREMAP_PMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devm_nsio_enable(%struct.device* %0, %struct.nd_namespace_io* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.nd_namespace_io*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.nd_namespace_common*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.nd_namespace_io* %1, %struct.nd_namespace_io** %5, align 8
  %8 = load %struct.nd_namespace_io*, %struct.nd_namespace_io** %5, align 8
  %9 = getelementptr inbounds %struct.nd_namespace_io, %struct.nd_namespace_io* %8, i32 0, i32 1
  store %struct.resource* %9, %struct.resource** %6, align 8
  %10 = load %struct.nd_namespace_io*, %struct.nd_namespace_io** %5, align 8
  %11 = getelementptr inbounds %struct.nd_namespace_io, %struct.nd_namespace_io* %10, i32 0, i32 4
  store %struct.nd_namespace_common* %11, %struct.nd_namespace_common** %7, align 8
  %12 = load %struct.resource*, %struct.resource** %6, align 8
  %13 = call i32 @resource_size(%struct.resource* %12)
  %14 = load %struct.nd_namespace_io*, %struct.nd_namespace_io** %5, align 8
  %15 = getelementptr inbounds %struct.nd_namespace_io, %struct.nd_namespace_io* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 4
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = load %struct.resource*, %struct.resource** %6, align 8
  %18 = getelementptr inbounds %struct.resource, %struct.resource* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.resource*, %struct.resource** %6, align 8
  %21 = call i32 @resource_size(%struct.resource* %20)
  %22 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %7, align 8
  %23 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %22, i32 0, i32 0
  %24 = call i32 @dev_name(%struct.TYPE_2__* %23)
  %25 = call i32 @devm_request_mem_region(%struct.device* %16, i32 %19, i32 %21, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %2
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load %struct.resource*, %struct.resource** %6, align 8
  %30 = call i32 @dev_warn(%struct.device* %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.resource* %29)
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %70

33:                                               ; preds = %2
  %34 = load i32, i32* @nsio_rw_bytes, align 4
  %35 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %7, align 8
  %36 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = load %struct.nd_namespace_io*, %struct.nd_namespace_io** %5, align 8
  %39 = getelementptr inbounds %struct.nd_namespace_io, %struct.nd_namespace_io* %38, i32 0, i32 2
  %40 = call i64 @devm_init_badblocks(%struct.device* %37, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %70

45:                                               ; preds = %33
  %46 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %7, align 8
  %47 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @to_nd_region(i32 %49)
  %51 = load %struct.nd_namespace_io*, %struct.nd_namespace_io** %5, align 8
  %52 = getelementptr inbounds %struct.nd_namespace_io, %struct.nd_namespace_io* %51, i32 0, i32 2
  %53 = load %struct.nd_namespace_io*, %struct.nd_namespace_io** %5, align 8
  %54 = getelementptr inbounds %struct.nd_namespace_io, %struct.nd_namespace_io* %53, i32 0, i32 1
  %55 = call i32 @nvdimm_badblocks_populate(i32 %50, i32* %52, %struct.resource* %54)
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = load %struct.resource*, %struct.resource** %6, align 8
  %58 = getelementptr inbounds %struct.resource, %struct.resource* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.resource*, %struct.resource** %6, align 8
  %61 = call i32 @resource_size(%struct.resource* %60)
  %62 = load i32, i32* @ARCH_MEMREMAP_PMEM, align 4
  %63 = call i32 @devm_memremap(%struct.device* %56, i32 %59, i32 %61, i32 %62)
  %64 = load %struct.nd_namespace_io*, %struct.nd_namespace_io** %5, align 8
  %65 = getelementptr inbounds %struct.nd_namespace_io, %struct.nd_namespace_io* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load %struct.nd_namespace_io*, %struct.nd_namespace_io** %5, align 8
  %67 = getelementptr inbounds %struct.nd_namespace_io, %struct.nd_namespace_io* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @PTR_ERR_OR_ZERO(i32 %68)
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %45, %42, %27
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @devm_request_mem_region(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_2__*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, %struct.resource*) #1

declare dso_local i64 @devm_init_badblocks(%struct.device*, i32*) #1

declare dso_local i32 @nvdimm_badblocks_populate(i32, i32*, %struct.resource*) #1

declare dso_local i32 @to_nd_region(i32) #1

declare dso_local i32 @devm_memremap(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
