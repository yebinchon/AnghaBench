; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_super.c_afs_alloc_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_super.c_afs_alloc_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.super_block = type { i32 }
%struct.afs_vnode = type { i32, %struct.inode, i32, i32, i32*, i32, i32*, i32*, i32*, i32, i32 }

@afs_inode_cachep = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@afs_count_active_inodes = common dso_local global i32 0, align 4
@AFS_VNODE_UNSET = common dso_local global i32 0, align 4
@AFS_VNODE_LOCK_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c" = %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.super_block*)* @afs_alloc_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @afs_alloc_inode(%struct.super_block* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.afs_vnode*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %5 = load i32, i32* @afs_inode_cachep, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.afs_vnode* @kmem_cache_alloc(i32 %5, i32 %6)
  store %struct.afs_vnode* %7, %struct.afs_vnode** %4, align 8
  %8 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %9 = icmp ne %struct.afs_vnode* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.inode* null, %struct.inode** %2, align 8
  br label %44

11:                                               ; preds = %1
  %12 = call i32 @atomic_inc(i32* @afs_count_active_inodes)
  %13 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %14 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %13, i32 0, i32 10
  %15 = call i32 @memset(i32* %14, i32 0, i32 4)
  %16 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %17 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %16, i32 0, i32 9
  %18 = call i32 @memset(i32* %17, i32 0, i32 4)
  %19 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %20 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %19, i32 0, i32 8
  store i32* null, i32** %20, align 8
  %21 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %22 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %21, i32 0, i32 7
  store i32* null, i32** %22, align 8
  %23 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %24 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %23, i32 0, i32 6
  store i32* null, i32** %24, align 8
  %25 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %26 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @RCU_INIT_POINTER(i32 %27, i32* null)
  %29 = load i32, i32* @AFS_VNODE_UNSET, align 4
  %30 = shl i32 1, %29
  %31 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %32 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @AFS_VNODE_LOCK_NONE, align 4
  %34 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %35 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %37 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %36, i32 0, i32 2
  %38 = call i32 @init_rwsem(i32* %37)
  %39 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %40 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %39, i32 0, i32 1
  %41 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.inode* %40)
  %42 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %43 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %42, i32 0, i32 1
  store %struct.inode* %43, %struct.inode** %2, align 8
  br label %44

44:                                               ; preds = %11, %10
  %45 = load %struct.inode*, %struct.inode** %2, align 8
  ret %struct.inode* %45
}

declare dso_local %struct.afs_vnode* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @_leave(i8*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
