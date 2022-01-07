; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_file.c_btrfs_punch_hole_lock_range.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_file.c_btrfs_punch_hole_lock_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.extent_state = type { i32 }
%struct.btrfs_ordered_extent = type { i64, i64 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, i64, %struct.extent_state**)* @btrfs_punch_hole_lock_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_punch_hole_lock_range(%struct.inode* %0, i64 %1, i64 %2, %struct.extent_state** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.extent_state**, align 8
  %10 = alloca %struct.btrfs_ordered_extent*, align 8
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.extent_state** %3, %struct.extent_state*** %9, align 8
  br label %12

12:                                               ; preds = %4, %85
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @truncate_pagecache_range(%struct.inode* %13, i64 %14, i64 %15)
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load %struct.extent_state**, %struct.extent_state*** %9, align 8
  %23 = call i32 @lock_extent_bits(i32* %19, i64 %20, i64 %21, %struct.extent_state** %22)
  %24 = load %struct.inode*, %struct.inode** %6, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call %struct.btrfs_ordered_extent* @btrfs_lookup_first_ordered_extent(%struct.inode* %24, i64 %25)
  store %struct.btrfs_ordered_extent* %26, %struct.btrfs_ordered_extent** %10, align 8
  %27 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %10, align 8
  %28 = icmp ne %struct.btrfs_ordered_extent* %27, null
  br i1 %28, label %29, label %45

29:                                               ; preds = %12
  %30 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %10, align 8
  %31 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %10, align 8
  %34 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %32, %35
  %37 = load i64, i64* %7, align 8
  %38 = icmp sle i64 %36, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %29
  %40 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %10, align 8
  %41 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %8, align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %39, %29, %12
  %46 = load %struct.inode*, %struct.inode** %6, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @filemap_range_has_page(i32 %48, i64 %49, i64 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %45
  %54 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %10, align 8
  %55 = icmp ne %struct.btrfs_ordered_extent* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %10, align 8
  %58 = call i32 @btrfs_put_ordered_extent(%struct.btrfs_ordered_extent* %57)
  br label %59

59:                                               ; preds = %56, %53
  br label %86

60:                                               ; preds = %45, %39
  %61 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %10, align 8
  %62 = icmp ne %struct.btrfs_ordered_extent* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %10, align 8
  %65 = call i32 @btrfs_put_ordered_extent(%struct.btrfs_ordered_extent* %64)
  br label %66

66:                                               ; preds = %63, %60
  %67 = load %struct.inode*, %struct.inode** %6, align 8
  %68 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %67)
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %7, align 8
  %71 = load i64, i64* %8, align 8
  %72 = load %struct.extent_state**, %struct.extent_state*** %9, align 8
  %73 = call i32 @unlock_extent_cached(i32* %69, i64 %70, i64 %71, %struct.extent_state** %72)
  %74 = load %struct.inode*, %struct.inode** %6, align 8
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* %8, align 8
  %77 = load i64, i64* %7, align 8
  %78 = sub nsw i64 %76, %77
  %79 = add nsw i64 %78, 1
  %80 = call i32 @btrfs_wait_ordered_range(%struct.inode* %74, i64 %75, i64 %79)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %66
  %84 = load i32, i32* %11, align 4
  store i32 %84, i32* %5, align 4
  br label %87

85:                                               ; preds = %66
  br label %12

86:                                               ; preds = %59
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %86, %83
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @truncate_pagecache_range(%struct.inode*, i64, i64) #1

declare dso_local i32 @lock_extent_bits(i32*, i64, i64, %struct.extent_state**) #1

declare dso_local %struct.TYPE_2__* @BTRFS_I(%struct.inode*) #1

declare dso_local %struct.btrfs_ordered_extent* @btrfs_lookup_first_ordered_extent(%struct.inode*, i64) #1

declare dso_local i32 @filemap_range_has_page(i32, i64, i64) #1

declare dso_local i32 @btrfs_put_ordered_extent(%struct.btrfs_ordered_extent*) #1

declare dso_local i32 @unlock_extent_cached(i32*, i64, i64, %struct.extent_state**) #1

declare dso_local i32 @btrfs_wait_ordered_range(%struct.inode*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
