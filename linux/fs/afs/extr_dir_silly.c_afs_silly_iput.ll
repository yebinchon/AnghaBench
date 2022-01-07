; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_dir_silly.c_afs_silly_iput.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_dir_silly.c_afs_silly_iput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, i32, i32, i32 }
%struct.inode = type { i32 }
%struct.afs_vnode = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@wq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%p{%pd},%llx\00", align 1
@DCACHE_NFSFS_RENAMED = common dso_local global i32 0, align 4
@AFS_VNODE_LOCK_DELETED = common dso_local global i32 0, align 4
@afs_flock_silly_delete = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_silly_iput(%struct.dentry* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.afs_vnode*, align 8
  %7 = alloca %struct.afs_vnode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %10 = load %struct.dentry*, %struct.dentry** %4, align 8
  %11 = getelementptr inbounds %struct.dentry, %struct.dentry* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.inode* @d_inode(i32 %12)
  %14 = call %struct.afs_vnode* @AFS_FS_I(%struct.inode* %13)
  store %struct.afs_vnode* %14, %struct.afs_vnode** %6, align 8
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = call %struct.afs_vnode* @AFS_FS_I(%struct.inode* %15)
  store %struct.afs_vnode* %16, %struct.afs_vnode** %7, align 8
  %17 = load i32, i32* @wq, align 4
  %18 = call i32 @DECLARE_WAIT_QUEUE_HEAD_ONSTACK(i32 %17)
  %19 = load %struct.dentry*, %struct.dentry** %4, align 8
  %20 = load %struct.dentry*, %struct.dentry** %4, align 8
  %21 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %22 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @_enter(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.dentry* %19, %struct.dentry* %20, i32 %24)
  %26 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %27 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %26, i32 0, i32 0
  %28 = call i32 @down_read(i32* %27)
  %29 = load %struct.dentry*, %struct.dentry** %4, align 8
  %30 = getelementptr inbounds %struct.dentry, %struct.dentry* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.dentry*, %struct.dentry** %4, align 8
  %33 = getelementptr inbounds %struct.dentry, %struct.dentry* %32, i32 0, i32 2
  %34 = call %struct.dentry* @d_alloc_parallel(i32 %31, i32* %33, i32* @wq)
  store %struct.dentry* %34, %struct.dentry** %8, align 8
  %35 = load %struct.dentry*, %struct.dentry** %8, align 8
  %36 = call i64 @IS_ERR(%struct.dentry* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %2
  %39 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %40 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %39, i32 0, i32 0
  %41 = call i32 @up_read(i32* %40)
  store i32 0, i32* %3, align 4
  br label %103

42:                                               ; preds = %2
  %43 = load %struct.dentry*, %struct.dentry** %8, align 8
  %44 = call i32 @d_in_lookup(%struct.dentry* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %76, label %46

46:                                               ; preds = %42
  store i32 0, i32* %9, align 4
  %47 = load %struct.dentry*, %struct.dentry** %8, align 8
  %48 = getelementptr inbounds %struct.dentry, %struct.dentry* %47, i32 0, i32 1
  %49 = call i32 @spin_lock(i32* %48)
  %50 = load %struct.dentry*, %struct.dentry** %8, align 8
  %51 = call i64 @d_really_is_positive(%struct.dentry* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %46
  %54 = load %struct.dentry*, %struct.dentry** %8, align 8
  %55 = getelementptr inbounds %struct.dentry, %struct.dentry* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @DCACHE_NFSFS_RENAMED, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %53
  %61 = load i32, i32* @DCACHE_NFSFS_RENAMED, align 4
  %62 = load %struct.dentry*, %struct.dentry** %8, align 8
  %63 = getelementptr inbounds %struct.dentry, %struct.dentry* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  store i32 1, i32* %9, align 4
  br label %66

66:                                               ; preds = %60, %53, %46
  %67 = load %struct.dentry*, %struct.dentry** %8, align 8
  %68 = getelementptr inbounds %struct.dentry, %struct.dentry* %67, i32 0, i32 1
  %69 = call i32 @spin_unlock(i32* %68)
  %70 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %71 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %70, i32 0, i32 0
  %72 = call i32 @up_read(i32* %71)
  %73 = load %struct.dentry*, %struct.dentry** %8, align 8
  %74 = call i32 @dput(%struct.dentry* %73)
  %75 = load i32, i32* %9, align 4
  store i32 %75, i32* %3, align 4
  br label %103

76:                                               ; preds = %42
  %77 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %78 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %77, i32 0, i32 2
  %79 = call i32 @spin_lock(i32* %78)
  %80 = load i32, i32* @AFS_VNODE_LOCK_DELETED, align 4
  %81 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %82 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  %83 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %84 = load i32, i32* @afs_flock_silly_delete, align 4
  %85 = call i32 @trace_afs_flock_ev(%struct.afs_vnode* %83, i32* null, i32 %84, i32 0)
  %86 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %87 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %86, i32 0, i32 2
  %88 = call i32 @spin_unlock(i32* %87)
  %89 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %90 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %91 = load %struct.dentry*, %struct.dentry** %4, align 8
  %92 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %93 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @afs_do_silly_unlink(%struct.afs_vnode* %89, %struct.afs_vnode* %90, %struct.dentry* %91, i32 %94)
  %96 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %97 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %96, i32 0, i32 0
  %98 = call i32 @up_read(i32* %97)
  %99 = load %struct.dentry*, %struct.dentry** %8, align 8
  %100 = call i32 @d_lookup_done(%struct.dentry* %99)
  %101 = load %struct.dentry*, %struct.dentry** %8, align 8
  %102 = call i32 @dput(%struct.dentry* %101)
  store i32 1, i32* %3, align 4
  br label %103

103:                                              ; preds = %76, %66, %38
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local %struct.afs_vnode* @AFS_FS_I(%struct.inode*) #1

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local i32 @DECLARE_WAIT_QUEUE_HEAD_ONSTACK(i32) #1

declare dso_local i32 @_enter(i8*, %struct.dentry*, %struct.dentry*, i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.dentry* @d_alloc_parallel(i32, i32*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @d_in_lookup(%struct.dentry*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @d_really_is_positive(%struct.dentry*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @trace_afs_flock_ev(%struct.afs_vnode*, i32*, i32, i32) #1

declare dso_local i32 @afs_do_silly_unlink(%struct.afs_vnode*, %struct.afs_vnode*, %struct.dentry*, i32) #1

declare dso_local i32 @d_lookup_done(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
