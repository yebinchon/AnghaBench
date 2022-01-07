; ModuleID = '/home/carl/AnghaBench/linux/fs/configfs/extr_dir.c_configfs_unregister_group.c'
source_filename = "/home/carl/AnghaBench/linux/fs/configfs/extr_dir.c_configfs_unregister_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_group = type { %struct.TYPE_9__, %struct.configfs_subsystem* }
%struct.TYPE_9__ = type { %struct.TYPE_7__*, %struct.dentry* }
%struct.TYPE_7__ = type { %struct.dentry* }
%struct.dentry = type { %struct.configfs_dirent* }
%struct.configfs_dirent = type { %struct.configfs_fragment* }
%struct.configfs_fragment = type { i32, i32 }
%struct.configfs_subsystem = type { i32 }
%struct.TYPE_8__ = type { i32 }

@I_MUTEX_PARENT = common dso_local global i32 0, align 4
@configfs_dirent_lock = common dso_local global i32 0, align 4
@S_DEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @configfs_unregister_group(%struct.config_group* %0) #0 {
  %2 = alloca %struct.config_group*, align 8
  %3 = alloca %struct.configfs_subsystem*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.configfs_dirent*, align 8
  %7 = alloca %struct.configfs_fragment*, align 8
  store %struct.config_group* %0, %struct.config_group** %2, align 8
  %8 = load %struct.config_group*, %struct.config_group** %2, align 8
  %9 = getelementptr inbounds %struct.config_group, %struct.config_group* %8, i32 0, i32 1
  %10 = load %struct.configfs_subsystem*, %struct.configfs_subsystem** %9, align 8
  store %struct.configfs_subsystem* %10, %struct.configfs_subsystem** %3, align 8
  %11 = load %struct.config_group*, %struct.config_group** %2, align 8
  %12 = getelementptr inbounds %struct.config_group, %struct.config_group* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = load %struct.dentry*, %struct.dentry** %13, align 8
  store %struct.dentry* %14, %struct.dentry** %4, align 8
  %15 = load %struct.config_group*, %struct.config_group** %2, align 8
  %16 = getelementptr inbounds %struct.config_group, %struct.config_group* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.dentry*, %struct.dentry** %19, align 8
  store %struct.dentry* %20, %struct.dentry** %5, align 8
  %21 = load %struct.dentry*, %struct.dentry** %4, align 8
  %22 = getelementptr inbounds %struct.dentry, %struct.dentry* %21, i32 0, i32 0
  %23 = load %struct.configfs_dirent*, %struct.configfs_dirent** %22, align 8
  store %struct.configfs_dirent* %23, %struct.configfs_dirent** %6, align 8
  %24 = load %struct.configfs_dirent*, %struct.configfs_dirent** %6, align 8
  %25 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %24, i32 0, i32 0
  %26 = load %struct.configfs_fragment*, %struct.configfs_fragment** %25, align 8
  store %struct.configfs_fragment* %26, %struct.configfs_fragment** %7, align 8
  %27 = load %struct.configfs_fragment*, %struct.configfs_fragment** %7, align 8
  %28 = getelementptr inbounds %struct.configfs_fragment, %struct.configfs_fragment* %27, i32 0, i32 1
  %29 = call i32 @down_write(i32* %28)
  %30 = load %struct.configfs_fragment*, %struct.configfs_fragment** %7, align 8
  %31 = getelementptr inbounds %struct.configfs_fragment, %struct.configfs_fragment* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  %32 = load %struct.configfs_fragment*, %struct.configfs_fragment** %7, align 8
  %33 = getelementptr inbounds %struct.configfs_fragment, %struct.configfs_fragment* %32, i32 0, i32 1
  %34 = call i32 @up_write(i32* %33)
  %35 = load %struct.dentry*, %struct.dentry** %5, align 8
  %36 = call %struct.TYPE_8__* @d_inode(%struct.dentry* %35)
  %37 = load i32, i32* @I_MUTEX_PARENT, align 4
  %38 = call i32 @inode_lock_nested(%struct.TYPE_8__* %36, i32 %37)
  %39 = call i32 @spin_lock(i32* @configfs_dirent_lock)
  %40 = load %struct.dentry*, %struct.dentry** %4, align 8
  %41 = call i32 @configfs_detach_prep(%struct.dentry* %40, i32* null)
  %42 = call i32 @spin_unlock(i32* @configfs_dirent_lock)
  %43 = load %struct.config_group*, %struct.config_group** %2, align 8
  %44 = getelementptr inbounds %struct.config_group, %struct.config_group* %43, i32 0, i32 0
  %45 = call i32 @configfs_detach_group(%struct.TYPE_9__* %44)
  %46 = load i32, i32* @S_DEAD, align 4
  %47 = load %struct.dentry*, %struct.dentry** %4, align 8
  %48 = call %struct.TYPE_8__* @d_inode(%struct.dentry* %47)
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %46
  store i32 %51, i32* %49, align 4
  %52 = load %struct.dentry*, %struct.dentry** %4, align 8
  %53 = call i32 @dont_mount(%struct.dentry* %52)
  %54 = load %struct.dentry*, %struct.dentry** %5, align 8
  %55 = call %struct.TYPE_8__* @d_inode(%struct.dentry* %54)
  %56 = load %struct.dentry*, %struct.dentry** %4, align 8
  %57 = call i32 @fsnotify_rmdir(%struct.TYPE_8__* %55, %struct.dentry* %56)
  %58 = load %struct.dentry*, %struct.dentry** %4, align 8
  %59 = call i32 @d_delete(%struct.dentry* %58)
  %60 = load %struct.dentry*, %struct.dentry** %5, align 8
  %61 = call %struct.TYPE_8__* @d_inode(%struct.dentry* %60)
  %62 = call i32 @inode_unlock(%struct.TYPE_8__* %61)
  %63 = load %struct.dentry*, %struct.dentry** %4, align 8
  %64 = call i32 @dput(%struct.dentry* %63)
  %65 = load %struct.configfs_subsystem*, %struct.configfs_subsystem** %3, align 8
  %66 = getelementptr inbounds %struct.configfs_subsystem, %struct.configfs_subsystem* %65, i32 0, i32 0
  %67 = call i32 @mutex_lock(i32* %66)
  %68 = load %struct.config_group*, %struct.config_group** %2, align 8
  %69 = call i32 @unlink_group(%struct.config_group* %68)
  %70 = load %struct.configfs_subsystem*, %struct.configfs_subsystem** %3, align 8
  %71 = getelementptr inbounds %struct.configfs_subsystem, %struct.configfs_subsystem* %70, i32 0, i32 0
  %72 = call i32 @mutex_unlock(i32* %71)
  ret void
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @inode_lock_nested(%struct.TYPE_8__*, i32) #1

declare dso_local %struct.TYPE_8__* @d_inode(%struct.dentry*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @configfs_detach_prep(%struct.dentry*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @configfs_detach_group(%struct.TYPE_9__*) #1

declare dso_local i32 @dont_mount(%struct.dentry*) #1

declare dso_local i32 @fsnotify_rmdir(%struct.TYPE_8__*, %struct.dentry*) #1

declare dso_local i32 @d_delete(%struct.dentry*) #1

declare dso_local i32 @inode_unlock(%struct.TYPE_8__*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @unlink_group(%struct.config_group*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
