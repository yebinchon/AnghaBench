; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_extent-map-tests.c_btrfs_test_extent_map.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_extent-map-tests.c_btrfs_test_extent_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.extent_map_tree = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"running extent_map tests\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@TEST_ALLOC_FS_INFO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_test_extent_map() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.btrfs_fs_info*, align 8
  %3 = alloca %struct.extent_map_tree*, align 8
  %4 = alloca i32, align 4
  store %struct.btrfs_fs_info* null, %struct.btrfs_fs_info** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = call i32 @test_msg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @PAGE_SIZE, align 4
  %7 = load i32, i32* @PAGE_SIZE, align 4
  %8 = call %struct.btrfs_fs_info* @btrfs_alloc_dummy_fs_info(i32 %6, i32 %7)
  store %struct.btrfs_fs_info* %8, %struct.btrfs_fs_info** %2, align 8
  %9 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %10 = icmp ne %struct.btrfs_fs_info* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %0
  %12 = load i32, i32* @TEST_ALLOC_FS_INFO, align 4
  %13 = call i32 @test_std_err(i32 %12)
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %1, align 4
  br label %57

16:                                               ; preds = %0
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.extent_map_tree* @kzalloc(i32 4, i32 %17)
  store %struct.extent_map_tree* %18, %struct.extent_map_tree** %3, align 8
  %19 = load %struct.extent_map_tree*, %struct.extent_map_tree** %3, align 8
  %20 = icmp ne %struct.extent_map_tree* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %51

24:                                               ; preds = %16
  %25 = load %struct.extent_map_tree*, %struct.extent_map_tree** %3, align 8
  %26 = call i32 @extent_map_tree_init(%struct.extent_map_tree* %25)
  %27 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %28 = load %struct.extent_map_tree*, %struct.extent_map_tree** %3, align 8
  %29 = call i32 @test_case_1(%struct.btrfs_fs_info* %27, %struct.extent_map_tree* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %51

33:                                               ; preds = %24
  %34 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %35 = load %struct.extent_map_tree*, %struct.extent_map_tree** %3, align 8
  %36 = call i32 @test_case_2(%struct.btrfs_fs_info* %34, %struct.extent_map_tree* %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %51

40:                                               ; preds = %33
  %41 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %42 = load %struct.extent_map_tree*, %struct.extent_map_tree** %3, align 8
  %43 = call i32 @test_case_3(%struct.btrfs_fs_info* %41, %struct.extent_map_tree* %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %51

47:                                               ; preds = %40
  %48 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %49 = load %struct.extent_map_tree*, %struct.extent_map_tree** %3, align 8
  %50 = call i32 @test_case_4(%struct.btrfs_fs_info* %48, %struct.extent_map_tree* %49)
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %47, %46, %39, %32, %21
  %52 = load %struct.extent_map_tree*, %struct.extent_map_tree** %3, align 8
  %53 = call i32 @kfree(%struct.extent_map_tree* %52)
  %54 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %55 = call i32 @btrfs_free_dummy_fs_info(%struct.btrfs_fs_info* %54)
  %56 = load i32, i32* %4, align 4
  store i32 %56, i32* %1, align 4
  br label %57

57:                                               ; preds = %51, %11
  %58 = load i32, i32* %1, align 4
  ret i32 %58
}

declare dso_local i32 @test_msg(i8*) #1

declare dso_local %struct.btrfs_fs_info* @btrfs_alloc_dummy_fs_info(i32, i32) #1

declare dso_local i32 @test_std_err(i32) #1

declare dso_local %struct.extent_map_tree* @kzalloc(i32, i32) #1

declare dso_local i32 @extent_map_tree_init(%struct.extent_map_tree*) #1

declare dso_local i32 @test_case_1(%struct.btrfs_fs_info*, %struct.extent_map_tree*) #1

declare dso_local i32 @test_case_2(%struct.btrfs_fs_info*, %struct.extent_map_tree*) #1

declare dso_local i32 @test_case_3(%struct.btrfs_fs_info*, %struct.extent_map_tree*) #1

declare dso_local i32 @test_case_4(%struct.btrfs_fs_info*, %struct.extent_map_tree*) #1

declare dso_local i32 @kfree(%struct.extent_map_tree*) #1

declare dso_local i32 @btrfs_free_dummy_fs_info(%struct.btrfs_fs_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
