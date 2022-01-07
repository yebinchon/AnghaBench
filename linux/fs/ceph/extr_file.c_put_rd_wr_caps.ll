; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_file.c_put_rd_wr_caps.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_file.c_put_rd_wr_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_inode_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_inode_info*, i32, %struct.ceph_inode_info*, i32)* @put_rd_wr_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_rd_wr_caps(%struct.ceph_inode_info* %0, i32 %1, %struct.ceph_inode_info* %2, i32 %3) #0 {
  %5 = alloca %struct.ceph_inode_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ceph_inode_info*, align 8
  %8 = alloca i32, align 4
  store %struct.ceph_inode_info* %0, %struct.ceph_inode_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ceph_inode_info* %2, %struct.ceph_inode_info** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @ceph_put_cap_refs(%struct.ceph_inode_info* %9, i32 %10)
  %12 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @ceph_put_cap_refs(%struct.ceph_inode_info* %12, i32 %13)
  ret void
}

declare dso_local i32 @ceph_put_cap_refs(%struct.ceph_inode_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
