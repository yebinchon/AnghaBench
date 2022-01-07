; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_dev-replace.c_btrfs_dev_replace_update_device_in_mapping_tree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_dev-replace.c_btrfs_dev_replace_update_device_in_mapping_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { %struct.extent_map_tree }
%struct.extent_map_tree = type { i32 }
%struct.btrfs_device = type { i32 }
%struct.extent_map = type { i64, i64, %struct.map_lookup* }
%struct.map_lookup = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.btrfs_device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_fs_info*, %struct.btrfs_device*, %struct.btrfs_device*)* @btrfs_dev_replace_update_device_in_mapping_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btrfs_dev_replace_update_device_in_mapping_tree(%struct.btrfs_fs_info* %0, %struct.btrfs_device* %1, %struct.btrfs_device* %2) #0 {
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca %struct.btrfs_device*, align 8
  %6 = alloca %struct.btrfs_device*, align 8
  %7 = alloca %struct.extent_map_tree*, align 8
  %8 = alloca %struct.extent_map*, align 8
  %9 = alloca %struct.map_lookup*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %4, align 8
  store %struct.btrfs_device* %1, %struct.btrfs_device** %5, align 8
  store %struct.btrfs_device* %2, %struct.btrfs_device** %6, align 8
  %12 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %13 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %12, i32 0, i32 0
  store %struct.extent_map_tree* %13, %struct.extent_map_tree** %7, align 8
  store i64 0, i64* %10, align 8
  %14 = load %struct.extent_map_tree*, %struct.extent_map_tree** %7, align 8
  %15 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %14, i32 0, i32 0
  %16 = call i32 @write_lock(i32* %15)
  br label %17

17:                                               ; preds = %68, %3
  %18 = load %struct.extent_map_tree*, %struct.extent_map_tree** %7, align 8
  %19 = load i64, i64* %10, align 8
  %20 = call %struct.extent_map* @lookup_extent_mapping(%struct.extent_map_tree* %18, i64 %19, i64 -1)
  store %struct.extent_map* %20, %struct.extent_map** %8, align 8
  %21 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %22 = icmp ne %struct.extent_map* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  br label %71

24:                                               ; preds = %17
  %25 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %26 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %25, i32 0, i32 2
  %27 = load %struct.map_lookup*, %struct.map_lookup** %26, align 8
  store %struct.map_lookup* %27, %struct.map_lookup** %9, align 8
  store i32 0, i32* %11, align 4
  br label %28

28:                                               ; preds = %55, %24
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.map_lookup*, %struct.map_lookup** %9, align 8
  %31 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %58

34:                                               ; preds = %28
  %35 = load %struct.btrfs_device*, %struct.btrfs_device** %5, align 8
  %36 = load %struct.map_lookup*, %struct.map_lookup** %9, align 8
  %37 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load %struct.btrfs_device*, %struct.btrfs_device** %42, align 8
  %44 = icmp eq %struct.btrfs_device* %35, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %34
  %46 = load %struct.btrfs_device*, %struct.btrfs_device** %6, align 8
  %47 = load %struct.map_lookup*, %struct.map_lookup** %9, align 8
  %48 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store %struct.btrfs_device* %46, %struct.btrfs_device** %53, align 8
  br label %54

54:                                               ; preds = %45, %34
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %11, align 4
  br label %28

58:                                               ; preds = %28
  %59 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %60 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %63 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %61, %64
  store i64 %65, i64* %10, align 8
  %66 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %67 = call i32 @free_extent_map(%struct.extent_map* %66)
  br label %68

68:                                               ; preds = %58
  %69 = load i64, i64* %10, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %17, label %71

71:                                               ; preds = %68, %23
  %72 = load %struct.extent_map_tree*, %struct.extent_map_tree** %7, align 8
  %73 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %72, i32 0, i32 0
  %74 = call i32 @write_unlock(i32* %73)
  ret void
}

declare dso_local i32 @write_lock(i32*) #1

declare dso_local %struct.extent_map* @lookup_extent_mapping(%struct.extent_map_tree*, i64, i64) #1

declare dso_local i32 @free_extent_map(%struct.extent_map*) #1

declare dso_local i32 @write_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
