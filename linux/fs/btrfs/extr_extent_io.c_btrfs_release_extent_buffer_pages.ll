; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_extent_io.c_btrfs_release_extent_buffer_pages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_extent_io.c_btrfs_release_extent_buffer_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_buffer = type { i32, %struct.page** }
%struct.page = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EXTENT_BUFFER_UNMAPPED = common dso_local global i32 0, align 4
@EXTENT_BUFFER_DIRTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.extent_buffer*)* @btrfs_release_extent_buffer_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btrfs_release_extent_buffer_pages(%struct.extent_buffer* %0) #0 {
  %2 = alloca %struct.extent_buffer*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.page*, align 8
  store %struct.extent_buffer* %0, %struct.extent_buffer** %2, align 8
  %7 = load i32, i32* @EXTENT_BUFFER_UNMAPPED, align 4
  %8 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %9 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %8, i32 0, i32 0
  %10 = call i32 @test_bit(i32 %7, i32* %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %5, align 4
  %14 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %15 = call i32 @extent_buffer_under_io(%struct.extent_buffer* %14)
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %18 = call i32 @num_extent_pages(%struct.extent_buffer* %17)
  store i32 %18, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %84, %1
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %87

23:                                               ; preds = %19
  %24 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %25 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %24, i32 0, i32 1
  %26 = load %struct.page**, %struct.page*** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.page*, %struct.page** %26, i64 %28
  %30 = load %struct.page*, %struct.page** %29, align 8
  store %struct.page* %30, %struct.page** %6, align 8
  %31 = load %struct.page*, %struct.page** %6, align 8
  %32 = icmp ne %struct.page* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %23
  br label %84

34:                                               ; preds = %23
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load %struct.page*, %struct.page** %6, align 8
  %39 = getelementptr inbounds %struct.page, %struct.page* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 @spin_lock(i32* %41)
  br label %43

43:                                               ; preds = %37, %34
  %44 = load %struct.page*, %struct.page** %6, align 8
  %45 = call i64 @PagePrivate(%struct.page* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %72

47:                                               ; preds = %43
  %48 = load %struct.page*, %struct.page** %6, align 8
  %49 = getelementptr inbounds %struct.page, %struct.page* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %52 = ptrtoint %struct.extent_buffer* %51 to i64
  %53 = icmp eq i64 %50, %52
  br i1 %53, label %54, label %72

54:                                               ; preds = %47
  %55 = load i32, i32* @EXTENT_BUFFER_DIRTY, align 4
  %56 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %57 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %56, i32 0, i32 0
  %58 = call i32 @test_bit(i32 %55, i32* %57)
  %59 = call i32 @BUG_ON(i32 %58)
  %60 = load %struct.page*, %struct.page** %6, align 8
  %61 = call i32 @PageDirty(%struct.page* %60)
  %62 = call i32 @BUG_ON(i32 %61)
  %63 = load %struct.page*, %struct.page** %6, align 8
  %64 = call i32 @PageWriteback(%struct.page* %63)
  %65 = call i32 @BUG_ON(i32 %64)
  %66 = load %struct.page*, %struct.page** %6, align 8
  %67 = call i32 @ClearPagePrivate(%struct.page* %66)
  %68 = load %struct.page*, %struct.page** %6, align 8
  %69 = call i32 @set_page_private(%struct.page* %68, i32 0)
  %70 = load %struct.page*, %struct.page** %6, align 8
  %71 = call i32 @put_page(%struct.page* %70)
  br label %72

72:                                               ; preds = %54, %47, %43
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = load %struct.page*, %struct.page** %6, align 8
  %77 = getelementptr inbounds %struct.page, %struct.page* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = call i32 @spin_unlock(i32* %79)
  br label %81

81:                                               ; preds = %75, %72
  %82 = load %struct.page*, %struct.page** %6, align 8
  %83 = call i32 @put_page(%struct.page* %82)
  br label %84

84:                                               ; preds = %81, %33
  %85 = load i32, i32* %3, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %3, align 4
  br label %19

87:                                               ; preds = %19
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @extent_buffer_under_io(%struct.extent_buffer*) #1

declare dso_local i32 @num_extent_pages(%struct.extent_buffer*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @PagePrivate(%struct.page*) #1

declare dso_local i32 @PageDirty(%struct.page*) #1

declare dso_local i32 @PageWriteback(%struct.page*) #1

declare dso_local i32 @ClearPagePrivate(%struct.page*) #1

declare dso_local i32 @set_page_private(%struct.page*, i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
