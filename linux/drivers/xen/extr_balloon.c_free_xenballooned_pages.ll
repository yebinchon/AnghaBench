; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_balloon.c_free_xenballooned_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_balloon.c_free_xenballooned_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.page = type { i32 }

@balloon_mutex = common dso_local global i32 0, align 4
@balloon_stats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@balloon_worker = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_xenballooned_pages(i32 %0, %struct.page** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.page**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.page** %1, %struct.page*** %4, align 8
  %6 = call i32 @mutex_lock(i32* @balloon_mutex)
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %26, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %29

11:                                               ; preds = %7
  %12 = load %struct.page**, %struct.page*** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.page*, %struct.page** %12, i64 %14
  %16 = load %struct.page*, %struct.page** %15, align 8
  %17 = icmp ne %struct.page* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %11
  %19 = load %struct.page**, %struct.page*** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.page*, %struct.page** %19, i64 %21
  %23 = load %struct.page*, %struct.page** %22, align 8
  %24 = call i32 @balloon_append(%struct.page* %23)
  br label %25

25:                                               ; preds = %18, %11
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %7

29:                                               ; preds = %7
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @balloon_stats, i32 0, i32 0), align 4
  %32 = sub nsw i32 %31, %30
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @balloon_stats, i32 0, i32 0), align 4
  %33 = call i64 (...) @current_credit()
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = call i32 @schedule_delayed_work(i32* @balloon_worker, i32 0)
  br label %37

37:                                               ; preds = %35, %29
  %38 = call i32 @mutex_unlock(i32* @balloon_mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @balloon_append(%struct.page*) #1

declare dso_local i64 @current_credit(...) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
