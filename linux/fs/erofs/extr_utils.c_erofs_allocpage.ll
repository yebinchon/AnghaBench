; ModuleID = '/home/carl/AnghaBench/linux/fs/erofs/extr_utils.c_erofs_allocpage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/erofs/extr_utils.c_erofs_allocpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.list_head = type { i32 }

@__GFP_NOFAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page* @erofs_allocpage(%struct.list_head* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.page*, align 8
  store %struct.list_head* %0, %struct.list_head** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.list_head*, %struct.list_head** %4, align 8
  %9 = call i32 @list_empty(%struct.list_head* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %3
  %12 = load %struct.list_head*, %struct.list_head** %4, align 8
  %13 = call %struct.page* @lru_to_page(%struct.list_head* %12)
  store %struct.page* %13, %struct.page** %7, align 8
  %14 = load %struct.page*, %struct.page** %7, align 8
  %15 = call i32 @page_ref_count(%struct.page* %14)
  %16 = icmp ne i32 %15, 1
  %17 = zext i1 %16 to i32
  %18 = call i32 @DBG_BUGON(i32 %17)
  %19 = load %struct.page*, %struct.page** %7, align 8
  %20 = getelementptr inbounds %struct.page, %struct.page* %19, i32 0, i32 0
  %21 = call i32 @list_del(i32* %20)
  br label %33

22:                                               ; preds = %3
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @__GFP_NOFAIL, align 4
  br label %29

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i32 [ %27, %26 ], [ 0, %28 ]
  %31 = or i32 %23, %30
  %32 = call %struct.page* @alloc_pages(i32 %31, i32 0)
  store %struct.page* %32, %struct.page** %7, align 8
  br label %33

33:                                               ; preds = %29, %11
  %34 = load %struct.page*, %struct.page** %7, align 8
  ret %struct.page* %34
}

declare dso_local i32 @list_empty(%struct.list_head*) #1

declare dso_local %struct.page* @lru_to_page(%struct.list_head*) #1

declare dso_local i32 @DBG_BUGON(i32) #1

declare dso_local i32 @page_ref_count(%struct.page*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local %struct.page* @alloc_pages(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
