; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_xattr.c_ceph_vxattrcb_layout_exists.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_xattr.c_ceph_vxattrcb_layout_exists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_inode_info = type { %struct.ceph_file_layout }
%struct.ceph_file_layout = type { i64, i64, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_inode_info*)* @ceph_vxattrcb_layout_exists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceph_vxattrcb_layout_exists(%struct.ceph_inode_info* %0) #0 {
  %2 = alloca %struct.ceph_inode_info*, align 8
  %3 = alloca %struct.ceph_file_layout*, align 8
  store %struct.ceph_inode_info* %0, %struct.ceph_inode_info** %2, align 8
  %4 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %5 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %4, i32 0, i32 0
  store %struct.ceph_file_layout* %5, %struct.ceph_file_layout** %3, align 8
  %6 = load %struct.ceph_file_layout*, %struct.ceph_file_layout** %3, align 8
  %7 = getelementptr inbounds %struct.ceph_file_layout, %struct.ceph_file_layout* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %31, label %10

10:                                               ; preds = %1
  %11 = load %struct.ceph_file_layout*, %struct.ceph_file_layout** %3, align 8
  %12 = getelementptr inbounds %struct.ceph_file_layout, %struct.ceph_file_layout* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %31, label %15

15:                                               ; preds = %10
  %16 = load %struct.ceph_file_layout*, %struct.ceph_file_layout** %3, align 8
  %17 = getelementptr inbounds %struct.ceph_file_layout, %struct.ceph_file_layout* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %15
  %21 = load %struct.ceph_file_layout*, %struct.ceph_file_layout** %3, align 8
  %22 = getelementptr inbounds %struct.ceph_file_layout, %struct.ceph_file_layout* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = load %struct.ceph_file_layout*, %struct.ceph_file_layout** %3, align 8
  %27 = getelementptr inbounds %struct.ceph_file_layout, %struct.ceph_file_layout* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = call i32* @rcu_dereference_raw(i32 %28)
  %30 = icmp ne i32* %29, null
  br label %31

31:                                               ; preds = %25, %20, %15, %10, %1
  %32 = phi i1 [ true, %20 ], [ true, %15 ], [ true, %10 ], [ true, %1 ], [ %30, %25 ]
  %33 = zext i1 %32 to i32
  ret i32 %33
}

declare dso_local i32* @rcu_dereference_raw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
