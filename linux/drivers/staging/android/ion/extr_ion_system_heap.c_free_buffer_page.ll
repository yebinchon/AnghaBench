; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/android/ion/extr_ion_system_heap.c_free_buffer_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/android/ion/extr_ion_system_heap.c_free_buffer_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ion_system_heap = type { %struct.ion_page_pool** }
%struct.ion_page_pool = type { i32 }
%struct.ion_buffer = type { i32 }
%struct.page = type { i32 }

@ION_PRIV_FLAG_SHRINKER_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ion_system_heap*, %struct.ion_buffer*, %struct.page*)* @free_buffer_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_buffer_page(%struct.ion_system_heap* %0, %struct.ion_buffer* %1, %struct.page* %2) #0 {
  %4 = alloca %struct.ion_system_heap*, align 8
  %5 = alloca %struct.ion_buffer*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.ion_page_pool*, align 8
  %8 = alloca i32, align 4
  store %struct.ion_system_heap* %0, %struct.ion_system_heap** %4, align 8
  store %struct.ion_buffer* %1, %struct.ion_buffer** %5, align 8
  store %struct.page* %2, %struct.page** %6, align 8
  %9 = load %struct.page*, %struct.page** %6, align 8
  %10 = call i32 @compound_order(%struct.page* %9)
  store i32 %10, i32* %8, align 4
  %11 = load %struct.ion_buffer*, %struct.ion_buffer** %5, align 8
  %12 = getelementptr inbounds %struct.ion_buffer, %struct.ion_buffer* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @ION_PRIV_FLAG_SHRINKER_FREE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.page*, %struct.page** %6, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @__free_pages(%struct.page* %18, i32 %19)
  br label %32

21:                                               ; preds = %3
  %22 = load %struct.ion_system_heap*, %struct.ion_system_heap** %4, align 8
  %23 = getelementptr inbounds %struct.ion_system_heap, %struct.ion_system_heap* %22, i32 0, i32 0
  %24 = load %struct.ion_page_pool**, %struct.ion_page_pool*** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i64 @order_to_index(i32 %25)
  %27 = getelementptr inbounds %struct.ion_page_pool*, %struct.ion_page_pool** %24, i64 %26
  %28 = load %struct.ion_page_pool*, %struct.ion_page_pool** %27, align 8
  store %struct.ion_page_pool* %28, %struct.ion_page_pool** %7, align 8
  %29 = load %struct.ion_page_pool*, %struct.ion_page_pool** %7, align 8
  %30 = load %struct.page*, %struct.page** %6, align 8
  %31 = call i32 @ion_page_pool_free(%struct.ion_page_pool* %29, %struct.page* %30)
  br label %32

32:                                               ; preds = %21, %17
  ret void
}

declare dso_local i32 @compound_order(%struct.page*) #1

declare dso_local i32 @__free_pages(%struct.page*, i32) #1

declare dso_local i64 @order_to_index(i32) #1

declare dso_local i32 @ion_page_pool_free(%struct.ion_page_pool*, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
