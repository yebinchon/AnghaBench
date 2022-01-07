; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_space-info.c_priority_reclaim_metadata_space.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_space-info.c_priority_reclaim_metadata_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_space_info = type { i32 }
%struct.reserve_ticket = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_fs_info*, %struct.btrfs_space_info*, %struct.reserve_ticket*, i32*, i32)* @priority_reclaim_metadata_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @priority_reclaim_metadata_space(%struct.btrfs_fs_info* %0, %struct.btrfs_space_info* %1, %struct.reserve_ticket* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.btrfs_fs_info*, align 8
  %7 = alloca %struct.btrfs_space_info*, align 8
  %8 = alloca %struct.reserve_ticket*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %6, align 8
  store %struct.btrfs_space_info* %1, %struct.btrfs_space_info** %7, align 8
  store %struct.reserve_ticket* %2, %struct.reserve_ticket** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %7, align 8
  %14 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %17 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %7, align 8
  %18 = call i32 @btrfs_calc_reclaim_metadata_size(%struct.btrfs_fs_info* %16, %struct.btrfs_space_info* %17, i32 0)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %5
  %22 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %7, align 8
  %23 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %22, i32 0, i32 0
  %24 = call i32 @spin_unlock(i32* %23)
  br label %60

25:                                               ; preds = %5
  %26 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %7, align 8
  %27 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %26, i32 0, i32 0
  %28 = call i32 @spin_unlock(i32* %27)
  store i32 0, i32* %12, align 4
  br label %29

29:                                               ; preds = %56, %25
  %30 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %31 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %7, align 8
  %32 = load i32, i32* %11, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @flush_space(%struct.btrfs_fs_info* %30, %struct.btrfs_space_info* %31, i32 %32, i32 %37)
  %39 = load i32, i32* %12, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %12, align 4
  %41 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %7, align 8
  %42 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %41, i32 0, i32 0
  %43 = call i32 @spin_lock(i32* %42)
  %44 = load %struct.reserve_ticket*, %struct.reserve_ticket** %8, align 8
  %45 = getelementptr inbounds %struct.reserve_ticket, %struct.reserve_ticket* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %29
  %49 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %7, align 8
  %50 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %49, i32 0, i32 0
  %51 = call i32 @spin_unlock(i32* %50)
  br label %60

52:                                               ; preds = %29
  %53 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %7, align 8
  %54 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %53, i32 0, i32 0
  %55 = call i32 @spin_unlock(i32* %54)
  br label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %29, label %60

60:                                               ; preds = %21, %48, %56
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @btrfs_calc_reclaim_metadata_size(%struct.btrfs_fs_info*, %struct.btrfs_space_info*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @flush_space(%struct.btrfs_fs_info*, %struct.btrfs_space_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
