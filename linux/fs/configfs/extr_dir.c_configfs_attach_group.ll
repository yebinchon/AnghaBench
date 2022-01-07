; ModuleID = '/home/carl/AnghaBench/linux/fs/configfs/extr_dir.c_configfs_attach_group.c'
source_filename = "/home/carl/AnghaBench/linux/fs/configfs/extr_dir.c_configfs_attach_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.dentry = type { %struct.configfs_dirent* }
%struct.configfs_dirent = type { i32 }
%struct.configfs_fragment = type { i32 }
%struct.TYPE_4__ = type { i32 }

@CONFIGFS_USET_DIR = common dso_local global i32 0, align 4
@I_MUTEX_CHILD = common dso_local global i32 0, align 4
@S_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, %struct.config_item*, %struct.dentry*, %struct.configfs_fragment*)* @configfs_attach_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @configfs_attach_group(%struct.config_item* %0, %struct.config_item* %1, %struct.dentry* %2, %struct.configfs_fragment* %3) #0 {
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca %struct.config_item*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.configfs_fragment*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.configfs_dirent*, align 8
  store %struct.config_item* %0, %struct.config_item** %5, align 8
  store %struct.config_item* %1, %struct.config_item** %6, align 8
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  store %struct.configfs_fragment* %3, %struct.configfs_fragment** %8, align 8
  %11 = load %struct.config_item*, %struct.config_item** %5, align 8
  %12 = load %struct.config_item*, %struct.config_item** %6, align 8
  %13 = load %struct.dentry*, %struct.dentry** %7, align 8
  %14 = load %struct.configfs_fragment*, %struct.configfs_fragment** %8, align 8
  %15 = call i32 @configfs_attach_item(%struct.config_item* %11, %struct.config_item* %12, %struct.dentry* %13, %struct.configfs_fragment* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %62, label %18

18:                                               ; preds = %4
  %19 = load %struct.dentry*, %struct.dentry** %7, align 8
  %20 = getelementptr inbounds %struct.dentry, %struct.dentry* %19, i32 0, i32 0
  %21 = load %struct.configfs_dirent*, %struct.configfs_dirent** %20, align 8
  store %struct.configfs_dirent* %21, %struct.configfs_dirent** %10, align 8
  %22 = load i32, i32* @CONFIGFS_USET_DIR, align 4
  %23 = load %struct.configfs_dirent*, %struct.configfs_dirent** %10, align 8
  %24 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load %struct.dentry*, %struct.dentry** %7, align 8
  %28 = call %struct.TYPE_4__* @d_inode(%struct.dentry* %27)
  %29 = load i32, i32* @I_MUTEX_CHILD, align 4
  %30 = call i32 @inode_lock_nested(%struct.TYPE_4__* %28, i32 %29)
  %31 = load %struct.configfs_dirent*, %struct.configfs_dirent** %10, align 8
  %32 = call i32 @configfs_adjust_dir_dirent_depth_before_populate(%struct.configfs_dirent* %31)
  %33 = load %struct.config_item*, %struct.config_item** %6, align 8
  %34 = call i32 @to_config_group(%struct.config_item* %33)
  %35 = load %struct.configfs_fragment*, %struct.configfs_fragment** %8, align 8
  %36 = call i32 @populate_groups(i32 %34, %struct.configfs_fragment* %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %18
  %40 = load %struct.config_item*, %struct.config_item** %6, align 8
  %41 = call i32 @configfs_detach_item(%struct.config_item* %40)
  %42 = load i32, i32* @S_DEAD, align 4
  %43 = load %struct.dentry*, %struct.dentry** %7, align 8
  %44 = call %struct.TYPE_4__* @d_inode(%struct.dentry* %43)
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %42
  store i32 %47, i32* %45, align 4
  %48 = load %struct.dentry*, %struct.dentry** %7, align 8
  %49 = call i32 @dont_mount(%struct.dentry* %48)
  br label %50

50:                                               ; preds = %39, %18
  %51 = load %struct.configfs_dirent*, %struct.configfs_dirent** %10, align 8
  %52 = call i32 @configfs_adjust_dir_dirent_depth_after_populate(%struct.configfs_dirent* %51)
  %53 = load %struct.dentry*, %struct.dentry** %7, align 8
  %54 = call %struct.TYPE_4__* @d_inode(%struct.dentry* %53)
  %55 = call i32 @inode_unlock(%struct.TYPE_4__* %54)
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = load %struct.dentry*, %struct.dentry** %7, align 8
  %60 = call i32 @d_delete(%struct.dentry* %59)
  br label %61

61:                                               ; preds = %58, %50
  br label %62

62:                                               ; preds = %61, %4
  %63 = load i32, i32* %9, align 4
  ret i32 %63
}

declare dso_local i32 @configfs_attach_item(%struct.config_item*, %struct.config_item*, %struct.dentry*, %struct.configfs_fragment*) #1

declare dso_local i32 @inode_lock_nested(%struct.TYPE_4__*, i32) #1

declare dso_local %struct.TYPE_4__* @d_inode(%struct.dentry*) #1

declare dso_local i32 @configfs_adjust_dir_dirent_depth_before_populate(%struct.configfs_dirent*) #1

declare dso_local i32 @populate_groups(i32, %struct.configfs_fragment*) #1

declare dso_local i32 @to_config_group(%struct.config_item*) #1

declare dso_local i32 @configfs_detach_item(%struct.config_item*) #1

declare dso_local i32 @dont_mount(%struct.dentry*) #1

declare dso_local i32 @configfs_adjust_dir_dirent_depth_after_populate(%struct.configfs_dirent*) #1

declare dso_local i32 @inode_unlock(%struct.TYPE_4__*) #1

declare dso_local i32 @d_delete(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
