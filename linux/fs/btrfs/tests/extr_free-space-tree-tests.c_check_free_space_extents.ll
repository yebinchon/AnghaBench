; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_free-space-tree-tests.c_check_free_space_extents.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_free-space-tree-tests.c_check_free_space_extents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_block_group_cache = type { i32 }
%struct.btrfs_path = type { i32* }
%struct.free_space_extent = type { i32 }
%struct.btrfs_free_space_info = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"could not find free space info\00", align 1
@BTRFS_FREE_SPACE_USING_BITMAPS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"could not convert to extents\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"could not convert to bitmaps\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.btrfs_fs_info*, %struct.btrfs_block_group_cache*, %struct.btrfs_path*, %struct.free_space_extent*, i32)* @check_free_space_extents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_free_space_extents(%struct.btrfs_trans_handle* %0, %struct.btrfs_fs_info* %1, %struct.btrfs_block_group_cache* %2, %struct.btrfs_path* %3, %struct.free_space_extent* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_trans_handle*, align 8
  %9 = alloca %struct.btrfs_fs_info*, align 8
  %10 = alloca %struct.btrfs_block_group_cache*, align 8
  %11 = alloca %struct.btrfs_path*, align 8
  %12 = alloca %struct.free_space_extent*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.btrfs_free_space_info*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %8, align 8
  store %struct.btrfs_fs_info* %1, %struct.btrfs_fs_info** %9, align 8
  store %struct.btrfs_block_group_cache* %2, %struct.btrfs_block_group_cache** %10, align 8
  store %struct.btrfs_path* %3, %struct.btrfs_path** %11, align 8
  store %struct.free_space_extent* %4, %struct.free_space_extent** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %18 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %10, align 8
  %19 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %20 = call %struct.btrfs_free_space_info* @search_free_space_info(%struct.btrfs_trans_handle* %17, %struct.btrfs_block_group_cache* %18, %struct.btrfs_path* %19, i32 0)
  store %struct.btrfs_free_space_info* %20, %struct.btrfs_free_space_info** %14, align 8
  %21 = load %struct.btrfs_free_space_info*, %struct.btrfs_free_space_info** %14, align 8
  %22 = call i64 @IS_ERR(%struct.btrfs_free_space_info* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %6
  %25 = call i32 @test_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %27 = call i32 @btrfs_release_path(%struct.btrfs_path* %26)
  %28 = load %struct.btrfs_free_space_info*, %struct.btrfs_free_space_info** %14, align 8
  %29 = call i32 @PTR_ERR(%struct.btrfs_free_space_info* %28)
  store i32 %29, i32* %7, align 4
  br label %86

30:                                               ; preds = %6
  %31 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %32 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.btrfs_free_space_info*, %struct.btrfs_free_space_info** %14, align 8
  %37 = call i32 @btrfs_free_space_flags(i32 %35, %struct.btrfs_free_space_info* %36)
  store i32 %37, i32* %15, align 4
  %38 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %39 = call i32 @btrfs_release_path(%struct.btrfs_path* %38)
  %40 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %41 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %42 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %10, align 8
  %43 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %44 = load %struct.free_space_extent*, %struct.free_space_extent** %12, align 8
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @__check_free_space_extents(%struct.btrfs_trans_handle* %40, %struct.btrfs_fs_info* %41, %struct.btrfs_block_group_cache* %42, %struct.btrfs_path* %43, %struct.free_space_extent* %44, i32 %45)
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* %16, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %30
  %50 = load i32, i32* %16, align 4
  store i32 %50, i32* %7, align 4
  br label %86

51:                                               ; preds = %30
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* @BTRFS_FREE_SPACE_USING_BITMAPS, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %51
  %57 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %58 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %10, align 8
  %59 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %60 = call i32 @convert_free_space_to_extents(%struct.btrfs_trans_handle* %57, %struct.btrfs_block_group_cache* %58, %struct.btrfs_path* %59)
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %16, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = call i32 @test_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* %16, align 4
  store i32 %65, i32* %7, align 4
  br label %86

66:                                               ; preds = %56
  br label %78

67:                                               ; preds = %51
  %68 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %69 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %10, align 8
  %70 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %71 = call i32 @convert_free_space_to_bitmaps(%struct.btrfs_trans_handle* %68, %struct.btrfs_block_group_cache* %69, %struct.btrfs_path* %70)
  store i32 %71, i32* %16, align 4
  %72 = load i32, i32* %16, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = call i32 @test_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %76 = load i32, i32* %16, align 4
  store i32 %76, i32* %7, align 4
  br label %86

77:                                               ; preds = %67
  br label %78

78:                                               ; preds = %77, %66
  %79 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %80 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %81 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %10, align 8
  %82 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %83 = load %struct.free_space_extent*, %struct.free_space_extent** %12, align 8
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @__check_free_space_extents(%struct.btrfs_trans_handle* %79, %struct.btrfs_fs_info* %80, %struct.btrfs_block_group_cache* %81, %struct.btrfs_path* %82, %struct.free_space_extent* %83, i32 %84)
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %78, %74, %63, %49, %24
  %87 = load i32, i32* %7, align 4
  ret i32 %87
}

declare dso_local %struct.btrfs_free_space_info* @search_free_space_info(%struct.btrfs_trans_handle*, %struct.btrfs_block_group_cache*, %struct.btrfs_path*, i32) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_free_space_info*) #1

declare dso_local i32 @test_err(i8*) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_free_space_info*) #1

declare dso_local i32 @btrfs_free_space_flags(i32, %struct.btrfs_free_space_info*) #1

declare dso_local i32 @__check_free_space_extents(%struct.btrfs_trans_handle*, %struct.btrfs_fs_info*, %struct.btrfs_block_group_cache*, %struct.btrfs_path*, %struct.free_space_extent*, i32) #1

declare dso_local i32 @convert_free_space_to_extents(%struct.btrfs_trans_handle*, %struct.btrfs_block_group_cache*, %struct.btrfs_path*) #1

declare dso_local i32 @convert_free_space_to_bitmaps(%struct.btrfs_trans_handle*, %struct.btrfs_block_group_cache*, %struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
