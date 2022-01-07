; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_free-space-tests.c_btrfs_test_free_space_cache.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_free-space-tests.c_btrfs_test_free_space_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_block_group_cache = type { i32 }
%struct.btrfs_root = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.btrfs_root* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"running btrfs free space cache tests\00", align 1
@TEST_ALLOC_FS_INFO = common dso_local global i32 0, align 4
@BITS_PER_BITMAP = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@TEST_ALLOC_BLOCK_GROUP = common dso_local global i32 0, align 4
@TEST_ALLOC_ROOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_test_free_space_cache(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_fs_info*, align 8
  %7 = alloca %struct.btrfs_block_group_cache*, align 8
  %8 = alloca %struct.btrfs_root*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.btrfs_root* null, %struct.btrfs_root** %8, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = call i32 @test_msg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.btrfs_fs_info* @btrfs_alloc_dummy_fs_info(i32 %13, i32 %14)
  store %struct.btrfs_fs_info* %15, %struct.btrfs_fs_info** %6, align 8
  %16 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %17 = icmp ne %struct.btrfs_fs_info* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @TEST_ALLOC_FS_INFO, align 4
  %20 = call i32 @test_std_err(i32 %19)
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %87

23:                                               ; preds = %2
  %24 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %25 = load i32, i32* @BITS_PER_BITMAP, align 4
  %26 = load i32, i32* %4, align 4
  %27 = mul nsw i32 %25, %26
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* @PAGE_SIZE, align 8
  %30 = add nsw i64 %28, %29
  %31 = call %struct.btrfs_block_group_cache* @btrfs_alloc_dummy_block_group(%struct.btrfs_fs_info* %24, i64 %30)
  store %struct.btrfs_block_group_cache* %31, %struct.btrfs_block_group_cache** %7, align 8
  %32 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %7, align 8
  %33 = icmp ne %struct.btrfs_block_group_cache* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %23
  %35 = load i32, i32* @TEST_ALLOC_BLOCK_GROUP, align 4
  %36 = call i32 @test_std_err(i32 %35)
  %37 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %38 = call i32 @btrfs_free_dummy_fs_info(%struct.btrfs_fs_info* %37)
  store i32 0, i32* %3, align 4
  br label %87

39:                                               ; preds = %23
  %40 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %41 = call %struct.btrfs_root* @btrfs_alloc_dummy_root(%struct.btrfs_fs_info* %40)
  store %struct.btrfs_root* %41, %struct.btrfs_root** %8, align 8
  %42 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %43 = call i64 @IS_ERR(%struct.btrfs_root* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load i32, i32* @TEST_ALLOC_ROOT, align 4
  %47 = call i32 @test_std_err(i32 %46)
  %48 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %49 = call i32 @PTR_ERR(%struct.btrfs_root* %48)
  store i32 %49, i32* %9, align 4
  br label %79

50:                                               ; preds = %39
  %51 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %52 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %53 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store %struct.btrfs_root* %51, %struct.btrfs_root** %55, align 8
  %56 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %7, align 8
  %57 = call i32 @test_extents(%struct.btrfs_block_group_cache* %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  br label %79

61:                                               ; preds = %50
  %62 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %7, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @test_bitmaps(%struct.btrfs_block_group_cache* %62, i32 %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %79

68:                                               ; preds = %61
  %69 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %7, align 8
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @test_bitmaps_and_extents(%struct.btrfs_block_group_cache* %69, i32 %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %79

75:                                               ; preds = %68
  %76 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %7, align 8
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @test_steal_space_from_bitmap_to_extent(%struct.btrfs_block_group_cache* %76, i32 %77)
  store i32 %78, i32* %9, align 4
  br label %79

79:                                               ; preds = %75, %74, %67, %60, %45
  %80 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %7, align 8
  %81 = call i32 @btrfs_free_dummy_block_group(%struct.btrfs_block_group_cache* %80)
  %82 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %83 = call i32 @btrfs_free_dummy_root(%struct.btrfs_root* %82)
  %84 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %85 = call i32 @btrfs_free_dummy_fs_info(%struct.btrfs_fs_info* %84)
  %86 = load i32, i32* %9, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %79, %34, %18
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @test_msg(i8*) #1

declare dso_local %struct.btrfs_fs_info* @btrfs_alloc_dummy_fs_info(i32, i32) #1

declare dso_local i32 @test_std_err(i32) #1

declare dso_local %struct.btrfs_block_group_cache* @btrfs_alloc_dummy_block_group(%struct.btrfs_fs_info*, i64) #1

declare dso_local i32 @btrfs_free_dummy_fs_info(%struct.btrfs_fs_info*) #1

declare dso_local %struct.btrfs_root* @btrfs_alloc_dummy_root(%struct.btrfs_fs_info*) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_root*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_root*) #1

declare dso_local i32 @test_extents(%struct.btrfs_block_group_cache*) #1

declare dso_local i32 @test_bitmaps(%struct.btrfs_block_group_cache*, i32) #1

declare dso_local i32 @test_bitmaps_and_extents(%struct.btrfs_block_group_cache*, i32) #1

declare dso_local i32 @test_steal_space_from_bitmap_to_extent(%struct.btrfs_block_group_cache*, i32) #1

declare dso_local i32 @btrfs_free_dummy_block_group(%struct.btrfs_block_group_cache*) #1

declare dso_local i32 @btrfs_free_dummy_root(%struct.btrfs_root*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
