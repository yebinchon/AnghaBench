; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_free-space-tests.c_test_bitmaps.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_free-space-tests.c_test_bitmaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_block_group_cache = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"running bitmap only tests\00", align 1
@SZ_4M = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"couldn't create a bitmap entry %d\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"error removing bitmap full range %d\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"left some space in bitmap\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"couldn't add to our bitmap entry %d\00", align 1
@SZ_1M = common dso_local global i64 0, align 8
@SZ_2M = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [32 x i8] c"couldn't remove middle chunk %d\00", align 1
@BITS_PER_BITMAP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [49 x i8] c"couldn't add space that straddles two bitmaps %d\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"couldn't remove overlapping space %d\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"left some space when removing overlapping\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_block_group_cache*, i32)* @test_bitmaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_bitmaps(%struct.btrfs_block_group_cache* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_block_group_cache*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.btrfs_block_group_cache* %0, %struct.btrfs_block_group_cache** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = call i32 @test_msg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %10 = load i64, i64* @SZ_4M, align 8
  %11 = call i32 @test_add_free_space_entry(%struct.btrfs_block_group_cache* %9, i64 0, i64 %10, i32 1)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  %16 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %3, align 4
  br label %101

18:                                               ; preds = %2
  %19 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %20 = load i64, i64* @SZ_4M, align 8
  %21 = call i32 @btrfs_remove_free_space(%struct.btrfs_block_group_cache* %19, i64 0, i64 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i32, i32* %7, align 4
  %26 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %101

28:                                               ; preds = %18
  %29 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %30 = load i64, i64* @SZ_4M, align 8
  %31 = call i64 @test_check_exists(%struct.btrfs_block_group_cache* %29, i64 0, i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %101

35:                                               ; preds = %28
  %36 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %37 = load i64, i64* @SZ_4M, align 8
  %38 = call i32 @test_add_free_space_entry(%struct.btrfs_block_group_cache* %36, i64 0, i64 %37, i32 1)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i32, i32* %7, align 4
  %43 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %101

45:                                               ; preds = %35
  %46 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %47 = load i64, i64* @SZ_1M, align 8
  %48 = load i64, i64* @SZ_2M, align 8
  %49 = call i32 @btrfs_remove_free_space(%struct.btrfs_block_group_cache* %46, i64 %47, i64 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load i32, i32* %7, align 4
  %54 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %101

56:                                               ; preds = %45
  %57 = load i32, i32* @BITS_PER_BITMAP, align 4
  %58 = load i32, i32* %5, align 4
  %59 = mul nsw i32 %57, %58
  %60 = sext i32 %59 to i64
  store i64 %60, i64* %6, align 8
  %61 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %62 = load i64, i64* %6, align 8
  %63 = load i64, i64* @SZ_2M, align 8
  %64 = sub nsw i64 %62, %63
  %65 = load i64, i64* @SZ_4M, align 8
  %66 = call i32 @test_add_free_space_entry(%struct.btrfs_block_group_cache* %61, i64 %64, i64 %65, i32 1)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %56
  %70 = load i32, i32* %7, align 4
  %71 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %3, align 4
  br label %101

73:                                               ; preds = %56
  %74 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %75 = load i64, i64* %6, align 8
  %76 = load i64, i64* @SZ_1M, align 8
  %77 = sub nsw i64 %75, %76
  %78 = load i64, i64* @SZ_2M, align 8
  %79 = call i32 @btrfs_remove_free_space(%struct.btrfs_block_group_cache* %74, i64 %77, i64 %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %73
  %83 = load i32, i32* %7, align 4
  %84 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %3, align 4
  br label %101

86:                                               ; preds = %73
  %87 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %88 = load i64, i64* %6, align 8
  %89 = load i64, i64* @SZ_1M, align 8
  %90 = sub nsw i64 %88, %89
  %91 = load i64, i64* @SZ_2M, align 8
  %92 = call i64 @test_check_exists(%struct.btrfs_block_group_cache* %87, i64 %90, i64 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %86
  %95 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %101

96:                                               ; preds = %86
  %97 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %98 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @__btrfs_remove_free_space_cache(i32 %99)
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %96, %94, %82, %69, %52, %41, %33, %24, %14
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @test_msg(i8*) #1

declare dso_local i32 @test_add_free_space_entry(%struct.btrfs_block_group_cache*, i64, i64, i32) #1

declare dso_local i32 @test_err(i8*, ...) #1

declare dso_local i32 @btrfs_remove_free_space(%struct.btrfs_block_group_cache*, i64, i64) #1

declare dso_local i64 @test_check_exists(%struct.btrfs_block_group_cache*, i64, i64) #1

declare dso_local i32 @__btrfs_remove_free_space_cache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
