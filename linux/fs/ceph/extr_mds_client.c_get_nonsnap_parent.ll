; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_get_nonsnap_parent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_get_nonsnap_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.dentry* }

@CEPH_NOSNAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.dentry*)* @get_nonsnap_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @get_nonsnap_parent(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.inode*, align 8
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  store %struct.inode* null, %struct.inode** %3, align 8
  br label %4

4:                                                ; preds = %25, %1
  %5 = load %struct.dentry*, %struct.dentry** %2, align 8
  %6 = icmp ne %struct.dentry* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %4
  %8 = load %struct.dentry*, %struct.dentry** %2, align 8
  %9 = call i32 @IS_ROOT(%struct.dentry* %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  br label %12

12:                                               ; preds = %7, %4
  %13 = phi i1 [ false, %4 ], [ %11, %7 ]
  br i1 %13, label %14, label %29

14:                                               ; preds = %12
  %15 = load %struct.dentry*, %struct.dentry** %2, align 8
  %16 = call %struct.inode* @d_inode_rcu(%struct.dentry* %15)
  store %struct.inode* %16, %struct.inode** %3, align 8
  %17 = load %struct.inode*, %struct.inode** %3, align 8
  %18 = icmp ne %struct.inode* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.inode*, %struct.inode** %3, align 8
  %21 = call i64 @ceph_snap(%struct.inode* %20)
  %22 = load i64, i64* @CEPH_NOSNAP, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %19, %14
  br label %29

25:                                               ; preds = %19
  %26 = load %struct.dentry*, %struct.dentry** %2, align 8
  %27 = getelementptr inbounds %struct.dentry, %struct.dentry* %26, i32 0, i32 0
  %28 = load %struct.dentry*, %struct.dentry** %27, align 8
  store %struct.dentry* %28, %struct.dentry** %2, align 8
  br label %4

29:                                               ; preds = %24, %12
  %30 = load %struct.inode*, %struct.inode** %3, align 8
  %31 = icmp ne %struct.inode* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load %struct.inode*, %struct.inode** %3, align 8
  %34 = call %struct.inode* @igrab(%struct.inode* %33)
  store %struct.inode* %34, %struct.inode** %3, align 8
  br label %35

35:                                               ; preds = %32, %29
  %36 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %36
}

declare dso_local i32 @IS_ROOT(%struct.dentry*) #1

declare dso_local %struct.inode* @d_inode_rcu(%struct.dentry*) #1

declare dso_local i64 @ceph_snap(%struct.inode*) #1

declare dso_local %struct.inode* @igrab(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
