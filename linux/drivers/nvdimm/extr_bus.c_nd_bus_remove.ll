; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_bus.c_nd_bus_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_bus.c_nd_bus_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nvdimm_bus = type { %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@nvdimm_bus_list_mutex = common dso_local global i32 0, align 4
@child_unregister = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @nd_bus_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nd_bus_remove(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.nvdimm_bus*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call %struct.nvdimm_bus* @to_nvdimm_bus(%struct.device* %4)
  store %struct.nvdimm_bus* %5, %struct.nvdimm_bus** %3, align 8
  %6 = call i32 @mutex_lock(i32* @nvdimm_bus_list_mutex)
  %7 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %3, align 8
  %8 = getelementptr inbounds %struct.nvdimm_bus, %struct.nvdimm_bus* %7, i32 0, i32 4
  %9 = call i32 @list_del_init(i32* %8)
  %10 = call i32 @mutex_unlock(i32* @nvdimm_bus_list_mutex)
  %11 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %3, align 8
  %12 = getelementptr inbounds %struct.nvdimm_bus, %struct.nvdimm_bus* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %3, align 8
  %15 = getelementptr inbounds %struct.nvdimm_bus, %struct.nvdimm_bus* %14, i32 0, i32 2
  %16 = call i64 @atomic_read(i32* %15)
  %17 = icmp eq i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @wait_event(i32 %13, i32 %18)
  %20 = call i32 (...) @nd_synchronize()
  %21 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %3, align 8
  %22 = getelementptr inbounds %struct.nvdimm_bus, %struct.nvdimm_bus* %21, i32 0, i32 1
  %23 = load i32, i32* @child_unregister, align 4
  %24 = call i32 @device_for_each_child(i32* %22, i32* null, i32 %23)
  %25 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %3, align 8
  %26 = getelementptr inbounds %struct.nvdimm_bus, %struct.nvdimm_bus* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @spin_lock(i32* %27)
  %29 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %3, align 8
  %30 = getelementptr inbounds %struct.nvdimm_bus, %struct.nvdimm_bus* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = call i32 @free_badrange_list(i32* %31)
  %33 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %3, align 8
  %34 = getelementptr inbounds %struct.nvdimm_bus, %struct.nvdimm_bus* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i32 @spin_unlock(i32* %35)
  %37 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %3, align 8
  %38 = call i32 @nvdimm_bus_destroy_ndctl(%struct.nvdimm_bus* %37)
  ret i32 0
}

declare dso_local %struct.nvdimm_bus* @to_nvdimm_bus(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @nd_synchronize(...) #1

declare dso_local i32 @device_for_each_child(i32*, i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @free_badrange_list(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @nvdimm_bus_destroy_ndctl(%struct.nvdimm_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
