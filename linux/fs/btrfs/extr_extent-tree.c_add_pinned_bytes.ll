; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_extent-tree.c_add_pinned_bytes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_extent-tree.c_add_pinned_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_ref = type { i32 }
%struct.btrfs_space_info = type { i32 }

@BTRFS_TOTAL_BYTES_PINNED_BATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_fs_info*, %struct.btrfs_ref*)* @add_pinned_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_pinned_bytes(%struct.btrfs_fs_info* %0, %struct.btrfs_ref* %1) #0 {
  %3 = alloca %struct.btrfs_fs_info*, align 8
  %4 = alloca %struct.btrfs_ref*, align 8
  %5 = alloca %struct.btrfs_space_info*, align 8
  %6 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %3, align 8
  store %struct.btrfs_ref* %1, %struct.btrfs_ref** %4, align 8
  %7 = load %struct.btrfs_ref*, %struct.btrfs_ref** %4, align 8
  %8 = call i32 @generic_ref_to_space_flags(%struct.btrfs_ref* %7)
  store i32 %8, i32* %6, align 4
  %9 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.btrfs_space_info* @btrfs_find_space_info(%struct.btrfs_fs_info* %9, i32 %10)
  store %struct.btrfs_space_info* %11, %struct.btrfs_space_info** %5, align 8
  %12 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %5, align 8
  %13 = call i32 @ASSERT(%struct.btrfs_space_info* %12)
  %14 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %5, align 8
  %15 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %14, i32 0, i32 0
  %16 = load %struct.btrfs_ref*, %struct.btrfs_ref** %4, align 8
  %17 = getelementptr inbounds %struct.btrfs_ref, %struct.btrfs_ref* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @BTRFS_TOTAL_BYTES_PINNED_BATCH, align 4
  %20 = call i32 @percpu_counter_add_batch(i32* %15, i32 %18, i32 %19)
  ret void
}

declare dso_local i32 @generic_ref_to_space_flags(%struct.btrfs_ref*) #1

declare dso_local %struct.btrfs_space_info* @btrfs_find_space_info(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @ASSERT(%struct.btrfs_space_info*) #1

declare dso_local i32 @percpu_counter_add_batch(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
