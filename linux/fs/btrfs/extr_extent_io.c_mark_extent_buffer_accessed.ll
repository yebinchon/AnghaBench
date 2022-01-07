; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_extent_io.c_mark_extent_buffer_accessed.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_extent_io.c_mark_extent_buffer_accessed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_buffer = type { %struct.page** }
%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.extent_buffer*, %struct.page*)* @mark_extent_buffer_accessed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_extent_buffer_accessed(%struct.extent_buffer* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.extent_buffer*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.page*, align 8
  store %struct.extent_buffer* %0, %struct.extent_buffer** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %8 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %9 = call i32 @check_buffer_tree_ref(%struct.extent_buffer* %8)
  %10 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %11 = call i32 @num_extent_pages(%struct.extent_buffer* %10)
  store i32 %11, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %31, %2
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %12
  %17 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %18 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %17, i32 0, i32 0
  %19 = load %struct.page**, %struct.page*** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.page*, %struct.page** %19, i64 %21
  %23 = load %struct.page*, %struct.page** %22, align 8
  store %struct.page* %23, %struct.page** %7, align 8
  %24 = load %struct.page*, %struct.page** %7, align 8
  %25 = load %struct.page*, %struct.page** %4, align 8
  %26 = icmp ne %struct.page* %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %16
  %28 = load %struct.page*, %struct.page** %7, align 8
  %29 = call i32 @mark_page_accessed(%struct.page* %28)
  br label %30

30:                                               ; preds = %27, %16
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %12

34:                                               ; preds = %12
  ret void
}

declare dso_local i32 @check_buffer_tree_ref(%struct.extent_buffer*) #1

declare dso_local i32 @num_extent_pages(%struct.extent_buffer*) #1

declare dso_local i32 @mark_page_accessed(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
