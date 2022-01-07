; ModuleID = '/home/carl/AnghaBench/linux/fs/configfs/extr_dir.c_configfs_unregister_subsystem.c'
source_filename = "/home/carl/AnghaBench/linux/fs/configfs/extr_dir.c_configfs_unregister_subsystem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.configfs_subsystem = type { %struct.config_group }
%struct.config_group = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.dentry* }
%struct.dentry = type { %struct.dentry*, %struct.configfs_dirent*, %struct.TYPE_7__* }
%struct.configfs_dirent = type { %struct.configfs_fragment* }
%struct.configfs_fragment = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.dentry* }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Tried to unregister non-subsystem!\0A\00", align 1
@I_MUTEX_PARENT = common dso_local global i32 0, align 4
@I_MUTEX_CHILD = common dso_local global i32 0, align 4
@configfs_symlink_mutex = common dso_local global i32 0, align 4
@configfs_dirent_lock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Tried to unregister non-empty subsystem!\0A\00", align 1
@S_DEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @configfs_unregister_subsystem(%struct.configfs_subsystem* %0) #0 {
  %2 = alloca %struct.configfs_subsystem*, align 8
  %3 = alloca %struct.config_group*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.configfs_dirent*, align 8
  %7 = alloca %struct.configfs_fragment*, align 8
  store %struct.configfs_subsystem* %0, %struct.configfs_subsystem** %2, align 8
  %8 = load %struct.configfs_subsystem*, %struct.configfs_subsystem** %2, align 8
  %9 = getelementptr inbounds %struct.configfs_subsystem, %struct.configfs_subsystem* %8, i32 0, i32 0
  store %struct.config_group* %9, %struct.config_group** %3, align 8
  %10 = load %struct.config_group*, %struct.config_group** %3, align 8
  %11 = getelementptr inbounds %struct.config_group, %struct.config_group* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load %struct.dentry*, %struct.dentry** %12, align 8
  store %struct.dentry* %13, %struct.dentry** %4, align 8
  %14 = load %struct.dentry*, %struct.dentry** %4, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 2
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.dentry*, %struct.dentry** %17, align 8
  store %struct.dentry* %18, %struct.dentry** %5, align 8
  %19 = load %struct.dentry*, %struct.dentry** %4, align 8
  %20 = getelementptr inbounds %struct.dentry, %struct.dentry* %19, i32 0, i32 1
  %21 = load %struct.configfs_dirent*, %struct.configfs_dirent** %20, align 8
  store %struct.configfs_dirent* %21, %struct.configfs_dirent** %6, align 8
  %22 = load %struct.configfs_dirent*, %struct.configfs_dirent** %6, align 8
  %23 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %22, i32 0, i32 0
  %24 = load %struct.configfs_fragment*, %struct.configfs_fragment** %23, align 8
  store %struct.configfs_fragment* %24, %struct.configfs_fragment** %7, align 8
  %25 = load %struct.dentry*, %struct.dentry** %4, align 8
  %26 = getelementptr inbounds %struct.dentry, %struct.dentry* %25, i32 0, i32 0
  %27 = load %struct.dentry*, %struct.dentry** %26, align 8
  %28 = load %struct.dentry*, %struct.dentry** %5, align 8
  %29 = icmp ne %struct.dentry* %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %87

32:                                               ; preds = %1
  %33 = load %struct.configfs_fragment*, %struct.configfs_fragment** %7, align 8
  %34 = getelementptr inbounds %struct.configfs_fragment, %struct.configfs_fragment* %33, i32 0, i32 1
  %35 = call i32 @down_write(i32* %34)
  %36 = load %struct.configfs_fragment*, %struct.configfs_fragment** %7, align 8
  %37 = getelementptr inbounds %struct.configfs_fragment, %struct.configfs_fragment* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  %38 = load %struct.configfs_fragment*, %struct.configfs_fragment** %7, align 8
  %39 = getelementptr inbounds %struct.configfs_fragment, %struct.configfs_fragment* %38, i32 0, i32 1
  %40 = call i32 @up_write(i32* %39)
  %41 = load %struct.dentry*, %struct.dentry** %5, align 8
  %42 = call %struct.TYPE_8__* @d_inode(%struct.dentry* %41)
  %43 = load i32, i32* @I_MUTEX_PARENT, align 4
  %44 = call i32 @inode_lock_nested(%struct.TYPE_8__* %42, i32 %43)
  %45 = load %struct.dentry*, %struct.dentry** %4, align 8
  %46 = call %struct.TYPE_8__* @d_inode(%struct.dentry* %45)
  %47 = load i32, i32* @I_MUTEX_CHILD, align 4
  %48 = call i32 @inode_lock_nested(%struct.TYPE_8__* %46, i32 %47)
  %49 = call i32 @mutex_lock(i32* @configfs_symlink_mutex)
  %50 = call i32 @spin_lock(i32* @configfs_dirent_lock)
  %51 = load %struct.dentry*, %struct.dentry** %4, align 8
  %52 = call i64 @configfs_detach_prep(%struct.dentry* %51, i32* null)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %32
  %55 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %32
  %57 = call i32 @spin_unlock(i32* @configfs_dirent_lock)
  %58 = call i32 @mutex_unlock(i32* @configfs_symlink_mutex)
  %59 = load %struct.config_group*, %struct.config_group** %3, align 8
  %60 = getelementptr inbounds %struct.config_group, %struct.config_group* %59, i32 0, i32 0
  %61 = call i32 @configfs_detach_group(%struct.TYPE_9__* %60)
  %62 = load i32, i32* @S_DEAD, align 4
  %63 = load %struct.dentry*, %struct.dentry** %4, align 8
  %64 = call %struct.TYPE_8__* @d_inode(%struct.dentry* %63)
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %62
  store i32 %67, i32* %65, align 4
  %68 = load %struct.dentry*, %struct.dentry** %4, align 8
  %69 = call i32 @dont_mount(%struct.dentry* %68)
  %70 = load %struct.dentry*, %struct.dentry** %5, align 8
  %71 = call %struct.TYPE_8__* @d_inode(%struct.dentry* %70)
  %72 = load %struct.dentry*, %struct.dentry** %4, align 8
  %73 = call i32 @fsnotify_rmdir(%struct.TYPE_8__* %71, %struct.dentry* %72)
  %74 = load %struct.dentry*, %struct.dentry** %4, align 8
  %75 = call %struct.TYPE_8__* @d_inode(%struct.dentry* %74)
  %76 = call i32 @inode_unlock(%struct.TYPE_8__* %75)
  %77 = load %struct.dentry*, %struct.dentry** %4, align 8
  %78 = call i32 @d_delete(%struct.dentry* %77)
  %79 = load %struct.dentry*, %struct.dentry** %5, align 8
  %80 = call %struct.TYPE_8__* @d_inode(%struct.dentry* %79)
  %81 = call i32 @inode_unlock(%struct.TYPE_8__* %80)
  %82 = load %struct.dentry*, %struct.dentry** %4, align 8
  %83 = call i32 @dput(%struct.dentry* %82)
  %84 = load %struct.config_group*, %struct.config_group** %3, align 8
  %85 = call i32 @unlink_group(%struct.config_group* %84)
  %86 = call i32 (...) @configfs_release_fs()
  br label %87

87:                                               ; preds = %56, %30
  ret void
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @inode_lock_nested(%struct.TYPE_8__*, i32) #1

declare dso_local %struct.TYPE_8__* @d_inode(%struct.dentry*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @configfs_detach_prep(%struct.dentry*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @configfs_detach_group(%struct.TYPE_9__*) #1

declare dso_local i32 @dont_mount(%struct.dentry*) #1

declare dso_local i32 @fsnotify_rmdir(%struct.TYPE_8__*, %struct.dentry*) #1

declare dso_local i32 @inode_unlock(%struct.TYPE_8__*) #1

declare dso_local i32 @d_delete(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @unlink_group(%struct.config_group*) #1

declare dso_local i32 @configfs_release_fs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
