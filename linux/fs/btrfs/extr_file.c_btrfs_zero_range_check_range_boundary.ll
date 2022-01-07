; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_file.c_btrfs_zero_range_check_range_boundary.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_file.c_btrfs_zero_range_check_range_boundary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.extent_map = type { i64, i32 }

@EXTENT_MAP_HOLE = common dso_local global i64 0, align 8
@RANGE_BOUNDARY_HOLE = common dso_local global i32 0, align 4
@EXTENT_FLAG_PREALLOC = common dso_local global i32 0, align 4
@RANGE_BOUNDARY_PREALLOC_EXTENT = common dso_local global i32 0, align 4
@RANGE_BOUNDARY_WRITTEN_EXTENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32)* @btrfs_zero_range_check_range_boundary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_zero_range_check_range_boundary(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.extent_map*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call i32 @btrfs_inode_sectorsize(%struct.inode* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @round_down(i32 %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = call i32 @BTRFS_I(%struct.inode* %14)
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call %struct.extent_map* @btrfs_get_extent(i32 %15, i32* null, i32 0, i32 %16, i32 %17, i32 0)
  store %struct.extent_map* %18, %struct.extent_map** %7, align 8
  %19 = load %struct.extent_map*, %struct.extent_map** %7, align 8
  %20 = call i64 @IS_ERR(%struct.extent_map* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load %struct.extent_map*, %struct.extent_map** %7, align 8
  %24 = call i32 @PTR_ERR(%struct.extent_map* %23)
  store i32 %24, i32* %3, align 4
  br label %48

25:                                               ; preds = %2
  %26 = load %struct.extent_map*, %struct.extent_map** %7, align 8
  %27 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @EXTENT_MAP_HOLE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @RANGE_BOUNDARY_HOLE, align 4
  store i32 %32, i32* %8, align 4
  br label %44

33:                                               ; preds = %25
  %34 = load i32, i32* @EXTENT_FLAG_PREALLOC, align 4
  %35 = load %struct.extent_map*, %struct.extent_map** %7, align 8
  %36 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %35, i32 0, i32 1
  %37 = call i64 @test_bit(i32 %34, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @RANGE_BOUNDARY_PREALLOC_EXTENT, align 4
  store i32 %40, i32* %8, align 4
  br label %43

41:                                               ; preds = %33
  %42 = load i32, i32* @RANGE_BOUNDARY_WRITTEN_EXTENT, align 4
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %41, %39
  br label %44

44:                                               ; preds = %43, %31
  %45 = load %struct.extent_map*, %struct.extent_map** %7, align 8
  %46 = call i32 @free_extent_map(%struct.extent_map* %45)
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %44, %22
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @btrfs_inode_sectorsize(%struct.inode*) #1

declare dso_local i32 @round_down(i32, i32) #1

declare dso_local %struct.extent_map* @btrfs_get_extent(i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @BTRFS_I(%struct.inode*) #1

declare dso_local i64 @IS_ERR(%struct.extent_map*) #1

declare dso_local i32 @PTR_ERR(%struct.extent_map*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @free_extent_map(%struct.extent_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
