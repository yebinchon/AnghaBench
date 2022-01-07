; ModuleID = '/home/carl/AnghaBench/linux/fs/configfs/extr_dir.c_configfs_register_group.c'
source_filename = "/home/carl/AnghaBench/linux/fs/configfs/extr_dir.c_configfs_register_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_group = type { %struct.TYPE_2__, %struct.configfs_subsystem* }
%struct.TYPE_2__ = type { %struct.dentry* }
%struct.dentry = type { i32 }
%struct.configfs_subsystem = type { i32 }
%struct.configfs_fragment = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@I_MUTEX_PARENT = common dso_local global i32 0, align 4
@configfs_dirent_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @configfs_register_group(%struct.config_group* %0, %struct.config_group* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.config_group*, align 8
  %5 = alloca %struct.config_group*, align 8
  %6 = alloca %struct.configfs_subsystem*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.configfs_fragment*, align 8
  %9 = alloca i32, align 4
  store %struct.config_group* %0, %struct.config_group** %4, align 8
  store %struct.config_group* %1, %struct.config_group** %5, align 8
  %10 = load %struct.config_group*, %struct.config_group** %4, align 8
  %11 = getelementptr inbounds %struct.config_group, %struct.config_group* %10, i32 0, i32 1
  %12 = load %struct.configfs_subsystem*, %struct.configfs_subsystem** %11, align 8
  store %struct.configfs_subsystem* %12, %struct.configfs_subsystem** %6, align 8
  %13 = call %struct.configfs_fragment* (...) @new_fragment()
  store %struct.configfs_fragment* %13, %struct.configfs_fragment** %8, align 8
  %14 = load %struct.configfs_fragment*, %struct.configfs_fragment** %8, align 8
  %15 = icmp ne %struct.configfs_fragment* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %74

19:                                               ; preds = %2
  %20 = load %struct.configfs_subsystem*, %struct.configfs_subsystem** %6, align 8
  %21 = getelementptr inbounds %struct.configfs_subsystem, %struct.configfs_subsystem* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.config_group*, %struct.config_group** %4, align 8
  %24 = load %struct.config_group*, %struct.config_group** %5, align 8
  %25 = call i32 @link_group(%struct.config_group* %23, %struct.config_group* %24)
  %26 = load %struct.configfs_subsystem*, %struct.configfs_subsystem** %6, align 8
  %27 = getelementptr inbounds %struct.configfs_subsystem, %struct.configfs_subsystem* %26, i32 0, i32 0
  %28 = call i32 @mutex_unlock(i32* %27)
  %29 = load %struct.config_group*, %struct.config_group** %4, align 8
  %30 = getelementptr inbounds %struct.config_group, %struct.config_group* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.dentry*, %struct.dentry** %31, align 8
  store %struct.dentry* %32, %struct.dentry** %7, align 8
  %33 = load %struct.dentry*, %struct.dentry** %7, align 8
  %34 = call i32 @d_inode(%struct.dentry* %33)
  %35 = load i32, i32* @I_MUTEX_PARENT, align 4
  %36 = call i32 @inode_lock_nested(i32 %34, i32 %35)
  %37 = load %struct.config_group*, %struct.config_group** %4, align 8
  %38 = load %struct.config_group*, %struct.config_group** %5, align 8
  %39 = load %struct.configfs_fragment*, %struct.configfs_fragment** %8, align 8
  %40 = call i32 @create_default_group(%struct.config_group* %37, %struct.config_group* %38, %struct.configfs_fragment* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %19
  br label %59

44:                                               ; preds = %19
  %45 = call i32 @spin_lock(i32* @configfs_dirent_lock)
  %46 = load %struct.config_group*, %struct.config_group** %5, align 8
  %47 = getelementptr inbounds %struct.config_group, %struct.config_group* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load %struct.dentry*, %struct.dentry** %48, align 8
  %50 = getelementptr inbounds %struct.dentry, %struct.dentry* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @configfs_dir_set_ready(i32 %51)
  %53 = call i32 @spin_unlock(i32* @configfs_dirent_lock)
  %54 = load %struct.dentry*, %struct.dentry** %7, align 8
  %55 = call i32 @d_inode(%struct.dentry* %54)
  %56 = call i32 @inode_unlock(i32 %55)
  %57 = load %struct.configfs_fragment*, %struct.configfs_fragment** %8, align 8
  %58 = call i32 @put_fragment(%struct.configfs_fragment* %57)
  store i32 0, i32* %3, align 4
  br label %74

59:                                               ; preds = %43
  %60 = load %struct.dentry*, %struct.dentry** %7, align 8
  %61 = call i32 @d_inode(%struct.dentry* %60)
  %62 = call i32 @inode_unlock(i32 %61)
  %63 = load %struct.configfs_subsystem*, %struct.configfs_subsystem** %6, align 8
  %64 = getelementptr inbounds %struct.configfs_subsystem, %struct.configfs_subsystem* %63, i32 0, i32 0
  %65 = call i32 @mutex_lock(i32* %64)
  %66 = load %struct.config_group*, %struct.config_group** %5, align 8
  %67 = call i32 @unlink_group(%struct.config_group* %66)
  %68 = load %struct.configfs_subsystem*, %struct.configfs_subsystem** %6, align 8
  %69 = getelementptr inbounds %struct.configfs_subsystem, %struct.configfs_subsystem* %68, i32 0, i32 0
  %70 = call i32 @mutex_unlock(i32* %69)
  %71 = load %struct.configfs_fragment*, %struct.configfs_fragment** %8, align 8
  %72 = call i32 @put_fragment(%struct.configfs_fragment* %71)
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %59, %44, %16
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.configfs_fragment* @new_fragment(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @link_group(%struct.config_group*, %struct.config_group*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @inode_lock_nested(i32, i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i32 @create_default_group(%struct.config_group*, %struct.config_group*, %struct.configfs_fragment*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @configfs_dir_set_ready(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @inode_unlock(i32) #1

declare dso_local i32 @put_fragment(%struct.configfs_fragment*) #1

declare dso_local i32 @unlink_group(%struct.config_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
