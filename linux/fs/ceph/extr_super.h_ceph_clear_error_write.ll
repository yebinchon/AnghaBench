; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_super.h_ceph_clear_error_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_super.h_ceph_clear_error_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_inode_info = type { i32, i32 }

@CEPH_I_ERROR_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_inode_info*)* @ceph_clear_error_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ceph_clear_error_write(%struct.ceph_inode_info* %0) #0 {
  %2 = alloca %struct.ceph_inode_info*, align 8
  store %struct.ceph_inode_info* %0, %struct.ceph_inode_info** %2, align 8
  %3 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %4 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @READ_ONCE(i32 %5)
  %7 = load i32, i32* @CEPH_I_ERROR_WRITE, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %1
  %11 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %12 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %11, i32 0, i32 1
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load i32, i32* @CEPH_I_ERROR_WRITE, align 4
  %15 = xor i32 %14, -1
  %16 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %17 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %21 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %20, i32 0, i32 1
  %22 = call i32 @spin_unlock(i32* %21)
  br label %23

23:                                               ; preds = %10, %1
  ret void
}

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
