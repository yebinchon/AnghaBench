; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_block-rsv.c_btrfs_block_rsv_refill.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_block-rsv.c_btrfs_block_rsv_refill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32 }
%struct.btrfs_block_rsv = type { i64, i32 }

@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_block_rsv_refill(%struct.btrfs_root* %0, %struct.btrfs_block_rsv* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_root*, align 8
  %7 = alloca %struct.btrfs_block_rsv*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %6, align 8
  store %struct.btrfs_block_rsv* %1, %struct.btrfs_block_rsv** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %10, align 8
  %12 = load i32, i32* @ENOSPC, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %11, align 4
  %14 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %7, align 8
  %15 = icmp ne %struct.btrfs_block_rsv* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %55

17:                                               ; preds = %4
  %18 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %7, align 8
  %19 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %18, i32 0, i32 1
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load i64, i64* %8, align 8
  store i64 %21, i64* %10, align 8
  %22 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %7, align 8
  %23 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %10, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  store i32 0, i32* %11, align 4
  br label %34

28:                                               ; preds = %17
  %29 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %7, align 8
  %30 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %10, align 8
  %33 = sub nsw i64 %32, %31
  store i64 %33, i64* %10, align 8
  br label %34

34:                                               ; preds = %28, %27
  %35 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %7, align 8
  %36 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %35, i32 0, i32 1
  %37 = call i32 @spin_unlock(i32* %36)
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %55

41:                                               ; preds = %34
  %42 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %43 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %7, align 8
  %44 = load i64, i64* %10, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @btrfs_reserve_metadata_bytes(%struct.btrfs_root* %42, %struct.btrfs_block_rsv* %43, i64 %44, i32 %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %41
  %50 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %7, align 8
  %51 = load i64, i64* %10, align 8
  %52 = call i32 @btrfs_block_rsv_add_bytes(%struct.btrfs_block_rsv* %50, i64 %51, i32 0)
  store i32 0, i32* %5, align 4
  br label %55

53:                                               ; preds = %41
  %54 = load i32, i32* %11, align 4
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %53, %49, %40, %16
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @btrfs_reserve_metadata_bytes(%struct.btrfs_root*, %struct.btrfs_block_rsv*, i64, i32) #1

declare dso_local i32 @btrfs_block_rsv_add_bytes(%struct.btrfs_block_rsv*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
