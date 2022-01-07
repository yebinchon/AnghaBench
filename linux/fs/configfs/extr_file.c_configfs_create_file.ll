; ModuleID = '/home/carl/AnghaBench/linux/fs/configfs/extr_file.c_configfs_create_file.c'
source_filename = "/home/carl/AnghaBench/linux/fs/configfs/extr_file.c_configfs_create_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { %struct.dentry* }
%struct.dentry = type { %struct.configfs_dirent* }
%struct.configfs_dirent = type { i32 }
%struct.configfs_attribute = type { i32 }

@S_IALLUGO = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@I_MUTEX_NORMAL = common dso_local global i32 0, align 4
@CONFIGFS_ITEM_ATTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @configfs_create_file(%struct.config_item* %0, %struct.configfs_attribute* %1) #0 {
  %3 = alloca %struct.config_item*, align 8
  %4 = alloca %struct.configfs_attribute*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.configfs_dirent*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %3, align 8
  store %struct.configfs_attribute* %1, %struct.configfs_attribute** %4, align 8
  %9 = load %struct.config_item*, %struct.config_item** %3, align 8
  %10 = getelementptr inbounds %struct.config_item, %struct.config_item* %9, i32 0, i32 0
  %11 = load %struct.dentry*, %struct.dentry** %10, align 8
  store %struct.dentry* %11, %struct.dentry** %5, align 8
  %12 = load %struct.dentry*, %struct.dentry** %5, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 0
  %14 = load %struct.configfs_dirent*, %struct.configfs_dirent** %13, align 8
  store %struct.configfs_dirent* %14, %struct.configfs_dirent** %6, align 8
  %15 = load %struct.configfs_attribute*, %struct.configfs_attribute** %4, align 8
  %16 = getelementptr inbounds %struct.configfs_attribute, %struct.configfs_attribute* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @S_IALLUGO, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @S_IFREG, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %22 = load %struct.dentry*, %struct.dentry** %5, align 8
  %23 = call i32 @d_inode(%struct.dentry* %22)
  %24 = load i32, i32* @I_MUTEX_NORMAL, align 4
  %25 = call i32 @inode_lock_nested(i32 %23, i32 %24)
  %26 = load %struct.configfs_dirent*, %struct.configfs_dirent** %6, align 8
  %27 = load %struct.configfs_attribute*, %struct.configfs_attribute** %4, align 8
  %28 = bitcast %struct.configfs_attribute* %27 to i8*
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @CONFIGFS_ITEM_ATTR, align 4
  %31 = load %struct.configfs_dirent*, %struct.configfs_dirent** %6, align 8
  %32 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @configfs_make_dirent(%struct.configfs_dirent* %26, i32* null, i8* %28, i32 %29, i32 %30, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load %struct.dentry*, %struct.dentry** %5, align 8
  %36 = call i32 @d_inode(%struct.dentry* %35)
  %37 = call i32 @inode_unlock(i32 %36)
  %38 = load i32, i32* %8, align 4
  ret i32 %38
}

declare dso_local i32 @inode_lock_nested(i32, i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i32 @configfs_make_dirent(%struct.configfs_dirent*, i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @inode_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
