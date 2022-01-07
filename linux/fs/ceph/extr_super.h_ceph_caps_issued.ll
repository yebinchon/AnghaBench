; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_super.h_ceph_caps_issued.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_super.h_ceph_caps_issued.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_inode_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_inode_info*)* @ceph_caps_issued to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceph_caps_issued(%struct.ceph_inode_info* %0) #0 {
  %2 = alloca %struct.ceph_inode_info*, align 8
  %3 = alloca i32, align 4
  store %struct.ceph_inode_info* %0, %struct.ceph_inode_info** %2, align 8
  %4 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %5 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %4, i32 0, i32 0
  %6 = call i32 @spin_lock(i32* %5)
  %7 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %8 = call i32 @__ceph_caps_issued(%struct.ceph_inode_info* %7, i32* null)
  store i32 %8, i32* %3, align 4
  %9 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %10 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %9, i32 0, i32 0
  %11 = call i32 @spin_unlock(i32* %10)
  %12 = load i32, i32* %3, align 4
  ret i32 %12
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__ceph_caps_issued(%struct.ceph_inode_info*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
