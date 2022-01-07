; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_transaction.c_should_end_transaction.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_transaction.c_should_end_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*)* @should_end_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @should_end_transaction(%struct.btrfs_trans_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btrfs_trans_handle*, align 8
  %4 = alloca %struct.btrfs_fs_info*, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %3, align 8
  %5 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %3, align 8
  %6 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %5, i32 0, i32 0
  %7 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  store %struct.btrfs_fs_info* %7, %struct.btrfs_fs_info** %4, align 8
  %8 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %9 = call i64 @btrfs_check_space_for_delayed_refs(%struct.btrfs_fs_info* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %20

12:                                               ; preds = %1
  %13 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %14 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %13, i32 0, i32 0
  %15 = call i32 @btrfs_block_rsv_check(i32* %14, i32 5)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %12, %11
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i64 @btrfs_check_space_for_delayed_refs(%struct.btrfs_fs_info*) #1

declare dso_local i32 @btrfs_block_rsv_check(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
