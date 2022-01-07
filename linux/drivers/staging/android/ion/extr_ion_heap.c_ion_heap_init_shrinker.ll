; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/android/ion/extr_ion_heap.c_ion_heap_init_shrinker.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/android/ion/extr_ion_heap.c_ion_heap_init_shrinker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ion_heap = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, i32 }

@ion_heap_shrink_count = common dso_local global i32 0, align 4
@ion_heap_shrink_scan = common dso_local global i32 0, align 4
@DEFAULT_SEEKS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ion_heap_init_shrinker(%struct.ion_heap* %0) #0 {
  %2 = alloca %struct.ion_heap*, align 8
  store %struct.ion_heap* %0, %struct.ion_heap** %2, align 8
  %3 = load i32, i32* @ion_heap_shrink_count, align 4
  %4 = load %struct.ion_heap*, %struct.ion_heap** %2, align 8
  %5 = getelementptr inbounds %struct.ion_heap, %struct.ion_heap* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 3
  store i32 %3, i32* %6, align 8
  %7 = load i32, i32* @ion_heap_shrink_scan, align 4
  %8 = load %struct.ion_heap*, %struct.ion_heap** %2, align 8
  %9 = getelementptr inbounds %struct.ion_heap, %struct.ion_heap* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  store i32 %7, i32* %10, align 4
  %11 = load i32, i32* @DEFAULT_SEEKS, align 4
  %12 = load %struct.ion_heap*, %struct.ion_heap** %2, align 8
  %13 = getelementptr inbounds %struct.ion_heap, %struct.ion_heap* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store i32 %11, i32* %14, align 8
  %15 = load %struct.ion_heap*, %struct.ion_heap** %2, align 8
  %16 = getelementptr inbounds %struct.ion_heap, %struct.ion_heap* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load %struct.ion_heap*, %struct.ion_heap** %2, align 8
  %19 = getelementptr inbounds %struct.ion_heap, %struct.ion_heap* %18, i32 0, i32 0
  %20 = call i32 @register_shrinker(%struct.TYPE_2__* %19)
  ret i32 %20
}

declare dso_local i32 @register_shrinker(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
