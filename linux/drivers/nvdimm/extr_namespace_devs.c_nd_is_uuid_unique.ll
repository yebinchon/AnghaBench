; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_nd_is_uuid_unique.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_nd_is_uuid_unique.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nvdimm_bus = type { i32 }

@is_namespace_uuid_busy = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nd_is_uuid_unique(%struct.device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nvdimm_bus*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = call %struct.nvdimm_bus* @walk_to_nvdimm_bus(%struct.device* %7)
  store %struct.nvdimm_bus* %8, %struct.nvdimm_bus** %6, align 8
  %9 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %6, align 8
  %10 = icmp ne %struct.nvdimm_bus* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %28

12:                                               ; preds = %2
  %13 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %6, align 8
  %14 = getelementptr inbounds %struct.nvdimm_bus, %struct.nvdimm_bus* %13, i32 0, i32 0
  %15 = call i32 @is_nvdimm_bus_locked(i32* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON_ONCE(i32 %18)
  %20 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %6, align 8
  %21 = getelementptr inbounds %struct.nvdimm_bus, %struct.nvdimm_bus* %20, i32 0, i32 0
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @is_namespace_uuid_busy, align 4
  %24 = call i64 @device_for_each_child(i32* %21, i32* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %28

27:                                               ; preds = %12
  store i32 1, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %26, %11
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local %struct.nvdimm_bus* @walk_to_nvdimm_bus(%struct.device*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @is_nvdimm_bus_locked(i32*) #1

declare dso_local i64 @device_for_each_child(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
