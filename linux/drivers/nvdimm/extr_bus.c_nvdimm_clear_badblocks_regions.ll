; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_bus.c_nvdimm_clear_badblocks_regions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_bus.c_nvdimm_clear_badblocks_regions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvdimm_bus = type { i32 }
%struct.clear_badblocks_context = type { i32, i32 }

@nvdimm_clear_badblocks_region = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvdimm_bus*, i32, i32)* @nvdimm_clear_badblocks_regions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvdimm_clear_badblocks_regions(%struct.nvdimm_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nvdimm_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.clear_badblocks_context, align 4
  store %struct.nvdimm_bus* %0, %struct.nvdimm_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = getelementptr inbounds %struct.clear_badblocks_context, %struct.clear_badblocks_context* %7, i32 0, i32 0
  %9 = load i32, i32* %6, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds %struct.clear_badblocks_context, %struct.clear_badblocks_context* %7, i32 0, i32 1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %10, align 4
  %12 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %4, align 8
  %13 = getelementptr inbounds %struct.nvdimm_bus, %struct.nvdimm_bus* %12, i32 0, i32 0
  %14 = load i32, i32* @nvdimm_clear_badblocks_region, align 4
  %15 = call i32 @device_for_each_child(i32* %13, %struct.clear_badblocks_context* %7, i32 %14)
  ret void
}

declare dso_local i32 @device_for_each_child(i32*, %struct.clear_badblocks_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
