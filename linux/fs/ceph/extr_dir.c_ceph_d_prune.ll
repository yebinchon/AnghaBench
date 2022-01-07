; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_dir.c_ceph_d_prune.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_dir.c_ceph_d_prune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.ceph_inode_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ceph_dentry_info = type { i64, i64 }

@.str = private unnamed_addr constant [21 x i8] c"ceph_d_prune %pd %p\0A\00", align 1
@CEPH_SNAPDIR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dentry*)* @ceph_d_prune to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ceph_d_prune(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.ceph_inode_info*, align 8
  %4 = alloca %struct.ceph_dentry_info*, align 8
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  %5 = load %struct.dentry*, %struct.dentry** %2, align 8
  %6 = load %struct.dentry*, %struct.dentry** %2, align 8
  %7 = call i32 @dout(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.dentry* %5, %struct.dentry* %6)
  %8 = load %struct.dentry*, %struct.dentry** %2, align 8
  %9 = call i64 @IS_ROOT(%struct.dentry* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %55

12:                                               ; preds = %1
  %13 = load %struct.dentry*, %struct.dentry** %2, align 8
  %14 = getelementptr inbounds %struct.dentry, %struct.dentry* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @d_inode(i32 %15)
  %17 = call %struct.ceph_inode_info* @ceph_inode(i32 %16)
  store %struct.ceph_inode_info* %17, %struct.ceph_inode_info** %3, align 8
  %18 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %19 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CEPH_SNAPDIR, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %12
  br label %55

25:                                               ; preds = %12
  %26 = load %struct.dentry*, %struct.dentry** %2, align 8
  %27 = call i64 @d_really_is_negative(%struct.dentry* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %55

30:                                               ; preds = %25
  %31 = load %struct.dentry*, %struct.dentry** %2, align 8
  %32 = call i32 @d_unhashed(%struct.dentry* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %36 = call i32 @__ceph_dir_clear_complete(%struct.ceph_inode_info* %35)
  br label %55

37:                                               ; preds = %30
  %38 = load %struct.dentry*, %struct.dentry** %2, align 8
  %39 = call %struct.ceph_dentry_info* @ceph_dentry(%struct.dentry* %38)
  store %struct.ceph_dentry_info* %39, %struct.ceph_dentry_info** %4, align 8
  %40 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %4, align 8
  %41 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %37
  %45 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %4, align 8
  %46 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %49 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %48, i32 0, i32 0
  %50 = call i64 @atomic_read(i32* %49)
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %54 = call i32 @__ceph_dir_clear_ordered(%struct.ceph_inode_info* %53)
  br label %55

55:                                               ; preds = %11, %24, %29, %34, %52, %44, %37
  ret void
}

declare dso_local i32 @dout(i8*, %struct.dentry*, %struct.dentry*) #1

declare dso_local i64 @IS_ROOT(%struct.dentry*) #1

declare dso_local %struct.ceph_inode_info* @ceph_inode(i32) #1

declare dso_local i32 @d_inode(i32) #1

declare dso_local i64 @d_really_is_negative(%struct.dentry*) #1

declare dso_local i32 @d_unhashed(%struct.dentry*) #1

declare dso_local i32 @__ceph_dir_clear_complete(%struct.ceph_inode_info*) #1

declare dso_local %struct.ceph_dentry_info* @ceph_dentry(%struct.dentry*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @__ceph_dir_clear_ordered(%struct.ceph_inode_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
