; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_transaction.c_btrfs_attach_transaction_barrier.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_transaction.c_btrfs_attach_transaction_barrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { i32 }

@TRANS_ATTACH = common dso_local global i32 0, align 4
@BTRFS_RESERVE_NO_FLUSH = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.btrfs_trans_handle* @btrfs_attach_transaction_barrier(%struct.btrfs_root* %0) #0 {
  %2 = alloca %struct.btrfs_root*, align 8
  %3 = alloca %struct.btrfs_trans_handle*, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %2, align 8
  %4 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %5 = load i32, i32* @TRANS_ATTACH, align 4
  %6 = load i32, i32* @BTRFS_RESERVE_NO_FLUSH, align 4
  %7 = call %struct.btrfs_trans_handle* @start_transaction(%struct.btrfs_root* %4, i32 0, i32 %5, i32 %6, i32 1)
  store %struct.btrfs_trans_handle* %7, %struct.btrfs_trans_handle** %3, align 8
  %8 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %3, align 8
  %9 = load i32, i32* @ENOENT, align 4
  %10 = sub nsw i32 0, %9
  %11 = call %struct.btrfs_trans_handle* @ERR_PTR(i32 %10)
  %12 = icmp eq %struct.btrfs_trans_handle* %8, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %15 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @btrfs_wait_for_commit(i32 %16, i32 0)
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %3, align 8
  ret %struct.btrfs_trans_handle* %19
}

declare dso_local %struct.btrfs_trans_handle* @start_transaction(%struct.btrfs_root*, i32, i32, i32, i32) #1

declare dso_local %struct.btrfs_trans_handle* @ERR_PTR(i32) #1

declare dso_local i32 @btrfs_wait_for_commit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
