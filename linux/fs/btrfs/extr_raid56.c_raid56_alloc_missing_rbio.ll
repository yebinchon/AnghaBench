; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_raid56.c_raid56_alloc_missing_rbio.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_raid56.c_raid56_alloc_missing_rbio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_raid_bio = type { i32, i32, i32, i32 }
%struct.btrfs_fs_info = type { i32 }
%struct.bio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.btrfs_bio = type { i32 }

@BTRFS_RBIO_REBUILD_MISSING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.btrfs_raid_bio* @raid56_alloc_missing_rbio(%struct.btrfs_fs_info* %0, %struct.bio* %1, %struct.btrfs_bio* %2, i32 %3) #0 {
  %5 = alloca %struct.btrfs_raid_bio*, align 8
  %6 = alloca %struct.btrfs_fs_info*, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca %struct.btrfs_bio*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.btrfs_raid_bio*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %6, align 8
  store %struct.bio* %1, %struct.bio** %7, align 8
  store %struct.btrfs_bio* %2, %struct.btrfs_bio** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %12 = load %struct.btrfs_bio*, %struct.btrfs_bio** %8, align 8
  %13 = load i32, i32* %9, align 4
  %14 = call %struct.btrfs_raid_bio* @alloc_rbio(%struct.btrfs_fs_info* %11, %struct.btrfs_bio* %12, i32 %13)
  store %struct.btrfs_raid_bio* %14, %struct.btrfs_raid_bio** %10, align 8
  %15 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %10, align 8
  %16 = call i64 @IS_ERR(%struct.btrfs_raid_bio* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store %struct.btrfs_raid_bio* null, %struct.btrfs_raid_bio** %5, align 8
  br label %52

19:                                               ; preds = %4
  %20 = load i32, i32* @BTRFS_RBIO_REBUILD_MISSING, align 4
  %21 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %10, align 8
  %22 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %10, align 8
  %24 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %23, i32 0, i32 2
  %25 = load %struct.bio*, %struct.bio** %7, align 8
  %26 = call i32 @bio_list_add(i32* %24, %struct.bio* %25)
  %27 = load %struct.bio*, %struct.bio** %7, align 8
  %28 = getelementptr inbounds %struct.bio, %struct.bio* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @ASSERT(i32 %33)
  %35 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %10, align 8
  %36 = load %struct.bio*, %struct.bio** %7, align 8
  %37 = call i32 @find_logical_bio_stripe(%struct.btrfs_raid_bio* %35, %struct.bio* %36)
  %38 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %10, align 8
  %39 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %10, align 8
  %41 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %48

44:                                               ; preds = %19
  %45 = call i32 (...) @BUG()
  %46 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %10, align 8
  %47 = call i32 @kfree(%struct.btrfs_raid_bio* %46)
  store %struct.btrfs_raid_bio* null, %struct.btrfs_raid_bio** %5, align 8
  br label %52

48:                                               ; preds = %19
  %49 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %10, align 8
  %50 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %49, i32 0, i32 1
  store i32 1, i32* %50, align 4
  %51 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %10, align 8
  store %struct.btrfs_raid_bio* %51, %struct.btrfs_raid_bio** %5, align 8
  br label %52

52:                                               ; preds = %48, %44, %18
  %53 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %5, align 8
  ret %struct.btrfs_raid_bio* %53
}

declare dso_local %struct.btrfs_raid_bio* @alloc_rbio(%struct.btrfs_fs_info*, %struct.btrfs_bio*, i32) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_raid_bio*) #1

declare dso_local i32 @bio_list_add(i32*, %struct.bio*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @find_logical_bio_stripe(%struct.btrfs_raid_bio*, %struct.bio*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @kfree(%struct.btrfs_raid_bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
