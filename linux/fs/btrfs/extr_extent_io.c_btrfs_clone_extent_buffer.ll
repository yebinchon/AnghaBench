; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_extent_io.c_btrfs_clone_extent_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_extent_io.c_btrfs_clone_extent_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_buffer = type { i32, %struct.page**, i32, i32, i32 }
%struct.page = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@EXTENT_BUFFER_UPTODATE = common dso_local global i32 0, align 4
@EXTENT_BUFFER_UNMAPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.extent_buffer* @btrfs_clone_extent_buffer(%struct.extent_buffer* %0) #0 {
  %2 = alloca %struct.extent_buffer*, align 8
  %3 = alloca %struct.extent_buffer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.extent_buffer*, align 8
  %7 = alloca i32, align 4
  store %struct.extent_buffer* %0, %struct.extent_buffer** %3, align 8
  %8 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %9 = call i32 @num_extent_pages(%struct.extent_buffer* %8)
  store i32 %9, i32* %7, align 4
  %10 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %11 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %14 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %17 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.extent_buffer* @__alloc_extent_buffer(i32 %12, i32 %15, i32 %18)
  store %struct.extent_buffer* %19, %struct.extent_buffer** %6, align 8
  %20 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %21 = icmp eq %struct.extent_buffer* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store %struct.extent_buffer* null, %struct.extent_buffer** %2, align 8
  br label %76

23:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %63, %23
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %66

28:                                               ; preds = %24
  %29 = load i32, i32* @GFP_NOFS, align 4
  %30 = call %struct.page* @alloc_page(i32 %29)
  store %struct.page* %30, %struct.page** %5, align 8
  %31 = load %struct.page*, %struct.page** %5, align 8
  %32 = icmp ne %struct.page* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %35 = call i32 @btrfs_release_extent_buffer(%struct.extent_buffer* %34)
  store %struct.extent_buffer* null, %struct.extent_buffer** %2, align 8
  br label %76

36:                                               ; preds = %28
  %37 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %38 = load %struct.page*, %struct.page** %5, align 8
  %39 = call i32 @attach_extent_buffer_page(%struct.extent_buffer* %37, %struct.page* %38)
  %40 = load %struct.page*, %struct.page** %5, align 8
  %41 = call i32 @PageDirty(%struct.page* %40)
  %42 = call i32 @WARN_ON(i32 %41)
  %43 = load %struct.page*, %struct.page** %5, align 8
  %44 = call i32 @SetPageUptodate(%struct.page* %43)
  %45 = load %struct.page*, %struct.page** %5, align 8
  %46 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %47 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %46, i32 0, i32 1
  %48 = load %struct.page**, %struct.page*** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.page*, %struct.page** %48, i64 %50
  store %struct.page* %45, %struct.page** %51, align 8
  %52 = load %struct.page*, %struct.page** %5, align 8
  %53 = call i32 @page_address(%struct.page* %52)
  %54 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %55 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %54, i32 0, i32 1
  %56 = load %struct.page**, %struct.page*** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.page*, %struct.page** %56, i64 %58
  %60 = load %struct.page*, %struct.page** %59, align 8
  %61 = call i32 @page_address(%struct.page* %60)
  %62 = call i32 @copy_page(i32 %53, i32 %61)
  br label %63

63:                                               ; preds = %36
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %4, align 4
  br label %24

66:                                               ; preds = %24
  %67 = load i32, i32* @EXTENT_BUFFER_UPTODATE, align 4
  %68 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %69 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %68, i32 0, i32 0
  %70 = call i32 @set_bit(i32 %67, i32* %69)
  %71 = load i32, i32* @EXTENT_BUFFER_UNMAPPED, align 4
  %72 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %73 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %72, i32 0, i32 0
  %74 = call i32 @set_bit(i32 %71, i32* %73)
  %75 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  store %struct.extent_buffer* %75, %struct.extent_buffer** %2, align 8
  br label %76

76:                                               ; preds = %66, %33, %22
  %77 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  ret %struct.extent_buffer* %77
}

declare dso_local i32 @num_extent_pages(%struct.extent_buffer*) #1

declare dso_local %struct.extent_buffer* @__alloc_extent_buffer(i32, i32, i32) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @btrfs_release_extent_buffer(%struct.extent_buffer*) #1

declare dso_local i32 @attach_extent_buffer_page(%struct.extent_buffer*, %struct.page*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @PageDirty(%struct.page*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @copy_page(i32, i32) #1

declare dso_local i32 @page_address(%struct.page*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
