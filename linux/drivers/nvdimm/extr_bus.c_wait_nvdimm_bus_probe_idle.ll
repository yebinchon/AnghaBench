; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_bus.c_wait_nvdimm_bus_probe_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_bus.c_wait_nvdimm_bus_probe_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nvdimm_bus = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wait_nvdimm_bus_probe_idle(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.nvdimm_bus*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call %struct.nvdimm_bus* @walk_to_nvdimm_bus(%struct.device* %4)
  store %struct.nvdimm_bus* %5, %struct.nvdimm_bus** %3, align 8
  br label %6

6:                                                ; preds = %30, %1
  %7 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %3, align 8
  %8 = getelementptr inbounds %struct.nvdimm_bus, %struct.nvdimm_bus* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  br label %31

12:                                               ; preds = %6
  %13 = load %struct.device*, %struct.device** %2, align 8
  %14 = call i32 @nvdimm_bus_unlock(%struct.device* %13)
  %15 = load %struct.device*, %struct.device** %2, align 8
  %16 = call i32 @nd_device_unlock(%struct.device* %15)
  %17 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %3, align 8
  %18 = getelementptr inbounds %struct.nvdimm_bus, %struct.nvdimm_bus* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %3, align 8
  %21 = getelementptr inbounds %struct.nvdimm_bus, %struct.nvdimm_bus* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @wait_event(i32 %19, i32 %24)
  %26 = load %struct.device*, %struct.device** %2, align 8
  %27 = call i32 @nd_device_lock(%struct.device* %26)
  %28 = load %struct.device*, %struct.device** %2, align 8
  %29 = call i32 @nvdimm_bus_lock(%struct.device* %28)
  br label %30

30:                                               ; preds = %12
  br i1 true, label %6, label %31

31:                                               ; preds = %30, %11
  ret void
}

declare dso_local %struct.nvdimm_bus* @walk_to_nvdimm_bus(%struct.device*) #1

declare dso_local i32 @nvdimm_bus_unlock(%struct.device*) #1

declare dso_local i32 @nd_device_unlock(%struct.device*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @nd_device_lock(%struct.device*) #1

declare dso_local i32 @nvdimm_bus_lock(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
