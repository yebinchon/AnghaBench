; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_space-info.c_can_overcommit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_space-info.c_can_overcommit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_space_info = type { i32, i32 }

@BTRFS_BLOCK_GROUP_DATA = common dso_local global i32 0, align 4
@BTRFS_RESERVE_FLUSH_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_fs_info*, %struct.btrfs_space_info*, i32, i32, i32)* @can_overcommit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @can_overcommit(%struct.btrfs_fs_info* %0, %struct.btrfs_space_info* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.btrfs_fs_info*, align 8
  %8 = alloca %struct.btrfs_space_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %7, align 8
  store %struct.btrfs_space_info* %1, %struct.btrfs_space_info** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %8, align 8
  %17 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @BTRFS_BLOCK_GROUP_DATA, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %64

23:                                               ; preds = %5
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %28 = call i32 @btrfs_system_alloc_profile(%struct.btrfs_fs_info* %27)
  store i32 %28, i32* %12, align 4
  br label %32

29:                                               ; preds = %23
  %30 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %31 = call i32 @btrfs_metadata_alloc_profile(%struct.btrfs_fs_info* %30)
  store i32 %31, i32* %12, align 4
  br label %32

32:                                               ; preds = %29, %26
  %33 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %8, align 8
  %34 = call i32 @btrfs_space_info_used(%struct.btrfs_space_info* %33, i32 1)
  store i32 %34, i32* %14, align 4
  %35 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %36 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %35, i32 0, i32 0
  %37 = call i32 @atomic64_read(i32* %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @btrfs_bg_type_to_factor(i32 %38)
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %15, align 4
  %42 = call i32 @div_u64(i32 %40, i32 %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @BTRFS_RESERVE_FLUSH_ALL, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %32
  %47 = load i32, i32* %13, align 4
  %48 = ashr i32 %47, 3
  store i32 %48, i32* %13, align 4
  br label %52

49:                                               ; preds = %32
  %50 = load i32, i32* %13, align 4
  %51 = ashr i32 %50, 1
  store i32 %51, i32* %13, align 4
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %53, %54
  %56 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %8, align 8
  %57 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %13, align 4
  %60 = add nsw i32 %58, %59
  %61 = icmp slt i32 %55, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  store i32 1, i32* %6, align 4
  br label %64

63:                                               ; preds = %52
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %63, %62, %22
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local i32 @btrfs_system_alloc_profile(%struct.btrfs_fs_info*) #1

declare dso_local i32 @btrfs_metadata_alloc_profile(%struct.btrfs_fs_info*) #1

declare dso_local i32 @btrfs_space_info_used(%struct.btrfs_space_info*, i32) #1

declare dso_local i32 @atomic64_read(i32*) #1

declare dso_local i32 @btrfs_bg_type_to_factor(i32) #1

declare dso_local i32 @div_u64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
