; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_super.c_btrfs_freeze.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_super.c_btrfs_freeze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_fs_info = type { i32, %struct.btrfs_root* }
%struct.btrfs_root = type { i32 }

@BTRFS_FS_FROZEN = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*)* @btrfs_freeze to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_freeze(%struct.super_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.btrfs_trans_handle*, align 8
  %5 = alloca %struct.btrfs_fs_info*, align 8
  %6 = alloca %struct.btrfs_root*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %7 = load %struct.super_block*, %struct.super_block** %3, align 8
  %8 = call %struct.btrfs_fs_info* @btrfs_sb(%struct.super_block* %7)
  store %struct.btrfs_fs_info* %8, %struct.btrfs_fs_info** %5, align 8
  %9 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %10 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %9, i32 0, i32 1
  %11 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  store %struct.btrfs_root* %11, %struct.btrfs_root** %6, align 8
  %12 = load i32, i32* @BTRFS_FS_FROZEN, align 4
  %13 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %14 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %13, i32 0, i32 0
  %15 = call i32 @set_bit(i32 %12, i32* %14)
  %16 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %17 = call %struct.btrfs_trans_handle* @btrfs_attach_transaction_barrier(%struct.btrfs_root* %16)
  store %struct.btrfs_trans_handle* %17, %struct.btrfs_trans_handle** %4, align 8
  %18 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %19 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %1
  %22 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %23 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %22)
  %24 = load i32, i32* @ENOENT, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %34

28:                                               ; preds = %21
  %29 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %30 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %29)
  store i32 %30, i32* %2, align 4
  br label %34

31:                                               ; preds = %1
  %32 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %33 = call i32 @btrfs_commit_transaction(%struct.btrfs_trans_handle* %32)
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %31, %28, %27
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.btrfs_fs_info* @btrfs_sb(%struct.super_block*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local %struct.btrfs_trans_handle* @btrfs_attach_transaction_barrier(%struct.btrfs_root*) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @btrfs_commit_transaction(%struct.btrfs_trans_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
