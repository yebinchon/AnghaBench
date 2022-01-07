; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_btrfs-tests.c_btrfs_run_sanity_tests.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_btrfs-tests.c_btrfs_run_sanity_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i32 0, align 4
@BTRFS_MAX_METADATA_BLOCKSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"BTRFS: selftest: sectorsize: %u  nodesize: %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_run_sanity_tests() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [1 x i32], align 4
  %7 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %8 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %8, i32* %7, align 4
  %9 = call i32 (...) @btrfs_init_test_fs()
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = load i32, i32* %2, align 4
  store i32 %13, i32* %1, align 4
  br label %88

14:                                               ; preds = %0
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %80, %14
  %16 = load i32, i32* %3, align 4
  %17 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %18 = call i32 @ARRAY_SIZE(i32* %17)
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %83

20:                                               ; preds = %15
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %76, %20
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @BTRFS_MAX_METADATA_BLOCKSIZE, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %79

30:                                               ; preds = %26
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @pr_info(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @btrfs_test_free_space_cache(i32 %34, i32 %35)
  store i32 %36, i32* %2, align 4
  %37 = load i32, i32* %2, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %85

40:                                               ; preds = %30
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @btrfs_test_extent_buffer_operations(i32 %41, i32 %42)
  store i32 %43, i32* %2, align 4
  %44 = load i32, i32* %2, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %85

47:                                               ; preds = %40
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @btrfs_test_extent_io(i32 %48, i32 %49)
  store i32 %50, i32* %2, align 4
  %51 = load i32, i32* %2, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %85

54:                                               ; preds = %47
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @btrfs_test_inodes(i32 %55, i32 %56)
  store i32 %57, i32* %2, align 4
  %58 = load i32, i32* %2, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %85

61:                                               ; preds = %54
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @btrfs_test_qgroups(i32 %62, i32 %63)
  store i32 %64, i32* %2, align 4
  %65 = load i32, i32* %2, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %85

68:                                               ; preds = %61
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @btrfs_test_free_space_tree(i32 %69, i32 %70)
  store i32 %71, i32* %2, align 4
  %72 = load i32, i32* %2, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %85

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %5, align 4
  %78 = shl i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %26

79:                                               ; preds = %26
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %3, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %3, align 4
  br label %15

83:                                               ; preds = %15
  %84 = call i32 (...) @btrfs_test_extent_map()
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %83, %74, %67, %60, %53, %46, %39
  %86 = call i32 (...) @btrfs_destroy_test_fs()
  %87 = load i32, i32* %2, align 4
  store i32 %87, i32* %1, align 4
  br label %88

88:                                               ; preds = %85, %12
  %89 = load i32, i32* %1, align 4
  ret i32 %89
}

declare dso_local i32 @btrfs_init_test_fs(...) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @btrfs_test_free_space_cache(i32, i32) #1

declare dso_local i32 @btrfs_test_extent_buffer_operations(i32, i32) #1

declare dso_local i32 @btrfs_test_extent_io(i32, i32) #1

declare dso_local i32 @btrfs_test_inodes(i32, i32) #1

declare dso_local i32 @btrfs_test_qgroups(i32, i32) #1

declare dso_local i32 @btrfs_test_free_space_tree(i32, i32) #1

declare dso_local i32 @btrfs_test_extent_map(...) #1

declare dso_local i32 @btrfs_destroy_test_fs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
