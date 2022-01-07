; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_extent_io.c_clear_extent_buffer_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_extent_io.c_clear_extent_buffer_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_buffer = type { i32, %struct.page** }
%struct.page = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PAGECACHE_TAG_DIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear_extent_buffer_dirty(%struct.extent_buffer* %0) #0 {
  %2 = alloca %struct.extent_buffer*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.page*, align 8
  store %struct.extent_buffer* %0, %struct.extent_buffer** %2, align 8
  %6 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %7 = call i32 @num_extent_pages(%struct.extent_buffer* %6)
  store i32 %7, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %62, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %65

12:                                               ; preds = %8
  %13 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %14 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %13, i32 0, i32 1
  %15 = load %struct.page**, %struct.page*** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.page*, %struct.page** %15, i64 %17
  %19 = load %struct.page*, %struct.page** %18, align 8
  store %struct.page* %19, %struct.page** %5, align 8
  %20 = load %struct.page*, %struct.page** %5, align 8
  %21 = call i32 @PageDirty(%struct.page* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %12
  br label %62

24:                                               ; preds = %12
  %25 = load %struct.page*, %struct.page** %5, align 8
  %26 = call i32 @lock_page(%struct.page* %25)
  %27 = load %struct.page*, %struct.page** %5, align 8
  %28 = call i32 @PagePrivate(%struct.page* %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @WARN_ON(i32 %31)
  %33 = load %struct.page*, %struct.page** %5, align 8
  %34 = call i32 @clear_page_dirty_for_io(%struct.page* %33)
  %35 = load %struct.page*, %struct.page** %5, align 8
  %36 = getelementptr inbounds %struct.page, %struct.page* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 @xa_lock_irq(i32* %38)
  %40 = load %struct.page*, %struct.page** %5, align 8
  %41 = call i32 @PageDirty(%struct.page* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %24
  %44 = load %struct.page*, %struct.page** %5, align 8
  %45 = getelementptr inbounds %struct.page, %struct.page* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load %struct.page*, %struct.page** %5, align 8
  %49 = call i32 @page_index(%struct.page* %48)
  %50 = load i32, i32* @PAGECACHE_TAG_DIRTY, align 4
  %51 = call i32 @__xa_clear_mark(i32* %47, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %43, %24
  %53 = load %struct.page*, %struct.page** %5, align 8
  %54 = getelementptr inbounds %struct.page, %struct.page* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = call i32 @xa_unlock_irq(i32* %56)
  %58 = load %struct.page*, %struct.page** %5, align 8
  %59 = call i32 @ClearPageError(%struct.page* %58)
  %60 = load %struct.page*, %struct.page** %5, align 8
  %61 = call i32 @unlock_page(%struct.page* %60)
  br label %62

62:                                               ; preds = %52, %23
  %63 = load i32, i32* %3, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %3, align 4
  br label %8

65:                                               ; preds = %8
  %66 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %67 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %66, i32 0, i32 0
  %68 = call i64 @atomic_read(i32* %67)
  %69 = icmp eq i64 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i32 @WARN_ON(i32 %70)
  ret void
}

declare dso_local i32 @num_extent_pages(%struct.extent_buffer*) #1

declare dso_local i32 @PageDirty(%struct.page*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @PagePrivate(%struct.page*) #1

declare dso_local i32 @clear_page_dirty_for_io(%struct.page*) #1

declare dso_local i32 @xa_lock_irq(i32*) #1

declare dso_local i32 @__xa_clear_mark(i32*, i32, i32) #1

declare dso_local i32 @page_index(%struct.page*) #1

declare dso_local i32 @xa_unlock_irq(i32*) #1

declare dso_local i32 @ClearPageError(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
