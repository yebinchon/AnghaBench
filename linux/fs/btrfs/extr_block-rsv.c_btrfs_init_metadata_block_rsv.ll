; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_block-rsv.c_btrfs_init_metadata_block_rsv.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_block-rsv.c_btrfs_init_metadata_block_rsv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_block_rsv = type { i32 }

@BTRFS_BLOCK_GROUP_METADATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_init_metadata_block_rsv(%struct.btrfs_fs_info* %0, %struct.btrfs_block_rsv* %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca %struct.btrfs_block_rsv*, align 8
  %6 = alloca i16, align 2
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %4, align 8
  store %struct.btrfs_block_rsv* %1, %struct.btrfs_block_rsv** %5, align 8
  store i16 %2, i16* %6, align 2
  %7 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %5, align 8
  %8 = load i16, i16* %6, align 2
  %9 = call i32 @btrfs_init_block_rsv(%struct.btrfs_block_rsv* %7, i16 zeroext %8)
  %10 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %11 = load i32, i32* @BTRFS_BLOCK_GROUP_METADATA, align 4
  %12 = call i32 @btrfs_find_space_info(%struct.btrfs_fs_info* %10, i32 %11)
  %13 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %5, align 8
  %14 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  ret void
}

declare dso_local i32 @btrfs_init_block_rsv(%struct.btrfs_block_rsv*, i16 zeroext) #1

declare dso_local i32 @btrfs_find_space_info(%struct.btrfs_fs_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
