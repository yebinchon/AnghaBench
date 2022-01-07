; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_block-group.c_btrfs_put_block_group_cache.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_block-group.c_btrfs_put_block_group_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_block_group_cache = type { %struct.TYPE_4__, %struct.TYPE_3__, i32, %struct.inode*, i64 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i32* }
%struct.inode = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_put_block_group_cache(%struct.btrfs_fs_info* %0) #0 {
  %2 = alloca %struct.btrfs_fs_info*, align 8
  %3 = alloca %struct.btrfs_block_group_cache*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.inode*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %2, align 8
  store i64 0, i64* %4, align 8
  br label %6

6:                                                ; preds = %1, %37, %38
  %7 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call %struct.btrfs_block_group_cache* @btrfs_lookup_first_block_group(%struct.btrfs_fs_info* %7, i64 %8)
  store %struct.btrfs_block_group_cache* %9, %struct.btrfs_block_group_cache** %3, align 8
  br label %10

10:                                               ; preds = %24, %6
  %11 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %12 = icmp ne %struct.btrfs_block_group_cache* %11, null
  br i1 %12, label %13, label %30

13:                                               ; preds = %10
  %14 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %15 = call i32 @btrfs_wait_block_group_cache_done(%struct.btrfs_block_group_cache* %14)
  %16 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %17 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %16, i32 0, i32 2
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %20 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  br label %30

24:                                               ; preds = %13
  %25 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %26 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %25, i32 0, i32 2
  %27 = call i32 @spin_unlock(i32* %26)
  %28 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %29 = call %struct.btrfs_block_group_cache* @btrfs_next_block_group(%struct.btrfs_block_group_cache* %28)
  store %struct.btrfs_block_group_cache* %29, %struct.btrfs_block_group_cache** %3, align 8
  br label %10

30:                                               ; preds = %23, %10
  %31 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %32 = icmp ne %struct.btrfs_block_group_cache* %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = load i64, i64* %4, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %69

37:                                               ; preds = %33
  store i64 0, i64* %4, align 8
  br label %6

38:                                               ; preds = %30
  %39 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %40 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %39, i32 0, i32 3
  %41 = load %struct.inode*, %struct.inode** %40, align 8
  store %struct.inode* %41, %struct.inode** %5, align 8
  %42 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %43 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %42, i32 0, i32 4
  store i64 0, i64* %43, align 8
  %44 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %45 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %44, i32 0, i32 3
  store %struct.inode* null, %struct.inode** %45, align 8
  %46 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %47 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %46, i32 0, i32 2
  %48 = call i32 @spin_unlock(i32* %47)
  %49 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %50 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = icmp eq i32* %52, null
  %54 = zext i1 %53 to i32
  %55 = call i32 @ASSERT(i32 %54)
  %56 = load %struct.inode*, %struct.inode** %5, align 8
  %57 = call i32 @iput(%struct.inode* %56)
  %58 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %59 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %63 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %61, %65
  store i64 %66, i64* %4, align 8
  %67 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %68 = call i32 @btrfs_put_block_group(%struct.btrfs_block_group_cache* %67)
  br label %6

69:                                               ; preds = %36
  ret void
}

declare dso_local %struct.btrfs_block_group_cache* @btrfs_lookup_first_block_group(%struct.btrfs_fs_info*, i64) #1

declare dso_local i32 @btrfs_wait_block_group_cache_done(%struct.btrfs_block_group_cache*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.btrfs_block_group_cache* @btrfs_next_block_group(%struct.btrfs_block_group_cache*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @btrfs_put_block_group(%struct.btrfs_block_group_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
