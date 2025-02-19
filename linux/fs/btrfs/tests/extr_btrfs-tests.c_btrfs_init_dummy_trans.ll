; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_btrfs-tests.c_btrfs_init_dummy_trans.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_btrfs-tests.c_btrfs_init_dummy_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32, %struct.btrfs_fs_info*, i32 }
%struct.btrfs_fs_info = type { i32 }

@__TRANS_DUMMY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_init_dummy_trans(%struct.btrfs_trans_handle* %0, %struct.btrfs_fs_info* %1) #0 {
  %3 = alloca %struct.btrfs_trans_handle*, align 8
  %4 = alloca %struct.btrfs_fs_info*, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %3, align 8
  store %struct.btrfs_fs_info* %1, %struct.btrfs_fs_info** %4, align 8
  %5 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %3, align 8
  %6 = call i32 @memset(%struct.btrfs_trans_handle* %5, i32 0, i32 24)
  %7 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %3, align 8
  %8 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %7, i32 0, i32 0
  store i32 1, i32* %8, align 8
  %9 = load i32, i32* @__TRANS_DUMMY, align 4
  %10 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %3, align 8
  %11 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 8
  %12 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %13 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %3, align 8
  %14 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %13, i32 0, i32 1
  store %struct.btrfs_fs_info* %12, %struct.btrfs_fs_info** %14, align 8
  ret void
}

declare dso_local i32 @memset(%struct.btrfs_trans_handle*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
