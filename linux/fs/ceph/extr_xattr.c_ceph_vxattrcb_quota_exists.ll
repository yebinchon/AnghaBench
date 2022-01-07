; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_xattr.c_ceph_vxattrcb_quota_exists.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_xattr.c_ceph_vxattrcb_quota_exists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_inode_info = type { i32, %struct.TYPE_3__, %struct.TYPE_4__*, i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64 }

@CEPH_NOSNAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_inode_info*)* @ceph_vxattrcb_quota_exists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceph_vxattrcb_quota_exists(%struct.ceph_inode_info* %0) #0 {
  %2 = alloca %struct.ceph_inode_info*, align 8
  %3 = alloca i32, align 4
  store %struct.ceph_inode_info* %0, %struct.ceph_inode_info** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %5 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %4, i32 0, i32 0
  %6 = call i32 @spin_lock(i32* %5)
  %7 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %8 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %13 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %40

16:                                               ; preds = %11, %1
  %17 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %18 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CEPH_NOSNAP, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %40

23:                                               ; preds = %16
  %24 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %25 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = icmp ne %struct.TYPE_4__* %26, null
  br i1 %27, label %28, label %40

28:                                               ; preds = %23
  %29 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %30 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %29, i32 0, i32 2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %35 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %33, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  store i32 1, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %28, %23, %16, %11
  %41 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %42 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %41, i32 0, i32 0
  %43 = call i32 @spin_unlock(i32* %42)
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
