; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/android/ion/extr_ion_page_pool.c_ion_page_pool_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/android/ion/extr_ion_page_pool.c_ion_page_pool_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ion_page_pool = type { i32, i32, i32, i32, i32, i32 }
%struct.page = type { i32 }

@NR_KERNEL_MISC_RECLAIMABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ion_page_pool*, %struct.page*)* @ion_page_pool_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ion_page_pool_add(%struct.ion_page_pool* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.ion_page_pool*, align 8
  %4 = alloca %struct.page*, align 8
  store %struct.ion_page_pool* %0, %struct.ion_page_pool** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %5 = load %struct.ion_page_pool*, %struct.ion_page_pool** %3, align 8
  %6 = getelementptr inbounds %struct.ion_page_pool, %struct.ion_page_pool* %5, i32 0, i32 1
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.page*, %struct.page** %4, align 8
  %9 = call i64 @PageHighMem(%struct.page* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load %struct.page*, %struct.page** %4, align 8
  %13 = getelementptr inbounds %struct.page, %struct.page* %12, i32 0, i32 0
  %14 = load %struct.ion_page_pool*, %struct.ion_page_pool** %3, align 8
  %15 = getelementptr inbounds %struct.ion_page_pool, %struct.ion_page_pool* %14, i32 0, i32 5
  %16 = call i32 @list_add_tail(i32* %13, i32* %15)
  %17 = load %struct.ion_page_pool*, %struct.ion_page_pool** %3, align 8
  %18 = getelementptr inbounds %struct.ion_page_pool, %struct.ion_page_pool* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  br label %31

21:                                               ; preds = %2
  %22 = load %struct.page*, %struct.page** %4, align 8
  %23 = getelementptr inbounds %struct.page, %struct.page* %22, i32 0, i32 0
  %24 = load %struct.ion_page_pool*, %struct.ion_page_pool** %3, align 8
  %25 = getelementptr inbounds %struct.ion_page_pool, %struct.ion_page_pool* %24, i32 0, i32 3
  %26 = call i32 @list_add_tail(i32* %23, i32* %25)
  %27 = load %struct.ion_page_pool*, %struct.ion_page_pool** %3, align 8
  %28 = getelementptr inbounds %struct.ion_page_pool, %struct.ion_page_pool* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %21, %11
  %32 = load %struct.page*, %struct.page** %4, align 8
  %33 = call i32 @page_pgdat(%struct.page* %32)
  %34 = load i32, i32* @NR_KERNEL_MISC_RECLAIMABLE, align 4
  %35 = load %struct.ion_page_pool*, %struct.ion_page_pool** %3, align 8
  %36 = getelementptr inbounds %struct.ion_page_pool, %struct.ion_page_pool* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 1, %37
  %39 = call i32 @mod_node_page_state(i32 %33, i32 %34, i32 %38)
  %40 = load %struct.ion_page_pool*, %struct.ion_page_pool** %3, align 8
  %41 = getelementptr inbounds %struct.ion_page_pool, %struct.ion_page_pool* %40, i32 0, i32 1
  %42 = call i32 @mutex_unlock(i32* %41)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @PageHighMem(%struct.page*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mod_node_page_state(i32, i32, i32) #1

declare dso_local i32 @page_pgdat(%struct.page*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
