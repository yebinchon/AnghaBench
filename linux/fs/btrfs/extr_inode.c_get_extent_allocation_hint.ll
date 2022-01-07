; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_get_extent_allocation_hint.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_get_extent_allocation_hint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.extent_map_tree = type { i32 }
%struct.extent_map = type { i64 }
%struct.TYPE_2__ = type { %struct.extent_map_tree }

@EXTENT_MAP_LAST_BYTE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.inode*, i64, i64)* @get_extent_allocation_hint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_extent_allocation_hint(%struct.inode* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.extent_map_tree*, align 8
  %8 = alloca %struct.extent_map*, align 8
  %9 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.extent_map_tree* %12, %struct.extent_map_tree** %7, align 8
  store i64 0, i64* %9, align 8
  %13 = load %struct.extent_map_tree*, %struct.extent_map_tree** %7, align 8
  %14 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %13, i32 0, i32 0
  %15 = call i32 @read_lock(i32* %14)
  %16 = load %struct.extent_map_tree*, %struct.extent_map_tree** %7, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call %struct.extent_map* @search_extent_mapping(%struct.extent_map_tree* %16, i64 %17, i64 %18)
  store %struct.extent_map* %19, %struct.extent_map** %8, align 8
  %20 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %21 = icmp ne %struct.extent_map* %20, null
  br i1 %21, label %22, label %59

22:                                               ; preds = %3
  %23 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %24 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @EXTENT_MAP_LAST_BYTE, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %52

28:                                               ; preds = %22
  %29 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %30 = call i32 @free_extent_map(%struct.extent_map* %29)
  %31 = load %struct.extent_map_tree*, %struct.extent_map_tree** %7, align 8
  %32 = call %struct.extent_map* @search_extent_mapping(%struct.extent_map_tree* %31, i64 0, i64 0)
  store %struct.extent_map* %32, %struct.extent_map** %8, align 8
  %33 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %34 = icmp ne %struct.extent_map* %33, null
  br i1 %34, label %35, label %45

35:                                               ; preds = %28
  %36 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %37 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @EXTENT_MAP_LAST_BYTE, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %43 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %9, align 8
  br label %45

45:                                               ; preds = %41, %35, %28
  %46 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %47 = icmp ne %struct.extent_map* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %50 = call i32 @free_extent_map(%struct.extent_map* %49)
  br label %51

51:                                               ; preds = %48, %45
  br label %58

52:                                               ; preds = %22
  %53 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %54 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %9, align 8
  %56 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %57 = call i32 @free_extent_map(%struct.extent_map* %56)
  br label %58

58:                                               ; preds = %52, %51
  br label %59

59:                                               ; preds = %58, %3
  %60 = load %struct.extent_map_tree*, %struct.extent_map_tree** %7, align 8
  %61 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %60, i32 0, i32 0
  %62 = call i32 @read_unlock(i32* %61)
  %63 = load i64, i64* %9, align 8
  ret i64 %63
}

declare dso_local %struct.TYPE_2__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.extent_map* @search_extent_mapping(%struct.extent_map_tree*, i64, i64) #1

declare dso_local i32 @free_extent_map(%struct.extent_map*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
