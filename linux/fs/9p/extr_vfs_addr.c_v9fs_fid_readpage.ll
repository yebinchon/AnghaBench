; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_vfs_addr.c_v9fs_fid_readpage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_vfs_addr.c_v9fs_fid_readpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.p9_fid = type { i32 }
%struct.bio_vec = type { i64, %struct.page* }
%struct.iov_iter = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@P9_DEBUG_VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.page*)* @v9fs_fid_readpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v9fs_fid_readpage(i8* %0, %struct.page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.p9_fid*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.bio_vec, align 8
  %9 = alloca %struct.iov_iter, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.p9_fid*
  store %struct.p9_fid* %13, %struct.p9_fid** %6, align 8
  %14 = load %struct.page*, %struct.page** %5, align 8
  %15 = getelementptr inbounds %struct.page, %struct.page* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.inode*, %struct.inode** %17, align 8
  store %struct.inode* %18, %struct.inode** %7, align 8
  %19 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %8, i32 0, i32 0
  %20 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %20, i64* %19, align 8
  %21 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %8, i32 0, i32 1
  %22 = load %struct.page*, %struct.page** %5, align 8
  store %struct.page* %22, %struct.page** %21, align 8
  %23 = load i32, i32* @P9_DEBUG_VFS, align 4
  %24 = call i32 @p9_debug(i32 %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.page*, %struct.page** %5, align 8
  %26 = call i32 @PageLocked(%struct.page* %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @BUG_ON(i32 %29)
  %31 = load %struct.inode*, %struct.inode** %7, align 8
  %32 = load %struct.page*, %struct.page** %5, align 8
  %33 = call i32 @v9fs_readpage_from_fscache(%struct.inode* %31, %struct.page* %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %2
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %3, align 4
  br label %72

38:                                               ; preds = %2
  %39 = load i32, i32* @READ, align 4
  %40 = load i64, i64* @PAGE_SIZE, align 8
  %41 = call i32 @iov_iter_bvec(%struct.iov_iter* %9, i32 %39, %struct.bio_vec* %8, i32 1, i64 %40)
  %42 = load %struct.p9_fid*, %struct.p9_fid** %6, align 8
  %43 = load %struct.page*, %struct.page** %5, align 8
  %44 = call i32 @page_offset(%struct.page* %43)
  %45 = call i32 @p9_client_read(%struct.p9_fid* %42, i32 %44, %struct.iov_iter* %9, i32* %11)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %38
  %49 = load %struct.inode*, %struct.inode** %7, align 8
  %50 = load %struct.page*, %struct.page** %5, align 8
  %51 = call i32 @v9fs_uncache_page(%struct.inode* %49, %struct.page* %50)
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %10, align 4
  br label %68

53:                                               ; preds = %38
  %54 = load %struct.page*, %struct.page** %5, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load i64, i64* @PAGE_SIZE, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = sub nsw i64 %56, %58
  %60 = call i32 @zero_user(%struct.page* %54, i32 %55, i64 %59)
  %61 = load %struct.page*, %struct.page** %5, align 8
  %62 = call i32 @flush_dcache_page(%struct.page* %61)
  %63 = load %struct.page*, %struct.page** %5, align 8
  %64 = call i32 @SetPageUptodate(%struct.page* %63)
  %65 = load %struct.inode*, %struct.inode** %7, align 8
  %66 = load %struct.page*, %struct.page** %5, align 8
  %67 = call i32 @v9fs_readpage_to_fscache(%struct.inode* %65, %struct.page* %66)
  store i32 0, i32* %10, align 4
  br label %68

68:                                               ; preds = %53, %48
  %69 = load %struct.page*, %struct.page** %5, align 8
  %70 = call i32 @unlock_page(%struct.page* %69)
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %68, %36
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @p9_debug(i32, i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i32 @v9fs_readpage_from_fscache(%struct.inode*, %struct.page*) #1

declare dso_local i32 @iov_iter_bvec(%struct.iov_iter*, i32, %struct.bio_vec*, i32, i64) #1

declare dso_local i32 @p9_client_read(%struct.p9_fid*, i32, %struct.iov_iter*, i32*) #1

declare dso_local i32 @page_offset(%struct.page*) #1

declare dso_local i32 @v9fs_uncache_page(%struct.inode*, %struct.page*) #1

declare dso_local i32 @zero_user(%struct.page*, i32, i64) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @v9fs_readpage_to_fscache(%struct.inode*, %struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
