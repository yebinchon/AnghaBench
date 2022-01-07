; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_sysfs.c_btrfs_sysfs_add_block_group_type.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_sysfs.c_btrfs_sysfs_add_block_group_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_block_group_cache = type { i32, %struct.btrfs_fs_info*, %struct.btrfs_space_info* }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_space_info = type { i32**, i32 }
%struct.raid_kobject = type { i32, i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"couldn't alloc memory for raid level kobject\00", align 1
@btrfs_raid_ktype = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"failed to add kobject for block cache, ignoring\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_sysfs_add_block_group_type(%struct.btrfs_block_group_cache* %0) #0 {
  %2 = alloca %struct.btrfs_block_group_cache*, align 8
  %3 = alloca %struct.btrfs_fs_info*, align 8
  %4 = alloca %struct.btrfs_space_info*, align 8
  %5 = alloca %struct.raid_kobject*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.btrfs_block_group_cache* %0, %struct.btrfs_block_group_cache** %2, align 8
  %9 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %2, align 8
  %10 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %9, i32 0, i32 1
  %11 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  store %struct.btrfs_fs_info* %11, %struct.btrfs_fs_info** %3, align 8
  %12 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %2, align 8
  %13 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %12, i32 0, i32 2
  %14 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %13, align 8
  store %struct.btrfs_space_info* %14, %struct.btrfs_space_info** %4, align 8
  %15 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %2, align 8
  %16 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @btrfs_bg_flags_to_raid_index(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = call i32 (...) @memalloc_nofs_save()
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @GFP_NOFS, align 4
  %21 = call %struct.raid_kobject* @kzalloc(i32 8, i32 %20)
  store %struct.raid_kobject* %21, %struct.raid_kobject** %5, align 8
  %22 = load %struct.raid_kobject*, %struct.raid_kobject** %5, align 8
  %23 = icmp ne %struct.raid_kobject* %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @memalloc_nofs_restore(i32 %25)
  %27 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %2, align 8
  %28 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %27, i32 0, i32 1
  %29 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %28, align 8
  %30 = call i32 @btrfs_warn(%struct.btrfs_fs_info* %29, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %68

31:                                               ; preds = %1
  %32 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %2, align 8
  %33 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.raid_kobject*, %struct.raid_kobject** %5, align 8
  %36 = getelementptr inbounds %struct.raid_kobject, %struct.raid_kobject* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.raid_kobject*, %struct.raid_kobject** %5, align 8
  %38 = getelementptr inbounds %struct.raid_kobject, %struct.raid_kobject* %37, i32 0, i32 0
  %39 = call i32 @kobject_init(i32* %38, i32* @btrfs_raid_ktype)
  %40 = load %struct.raid_kobject*, %struct.raid_kobject** %5, align 8
  %41 = getelementptr inbounds %struct.raid_kobject, %struct.raid_kobject* %40, i32 0, i32 0
  %42 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %4, align 8
  %43 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %42, i32 0, i32 1
  %44 = load %struct.raid_kobject*, %struct.raid_kobject** %5, align 8
  %45 = getelementptr inbounds %struct.raid_kobject, %struct.raid_kobject* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @btrfs_bg_type_to_raid_name(i32 %46)
  %48 = call i32 @kobject_add(i32* %41, i32* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @memalloc_nofs_restore(i32 %49)
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %31
  %54 = load %struct.raid_kobject*, %struct.raid_kobject** %5, align 8
  %55 = getelementptr inbounds %struct.raid_kobject, %struct.raid_kobject* %54, i32 0, i32 0
  %56 = call i32 @kobject_put(i32* %55)
  %57 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %58 = call i32 @btrfs_warn(%struct.btrfs_fs_info* %57, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  br label %68

59:                                               ; preds = %31
  %60 = load %struct.raid_kobject*, %struct.raid_kobject** %5, align 8
  %61 = getelementptr inbounds %struct.raid_kobject, %struct.raid_kobject* %60, i32 0, i32 0
  %62 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %4, align 8
  %63 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %62, i32 0, i32 0
  %64 = load i32**, i32*** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32*, i32** %64, i64 %66
  store i32* %61, i32** %67, align 8
  br label %68

68:                                               ; preds = %59, %53, %24
  ret void
}

declare dso_local i32 @btrfs_bg_flags_to_raid_index(i32) #1

declare dso_local i32 @memalloc_nofs_save(...) #1

declare dso_local %struct.raid_kobject* @kzalloc(i32, i32) #1

declare dso_local i32 @memalloc_nofs_restore(i32) #1

declare dso_local i32 @btrfs_warn(%struct.btrfs_fs_info*, i8*) #1

declare dso_local i32 @kobject_init(i32*, i32*) #1

declare dso_local i32 @kobject_add(i32*, i32*, i8*, i32) #1

declare dso_local i32 @btrfs_bg_type_to_raid_name(i32) #1

declare dso_local i32 @kobject_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
