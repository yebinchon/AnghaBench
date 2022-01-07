; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_block-rsv.c_btrfs_block_rsv_add_bytes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_block-rsv.c_btrfs_block_rsv_add_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_block_rsv = type { i64, i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_block_rsv_add_bytes(%struct.btrfs_block_rsv* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.btrfs_block_rsv*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.btrfs_block_rsv* %0, %struct.btrfs_block_rsv** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %4, align 8
  %8 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %7, i32 0, i32 3
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %4, align 8
  %12 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, %10
  store i64 %14, i64* %12, align 8
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load i64, i64* %5, align 8
  %19 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %4, align 8
  %20 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, %18
  store i64 %22, i64* %20, align 8
  br label %35

23:                                               ; preds = %3
  %24 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %4, align 8
  %25 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %4, align 8
  %28 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp sge i64 %26, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %4, align 8
  %33 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %32, i32 0, i32 2
  store i32 1, i32* %33, align 8
  br label %34

34:                                               ; preds = %31, %23
  br label %35

35:                                               ; preds = %34, %17
  %36 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %4, align 8
  %37 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %36, i32 0, i32 3
  %38 = call i32 @spin_unlock(i32* %37)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
