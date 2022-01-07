; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_claim.c_devm_nsio_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_claim.c_devm_nsio_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nd_namespace_io = type { i32, i32, %struct.resource }
%struct.resource = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @devm_nsio_disable(%struct.device* %0, %struct.nd_namespace_io* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.nd_namespace_io*, align 8
  %5 = alloca %struct.resource*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.nd_namespace_io* %1, %struct.nd_namespace_io** %4, align 8
  %6 = load %struct.nd_namespace_io*, %struct.nd_namespace_io** %4, align 8
  %7 = getelementptr inbounds %struct.nd_namespace_io, %struct.nd_namespace_io* %6, i32 0, i32 2
  store %struct.resource* %7, %struct.resource** %5, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = load %struct.nd_namespace_io*, %struct.nd_namespace_io** %4, align 8
  %10 = getelementptr inbounds %struct.nd_namespace_io, %struct.nd_namespace_io* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @devm_memunmap(%struct.device* %8, i32 %11)
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = load %struct.nd_namespace_io*, %struct.nd_namespace_io** %4, align 8
  %15 = getelementptr inbounds %struct.nd_namespace_io, %struct.nd_namespace_io* %14, i32 0, i32 0
  %16 = call i32 @devm_exit_badblocks(%struct.device* %13, i32* %15)
  %17 = load %struct.device*, %struct.device** %3, align 8
  %18 = load %struct.resource*, %struct.resource** %5, align 8
  %19 = getelementptr inbounds %struct.resource, %struct.resource* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.resource*, %struct.resource** %5, align 8
  %22 = call i32 @resource_size(%struct.resource* %21)
  %23 = call i32 @devm_release_mem_region(%struct.device* %17, i32 %20, i32 %22)
  ret void
}

declare dso_local i32 @devm_memunmap(%struct.device*, i32) #1

declare dso_local i32 @devm_exit_badblocks(%struct.device*, i32*) #1

declare dso_local i32 @devm_release_mem_region(%struct.device*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
