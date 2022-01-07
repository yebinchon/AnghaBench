; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_extent_io.c___alloc_extent_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_extent_io.c___alloc_extent_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_buffer = type { i64, i32, i64, i32, i32, i64, i32, i32, i32, i32, i32, i32, i64, i32, i32, i64, %struct.btrfs_fs_info*, i32 }
%struct.btrfs_fs_info = type { i32 }

@extent_buffer_cache = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@__GFP_NOFAIL = common dso_local global i32 0, align 4
@buffers = common dso_local global i32 0, align 4
@BTRFS_MAX_METADATA_BLOCKSIZE = common dso_local global i64 0, align 8
@MAX_INLINE_EXTENT_BUFFER_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.extent_buffer* (%struct.btrfs_fs_info*, i32, i64)* @__alloc_extent_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.extent_buffer* @__alloc_extent_buffer(%struct.btrfs_fs_info* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.extent_buffer*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  store %struct.extent_buffer* null, %struct.extent_buffer** %7, align 8
  %8 = load i32, i32* @extent_buffer_cache, align 4
  %9 = load i32, i32* @GFP_NOFS, align 4
  %10 = load i32, i32* @__GFP_NOFAIL, align 4
  %11 = or i32 %9, %10
  %12 = call %struct.extent_buffer* @kmem_cache_zalloc(i32 %8, i32 %11)
  store %struct.extent_buffer* %12, %struct.extent_buffer** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %15 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %14, i32 0, i32 17
  store i32 %13, i32* %15, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %18 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %20 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %21 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %20, i32 0, i32 16
  store %struct.btrfs_fs_info* %19, %struct.btrfs_fs_info** %21, align 8
  %22 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %23 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %22, i32 0, i32 15
  store i64 0, i64* %23, align 8
  %24 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %25 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %24, i32 0, i32 14
  %26 = call i32 @rwlock_init(i32* %25)
  %27 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %28 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %27, i32 0, i32 13
  %29 = call i32 @atomic_set(i32* %28, i32 0)
  %30 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %31 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %30, i32 0, i32 12
  store i64 0, i64* %31, align 8
  %32 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %33 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %32, i32 0, i32 1
  store i32 0, i32* %33, align 8
  %34 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %35 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %34, i32 0, i32 11
  %36 = call i32 @init_waitqueue_head(i32* %35)
  %37 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %38 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %37, i32 0, i32 10
  %39 = call i32 @init_waitqueue_head(i32* %38)
  %40 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %41 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %40, i32 0, i32 9
  %42 = call i32 @btrfs_leak_debug_add(i32* %41, i32* @buffers)
  %43 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %44 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %43, i32 0, i32 8
  %45 = call i32 @spin_lock_init(i32* %44)
  %46 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %47 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %46, i32 0, i32 7
  %48 = call i32 @atomic_set(i32* %47, i32 1)
  %49 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %50 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %49, i32 0, i32 6
  %51 = call i32 @atomic_set(i32* %50, i32 0)
  %52 = load i64, i64* @BTRFS_MAX_METADATA_BLOCKSIZE, align 8
  %53 = load i64, i64* @MAX_INLINE_EXTENT_BUFFER_SIZE, align 8
  %54 = icmp ugt i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @BUILD_BUG_ON(i32 %55)
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* @MAX_INLINE_EXTENT_BUFFER_SIZE, align 8
  %59 = icmp ugt i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @BUG_ON(i32 %60)
  %62 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  ret %struct.extent_buffer* %62
}

declare dso_local %struct.extent_buffer* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @btrfs_leak_debug_add(i32*, i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
