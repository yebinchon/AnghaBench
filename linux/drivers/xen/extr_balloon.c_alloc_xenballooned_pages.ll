; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_balloon.c_alloc_xenballooned_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_balloon.c_alloc_xenballooned_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.page = type { i32 }

@balloon_mutex = common dso_local global i32 0, align 4
@balloon_stats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@XENFEAT_auto_translated_physmap = common dso_local global i32 0, align 4
@XEN_PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @alloc_xenballooned_pages(i32 %0, %struct.page** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.page**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.page** %1, %struct.page*** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = call i32 @mutex_lock(i32* @balloon_mutex)
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @balloon_stats, i32 0, i32 0), align 4
  %12 = add nsw i32 %11, %10
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @balloon_stats, i32 0, i32 0), align 4
  br label %13

13:                                               ; preds = %37, %2
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %38

17:                                               ; preds = %13
  %18 = call %struct.page* @balloon_retrieve(i32 1)
  store %struct.page* %18, %struct.page** %7, align 8
  %19 = load %struct.page*, %struct.page** %7, align 8
  %20 = icmp ne %struct.page* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load %struct.page*, %struct.page** %7, align 8
  %23 = load %struct.page**, %struct.page*** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %6, align 4
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds %struct.page*, %struct.page** %23, i64 %26
  store %struct.page* %22, %struct.page** %27, align 8
  br label %37

28:                                               ; preds = %17
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %6, align 4
  %31 = sub nsw i32 %29, %30
  %32 = call i32 @add_ballooned_pages(i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %40

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36, %21
  br label %13

38:                                               ; preds = %13
  %39 = call i32 @mutex_unlock(i32* @balloon_mutex)
  store i32 0, i32* %3, align 4
  br label %46

40:                                               ; preds = %35
  %41 = call i32 @mutex_unlock(i32* @balloon_mutex)
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.page**, %struct.page*** %5, align 8
  %44 = call i32 @free_xenballooned_pages(i32 %42, %struct.page** %43)
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %40, %38
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.page* @balloon_retrieve(i32) #1

declare dso_local i32 @add_ballooned_pages(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @free_xenballooned_pages(i32, %struct.page**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
