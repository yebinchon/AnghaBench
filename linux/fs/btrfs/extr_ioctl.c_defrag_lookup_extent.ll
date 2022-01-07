; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ioctl.c_defrag_lookup_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ioctl.c_defrag_lookup_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_map = type { i32 }
%struct.inode = type { i32 }
%struct.extent_map_tree = type { i32 }
%struct.extent_io_tree = type { i32 }
%struct.extent_state = type { i32 }
%struct.TYPE_3__ = type { %struct.extent_io_tree, %struct.extent_map_tree }

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.extent_map* (%struct.inode*, i64)* @defrag_lookup_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.extent_map* @defrag_lookup_extent(%struct.inode* %0, i64 %1) #0 {
  %3 = alloca %struct.extent_map*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.extent_map_tree*, align 8
  %7 = alloca %struct.extent_io_tree*, align 8
  %8 = alloca %struct.extent_map*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.extent_state*, align 8
  %11 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = call %struct.TYPE_3__* @BTRFS_I(%struct.inode* %12)
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  store %struct.extent_map_tree* %14, %struct.extent_map_tree** %6, align 8
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = call %struct.TYPE_3__* @BTRFS_I(%struct.inode* %15)
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.extent_io_tree* %17, %struct.extent_io_tree** %7, align 8
  %18 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %18, i64* %9, align 8
  %19 = load %struct.extent_map_tree*, %struct.extent_map_tree** %6, align 8
  %20 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %19, i32 0, i32 0
  %21 = call i32 @read_lock(i32* %20)
  %22 = load %struct.extent_map_tree*, %struct.extent_map_tree** %6, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* %9, align 8
  %25 = call %struct.extent_map* @lookup_extent_mapping(%struct.extent_map_tree* %22, i64 %23, i64 %24)
  store %struct.extent_map* %25, %struct.extent_map** %8, align 8
  %26 = load %struct.extent_map_tree*, %struct.extent_map_tree** %6, align 8
  %27 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %26, i32 0, i32 0
  %28 = call i32 @read_unlock(i32* %27)
  %29 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %30 = icmp ne %struct.extent_map* %29, null
  br i1 %30, label %54, label %31

31:                                               ; preds = %2
  store %struct.extent_state* null, %struct.extent_state** %10, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* %9, align 8
  %34 = add nsw i64 %32, %33
  %35 = sub nsw i64 %34, 1
  store i64 %35, i64* %11, align 8
  %36 = load %struct.extent_io_tree*, %struct.extent_io_tree** %7, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* %11, align 8
  %39 = call i32 @lock_extent_bits(%struct.extent_io_tree* %36, i64 %37, i64 %38, %struct.extent_state** %10)
  %40 = load %struct.inode*, %struct.inode** %4, align 8
  %41 = call %struct.TYPE_3__* @BTRFS_I(%struct.inode* %40)
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call %struct.extent_map* @btrfs_get_extent(%struct.TYPE_3__* %41, i32* null, i32 0, i64 %42, i64 %43, i32 0)
  store %struct.extent_map* %44, %struct.extent_map** %8, align 8
  %45 = load %struct.extent_io_tree*, %struct.extent_io_tree** %7, align 8
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* %11, align 8
  %48 = call i32 @unlock_extent_cached(%struct.extent_io_tree* %45, i64 %46, i64 %47, %struct.extent_state** %10)
  %49 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %50 = call i64 @IS_ERR(%struct.extent_map* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %31
  store %struct.extent_map* null, %struct.extent_map** %3, align 8
  br label %56

53:                                               ; preds = %31
  br label %54

54:                                               ; preds = %53, %2
  %55 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  store %struct.extent_map* %55, %struct.extent_map** %3, align 8
  br label %56

56:                                               ; preds = %54, %52
  %57 = load %struct.extent_map*, %struct.extent_map** %3, align 8
  ret %struct.extent_map* %57
}

declare dso_local %struct.TYPE_3__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.extent_map* @lookup_extent_mapping(%struct.extent_map_tree*, i64, i64) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @lock_extent_bits(%struct.extent_io_tree*, i64, i64, %struct.extent_state**) #1

declare dso_local %struct.extent_map* @btrfs_get_extent(%struct.TYPE_3__*, i32*, i32, i64, i64, i32) #1

declare dso_local i32 @unlock_extent_cached(%struct.extent_io_tree*, i64, i64, %struct.extent_state**) #1

declare dso_local i64 @IS_ERR(%struct.extent_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
