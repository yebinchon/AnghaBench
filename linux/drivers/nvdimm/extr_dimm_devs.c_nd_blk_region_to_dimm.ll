; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_dimm_devs.c_nd_blk_region_to_dimm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_dimm_devs.c_nd_blk_region_to_dimm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvdimm = type { i32 }
%struct.nd_blk_region = type { %struct.nd_region }
%struct.nd_region = type { %struct.nd_mapping* }
%struct.nd_mapping = type { %struct.nvdimm* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nvdimm* @nd_blk_region_to_dimm(%struct.nd_blk_region* %0) #0 {
  %2 = alloca %struct.nd_blk_region*, align 8
  %3 = alloca %struct.nd_region*, align 8
  %4 = alloca %struct.nd_mapping*, align 8
  store %struct.nd_blk_region* %0, %struct.nd_blk_region** %2, align 8
  %5 = load %struct.nd_blk_region*, %struct.nd_blk_region** %2, align 8
  %6 = getelementptr inbounds %struct.nd_blk_region, %struct.nd_blk_region* %5, i32 0, i32 0
  store %struct.nd_region* %6, %struct.nd_region** %3, align 8
  %7 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %8 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %7, i32 0, i32 0
  %9 = load %struct.nd_mapping*, %struct.nd_mapping** %8, align 8
  %10 = getelementptr inbounds %struct.nd_mapping, %struct.nd_mapping* %9, i64 0
  store %struct.nd_mapping* %10, %struct.nd_mapping** %4, align 8
  %11 = load %struct.nd_mapping*, %struct.nd_mapping** %4, align 8
  %12 = getelementptr inbounds %struct.nd_mapping, %struct.nd_mapping* %11, i32 0, i32 0
  %13 = load %struct.nvdimm*, %struct.nvdimm** %12, align 8
  ret %struct.nvdimm* %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
