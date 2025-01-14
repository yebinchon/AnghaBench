; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_free-space-tests.c_check_num_extents_and_bitmaps.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_free-space-tests.c_check_num_extents_and_bitmaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_block_group_cache = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [60 x i8] c"incorrect # of extent entries in the cache: %d, expected %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_block_group_cache*, i32, i32)* @check_num_extents_and_bitmaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_num_extents_and_bitmaps(%struct.btrfs_block_group_cache* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_block_group_cache*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.btrfs_block_group_cache* %0, %struct.btrfs_block_group_cache** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %9 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %3
  %16 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %17 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @test_err(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %44

25:                                               ; preds = %3
  %26 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %27 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %25
  %34 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %35 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @test_err(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %44

43:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %33, %15
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @test_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
