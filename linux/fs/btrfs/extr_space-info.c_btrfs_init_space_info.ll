; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_space-info.c_btrfs_init_space_info.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_space-info.c_btrfs_init_space_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { %struct.btrfs_super_block* }
%struct.btrfs_super_block = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@BTRFS_FEATURE_INCOMPAT_MIXED_GROUPS = common dso_local global i32 0, align 4
@BTRFS_BLOCK_GROUP_SYSTEM = common dso_local global i32 0, align 4
@BTRFS_BLOCK_GROUP_METADATA = common dso_local global i32 0, align 4
@BTRFS_BLOCK_GROUP_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_init_space_info(%struct.btrfs_fs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btrfs_fs_info*, align 8
  %4 = alloca %struct.btrfs_super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %3, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %10 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %9, i32 0, i32 0
  %11 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %10, align 8
  store %struct.btrfs_super_block* %11, %struct.btrfs_super_block** %4, align 8
  %12 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %4, align 8
  %13 = call i32 @btrfs_super_root(%struct.btrfs_super_block* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %60

18:                                               ; preds = %1
  %19 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %4, align 8
  %20 = call i32 @btrfs_super_incompat_flags(%struct.btrfs_super_block* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @BTRFS_FEATURE_INCOMPAT_MIXED_GROUPS, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 1, i32* %7, align 4
  br label %26

26:                                               ; preds = %25, %18
  %27 = load i32, i32* @BTRFS_BLOCK_GROUP_SYSTEM, align 4
  store i32 %27, i32* %6, align 4
  %28 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @create_space_info(%struct.btrfs_fs_info* %28, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %58

34:                                               ; preds = %26
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load i32, i32* @BTRFS_BLOCK_GROUP_METADATA, align 4
  %39 = load i32, i32* @BTRFS_BLOCK_GROUP_DATA, align 4
  %40 = or i32 %38, %39
  store i32 %40, i32* %6, align 4
  %41 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @create_space_info(%struct.btrfs_fs_info* %41, i32 %42)
  store i32 %43, i32* %8, align 4
  br label %57

44:                                               ; preds = %34
  %45 = load i32, i32* @BTRFS_BLOCK_GROUP_METADATA, align 4
  store i32 %45, i32* %6, align 4
  %46 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @create_space_info(%struct.btrfs_fs_info* %46, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %58

52:                                               ; preds = %44
  %53 = load i32, i32* @BTRFS_BLOCK_GROUP_DATA, align 4
  store i32 %53, i32* %6, align 4
  %54 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @create_space_info(%struct.btrfs_fs_info* %54, i32 %55)
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %52, %37
  br label %58

58:                                               ; preds = %57, %51, %33
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %58, %15
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @btrfs_super_root(%struct.btrfs_super_block*) #1

declare dso_local i32 @btrfs_super_incompat_flags(%struct.btrfs_super_block*) #1

declare dso_local i32 @create_space_info(%struct.btrfs_fs_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
