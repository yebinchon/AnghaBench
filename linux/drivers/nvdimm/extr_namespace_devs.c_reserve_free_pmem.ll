; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_reserve_free_pmem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_reserve_free_pmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvdimm_bus = type { i32 }
%struct.nd_mapping = type { %struct.nvdimm* }
%struct.nvdimm = type { i32 }

@__reserve_free_pmem = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvdimm_bus*, %struct.nd_mapping*)* @reserve_free_pmem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reserve_free_pmem(%struct.nvdimm_bus* %0, %struct.nd_mapping* %1) #0 {
  %3 = alloca %struct.nvdimm_bus*, align 8
  %4 = alloca %struct.nd_mapping*, align 8
  %5 = alloca %struct.nvdimm*, align 8
  %6 = alloca i32, align 4
  store %struct.nvdimm_bus* %0, %struct.nvdimm_bus** %3, align 8
  store %struct.nd_mapping* %1, %struct.nd_mapping** %4, align 8
  %7 = load %struct.nd_mapping*, %struct.nd_mapping** %4, align 8
  %8 = getelementptr inbounds %struct.nd_mapping, %struct.nd_mapping* %7, i32 0, i32 0
  %9 = load %struct.nvdimm*, %struct.nvdimm** %8, align 8
  store %struct.nvdimm* %9, %struct.nvdimm** %5, align 8
  %10 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %3, align 8
  %11 = getelementptr inbounds %struct.nvdimm_bus, %struct.nvdimm_bus* %10, i32 0, i32 0
  %12 = load %struct.nvdimm*, %struct.nvdimm** %5, align 8
  %13 = load i32, i32* @__reserve_free_pmem, align 4
  %14 = call i32 @device_for_each_child(i32* %11, %struct.nvdimm* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %3, align 8
  %19 = load %struct.nd_mapping*, %struct.nd_mapping** %4, align 8
  %20 = call i32 @release_free_pmem(%struct.nvdimm_bus* %18, %struct.nd_mapping* %19)
  br label %21

21:                                               ; preds = %17, %2
  %22 = load i32, i32* %6, align 4
  ret i32 %22
}

declare dso_local i32 @device_for_each_child(i32*, %struct.nvdimm*, i32) #1

declare dso_local i32 @release_free_pmem(%struct.nvdimm_bus*, %struct.nd_mapping*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
