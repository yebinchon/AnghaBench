; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_free-space-tree-tests.c_btrfs_test_free_space_tree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_free-space-tree-tests.c_btrfs_test_free_space_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_empty_block_group = common dso_local global i32 0, align 4
@test_remove_all = common dso_local global i32 0, align 4
@test_remove_beginning = common dso_local global i32 0, align 4
@test_remove_end = common dso_local global i32 0, align 4
@test_remove_middle = common dso_local global i32 0, align 4
@test_merge_left = common dso_local global i32 0, align 4
@test_merge_right = common dso_local global i32 0, align 4
@test_merge_both = common dso_local global i32 0, align 4
@test_merge_none = common dso_local global i32 0, align 4
@BTRFS_FREE_SPACE_BITMAP_BITS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"running free space tree tests\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_test_free_space_tree(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [9 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0
  %11 = load i32, i32* @test_empty_block_group, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds i32, i32* %10, i64 1
  %13 = load i32, i32* @test_remove_all, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds i32, i32* %12, i64 1
  %15 = load i32, i32* @test_remove_beginning, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds i32, i32* %14, i64 1
  %17 = load i32, i32* @test_remove_end, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds i32, i32* %16, i64 1
  %19 = load i32, i32* @test_remove_middle, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds i32, i32* %18, i64 1
  %21 = load i32, i32* @test_merge_left, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds i32, i32* %20, i64 1
  %23 = load i32, i32* @test_merge_right, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds i32, i32* %22, i64 1
  %25 = load i32, i32* @test_merge_both, align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds i32, i32* %24, i64 1
  %27 = load i32, i32* @test_merge_none, align 4
  store i32 %27, i32* %26, align 4
  store i32 0, i32* %7, align 4
  %28 = load i32, i32* @BTRFS_FREE_SPACE_BITMAP_BITS, align 4
  %29 = load i32, i32* @PAGE_SIZE, align 4
  %30 = mul nsw i32 %28, %29
  store i32 %30, i32* %6, align 4
  %31 = call i32 @test_msg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %64, %2
  %33 = load i32, i32* %8, align 4
  %34 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0
  %35 = call i32 @ARRAY_SIZE(i32* %34)
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %67

37:                                               ; preds = %32
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @run_test_both_formats(i32 %41, i32 %42, i32 %43, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %48, %37
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @run_test_both_formats(i32 %54, i32 %55, i32 %56, i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %50
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %61, %50
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %32

67:                                               ; preds = %32
  %68 = load i32, i32* %7, align 4
  ret i32 %68
}

declare dso_local i32 @test_msg(i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @run_test_both_formats(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
