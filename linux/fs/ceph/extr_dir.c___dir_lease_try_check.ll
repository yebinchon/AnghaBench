; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_dir.c___dir_lease_try_check.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_dir.c___dir_lease_try_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.ceph_dentry_info = type { i64 }
%struct.inode = type { i32 }
%struct.ceph_inode_info = type { i32, i32 }

@CEPH_CAP_FILE_SHARED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*)* @__dir_lease_try_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__dir_lease_try_check(%struct.dentry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.ceph_dentry_info*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ceph_inode_info*, align 8
  %7 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  %8 = load %struct.dentry*, %struct.dentry** %3, align 8
  %9 = call %struct.ceph_dentry_info* @ceph_dentry(%struct.dentry* %8)
  store %struct.ceph_dentry_info* %9, %struct.ceph_dentry_info** %4, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %4, align 8
  %11 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %60

15:                                               ; preds = %1
  %16 = load %struct.dentry*, %struct.dentry** %3, align 8
  %17 = call i64 @IS_ROOT(%struct.dentry* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %60

20:                                               ; preds = %15
  %21 = load %struct.dentry*, %struct.dentry** %3, align 8
  %22 = getelementptr inbounds %struct.dentry, %struct.dentry* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.inode* @d_inode(i32 %23)
  store %struct.inode* %24, %struct.inode** %5, align 8
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = call %struct.ceph_inode_info* @ceph_inode(%struct.inode* %25)
  store %struct.ceph_inode_info* %26, %struct.ceph_inode_info** %6, align 8
  %27 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %28 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %27, i32 0, i32 0
  %29 = call i64 @spin_trylock(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %20
  %32 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %33 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %32, i32 0, i32 1
  %34 = call i64 @atomic_read(i32* %33)
  %35 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %4, align 8
  %36 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %31
  %40 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %41 = load i32, i32* @CEPH_CAP_FILE_SHARED, align 4
  %42 = call i64 @__ceph_caps_issued_mask(%struct.ceph_inode_info* %40, i32 %41, i32 0)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 1, i32* %7, align 4
  br label %45

45:                                               ; preds = %44, %39, %31
  %46 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %47 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %46, i32 0, i32 0
  %48 = call i32 @spin_unlock(i32* %47)
  br label %52

49:                                               ; preds = %20
  %50 = load i32, i32* @EBUSY, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %49, %45
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %4, align 8
  %57 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  br label %58

58:                                               ; preds = %55, %52
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %58, %19, %14
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.ceph_dentry_info* @ceph_dentry(%struct.dentry*) #1

declare dso_local i64 @IS_ROOT(%struct.dentry*) #1

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local %struct.ceph_inode_info* @ceph_inode(%struct.inode*) #1

declare dso_local i64 @spin_trylock(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @__ceph_caps_issued_mask(%struct.ceph_inode_info*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
