; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_bus.c_nvdimm_region_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_bus.c_nvdimm_region_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_region = type { i32 }
%struct.nvdimm_bus = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvdimm_region_notify(%struct.nd_region* %0, i32 %1) #0 {
  %3 = alloca %struct.nd_region*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvdimm_bus*, align 8
  store %struct.nd_region* %0, %struct.nd_region** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %7 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %6, i32 0, i32 0
  %8 = call %struct.nvdimm_bus* @walk_to_nvdimm_bus(i32* %7)
  store %struct.nvdimm_bus* %8, %struct.nvdimm_bus** %5, align 8
  %9 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %5, align 8
  %10 = icmp ne %struct.nvdimm_bus* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %17

12:                                               ; preds = %2
  %13 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %14 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %13, i32 0, i32 0
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @nd_device_notify(i32* %14, i32 %15)
  br label %17

17:                                               ; preds = %12, %11
  ret void
}

declare dso_local %struct.nvdimm_bus* @walk_to_nvdimm_bus(i32*) #1

declare dso_local i32 @nd_device_notify(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
