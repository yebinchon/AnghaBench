; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_extent-io-tests.c_test_eb_bitmaps.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_extent-io-tests.c_test_eb_bitmaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.extent_buffer = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"running extent buffer bitmap tests\00", align 1
@BTRFS_MAX_METADATA_BLOCKSIZE = common dso_local global i32 0, align 4
@TEST_ALLOC_FS_INFO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"couldn't allocate test bitmap\00", align 1
@TEST_ALLOC_ROOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @test_eb_bitmaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_eb_bitmaps(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_fs_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.extent_buffer*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64* null, i64** %8, align 8
  store %struct.extent_buffer* null, %struct.extent_buffer** %9, align 8
  %11 = call i32 @test_msg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @BTRFS_MAX_METADATA_BLOCKSIZE, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = mul nsw i32 %16, 4
  br label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  br label %20

20:                                               ; preds = %18, %15
  %21 = phi i32 [ %17, %15 ], [ %19, %18 ]
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call %struct.btrfs_fs_info* @btrfs_alloc_dummy_fs_info(i64 %23, i64 %24)
  store %struct.btrfs_fs_info* %25, %struct.btrfs_fs_info** %6, align 8
  %26 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %27 = icmp ne %struct.btrfs_fs_info* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* @TEST_ALLOC_FS_INFO, align 4
  %30 = call i32 @test_std_err(i32 %29)
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %90

33:                                               ; preds = %20
  %34 = load i64, i64* %7, align 8
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i64* @kmalloc(i64 %34, i32 %35)
  store i64* %36, i64** %8, align 8
  %37 = load i64*, i64** %8, align 8
  %38 = icmp ne i64* %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %33
  %40 = call i32 @test_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %10, align 4
  br label %82

43:                                               ; preds = %33
  %44 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call %struct.extent_buffer* @__alloc_dummy_extent_buffer(%struct.btrfs_fs_info* %44, i32 0, i64 %45)
  store %struct.extent_buffer* %46, %struct.extent_buffer** %9, align 8
  %47 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %48 = icmp ne %struct.extent_buffer* %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* @TEST_ALLOC_ROOT, align 4
  %51 = call i32 @test_std_err(i32 %50)
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %10, align 4
  br label %82

54:                                               ; preds = %43
  %55 = load i64*, i64** %8, align 8
  %56 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @__test_eb_bitmaps(i64* %55, %struct.extent_buffer* %56, i64 %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %82

62:                                               ; preds = %54
  %63 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %64 = call i32 @free_extent_buffer(%struct.extent_buffer* %63)
  %65 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sdiv i32 %66, 2
  %68 = load i64, i64* %7, align 8
  %69 = call %struct.extent_buffer* @__alloc_dummy_extent_buffer(%struct.btrfs_fs_info* %65, i32 %67, i64 %68)
  store %struct.extent_buffer* %69, %struct.extent_buffer** %9, align 8
  %70 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %71 = icmp ne %struct.extent_buffer* %70, null
  br i1 %71, label %77, label %72

72:                                               ; preds = %62
  %73 = load i32, i32* @TEST_ALLOC_ROOT, align 4
  %74 = call i32 @test_std_err(i32 %73)
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %10, align 4
  br label %82

77:                                               ; preds = %62
  %78 = load i64*, i64** %8, align 8
  %79 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %80 = load i64, i64* %7, align 8
  %81 = call i32 @__test_eb_bitmaps(i64* %78, %struct.extent_buffer* %79, i64 %80)
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %77, %72, %61, %49, %39
  %83 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %84 = call i32 @free_extent_buffer(%struct.extent_buffer* %83)
  %85 = load i64*, i64** %8, align 8
  %86 = call i32 @kfree(i64* %85)
  %87 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %88 = call i32 @btrfs_free_dummy_fs_info(%struct.btrfs_fs_info* %87)
  %89 = load i32, i32* %10, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %82, %28
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @test_msg(i8*) #1

declare dso_local %struct.btrfs_fs_info* @btrfs_alloc_dummy_fs_info(i64, i64) #1

declare dso_local i32 @test_std_err(i32) #1

declare dso_local i64* @kmalloc(i64, i32) #1

declare dso_local i32 @test_err(i8*) #1

declare dso_local %struct.extent_buffer* @__alloc_dummy_extent_buffer(%struct.btrfs_fs_info*, i32, i64) #1

declare dso_local i32 @__test_eb_bitmaps(i64*, %struct.extent_buffer*, i64) #1

declare dso_local i32 @free_extent_buffer(%struct.extent_buffer*) #1

declare dso_local i32 @kfree(i64*) #1

declare dso_local i32 @btrfs_free_dummy_fs_info(%struct.btrfs_fs_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
