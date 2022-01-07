; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_delayed-ref.c_btrfs_check_space_for_delayed_refs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_delayed-ref.c_btrfs_check_space_for_delayed_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { %struct.btrfs_block_rsv, %struct.btrfs_block_rsv }
%struct.btrfs_block_rsv = type { i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_check_space_for_delayed_refs(%struct.btrfs_fs_info* %0) #0 {
  %2 = alloca %struct.btrfs_fs_info*, align 8
  %3 = alloca %struct.btrfs_block_rsv*, align 8
  %4 = alloca %struct.btrfs_block_rsv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %2, align 8
  %7 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %8 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %7, i32 0, i32 1
  store %struct.btrfs_block_rsv* %8, %struct.btrfs_block_rsv** %3, align 8
  %9 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %10 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %9, i32 0, i32 0
  store %struct.btrfs_block_rsv* %10, %struct.btrfs_block_rsv** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %4, align 8
  %12 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %11, i32 0, i32 2
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %4, align 8
  %15 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %6, align 8
  %17 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %4, align 8
  %18 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %17, i32 0, i32 2
  %19 = call i32 @spin_unlock(i32* %18)
  %20 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %3, align 8
  %21 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %20, i32 0, i32 2
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %3, align 8
  %24 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = add nsw i64 %26, %25
  store i64 %27, i64* %6, align 8
  %28 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %3, align 8
  %29 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  br label %34

34:                                               ; preds = %33, %1
  %35 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %3, align 8
  %36 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %35, i32 0, i32 2
  %37 = call i32 @spin_unlock(i32* %36)
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
