; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_cache.c_ceph_invalidate_fscache_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_cache.c_ceph_invalidate_fscache_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.ceph_inode_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ceph_invalidate_fscache_page(%struct.inode* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.ceph_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %6 = load %struct.inode*, %struct.inode** %3, align 8
  %7 = call %struct.ceph_inode_info* @ceph_inode(%struct.inode* %6)
  store %struct.ceph_inode_info* %7, %struct.ceph_inode_info** %5, align 8
  %8 = load %struct.page*, %struct.page** %4, align 8
  %9 = call i32 @PageFsCache(%struct.page* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %23

12:                                               ; preds = %2
  %13 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %5, align 8
  %14 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.page*, %struct.page** %4, align 8
  %17 = call i32 @fscache_wait_on_page_write(i32 %15, %struct.page* %16)
  %18 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %5, align 8
  %19 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.page*, %struct.page** %4, align 8
  %22 = call i32 @fscache_uncache_page(i32 %20, %struct.page* %21)
  br label %23

23:                                               ; preds = %12, %11
  ret void
}

declare dso_local %struct.ceph_inode_info* @ceph_inode(%struct.inode*) #1

declare dso_local i32 @PageFsCache(%struct.page*) #1

declare dso_local i32 @fscache_wait_on_page_write(i32, %struct.page*) #1

declare dso_local i32 @fscache_uncache_page(i32, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
