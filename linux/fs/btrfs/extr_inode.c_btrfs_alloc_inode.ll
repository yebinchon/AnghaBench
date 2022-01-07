; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_alloc_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_alloc_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.super_block = type { i64 }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_inode = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_4__, i32, %struct.inode, %struct.TYPE_3__, i32*, i8*, i8*, i64, i32, i64, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i64 }

@btrfs_inode_cachep = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@BTRFS_TEST_MAGIC = common dso_local global i64 0, align 8
@BTRFS_BLOCK_RSV_DELALLOC = common dso_local global i32 0, align 4
@BTRFS_COMPRESS_NONE = common dso_local global i8* null, align 8
@IO_TREE_INODE_IO = common dso_local global i32 0, align 4
@IO_TREE_INODE_IO_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @btrfs_alloc_inode(%struct.super_block* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca %struct.btrfs_inode*, align 8
  %6 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %7 = load %struct.super_block*, %struct.super_block** %3, align 8
  %8 = call %struct.btrfs_fs_info* @btrfs_sb(%struct.super_block* %7)
  store %struct.btrfs_fs_info* %8, %struct.btrfs_fs_info** %4, align 8
  %9 = load i32, i32* @btrfs_inode_cachep, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.btrfs_inode* @kmem_cache_alloc(i32 %9, i32 %10)
  store %struct.btrfs_inode* %11, %struct.btrfs_inode** %5, align 8
  %12 = load %struct.btrfs_inode*, %struct.btrfs_inode** %5, align 8
  %13 = icmp ne %struct.btrfs_inode* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store %struct.inode* null, %struct.inode** %2, align 8
  br label %127

15:                                               ; preds = %1
  %16 = load %struct.btrfs_inode*, %struct.btrfs_inode** %5, align 8
  %17 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %16, i32 0, i32 34
  store i32* null, i32** %17, align 8
  %18 = load %struct.btrfs_inode*, %struct.btrfs_inode** %5, align 8
  %19 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %18, i32 0, i32 33
  store i64 0, i64* %19, align 8
  %20 = load %struct.btrfs_inode*, %struct.btrfs_inode** %5, align 8
  %21 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %20, i32 0, i32 32
  store i64 0, i64* %21, align 8
  %22 = load %struct.btrfs_inode*, %struct.btrfs_inode** %5, align 8
  %23 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %22, i32 0, i32 31
  store i64 0, i64* %23, align 8
  %24 = load %struct.btrfs_inode*, %struct.btrfs_inode** %5, align 8
  %25 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %24, i32 0, i32 30
  store i64 0, i64* %25, align 8
  %26 = load %struct.btrfs_inode*, %struct.btrfs_inode** %5, align 8
  %27 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %26, i32 0, i32 29
  store i64 0, i64* %27, align 8
  %28 = load %struct.btrfs_inode*, %struct.btrfs_inode** %5, align 8
  %29 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %28, i32 0, i32 28
  store i64 0, i64* %29, align 8
  %30 = load %struct.btrfs_inode*, %struct.btrfs_inode** %5, align 8
  %31 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %30, i32 0, i32 27
  store i64 0, i64* %31, align 8
  %32 = load %struct.btrfs_inode*, %struct.btrfs_inode** %5, align 8
  %33 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %32, i32 0, i32 26
  store i64 0, i64* %33, align 8
  %34 = load %struct.btrfs_inode*, %struct.btrfs_inode** %5, align 8
  %35 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %34, i32 0, i32 25
  store i64 0, i64* %35, align 8
  %36 = load %struct.btrfs_inode*, %struct.btrfs_inode** %5, align 8
  %37 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %36, i32 0, i32 24
  store i64 0, i64* %37, align 8
  %38 = load %struct.btrfs_inode*, %struct.btrfs_inode** %5, align 8
  %39 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %38, i32 0, i32 23
  store i64 -1, i64* %39, align 8
  %40 = load %struct.btrfs_inode*, %struct.btrfs_inode** %5, align 8
  %41 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %40, i32 0, i32 22
  store i64 0, i64* %41, align 8
  %42 = load %struct.btrfs_inode*, %struct.btrfs_inode** %5, align 8
  %43 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %42, i32 0, i32 21
  store i64 0, i64* %43, align 8
  %44 = load %struct.btrfs_inode*, %struct.btrfs_inode** %5, align 8
  %45 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %44, i32 0, i32 20
  store i64 0, i64* %45, align 8
  %46 = load %struct.btrfs_inode*, %struct.btrfs_inode** %5, align 8
  %47 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %46, i32 0, i32 19
  %48 = call i32 @spin_lock_init(i32* %47)
  %49 = load %struct.btrfs_inode*, %struct.btrfs_inode** %5, align 8
  %50 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %49, i32 0, i32 18
  store i64 0, i64* %50, align 8
  %51 = load %struct.super_block*, %struct.super_block** %3, align 8
  %52 = getelementptr inbounds %struct.super_block, %struct.super_block* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @BTRFS_TEST_MAGIC, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %15
  %57 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %58 = load %struct.btrfs_inode*, %struct.btrfs_inode** %5, align 8
  %59 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %58, i32 0, i32 17
  %60 = load i32, i32* @BTRFS_BLOCK_RSV_DELALLOC, align 4
  %61 = call i32 @btrfs_init_metadata_block_rsv(%struct.btrfs_fs_info* %57, i32* %59, i32 %60)
  br label %62

62:                                               ; preds = %56, %15
  %63 = load %struct.btrfs_inode*, %struct.btrfs_inode** %5, align 8
  %64 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %63, i32 0, i32 16
  store i64 0, i64* %64, align 8
  %65 = load i8*, i8** @BTRFS_COMPRESS_NONE, align 8
  %66 = load %struct.btrfs_inode*, %struct.btrfs_inode** %5, align 8
  %67 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %66, i32 0, i32 15
  store i8* %65, i8** %67, align 8
  %68 = load i8*, i8** @BTRFS_COMPRESS_NONE, align 8
  %69 = load %struct.btrfs_inode*, %struct.btrfs_inode** %5, align 8
  %70 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %69, i32 0, i32 14
  store i8* %68, i8** %70, align 8
  %71 = load %struct.btrfs_inode*, %struct.btrfs_inode** %5, align 8
  %72 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %71, i32 0, i32 13
  store i32* null, i32** %72, align 8
  %73 = load %struct.btrfs_inode*, %struct.btrfs_inode** %5, align 8
  %74 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %73, i32 0, i32 12
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  store i64 0, i64* %75, align 8
  %76 = load %struct.btrfs_inode*, %struct.btrfs_inode** %5, align 8
  %77 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %76, i32 0, i32 12
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  store i64 0, i64* %78, align 8
  %79 = load %struct.btrfs_inode*, %struct.btrfs_inode** %5, align 8
  %80 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %79, i32 0, i32 11
  store %struct.inode* %80, %struct.inode** %6, align 8
  %81 = load %struct.btrfs_inode*, %struct.btrfs_inode** %5, align 8
  %82 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %81, i32 0, i32 10
  %83 = call i32 @extent_map_tree_init(i32* %82)
  %84 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %85 = load %struct.btrfs_inode*, %struct.btrfs_inode** %5, align 8
  %86 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %85, i32 0, i32 9
  %87 = load i32, i32* @IO_TREE_INODE_IO, align 4
  %88 = load %struct.inode*, %struct.inode** %6, align 8
  %89 = call i32 @extent_io_tree_init(%struct.btrfs_fs_info* %84, %struct.TYPE_4__* %86, i32 %87, %struct.inode* %88)
  %90 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %91 = load %struct.btrfs_inode*, %struct.btrfs_inode** %5, align 8
  %92 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %91, i32 0, i32 8
  %93 = load i32, i32* @IO_TREE_INODE_IO_FAILURE, align 4
  %94 = load %struct.inode*, %struct.inode** %6, align 8
  %95 = call i32 @extent_io_tree_init(%struct.btrfs_fs_info* %90, %struct.TYPE_4__* %92, i32 %93, %struct.inode* %94)
  %96 = load %struct.btrfs_inode*, %struct.btrfs_inode** %5, align 8
  %97 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %96, i32 0, i32 9
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  store i32 1, i32* %98, align 4
  %99 = load %struct.btrfs_inode*, %struct.btrfs_inode** %5, align 8
  %100 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %99, i32 0, i32 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  store i32 1, i32* %101, align 8
  %102 = load %struct.btrfs_inode*, %struct.btrfs_inode** %5, align 8
  %103 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %102, i32 0, i32 7
  %104 = call i32 @atomic_set(i32* %103, i32 0)
  %105 = load %struct.btrfs_inode*, %struct.btrfs_inode** %5, align 8
  %106 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %105, i32 0, i32 6
  %107 = call i32 @mutex_init(i32* %106)
  %108 = load %struct.btrfs_inode*, %struct.btrfs_inode** %5, align 8
  %109 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %108, i32 0, i32 5
  %110 = call i32 @mutex_init(i32* %109)
  %111 = load %struct.btrfs_inode*, %struct.btrfs_inode** %5, align 8
  %112 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %111, i32 0, i32 4
  %113 = call i32 @btrfs_ordered_inode_tree_init(i32* %112)
  %114 = load %struct.btrfs_inode*, %struct.btrfs_inode** %5, align 8
  %115 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %114, i32 0, i32 3
  %116 = call i32 @INIT_LIST_HEAD(i32* %115)
  %117 = load %struct.btrfs_inode*, %struct.btrfs_inode** %5, align 8
  %118 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %117, i32 0, i32 2
  %119 = call i32 @INIT_LIST_HEAD(i32* %118)
  %120 = load %struct.btrfs_inode*, %struct.btrfs_inode** %5, align 8
  %121 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %120, i32 0, i32 1
  %122 = call i32 @RB_CLEAR_NODE(i32* %121)
  %123 = load %struct.btrfs_inode*, %struct.btrfs_inode** %5, align 8
  %124 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %123, i32 0, i32 0
  %125 = call i32 @init_rwsem(i32* %124)
  %126 = load %struct.inode*, %struct.inode** %6, align 8
  store %struct.inode* %126, %struct.inode** %2, align 8
  br label %127

127:                                              ; preds = %62, %14
  %128 = load %struct.inode*, %struct.inode** %2, align 8
  ret %struct.inode* %128
}

declare dso_local %struct.btrfs_fs_info* @btrfs_sb(%struct.super_block*) #1

declare dso_local %struct.btrfs_inode* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @btrfs_init_metadata_block_rsv(%struct.btrfs_fs_info*, i32*, i32) #1

declare dso_local i32 @extent_map_tree_init(i32*) #1

declare dso_local i32 @extent_io_tree_init(%struct.btrfs_fs_info*, %struct.TYPE_4__*, i32, %struct.inode*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @btrfs_ordered_inode_tree_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @RB_CLEAR_NODE(i32*) #1

declare dso_local i32 @init_rwsem(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
