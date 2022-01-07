; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_extent-tree.c_btrfs_lock_cluster.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_extent-tree.c_btrfs_lock_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_block_group_cache = type { i32 }
%struct.btrfs_free_cluster = type { %struct.btrfs_block_group_cache*, i32 }

@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.btrfs_block_group_cache* (%struct.btrfs_block_group_cache*, %struct.btrfs_free_cluster*, i32)* @btrfs_lock_cluster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.btrfs_block_group_cache* @btrfs_lock_cluster(%struct.btrfs_block_group_cache* %0, %struct.btrfs_free_cluster* %1, i32 %2) #0 {
  %4 = alloca %struct.btrfs_block_group_cache*, align 8
  %5 = alloca %struct.btrfs_block_group_cache*, align 8
  %6 = alloca %struct.btrfs_free_cluster*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_block_group_cache*, align 8
  store %struct.btrfs_block_group_cache* %0, %struct.btrfs_block_group_cache** %5, align 8
  store %struct.btrfs_free_cluster* %1, %struct.btrfs_free_cluster** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.btrfs_block_group_cache* null, %struct.btrfs_block_group_cache** %8, align 8
  %9 = load %struct.btrfs_free_cluster*, %struct.btrfs_free_cluster** %6, align 8
  %10 = getelementptr inbounds %struct.btrfs_free_cluster, %struct.btrfs_free_cluster* %9, i32 0, i32 1
  %11 = call i32 @spin_lock(i32* %10)
  br label %12

12:                                               ; preds = %3, %57
  %13 = load %struct.btrfs_free_cluster*, %struct.btrfs_free_cluster** %6, align 8
  %14 = getelementptr inbounds %struct.btrfs_free_cluster, %struct.btrfs_free_cluster* %13, i32 0, i32 0
  %15 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %14, align 8
  store %struct.btrfs_block_group_cache* %15, %struct.btrfs_block_group_cache** %8, align 8
  %16 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %17 = icmp ne %struct.btrfs_block_group_cache* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  store %struct.btrfs_block_group_cache* null, %struct.btrfs_block_group_cache** %4, align 8
  br label %63

19:                                               ; preds = %12
  %20 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %21 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %22 = icmp eq %struct.btrfs_block_group_cache* %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  store %struct.btrfs_block_group_cache* %24, %struct.btrfs_block_group_cache** %4, align 8
  br label %63

25:                                               ; preds = %19
  %26 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %27 = call i32 @btrfs_get_block_group(%struct.btrfs_block_group_cache* %26)
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  store %struct.btrfs_block_group_cache* %31, %struct.btrfs_block_group_cache** %4, align 8
  br label %63

32:                                               ; preds = %25
  %33 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %34 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %33, i32 0, i32 0
  %35 = call i64 @down_read_trylock(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  store %struct.btrfs_block_group_cache* %38, %struct.btrfs_block_group_cache** %4, align 8
  br label %63

39:                                               ; preds = %32
  %40 = load %struct.btrfs_free_cluster*, %struct.btrfs_free_cluster** %6, align 8
  %41 = getelementptr inbounds %struct.btrfs_free_cluster, %struct.btrfs_free_cluster* %40, i32 0, i32 1
  %42 = call i32 @spin_unlock(i32* %41)
  %43 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %44 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %43, i32 0, i32 0
  %45 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %46 = call i32 @down_read_nested(i32* %44, i32 %45)
  %47 = load %struct.btrfs_free_cluster*, %struct.btrfs_free_cluster** %6, align 8
  %48 = getelementptr inbounds %struct.btrfs_free_cluster, %struct.btrfs_free_cluster* %47, i32 0, i32 1
  %49 = call i32 @spin_lock(i32* %48)
  %50 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %51 = load %struct.btrfs_free_cluster*, %struct.btrfs_free_cluster** %6, align 8
  %52 = getelementptr inbounds %struct.btrfs_free_cluster, %struct.btrfs_free_cluster* %51, i32 0, i32 0
  %53 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %52, align 8
  %54 = icmp eq %struct.btrfs_block_group_cache* %50, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %39
  %56 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  store %struct.btrfs_block_group_cache* %56, %struct.btrfs_block_group_cache** %4, align 8
  br label %63

57:                                               ; preds = %39
  %58 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %59 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %58, i32 0, i32 0
  %60 = call i32 @up_read(i32* %59)
  %61 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %62 = call i32 @btrfs_put_block_group(%struct.btrfs_block_group_cache* %61)
  br label %12

63:                                               ; preds = %55, %37, %30, %23, %18
  %64 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  ret %struct.btrfs_block_group_cache* %64
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @btrfs_get_block_group(%struct.btrfs_block_group_cache*) #1

declare dso_local i64 @down_read_trylock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @down_read_nested(i32*, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @btrfs_put_block_group(%struct.btrfs_block_group_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
