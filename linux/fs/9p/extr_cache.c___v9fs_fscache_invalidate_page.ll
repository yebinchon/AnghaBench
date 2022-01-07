; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_cache.c___v9fs_fscache_invalidate_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_cache.c___v9fs_fscache_invalidate_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.v9fs_inode = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__v9fs_fscache_invalidate_page(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.v9fs_inode*, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %5 = load %struct.page*, %struct.page** %2, align 8
  %6 = getelementptr inbounds %struct.page, %struct.page* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %9, %struct.inode** %3, align 8
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = call %struct.v9fs_inode* @V9FS_I(%struct.inode* %10)
  store %struct.v9fs_inode* %11, %struct.v9fs_inode** %4, align 8
  %12 = load %struct.v9fs_inode*, %struct.v9fs_inode** %4, align 8
  %13 = getelementptr inbounds %struct.v9fs_inode, %struct.v9fs_inode* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.page*, %struct.page** %2, align 8
  %20 = call i64 @PageFsCache(%struct.page* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %1
  %23 = load %struct.v9fs_inode*, %struct.v9fs_inode** %4, align 8
  %24 = getelementptr inbounds %struct.v9fs_inode, %struct.v9fs_inode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.page*, %struct.page** %2, align 8
  %27 = call i32 @fscache_wait_on_page_write(i32 %25, %struct.page* %26)
  %28 = load %struct.page*, %struct.page** %2, align 8
  %29 = call i32 @PageLocked(%struct.page* %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @BUG_ON(i32 %32)
  %34 = load %struct.v9fs_inode*, %struct.v9fs_inode** %4, align 8
  %35 = getelementptr inbounds %struct.v9fs_inode, %struct.v9fs_inode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.page*, %struct.page** %2, align 8
  %38 = call i32 @fscache_uncache_page(i32 %36, %struct.page* %37)
  br label %39

39:                                               ; preds = %22, %1
  ret void
}

declare dso_local %struct.v9fs_inode* @V9FS_I(%struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @PageFsCache(%struct.page*) #1

declare dso_local i32 @fscache_wait_on_page_write(i32, %struct.page*) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i32 @fscache_uncache_page(i32, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
