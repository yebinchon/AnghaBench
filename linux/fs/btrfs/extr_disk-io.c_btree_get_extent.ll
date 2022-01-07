; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btree_get_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btree_get_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_map = type { i32, i64, i8*, i8*, i64 }
%struct.btrfs_inode = type { %struct.extent_map_tree, %struct.TYPE_3__* }
%struct.extent_map_tree = type { i32 }
%struct.TYPE_3__ = type { %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.page = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.extent_map* @btree_get_extent(%struct.btrfs_inode* %0, %struct.page* %1, i64 %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.btrfs_inode*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.btrfs_fs_info*, align 8
  %14 = alloca %struct.extent_map_tree*, align 8
  %15 = alloca %struct.extent_map*, align 8
  %16 = alloca i32, align 4
  store %struct.btrfs_inode* %0, %struct.btrfs_inode** %7, align 8
  store %struct.page* %1, %struct.page** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = load %struct.btrfs_inode*, %struct.btrfs_inode** %7, align 8
  %18 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %20, align 8
  store %struct.btrfs_fs_info* %21, %struct.btrfs_fs_info** %13, align 8
  %22 = load %struct.btrfs_inode*, %struct.btrfs_inode** %7, align 8
  %23 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %22, i32 0, i32 0
  store %struct.extent_map_tree* %23, %struct.extent_map_tree** %14, align 8
  %24 = load %struct.extent_map_tree*, %struct.extent_map_tree** %14, align 8
  %25 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %24, i32 0, i32 0
  %26 = call i32 @read_lock(i32* %25)
  %27 = load %struct.extent_map_tree*, %struct.extent_map_tree** %14, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = call %struct.extent_map* @lookup_extent_mapping(%struct.extent_map_tree* %27, i8* %28, i8* %29)
  store %struct.extent_map* %30, %struct.extent_map** %15, align 8
  %31 = load %struct.extent_map*, %struct.extent_map** %15, align 8
  %32 = icmp ne %struct.extent_map* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %6
  %34 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %13, align 8
  %35 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.extent_map*, %struct.extent_map** %15, align 8
  %40 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.extent_map_tree*, %struct.extent_map_tree** %14, align 8
  %42 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %41, i32 0, i32 0
  %43 = call i32 @read_unlock(i32* %42)
  br label %108

44:                                               ; preds = %6
  %45 = load %struct.extent_map_tree*, %struct.extent_map_tree** %14, align 8
  %46 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %45, i32 0, i32 0
  %47 = call i32 @read_unlock(i32* %46)
  %48 = call %struct.extent_map* (...) @alloc_extent_map()
  store %struct.extent_map* %48, %struct.extent_map** %15, align 8
  %49 = load %struct.extent_map*, %struct.extent_map** %15, align 8
  %50 = icmp ne %struct.extent_map* %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %44
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  %54 = call %struct.extent_map* @ERR_PTR(i32 %53)
  store %struct.extent_map* %54, %struct.extent_map** %15, align 8
  br label %108

55:                                               ; preds = %44
  %56 = load %struct.extent_map*, %struct.extent_map** %15, align 8
  %57 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %56, i32 0, i32 4
  store i64 0, i64* %57, align 8
  %58 = load %struct.extent_map*, %struct.extent_map** %15, align 8
  %59 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %58, i32 0, i32 3
  store i8* inttoptr (i64 -1 to i8*), i8** %59, align 8
  %60 = load %struct.extent_map*, %struct.extent_map** %15, align 8
  %61 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %60, i32 0, i32 2
  store i8* inttoptr (i64 -1 to i8*), i8** %61, align 8
  %62 = load %struct.extent_map*, %struct.extent_map** %15, align 8
  %63 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %62, i32 0, i32 1
  store i64 0, i64* %63, align 8
  %64 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %13, align 8
  %65 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.extent_map*, %struct.extent_map** %15, align 8
  %70 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.extent_map_tree*, %struct.extent_map_tree** %14, align 8
  %72 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %71, i32 0, i32 0
  %73 = call i32 @write_lock(i32* %72)
  %74 = load %struct.extent_map_tree*, %struct.extent_map_tree** %14, align 8
  %75 = load %struct.extent_map*, %struct.extent_map** %15, align 8
  %76 = call i32 @add_extent_mapping(%struct.extent_map_tree* %74, %struct.extent_map* %75, i32 0)
  store i32 %76, i32* %16, align 4
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* @EEXIST, align 4
  %79 = sub nsw i32 0, %78
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %81, label %95

81:                                               ; preds = %55
  %82 = load %struct.extent_map*, %struct.extent_map** %15, align 8
  %83 = call i32 @free_extent_map(%struct.extent_map* %82)
  %84 = load %struct.extent_map_tree*, %struct.extent_map_tree** %14, align 8
  %85 = load i8*, i8** %10, align 8
  %86 = load i8*, i8** %11, align 8
  %87 = call %struct.extent_map* @lookup_extent_mapping(%struct.extent_map_tree* %84, i8* %85, i8* %86)
  store %struct.extent_map* %87, %struct.extent_map** %15, align 8
  %88 = load %struct.extent_map*, %struct.extent_map** %15, align 8
  %89 = icmp ne %struct.extent_map* %88, null
  br i1 %89, label %94, label %90

90:                                               ; preds = %81
  %91 = load i32, i32* @EIO, align 4
  %92 = sub nsw i32 0, %91
  %93 = call %struct.extent_map* @ERR_PTR(i32 %92)
  store %struct.extent_map* %93, %struct.extent_map** %15, align 8
  br label %94

94:                                               ; preds = %90, %81
  br label %104

95:                                               ; preds = %55
  %96 = load i32, i32* %16, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load %struct.extent_map*, %struct.extent_map** %15, align 8
  %100 = call i32 @free_extent_map(%struct.extent_map* %99)
  %101 = load i32, i32* %16, align 4
  %102 = call %struct.extent_map* @ERR_PTR(i32 %101)
  store %struct.extent_map* %102, %struct.extent_map** %15, align 8
  br label %103

103:                                              ; preds = %98, %95
  br label %104

104:                                              ; preds = %103, %94
  %105 = load %struct.extent_map_tree*, %struct.extent_map_tree** %14, align 8
  %106 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %105, i32 0, i32 0
  %107 = call i32 @write_unlock(i32* %106)
  br label %108

108:                                              ; preds = %104, %51, %33
  %109 = load %struct.extent_map*, %struct.extent_map** %15, align 8
  ret %struct.extent_map* %109
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.extent_map* @lookup_extent_mapping(%struct.extent_map_tree*, i8*, i8*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local %struct.extent_map* @alloc_extent_map(...) #1

declare dso_local %struct.extent_map* @ERR_PTR(i32) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @add_extent_mapping(%struct.extent_map_tree*, %struct.extent_map*, i32) #1

declare dso_local i32 @free_extent_map(%struct.extent_map*) #1

declare dso_local i32 @write_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
