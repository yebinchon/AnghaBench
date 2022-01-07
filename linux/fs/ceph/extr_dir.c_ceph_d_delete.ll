; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_dir.c_ceph_d_delete.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_dir.c_ceph_d_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.ceph_dentry_info = type { i32 }

@CEPH_NOSNAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*)* @ceph_d_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceph_d_delete(%struct.dentry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.ceph_dentry_info*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  %5 = load %struct.dentry*, %struct.dentry** %3, align 8
  %6 = call i64 @d_really_is_negative(%struct.dentry* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %33

9:                                                ; preds = %1
  %10 = load %struct.dentry*, %struct.dentry** %3, align 8
  %11 = call i32 @d_inode(%struct.dentry* %10)
  %12 = call i64 @ceph_snap(i32 %11)
  %13 = load i64, i64* @CEPH_NOSNAP, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %33

16:                                               ; preds = %9
  %17 = load %struct.dentry*, %struct.dentry** %3, align 8
  %18 = call %struct.ceph_dentry_info* @ceph_dentry(%struct.dentry* %17)
  store %struct.ceph_dentry_info* %18, %struct.ceph_dentry_info** %4, align 8
  %19 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %4, align 8
  %20 = icmp ne %struct.ceph_dentry_info* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %16
  %22 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %4, align 8
  %23 = call i64 @__dentry_lease_is_valid(%struct.ceph_dentry_info* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %33

26:                                               ; preds = %21
  %27 = load %struct.dentry*, %struct.dentry** %3, align 8
  %28 = call i64 @__dir_lease_try_check(%struct.dentry* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %33

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %31, %16
  store i32 1, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %30, %25, %15, %8
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i64 @d_really_is_negative(%struct.dentry*) #1

declare dso_local i64 @ceph_snap(i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local %struct.ceph_dentry_info* @ceph_dentry(%struct.dentry*) #1

declare dso_local i64 @__dentry_lease_is_valid(%struct.ceph_dentry_info*) #1

declare dso_local i64 @__dir_lease_try_check(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
