; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_file.c_find_first_non_hole.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_file.c_find_first_non_hole.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.btrfs_fs_info = type { i32 }
%struct.extent_map = type { i64, i64, i64 }

@EXTENT_MAP_HOLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64*, i64*)* @find_first_non_hole to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_first_non_hole(%struct.inode* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.btrfs_fs_info*, align 8
  %9 = alloca %struct.extent_map*, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.btrfs_fs_info* @btrfs_sb(i32 %13)
  store %struct.btrfs_fs_info* %14, %struct.btrfs_fs_info** %8, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = call i32 @BTRFS_I(%struct.inode* %15)
  %17 = load i64*, i64** %6, align 8
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %20 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @round_down(i64 %18, i32 %21)
  %23 = load i64*, i64** %7, align 8
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %26 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @round_up(i64 %24, i32 %27)
  %29 = call %struct.extent_map* @btrfs_get_extent(i32 %16, i32* null, i32 0, i32 %22, i32 %28, i32 0)
  store %struct.extent_map* %29, %struct.extent_map** %9, align 8
  %30 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %31 = call i64 @IS_ERR(%struct.extent_map* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %3
  %34 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %35 = call i32 @PTR_ERR(%struct.extent_map* %34)
  store i32 %35, i32* %4, align 4
  br label %86

36:                                               ; preds = %3
  %37 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %38 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @EXTENT_MAP_HOLE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %82

42:                                               ; preds = %36
  store i32 1, i32* %10, align 4
  %43 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %44 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %47 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %45, %48
  %50 = load i64*, i64** %6, align 8
  %51 = load i64, i64* %50, align 8
  %52 = load i64*, i64** %7, align 8
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %51, %53
  %55 = icmp sgt i64 %49, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %42
  br label %71

57:                                               ; preds = %42
  %58 = load i64*, i64** %6, align 8
  %59 = load i64, i64* %58, align 8
  %60 = load i64*, i64** %7, align 8
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %59, %61
  %63 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %64 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %62, %65
  %67 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %68 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %66, %69
  br label %71

71:                                               ; preds = %57, %56
  %72 = phi i64 [ 0, %56 ], [ %70, %57 ]
  %73 = load i64*, i64** %7, align 8
  store i64 %72, i64* %73, align 8
  %74 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %75 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %78 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %76, %79
  %81 = load i64*, i64** %6, align 8
  store i64 %80, i64* %81, align 8
  br label %82

82:                                               ; preds = %71, %36
  %83 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %84 = call i32 @free_extent_map(%struct.extent_map* %83)
  %85 = load i32, i32* %10, align 4
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %82, %33
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local %struct.btrfs_fs_info* @btrfs_sb(i32) #1

declare dso_local %struct.extent_map* @btrfs_get_extent(i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @round_down(i64, i32) #1

declare dso_local i32 @round_up(i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.extent_map*) #1

declare dso_local i32 @PTR_ERR(%struct.extent_map*) #1

declare dso_local i32 @free_extent_map(%struct.extent_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
