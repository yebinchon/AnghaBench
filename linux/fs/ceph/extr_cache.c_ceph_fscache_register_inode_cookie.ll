; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_cache.c_ceph_fscache_register_inode_cookie.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_cache.c_ceph_fscache_register_inode_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ceph_inode_info = type { i32, i64, i32 }
%struct.ceph_fs_client = type { i32 }
%struct.ceph_aux_inode = type { i32, i32, i32 }

@I_MUTEX_CHILD = common dso_local global i32 0, align 4
@ceph_fscache_inode_object_def = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ceph_fscache_register_inode_cookie(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.ceph_inode_info*, align 8
  %4 = alloca %struct.ceph_fs_client*, align 8
  %5 = alloca %struct.ceph_aux_inode, align 4
  store %struct.inode* %0, %struct.inode** %2, align 8
  %6 = load %struct.inode*, %struct.inode** %2, align 8
  %7 = call %struct.ceph_inode_info* @ceph_inode(%struct.inode* %6)
  store %struct.ceph_inode_info* %7, %struct.ceph_inode_info** %3, align 8
  %8 = load %struct.inode*, %struct.inode** %2, align 8
  %9 = call %struct.ceph_fs_client* @ceph_inode_to_client(%struct.inode* %8)
  store %struct.ceph_fs_client* %9, %struct.ceph_fs_client** %4, align 8
  %10 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %4, align 8
  %11 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %60

15:                                               ; preds = %1
  %16 = load %struct.inode*, %struct.inode** %2, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @S_ISREG(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  br label %60

22:                                               ; preds = %15
  %23 = load %struct.inode*, %struct.inode** %2, align 8
  %24 = load i32, i32* @I_MUTEX_CHILD, align 4
  %25 = call i32 @inode_lock_nested(%struct.inode* %23, i32 %24)
  %26 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %27 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %57, label %30

30:                                               ; preds = %22
  %31 = call i32 @memset(%struct.ceph_aux_inode* %5, i32 0, i32 12)
  %32 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %33 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.ceph_aux_inode, %struct.ceph_aux_inode* %5, i32 0, i32 2
  store i32 %34, i32* %35, align 4
  %36 = load %struct.inode*, %struct.inode** %2, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.ceph_aux_inode, %struct.ceph_aux_inode* %5, i32 0, i32 1
  store i32 %39, i32* %40, align 4
  %41 = load %struct.inode*, %struct.inode** %2, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.ceph_aux_inode, %struct.ceph_aux_inode* %5, i32 0, i32 0
  store i32 %44, i32* %45, align 4
  %46 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %4, align 8
  %47 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %50 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %49, i32 0, i32 0
  %51 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %52 = load %struct.inode*, %struct.inode** %2, align 8
  %53 = call i32 @i_size_read(%struct.inode* %52)
  %54 = call i64 @fscache_acquire_cookie(i32 %48, i32* @ceph_fscache_inode_object_def, i32* %50, i32 4, %struct.ceph_aux_inode* %5, i32 12, %struct.ceph_inode_info* %51, i32 %53, i32 0)
  %55 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %56 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %55, i32 0, i32 1
  store i64 %54, i64* %56, align 8
  br label %57

57:                                               ; preds = %30, %22
  %58 = load %struct.inode*, %struct.inode** %2, align 8
  %59 = call i32 @inode_unlock(%struct.inode* %58)
  br label %60

60:                                               ; preds = %57, %21, %14
  ret void
}

declare dso_local %struct.ceph_inode_info* @ceph_inode(%struct.inode*) #1

declare dso_local %struct.ceph_fs_client* @ceph_inode_to_client(%struct.inode*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @inode_lock_nested(%struct.inode*, i32) #1

declare dso_local i32 @memset(%struct.ceph_aux_inode*, i32, i32) #1

declare dso_local i64 @fscache_acquire_cookie(i32, i32*, i32*, i32, %struct.ceph_aux_inode*, i32, %struct.ceph_inode_info*, i32, i32) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
