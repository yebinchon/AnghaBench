; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_vfs_addr.c_v9fs_vfs_writepage_locked.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_vfs_addr.c_v9fs_vfs_writepage_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.v9fs_inode = type { i32 }
%struct.iov_iter = type { i32 }
%struct.bio_vec = type { i32, i64, %struct.page* }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*)* @v9fs_vfs_writepage_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v9fs_vfs_writepage_locked(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.v9fs_inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iov_iter, align 4
  %7 = alloca %struct.bio_vec, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %2, align 8
  %10 = load %struct.page*, %struct.page** %2, align 8
  %11 = getelementptr inbounds %struct.page, %struct.page* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %14, %struct.inode** %3, align 8
  %15 = load %struct.inode*, %struct.inode** %3, align 8
  %16 = call %struct.v9fs_inode* @V9FS_I(%struct.inode* %15)
  store %struct.v9fs_inode* %16, %struct.v9fs_inode** %4, align 8
  %17 = load %struct.inode*, %struct.inode** %3, align 8
  %18 = call i32 @i_size_read(%struct.inode* %17)
  store i32 %18, i32* %5, align 4
  %19 = load %struct.page*, %struct.page** %2, align 8
  %20 = getelementptr inbounds %struct.page, %struct.page* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @PAGE_SHIFT, align 4
  %24 = ashr i32 %22, %23
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @PAGE_MASK, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  store i32 %30, i32* %9, align 4
  br label %33

31:                                               ; preds = %1
  %32 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %31, %26
  %34 = load %struct.page*, %struct.page** %2, align 8
  %35 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %7, i32 0, i32 2
  store %struct.page* %34, %struct.page** %35, align 8
  %36 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %7, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = load i32, i32* %9, align 4
  %38 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %7, i32 0, i32 0
  store i32 %37, i32* %38, align 8
  %39 = load i32, i32* @WRITE, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @iov_iter_bvec(%struct.iov_iter* %6, i32 %39, %struct.bio_vec* %7, i32 1, i32 %40)
  %42 = load %struct.v9fs_inode*, %struct.v9fs_inode** %4, align 8
  %43 = getelementptr inbounds %struct.v9fs_inode, %struct.v9fs_inode* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @BUG_ON(i32 %47)
  %49 = load %struct.page*, %struct.page** %2, align 8
  %50 = call i32 @set_page_writeback(%struct.page* %49)
  %51 = load %struct.v9fs_inode*, %struct.v9fs_inode** %4, align 8
  %52 = getelementptr inbounds %struct.v9fs_inode, %struct.v9fs_inode* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.page*, %struct.page** %2, align 8
  %55 = call i32 @page_offset(%struct.page* %54)
  %56 = call i32 @p9_client_write(i32 %53, i32 %55, %struct.iov_iter* %6, i32* %8)
  %57 = load %struct.page*, %struct.page** %2, align 8
  %58 = call i32 @end_page_writeback(%struct.page* %57)
  %59 = load i32, i32* %8, align 4
  ret i32 %59
}

declare dso_local %struct.v9fs_inode* @V9FS_I(%struct.inode*) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @iov_iter_bvec(%struct.iov_iter*, i32, %struct.bio_vec*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @set_page_writeback(%struct.page*) #1

declare dso_local i32 @p9_client_write(i32, i32, %struct.iov_iter*, i32*) #1

declare dso_local i32 @page_offset(%struct.page*) #1

declare dso_local i32 @end_page_writeback(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
