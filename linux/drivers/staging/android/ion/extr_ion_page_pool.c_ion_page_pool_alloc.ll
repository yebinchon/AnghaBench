; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/android/ion/extr_ion_page_pool.c_ion_page_pool_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/android/ion/extr_ion_page_pool.c_ion_page_pool_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.ion_page_pool = type { i32, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page* @ion_page_pool_alloc(%struct.ion_page_pool* %0) #0 {
  %2 = alloca %struct.ion_page_pool*, align 8
  %3 = alloca %struct.page*, align 8
  store %struct.ion_page_pool* %0, %struct.ion_page_pool** %2, align 8
  store %struct.page* null, %struct.page** %3, align 8
  %4 = load %struct.ion_page_pool*, %struct.ion_page_pool** %2, align 8
  %5 = icmp ne %struct.ion_page_pool* %4, null
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = call i32 @BUG_ON(i32 %7)
  %9 = load %struct.ion_page_pool*, %struct.ion_page_pool** %2, align 8
  %10 = getelementptr inbounds %struct.ion_page_pool, %struct.ion_page_pool* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.ion_page_pool*, %struct.ion_page_pool** %2, align 8
  %13 = getelementptr inbounds %struct.ion_page_pool, %struct.ion_page_pool* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.ion_page_pool*, %struct.ion_page_pool** %2, align 8
  %18 = call %struct.page* @ion_page_pool_remove(%struct.ion_page_pool* %17, i32 1)
  store %struct.page* %18, %struct.page** %3, align 8
  br label %28

19:                                               ; preds = %1
  %20 = load %struct.ion_page_pool*, %struct.ion_page_pool** %2, align 8
  %21 = getelementptr inbounds %struct.ion_page_pool, %struct.ion_page_pool* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.ion_page_pool*, %struct.ion_page_pool** %2, align 8
  %26 = call %struct.page* @ion_page_pool_remove(%struct.ion_page_pool* %25, i32 0)
  store %struct.page* %26, %struct.page** %3, align 8
  br label %27

27:                                               ; preds = %24, %19
  br label %28

28:                                               ; preds = %27, %16
  %29 = load %struct.ion_page_pool*, %struct.ion_page_pool** %2, align 8
  %30 = getelementptr inbounds %struct.ion_page_pool, %struct.ion_page_pool* %29, i32 0, i32 0
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load %struct.page*, %struct.page** %3, align 8
  %33 = icmp ne %struct.page* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load %struct.ion_page_pool*, %struct.ion_page_pool** %2, align 8
  %36 = call %struct.page* @ion_page_pool_alloc_pages(%struct.ion_page_pool* %35)
  store %struct.page* %36, %struct.page** %3, align 8
  br label %37

37:                                               ; preds = %34, %28
  %38 = load %struct.page*, %struct.page** %3, align 8
  ret %struct.page* %38
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.page* @ion_page_pool_remove(%struct.ion_page_pool*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.page* @ion_page_pool_alloc_pages(%struct.ion_page_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
