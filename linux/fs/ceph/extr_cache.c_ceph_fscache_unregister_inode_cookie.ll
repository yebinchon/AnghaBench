; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_cache.c_ceph_fscache_unregister_inode_cookie.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_cache.c_ceph_fscache_unregister_inode_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_inode_info = type { i32, i32, %struct.fscache_cookie* }
%struct.fscache_cookie = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ceph_fscache_unregister_inode_cookie(%struct.ceph_inode_info* %0) #0 {
  %2 = alloca %struct.ceph_inode_info*, align 8
  %3 = alloca %struct.fscache_cookie*, align 8
  store %struct.ceph_inode_info* %0, %struct.ceph_inode_info** %2, align 8
  %4 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %5 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %4, i32 0, i32 2
  %6 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  store %struct.fscache_cookie* %6, %struct.fscache_cookie** %3, align 8
  %7 = icmp eq %struct.fscache_cookie* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %20

9:                                                ; preds = %1
  %10 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %11 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %10, i32 0, i32 2
  store %struct.fscache_cookie* null, %struct.fscache_cookie** %11, align 8
  %12 = load %struct.fscache_cookie*, %struct.fscache_cookie** %3, align 8
  %13 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %14 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %13, i32 0, i32 1
  %15 = call i32 @fscache_uncache_all_inode_pages(%struct.fscache_cookie* %12, i32* %14)
  %16 = load %struct.fscache_cookie*, %struct.fscache_cookie** %3, align 8
  %17 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %18 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %17, i32 0, i32 0
  %19 = call i32 @fscache_relinquish_cookie(%struct.fscache_cookie* %16, i32* %18, i32 0)
  br label %20

20:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @fscache_uncache_all_inode_pages(%struct.fscache_cookie*, i32*) #1

declare dso_local i32 @fscache_relinquish_cookie(%struct.fscache_cookie*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
