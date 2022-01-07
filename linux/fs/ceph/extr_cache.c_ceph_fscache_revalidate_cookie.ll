; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_cache.c_ceph_fscache_revalidate_cookie.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_cache.c_ceph_fscache_revalidate_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_inode_info = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ceph_fscache_revalidate_cookie(%struct.ceph_inode_info* %0) #0 {
  %2 = alloca %struct.ceph_inode_info*, align 8
  store %struct.ceph_inode_info* %0, %struct.ceph_inode_info** %2, align 8
  %3 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %4 = call i64 @cache_valid(%struct.ceph_inode_info* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %43

7:                                                ; preds = %1
  %8 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %9 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %12 = call i64 @cache_valid(%struct.ceph_inode_info* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %39, label %14

14:                                               ; preds = %7
  %15 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %16 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %19 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %18, i32 0, i32 5
  %20 = call i64 @fscache_check_consistency(i32 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %14
  %23 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %24 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @fscache_invalidate(i32 %25)
  br label %27

27:                                               ; preds = %22, %14
  %28 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %29 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %28, i32 0, i32 1
  %30 = call i32 @spin_lock(i32* %29)
  %31 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %32 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %35 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %37 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %36, i32 0, i32 1
  %38 = call i32 @spin_unlock(i32* %37)
  br label %39

39:                                               ; preds = %27, %7
  %40 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %41 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %40, i32 0, i32 0
  %42 = call i32 @mutex_unlock(i32* %41)
  br label %43

43:                                               ; preds = %39, %6
  ret void
}

declare dso_local i64 @cache_valid(%struct.ceph_inode_info*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @fscache_check_consistency(i32, i32*) #1

declare dso_local i32 @fscache_invalidate(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
