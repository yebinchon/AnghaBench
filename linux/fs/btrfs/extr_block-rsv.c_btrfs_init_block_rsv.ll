; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_block-rsv.c_btrfs_init_block_rsv.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_block-rsv.c_btrfs_init_block_rsv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_block_rsv = type { i16, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_init_block_rsv(%struct.btrfs_block_rsv* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.btrfs_block_rsv*, align 8
  %4 = alloca i16, align 2
  store %struct.btrfs_block_rsv* %0, %struct.btrfs_block_rsv** %3, align 8
  store i16 %1, i16* %4, align 2
  %5 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %3, align 8
  %6 = call i32 @memset(%struct.btrfs_block_rsv* %5, i32 0, i32 8)
  %7 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %3, align 8
  %8 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %7, i32 0, i32 1
  %9 = call i32 @spin_lock_init(i32* %8)
  %10 = load i16, i16* %4, align 2
  %11 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %3, align 8
  %12 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %11, i32 0, i32 0
  store i16 %10, i16* %12, align 4
  ret void
}

declare dso_local i32 @memset(%struct.btrfs_block_rsv*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
