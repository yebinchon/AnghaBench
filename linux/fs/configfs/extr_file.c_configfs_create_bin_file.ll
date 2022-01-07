; ModuleID = '/home/carl/AnghaBench/linux/fs/configfs/extr_file.c_configfs_create_bin_file.c'
source_filename = "/home/carl/AnghaBench/linux/fs/configfs/extr_file.c_configfs_create_bin_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { %struct.dentry* }
%struct.dentry = type { i32, %struct.configfs_dirent* }
%struct.configfs_dirent = type { i32 }
%struct.configfs_bin_attribute = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@S_IALLUGO = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@I_MUTEX_NORMAL = common dso_local global i32 0, align 4
@CONFIGFS_ITEM_BIN_ATTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @configfs_create_bin_file(%struct.config_item* %0, %struct.configfs_bin_attribute* %1) #0 {
  %3 = alloca %struct.config_item*, align 8
  %4 = alloca %struct.configfs_bin_attribute*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.configfs_dirent*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %3, align 8
  store %struct.configfs_bin_attribute* %1, %struct.configfs_bin_attribute** %4, align 8
  %9 = load %struct.config_item*, %struct.config_item** %3, align 8
  %10 = getelementptr inbounds %struct.config_item, %struct.config_item* %9, i32 0, i32 0
  %11 = load %struct.dentry*, %struct.dentry** %10, align 8
  store %struct.dentry* %11, %struct.dentry** %5, align 8
  %12 = load %struct.dentry*, %struct.dentry** %5, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 1
  %14 = load %struct.configfs_dirent*, %struct.configfs_dirent** %13, align 8
  store %struct.configfs_dirent* %14, %struct.configfs_dirent** %6, align 8
  %15 = load %struct.configfs_bin_attribute*, %struct.configfs_bin_attribute** %4, align 8
  %16 = getelementptr inbounds %struct.configfs_bin_attribute, %struct.configfs_bin_attribute* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @S_IALLUGO, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @S_IFREG, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %23 = load %struct.dentry*, %struct.dentry** %5, align 8
  %24 = getelementptr inbounds %struct.dentry, %struct.dentry* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @I_MUTEX_NORMAL, align 4
  %27 = call i32 @inode_lock_nested(i32 %25, i32 %26)
  %28 = load %struct.configfs_dirent*, %struct.configfs_dirent** %6, align 8
  %29 = load %struct.configfs_bin_attribute*, %struct.configfs_bin_attribute** %4, align 8
  %30 = bitcast %struct.configfs_bin_attribute* %29 to i8*
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @CONFIGFS_ITEM_BIN_ATTR, align 4
  %33 = load %struct.configfs_dirent*, %struct.configfs_dirent** %6, align 8
  %34 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @configfs_make_dirent(%struct.configfs_dirent* %28, i32* null, i8* %30, i32 %31, i32 %32, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load %struct.dentry*, %struct.dentry** %5, align 8
  %38 = getelementptr inbounds %struct.dentry, %struct.dentry* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @inode_unlock(i32 %39)
  %41 = load i32, i32* %8, align 4
  ret i32 %41
}

declare dso_local i32 @inode_lock_nested(i32, i32) #1

declare dso_local i32 @configfs_make_dirent(%struct.configfs_dirent*, i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @inode_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
