; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_super.h___ceph_update_quota.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_super.h___ceph_update_quota.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_inode_info = type { i32, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_inode_info*, i8*, i8*)* @__ceph_update_quota to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ceph_update_quota(%struct.ceph_inode_info* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.ceph_inode_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ceph_inode_info* %0, %struct.ceph_inode_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %10 = call i32 @__ceph_has_any_quota(%struct.ceph_inode_info* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %13 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %12, i32 0, i32 2
  store i8* %11, i8** %13, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %16 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %15, i32 0, i32 1
  store i8* %14, i8** %16, align 8
  %17 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %18 = call i32 @__ceph_has_any_quota(%struct.ceph_inode_info* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %24 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %23, i32 0, i32 0
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @ceph_adjust_quota_realms_count(i32* %24, i32 %25)
  br label %27

27:                                               ; preds = %22, %3
  ret void
}

declare dso_local i32 @__ceph_has_any_quota(%struct.ceph_inode_info*) #1

declare dso_local i32 @ceph_adjust_quota_realms_count(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
