; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_core.c_to_nd_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_core.c_to_nd_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvdimm_bus_descriptor = type { i32 }
%struct.nvdimm_bus = type { %struct.nvdimm_bus_descriptor* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nvdimm_bus_descriptor* @to_nd_desc(%struct.nvdimm_bus* %0) #0 {
  %2 = alloca %struct.nvdimm_bus*, align 8
  store %struct.nvdimm_bus* %0, %struct.nvdimm_bus** %2, align 8
  %3 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %2, align 8
  %4 = getelementptr inbounds %struct.nvdimm_bus, %struct.nvdimm_bus* %3, i32 0, i32 0
  %5 = load %struct.nvdimm_bus_descriptor*, %struct.nvdimm_bus_descriptor** %4, align 8
  ret %struct.nvdimm_bus_descriptor* %5
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
