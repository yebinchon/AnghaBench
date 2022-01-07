; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_free-space-tests.c_test_extents.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_free-space-tests.c_test_extents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_block_group_cache = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"running extent only tests\00", align 1
@SZ_4M = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"error adding initial extents %d\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"error removing extent %d\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"full remove left some lingering space\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"error adding half extent %d\00", align 1
@SZ_1M = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"error removing tail end %d\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"error removing front end %d\00", align 1
@SZ_2M = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"error removing middle piece %d\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"still have space at the front\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"still have space in the middle\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"still have space at the end\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_block_group_cache*)* @test_extents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_extents(%struct.btrfs_block_group_cache* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btrfs_block_group_cache*, align 8
  %4 = alloca i32, align 4
  store %struct.btrfs_block_group_cache* %0, %struct.btrfs_block_group_cache** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = call i32 @test_msg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %7 = load i32, i32* @SZ_4M, align 4
  %8 = call i32 @btrfs_add_free_space(%struct.btrfs_block_group_cache* %6, i32 0, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %102

15:                                               ; preds = %1
  %16 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %17 = load i32, i32* @SZ_4M, align 4
  %18 = call i32 @btrfs_remove_free_space(%struct.btrfs_block_group_cache* %16, i32 0, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load i32, i32* %4, align 4
  %23 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %102

25:                                               ; preds = %15
  %26 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %27 = load i32, i32* @SZ_4M, align 4
  %28 = call i64 @test_check_exists(%struct.btrfs_block_group_cache* %26, i32 0, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %102

32:                                               ; preds = %25
  %33 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %34 = load i32, i32* @SZ_4M, align 4
  %35 = call i32 @btrfs_add_free_space(%struct.btrfs_block_group_cache* %33, i32 0, i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i32, i32* %4, align 4
  %40 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %102

42:                                               ; preds = %32
  %43 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %44 = load i32, i32* @SZ_1M, align 4
  %45 = mul nsw i32 3, %44
  %46 = load i32, i32* @SZ_1M, align 4
  %47 = call i32 @btrfs_remove_free_space(%struct.btrfs_block_group_cache* %43, i32 %45, i32 %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = load i32, i32* %4, align 4
  %52 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %2, align 4
  br label %102

54:                                               ; preds = %42
  %55 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %56 = load i32, i32* @SZ_1M, align 4
  %57 = call i32 @btrfs_remove_free_space(%struct.btrfs_block_group_cache* %55, i32 0, i32 %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load i32, i32* %4, align 4
  %62 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %2, align 4
  br label %102

64:                                               ; preds = %54
  %65 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %66 = load i32, i32* @SZ_2M, align 4
  %67 = call i32 @btrfs_remove_free_space(%struct.btrfs_block_group_cache* %65, i32 %66, i32 4096)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load i32, i32* %4, align 4
  %72 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %4, align 4
  store i32 %73, i32* %2, align 4
  br label %102

74:                                               ; preds = %64
  %75 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %76 = load i32, i32* @SZ_1M, align 4
  %77 = call i64 @test_check_exists(%struct.btrfs_block_group_cache* %75, i32 0, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %102

81:                                               ; preds = %74
  %82 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %83 = load i32, i32* @SZ_2M, align 4
  %84 = call i64 @test_check_exists(%struct.btrfs_block_group_cache* %82, i32 %83, i32 4096)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %102

88:                                               ; preds = %81
  %89 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %90 = load i32, i32* @SZ_1M, align 4
  %91 = mul nsw i32 3, %90
  %92 = load i32, i32* @SZ_1M, align 4
  %93 = call i64 @test_check_exists(%struct.btrfs_block_group_cache* %89, i32 %91, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %88
  %96 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %102

97:                                               ; preds = %88
  %98 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %99 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @__btrfs_remove_free_space_cache(i32 %100)
  store i32 0, i32* %2, align 4
  br label %102

102:                                              ; preds = %97, %95, %86, %79, %70, %60, %50, %38, %30, %21, %11
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @test_msg(i8*) #1

declare dso_local i32 @btrfs_add_free_space(%struct.btrfs_block_group_cache*, i32, i32) #1

declare dso_local i32 @test_err(i8*, ...) #1

declare dso_local i32 @btrfs_remove_free_space(%struct.btrfs_block_group_cache*, i32, i32) #1

declare dso_local i64 @test_check_exists(%struct.btrfs_block_group_cache*, i32, i32) #1

declare dso_local i32 @__btrfs_remove_free_space_cache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
