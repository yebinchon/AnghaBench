; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_block-rsv.c_btrfs_alloc_block_rsv.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_block-rsv.c_btrfs_alloc_block_rsv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_block_rsv = type { i32 }
%struct.btrfs_fs_info = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.btrfs_block_rsv* @btrfs_alloc_block_rsv(%struct.btrfs_fs_info* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.btrfs_block_rsv*, align 8
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca i16, align 2
  %6 = alloca %struct.btrfs_block_rsv*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %4, align 8
  store i16 %1, i16* %5, align 2
  %7 = load i32, i32* @GFP_NOFS, align 4
  %8 = call %struct.btrfs_block_rsv* @kmalloc(i32 4, i32 %7)
  store %struct.btrfs_block_rsv* %8, %struct.btrfs_block_rsv** %6, align 8
  %9 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %6, align 8
  %10 = icmp ne %struct.btrfs_block_rsv* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.btrfs_block_rsv* null, %struct.btrfs_block_rsv** %3, align 8
  br label %18

12:                                               ; preds = %2
  %13 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %14 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %6, align 8
  %15 = load i16, i16* %5, align 2
  %16 = call i32 @btrfs_init_metadata_block_rsv(%struct.btrfs_fs_info* %13, %struct.btrfs_block_rsv* %14, i16 zeroext %15)
  %17 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %6, align 8
  store %struct.btrfs_block_rsv* %17, %struct.btrfs_block_rsv** %3, align 8
  br label %18

18:                                               ; preds = %12, %11
  %19 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %3, align 8
  ret %struct.btrfs_block_rsv* %19
}

declare dso_local %struct.btrfs_block_rsv* @kmalloc(i32, i32) #1

declare dso_local i32 @btrfs_init_metadata_block_rsv(%struct.btrfs_fs_info*, %struct.btrfs_block_rsv*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
