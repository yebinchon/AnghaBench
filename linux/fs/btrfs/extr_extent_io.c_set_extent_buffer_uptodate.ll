; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_extent_io.c_set_extent_buffer_uptodate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_extent_io.c_set_extent_buffer_uptodate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_buffer = type { %struct.page**, i32 }
%struct.page = type { i32 }

@EXTENT_BUFFER_UPTODATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_extent_buffer_uptodate(%struct.extent_buffer* %0) #0 {
  %2 = alloca %struct.extent_buffer*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  store %struct.extent_buffer* %0, %struct.extent_buffer** %2, align 8
  %6 = load i32, i32* @EXTENT_BUFFER_UPTODATE, align 4
  %7 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %8 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %7, i32 0, i32 1
  %9 = call i32 @set_bit(i32 %6, i32* %8)
  %10 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %11 = call i32 @num_extent_pages(%struct.extent_buffer* %10)
  store i32 %11, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %26, %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %12
  %17 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %18 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %17, i32 0, i32 0
  %19 = load %struct.page**, %struct.page*** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.page*, %struct.page** %19, i64 %21
  %23 = load %struct.page*, %struct.page** %22, align 8
  store %struct.page* %23, %struct.page** %4, align 8
  %24 = load %struct.page*, %struct.page** %4, align 8
  %25 = call i32 @SetPageUptodate(%struct.page* %24)
  br label %26

26:                                               ; preds = %16
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %12

29:                                               ; preds = %12
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @num_extent_pages(%struct.extent_buffer*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
