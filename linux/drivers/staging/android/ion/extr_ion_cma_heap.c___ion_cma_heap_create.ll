; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/android/ion/extr_ion_cma_heap.c___ion_cma_heap_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/android/ion/extr_ion_cma_heap.c___ion_cma_heap_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ion_heap = type { i32, i32* }
%struct.cma = type { i32 }
%struct.ion_cma_heap = type { %struct.ion_heap, %struct.cma* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ion_cma_ops = common dso_local global i32 0, align 4
@ION_HEAP_TYPE_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ion_heap* (%struct.cma*)* @__ion_cma_heap_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ion_heap* @__ion_cma_heap_create(%struct.cma* %0) #0 {
  %2 = alloca %struct.ion_heap*, align 8
  %3 = alloca %struct.cma*, align 8
  %4 = alloca %struct.ion_cma_heap*, align 8
  store %struct.cma* %0, %struct.cma** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.ion_cma_heap* @kzalloc(i32 24, i32 %5)
  store %struct.ion_cma_heap* %6, %struct.ion_cma_heap** %4, align 8
  %7 = load %struct.ion_cma_heap*, %struct.ion_cma_heap** %4, align 8
  %8 = icmp ne %struct.ion_cma_heap* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.ion_heap* @ERR_PTR(i32 %11)
  store %struct.ion_heap* %12, %struct.ion_heap** %2, align 8
  br label %26

13:                                               ; preds = %1
  %14 = load %struct.ion_cma_heap*, %struct.ion_cma_heap** %4, align 8
  %15 = getelementptr inbounds %struct.ion_cma_heap, %struct.ion_cma_heap* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.ion_heap, %struct.ion_heap* %15, i32 0, i32 1
  store i32* @ion_cma_ops, i32** %16, align 8
  %17 = load %struct.cma*, %struct.cma** %3, align 8
  %18 = load %struct.ion_cma_heap*, %struct.ion_cma_heap** %4, align 8
  %19 = getelementptr inbounds %struct.ion_cma_heap, %struct.ion_cma_heap* %18, i32 0, i32 1
  store %struct.cma* %17, %struct.cma** %19, align 8
  %20 = load i32, i32* @ION_HEAP_TYPE_DMA, align 4
  %21 = load %struct.ion_cma_heap*, %struct.ion_cma_heap** %4, align 8
  %22 = getelementptr inbounds %struct.ion_cma_heap, %struct.ion_cma_heap* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.ion_heap, %struct.ion_heap* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 8
  %24 = load %struct.ion_cma_heap*, %struct.ion_cma_heap** %4, align 8
  %25 = getelementptr inbounds %struct.ion_cma_heap, %struct.ion_cma_heap* %24, i32 0, i32 0
  store %struct.ion_heap* %25, %struct.ion_heap** %2, align 8
  br label %26

26:                                               ; preds = %13, %9
  %27 = load %struct.ion_heap*, %struct.ion_heap** %2, align 8
  ret %struct.ion_heap* %27
}

declare dso_local %struct.ion_cma_heap* @kzalloc(i32, i32) #1

declare dso_local %struct.ion_heap* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
