; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_cleanup_ordered_extents.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_cleanup_ordered_extents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.page*, i32, i32)* @btrfs_cleanup_ordered_extents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btrfs_cleanup_ordered_extents(%struct.inode* %0, %struct.page* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.page*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @PAGE_SHIFT, align 4
  %16 = ashr i32 %14, %15
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %9, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = add nsw i32 %18, %19
  %21 = sub nsw i32 %20, 1
  %22 = load i32, i32* @PAGE_SHIFT, align 4
  %23 = ashr i32 %21, %22
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %10, align 8
  %25 = load %struct.page*, %struct.page** %6, align 8
  %26 = call i32 @page_offset(%struct.page* %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @PAGE_SIZE, align 4
  %29 = add nsw i32 %27, %28
  %30 = sub nsw i32 %29, 1
  store i32 %30, i32* %12, align 4
  br label %31

31:                                               ; preds = %46, %45, %4
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* %10, align 8
  %34 = icmp ule i64 %32, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %31
  %36 = load %struct.inode*, %struct.inode** %5, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %9, align 8
  %40 = call %struct.page* @find_get_page(i32 %38, i64 %39)
  store %struct.page* %40, %struct.page** %13, align 8
  %41 = load i64, i64* %9, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %9, align 8
  %43 = load %struct.page*, %struct.page** %13, align 8
  %44 = icmp ne %struct.page* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %35
  br label %31

46:                                               ; preds = %35
  %47 = load %struct.page*, %struct.page** %13, align 8
  %48 = call i32 @ClearPagePrivate2(%struct.page* %47)
  %49 = load %struct.page*, %struct.page** %13, align 8
  %50 = call i32 @put_page(%struct.page* %49)
  br label %31

51:                                               ; preds = %31
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp sge i32 %52, %53
  br i1 %54, label %55, label %69

55:                                               ; preds = %51
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %57, %58
  %60 = sub nsw i32 %59, 1
  %61 = icmp sle i32 %56, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %55
  %63 = load i32, i32* @PAGE_SIZE, align 4
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* @PAGE_SIZE, align 4
  %67 = load i32, i32* %8, align 4
  %68 = sub nsw i32 %67, %66
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %62, %55, %51
  %70 = load %struct.inode*, %struct.inode** %5, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %8, align 4
  call void @__endio_write_update_ordered(%struct.inode* %70, i32 %71, i32 %72, i32 0)
  ret void
}

declare dso_local i32 @page_offset(%struct.page*) #1

declare dso_local %struct.page* @find_get_page(i32, i64) #1

declare dso_local i32 @ClearPagePrivate2(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local void @__endio_write_update_ordered(%struct.inode*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
