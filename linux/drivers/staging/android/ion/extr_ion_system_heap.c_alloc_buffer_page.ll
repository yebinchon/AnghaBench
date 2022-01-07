; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/android/ion/extr_ion_system_heap.c_alloc_buffer_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/android/ion/extr_ion_system_heap.c_alloc_buffer_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.ion_system_heap = type { %struct.ion_page_pool** }
%struct.ion_page_pool = type { i32 }
%struct.ion_buffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.ion_system_heap*, %struct.ion_buffer*, i64)* @alloc_buffer_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @alloc_buffer_page(%struct.ion_system_heap* %0, %struct.ion_buffer* %1, i64 %2) #0 {
  %4 = alloca %struct.ion_system_heap*, align 8
  %5 = alloca %struct.ion_buffer*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ion_page_pool*, align 8
  store %struct.ion_system_heap* %0, %struct.ion_system_heap** %4, align 8
  store %struct.ion_buffer* %1, %struct.ion_buffer** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.ion_system_heap*, %struct.ion_system_heap** %4, align 8
  %9 = getelementptr inbounds %struct.ion_system_heap, %struct.ion_system_heap* %8, i32 0, i32 0
  %10 = load %struct.ion_page_pool**, %struct.ion_page_pool*** %9, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i64 @order_to_index(i64 %11)
  %13 = getelementptr inbounds %struct.ion_page_pool*, %struct.ion_page_pool** %10, i64 %12
  %14 = load %struct.ion_page_pool*, %struct.ion_page_pool** %13, align 8
  store %struct.ion_page_pool* %14, %struct.ion_page_pool** %7, align 8
  %15 = load %struct.ion_page_pool*, %struct.ion_page_pool** %7, align 8
  %16 = call %struct.page* @ion_page_pool_alloc(%struct.ion_page_pool* %15)
  ret %struct.page* %16
}

declare dso_local i64 @order_to_index(i64) #1

declare dso_local %struct.page* @ion_page_pool_alloc(%struct.ion_page_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
