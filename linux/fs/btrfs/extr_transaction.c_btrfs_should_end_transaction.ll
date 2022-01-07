; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_transaction.c_btrfs_should_end_transaction.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_transaction.c_btrfs_should_end_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { %struct.btrfs_transaction* }
%struct.btrfs_transaction = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@TRANS_STATE_BLOCKED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_should_end_transaction(%struct.btrfs_trans_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btrfs_trans_handle*, align 8
  %4 = alloca %struct.btrfs_transaction*, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %3, align 8
  %5 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %3, align 8
  %6 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %5, i32 0, i32 0
  %7 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %6, align 8
  store %struct.btrfs_transaction* %7, %struct.btrfs_transaction** %4, align 8
  %8 = call i32 (...) @smp_mb()
  %9 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %4, align 8
  %10 = getelementptr inbounds %struct.btrfs_transaction, %struct.btrfs_transaction* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @TRANS_STATE_BLOCKED, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %4, align 8
  %16 = getelementptr inbounds %struct.btrfs_transaction, %struct.btrfs_transaction* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %1
  store i32 1, i32* %2, align 4
  br label %24

21:                                               ; preds = %14
  %22 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %3, align 8
  %23 = call i32 @should_end_transaction(%struct.btrfs_trans_handle* %22)
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %21, %20
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @should_end_transaction(%struct.btrfs_trans_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
