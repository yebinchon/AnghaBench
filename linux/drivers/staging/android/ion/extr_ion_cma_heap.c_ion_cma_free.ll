; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/android/ion/extr_ion_cma_heap.c_ion_cma_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/android/ion/extr_ion_cma_heap.c_ion_cma_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ion_buffer = type { i32, i32, %struct.page*, i32 }
%struct.page = type { i32 }
%struct.ion_cma_heap = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ion_buffer*)* @ion_cma_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ion_cma_free(%struct.ion_buffer* %0) #0 {
  %2 = alloca %struct.ion_buffer*, align 8
  %3 = alloca %struct.ion_cma_heap*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca i64, align 8
  store %struct.ion_buffer* %0, %struct.ion_buffer** %2, align 8
  %6 = load %struct.ion_buffer*, %struct.ion_buffer** %2, align 8
  %7 = getelementptr inbounds %struct.ion_buffer, %struct.ion_buffer* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.ion_cma_heap* @to_cma_heap(i32 %8)
  store %struct.ion_cma_heap* %9, %struct.ion_cma_heap** %3, align 8
  %10 = load %struct.ion_buffer*, %struct.ion_buffer** %2, align 8
  %11 = getelementptr inbounds %struct.ion_buffer, %struct.ion_buffer* %10, i32 0, i32 2
  %12 = load %struct.page*, %struct.page** %11, align 8
  store %struct.page* %12, %struct.page** %4, align 8
  %13 = load %struct.ion_buffer*, %struct.ion_buffer** %2, align 8
  %14 = getelementptr inbounds %struct.ion_buffer, %struct.ion_buffer* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @PAGE_ALIGN(i32 %15)
  %17 = load i64, i64* @PAGE_SHIFT, align 8
  %18 = lshr i64 %16, %17
  store i64 %18, i64* %5, align 8
  %19 = load %struct.ion_cma_heap*, %struct.ion_cma_heap** %3, align 8
  %20 = getelementptr inbounds %struct.ion_cma_heap, %struct.ion_cma_heap* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.page*, %struct.page** %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @cma_release(i32 %21, %struct.page* %22, i64 %23)
  %25 = load %struct.ion_buffer*, %struct.ion_buffer** %2, align 8
  %26 = getelementptr inbounds %struct.ion_buffer, %struct.ion_buffer* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @sg_free_table(i32 %27)
  %29 = load %struct.ion_buffer*, %struct.ion_buffer** %2, align 8
  %30 = getelementptr inbounds %struct.ion_buffer, %struct.ion_buffer* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @kfree(i32 %31)
  ret void
}

declare dso_local %struct.ion_cma_heap* @to_cma_heap(i32) #1

declare dso_local i64 @PAGE_ALIGN(i32) #1

declare dso_local i32 @cma_release(i32, %struct.page*, i64) #1

declare dso_local i32 @sg_free_table(i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
