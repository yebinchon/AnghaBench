; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_transaction.c_wait_current_trans_commit_start.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_transaction.c_wait_current_trans_commit_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_transaction = type { i64, i64 }

@TRANS_STATE_COMMIT_START = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_fs_info*, %struct.btrfs_transaction*)* @wait_current_trans_commit_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wait_current_trans_commit_start(%struct.btrfs_fs_info* %0, %struct.btrfs_transaction* %1) #0 {
  %3 = alloca %struct.btrfs_fs_info*, align 8
  %4 = alloca %struct.btrfs_transaction*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %3, align 8
  store %struct.btrfs_transaction* %1, %struct.btrfs_transaction** %4, align 8
  %5 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %6 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %4, align 8
  %9 = getelementptr inbounds %struct.btrfs_transaction, %struct.btrfs_transaction* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @TRANS_STATE_COMMIT_START, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %4, align 8
  %15 = getelementptr inbounds %struct.btrfs_transaction, %struct.btrfs_transaction* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %13, %2
  %19 = phi i1 [ true, %2 ], [ %17, %13 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @wait_event(i32 %7, i32 %20)
  ret void
}

declare dso_local i32 @wait_event(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
