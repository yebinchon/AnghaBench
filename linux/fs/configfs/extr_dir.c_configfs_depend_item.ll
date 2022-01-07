; ModuleID = '/home/carl/AnghaBench/linux/fs/configfs/extr_dir.c_configfs_depend_item.c'
source_filename = "/home/carl/AnghaBench/linux/fs/configfs/extr_dir.c_configfs_depend_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.configfs_subsystem = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.config_item }
%struct.config_item = type { i32 }
%struct.configfs_dirent = type { i32 }
%struct.dentry = type { i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @configfs_depend_item(%struct.configfs_subsystem* %0, %struct.config_item* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.configfs_subsystem*, align 8
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.configfs_dirent*, align 8
  %8 = alloca %struct.config_item*, align 8
  %9 = alloca %struct.dentry*, align 8
  store %struct.configfs_subsystem* %0, %struct.configfs_subsystem** %4, align 8
  store %struct.config_item* %1, %struct.config_item** %5, align 8
  %10 = load %struct.configfs_subsystem*, %struct.configfs_subsystem** %4, align 8
  %11 = getelementptr inbounds %struct.configfs_subsystem, %struct.configfs_subsystem* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.config_item* %12, %struct.config_item** %8, align 8
  %13 = call %struct.dentry* (...) @configfs_pin_fs()
  store %struct.dentry* %13, %struct.dentry** %9, align 8
  %14 = load %struct.dentry*, %struct.dentry** %9, align 8
  %15 = call i64 @IS_ERR(%struct.dentry* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.dentry*, %struct.dentry** %9, align 8
  %19 = call i32 @PTR_ERR(%struct.dentry* %18)
  store i32 %19, i32* %3, align 4
  br label %46

20:                                               ; preds = %2
  %21 = load %struct.dentry*, %struct.dentry** %9, align 8
  %22 = call i32 @d_inode(%struct.dentry* %21)
  %23 = call i32 @inode_lock(i32 %22)
  %24 = load %struct.dentry*, %struct.dentry** %9, align 8
  %25 = getelementptr inbounds %struct.dentry, %struct.dentry* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.config_item*, %struct.config_item** %8, align 8
  %28 = call %struct.configfs_dirent* @configfs_find_subsys_dentry(i32 %26, %struct.config_item* %27)
  store %struct.configfs_dirent* %28, %struct.configfs_dirent** %7, align 8
  %29 = load %struct.configfs_dirent*, %struct.configfs_dirent** %7, align 8
  %30 = icmp ne %struct.configfs_dirent* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %20
  %32 = load i32, i32* @ENOENT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %40

34:                                               ; preds = %20
  %35 = load %struct.configfs_dirent*, %struct.configfs_dirent** %7, align 8
  %36 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.config_item*, %struct.config_item** %5, align 8
  %39 = call i32 @configfs_do_depend_item(i32 %37, %struct.config_item* %38)
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %34, %31
  %41 = load %struct.dentry*, %struct.dentry** %9, align 8
  %42 = call i32 @d_inode(%struct.dentry* %41)
  %43 = call i32 @inode_unlock(i32 %42)
  %44 = call i32 (...) @configfs_release_fs()
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %40, %17
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.dentry* @configfs_pin_fs(...) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i32 @inode_lock(i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local %struct.configfs_dirent* @configfs_find_subsys_dentry(i32, %struct.config_item*) #1

declare dso_local i32 @configfs_do_depend_item(i32, %struct.config_item*) #1

declare dso_local i32 @inode_unlock(i32) #1

declare dso_local i32 @configfs_release_fs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
