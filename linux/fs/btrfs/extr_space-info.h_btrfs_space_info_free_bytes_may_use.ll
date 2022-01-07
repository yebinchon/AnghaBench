; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_space-info.h_btrfs_space_info_free_bytes_may_use.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_space-info.h_btrfs_space_info_free_bytes_may_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_space_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_fs_info*, %struct.btrfs_space_info*, i32)* @btrfs_space_info_free_bytes_may_use to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btrfs_space_info_free_bytes_may_use(%struct.btrfs_fs_info* %0, %struct.btrfs_space_info* %1, i32 %2) #0 {
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca %struct.btrfs_space_info*, align 8
  %6 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %4, align 8
  store %struct.btrfs_space_info* %1, %struct.btrfs_space_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %5, align 8
  %8 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %7, i32 0, i32 0
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %11 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sub nsw i32 0, %12
  %14 = call i32 @btrfs_space_info_update_bytes_may_use(%struct.btrfs_fs_info* %10, %struct.btrfs_space_info* %11, i32 %13)
  %15 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %16 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %5, align 8
  %17 = call i32 @btrfs_try_granting_tickets(%struct.btrfs_fs_info* %15, %struct.btrfs_space_info* %16)
  %18 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %5, align 8
  %19 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %18, i32 0, i32 0
  %20 = call i32 @spin_unlock(i32* %19)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @btrfs_space_info_update_bytes_may_use(%struct.btrfs_fs_info*, %struct.btrfs_space_info*, i32) #1

declare dso_local i32 @btrfs_try_granting_tickets(%struct.btrfs_fs_info*, %struct.btrfs_space_info*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
