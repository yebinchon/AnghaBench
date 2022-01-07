; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_transaction.c_wait_current_trans.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_transaction.c_wait_current_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32, i32, %struct.btrfs_transaction* }
%struct.btrfs_transaction = type { i64, i64, i32 }

@TRANS_STATE_UNBLOCKED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_fs_info*)* @wait_current_trans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wait_current_trans(%struct.btrfs_fs_info* %0) #0 {
  %2 = alloca %struct.btrfs_fs_info*, align 8
  %3 = alloca %struct.btrfs_transaction*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %2, align 8
  %4 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %5 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %4, i32 0, i32 0
  %6 = call i32 @spin_lock(i32* %5)
  %7 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %8 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %7, i32 0, i32 2
  %9 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %8, align 8
  store %struct.btrfs_transaction* %9, %struct.btrfs_transaction** %3, align 8
  %10 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %3, align 8
  %11 = icmp ne %struct.btrfs_transaction* %10, null
  br i1 %11, label %12, label %42

12:                                               ; preds = %1
  %13 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %3, align 8
  %14 = call i64 @is_transaction_blocked(%struct.btrfs_transaction* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %42

16:                                               ; preds = %12
  %17 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %3, align 8
  %18 = getelementptr inbounds %struct.btrfs_transaction, %struct.btrfs_transaction* %17, i32 0, i32 2
  %19 = call i32 @refcount_inc(i32* %18)
  %20 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %21 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %20, i32 0, i32 0
  %22 = call i32 @spin_unlock(i32* %21)
  %23 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %24 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %3, align 8
  %27 = getelementptr inbounds %struct.btrfs_transaction, %struct.btrfs_transaction* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @TRANS_STATE_UNBLOCKED, align 8
  %30 = icmp sge i64 %28, %29
  br i1 %30, label %36, label %31

31:                                               ; preds = %16
  %32 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %3, align 8
  %33 = getelementptr inbounds %struct.btrfs_transaction, %struct.btrfs_transaction* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %31, %16
  %37 = phi i1 [ true, %16 ], [ %35, %31 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @wait_event(i32 %25, i32 %38)
  %40 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %3, align 8
  %41 = call i32 @btrfs_put_transaction(%struct.btrfs_transaction* %40)
  br label %46

42:                                               ; preds = %12, %1
  %43 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %44 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %43, i32 0, i32 0
  %45 = call i32 @spin_unlock(i32* %44)
  br label %46

46:                                               ; preds = %42, %36
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @is_transaction_blocked(%struct.btrfs_transaction*) #1

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @btrfs_put_transaction(%struct.btrfs_transaction*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
