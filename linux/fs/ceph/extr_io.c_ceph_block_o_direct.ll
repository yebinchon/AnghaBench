; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_io.c_ceph_block_o_direct.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_io.c_ceph_block_o_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_inode_info = type { i32, i32 }
%struct.inode = type { i32 }

@CEPH_I_ODIRECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_inode_info*, %struct.inode*)* @ceph_block_o_direct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ceph_block_o_direct(%struct.ceph_inode_info* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.ceph_inode_info*, align 8
  %4 = alloca %struct.inode*, align 8
  store %struct.ceph_inode_info* %0, %struct.ceph_inode_info** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %5 = load %struct.inode*, %struct.inode** %4, align 8
  %6 = getelementptr inbounds %struct.inode, %struct.inode* %5, i32 0, i32 0
  %7 = call i32 @lockdep_assert_held_write(i32* %6)
  %8 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %9 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @READ_ONCE(i32 %10)
  %12 = load i32, i32* @CEPH_I_ODIRECT, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %2
  %16 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %17 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %16, i32 0, i32 1
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load i32, i32* @CEPH_I_ODIRECT, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %22 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %26 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %25, i32 0, i32 1
  %27 = call i32 @spin_unlock(i32* %26)
  %28 = load %struct.inode*, %struct.inode** %4, align 8
  %29 = call i32 @inode_dio_wait(%struct.inode* %28)
  br label %30

30:                                               ; preds = %15, %2
  ret void
}

declare dso_local i32 @lockdep_assert_held_write(i32*) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @inode_dio_wait(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
