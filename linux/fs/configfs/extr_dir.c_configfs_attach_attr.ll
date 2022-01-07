; ModuleID = '/home/carl/AnghaBench/linux/fs/configfs/extr_dir.c_configfs_attach_attr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/configfs/extr_dir.c_configfs_attach_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.configfs_dirent = type { i32, %struct.dentry*, %struct.configfs_attribute* }
%struct.configfs_attribute = type { i32 }
%struct.dentry = type { i32 }
%struct.inode = type { i32*, i64 }

@configfs_dirent_lock = common dso_local global i32 0, align 4
@S_IALLUGO = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@CONFIGFS_ITEM_BIN_ATTR = common dso_local global i32 0, align 4
@configfs_bin_file_operations = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@configfs_file_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.configfs_dirent*, %struct.dentry*)* @configfs_attach_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @configfs_attach_attr(%struct.configfs_dirent* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.configfs_dirent*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.configfs_attribute*, align 8
  %7 = alloca %struct.inode*, align 8
  store %struct.configfs_dirent* %0, %struct.configfs_dirent** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %8 = load %struct.configfs_dirent*, %struct.configfs_dirent** %4, align 8
  %9 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %8, i32 0, i32 2
  %10 = load %struct.configfs_attribute*, %struct.configfs_attribute** %9, align 8
  store %struct.configfs_attribute* %10, %struct.configfs_attribute** %6, align 8
  %11 = call i32 @spin_lock(i32* @configfs_dirent_lock)
  %12 = load %struct.configfs_dirent*, %struct.configfs_dirent** %4, align 8
  %13 = call i32 @configfs_get(%struct.configfs_dirent* %12)
  %14 = load %struct.dentry*, %struct.dentry** %5, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.dentry*, %struct.dentry** %5, align 8
  %17 = load %struct.configfs_dirent*, %struct.configfs_dirent** %4, align 8
  %18 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %17, i32 0, i32 1
  store %struct.dentry* %16, %struct.dentry** %18, align 8
  %19 = call i32 @spin_unlock(i32* @configfs_dirent_lock)
  %20 = load %struct.dentry*, %struct.dentry** %5, align 8
  %21 = load %struct.configfs_attribute*, %struct.configfs_attribute** %6, align 8
  %22 = getelementptr inbounds %struct.configfs_attribute, %struct.configfs_attribute* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @S_IALLUGO, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @S_IFREG, align 4
  %27 = or i32 %25, %26
  %28 = call %struct.inode* @configfs_create(%struct.dentry* %20, i32 %27)
  store %struct.inode* %28, %struct.inode** %7, align 8
  %29 = load %struct.inode*, %struct.inode** %7, align 8
  %30 = call i64 @IS_ERR(%struct.inode* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %2
  %33 = load %struct.configfs_dirent*, %struct.configfs_dirent** %4, align 8
  %34 = call i32 @configfs_put(%struct.configfs_dirent* %33)
  %35 = load %struct.inode*, %struct.inode** %7, align 8
  %36 = call i32 @PTR_ERR(%struct.inode* %35)
  store i32 %36, i32* %3, align 4
  br label %59

37:                                               ; preds = %2
  %38 = load %struct.configfs_dirent*, %struct.configfs_dirent** %4, align 8
  %39 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @CONFIGFS_ITEM_BIN_ATTR, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load %struct.inode*, %struct.inode** %7, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  %47 = load %struct.inode*, %struct.inode** %7, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 0
  store i32* @configfs_bin_file_operations, i32** %48, align 8
  br label %55

49:                                               ; preds = %37
  %50 = load i64, i64* @PAGE_SIZE, align 8
  %51 = load %struct.inode*, %struct.inode** %7, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  %53 = load %struct.inode*, %struct.inode** %7, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 0
  store i32* @configfs_file_operations, i32** %54, align 8
  br label %55

55:                                               ; preds = %49, %44
  %56 = load %struct.dentry*, %struct.dentry** %5, align 8
  %57 = load %struct.inode*, %struct.inode** %7, align 8
  %58 = call i32 @d_add(%struct.dentry* %56, %struct.inode* %57)
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %55, %32
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @configfs_get(%struct.configfs_dirent*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.inode* @configfs_create(%struct.dentry*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @configfs_put(%struct.configfs_dirent*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @d_add(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
