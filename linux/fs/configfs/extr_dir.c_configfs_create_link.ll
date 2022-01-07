; ModuleID = '/home/carl/AnghaBench/linux/fs/configfs/extr_dir.c_configfs_create_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/configfs/extr_dir.c_configfs_create_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.configfs_dirent = type { i32 }
%struct.dentry = type { %struct.configfs_dirent* }
%struct.inode = type { i8*, i32* }

@S_IFLNK = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@CONFIGFS_ITEM_LINK = common dso_local global i32 0, align 4
@configfs_symlink_inode_operations = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @configfs_create_link(%struct.configfs_dirent* %0, %struct.dentry* %1, %struct.dentry* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.configfs_dirent*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.configfs_dirent*, align 8
  %13 = alloca %struct.inode*, align 8
  store %struct.configfs_dirent* %0, %struct.configfs_dirent** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store %struct.dentry* %2, %struct.dentry** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* @S_IFLNK, align 4
  %15 = load i32, i32* @S_IRWXUGO, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %11, align 4
  %17 = load %struct.dentry*, %struct.dentry** %7, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 0
  %19 = load %struct.configfs_dirent*, %struct.configfs_dirent** %18, align 8
  store %struct.configfs_dirent* %19, %struct.configfs_dirent** %12, align 8
  %20 = load %struct.configfs_dirent*, %struct.configfs_dirent** %12, align 8
  %21 = load %struct.dentry*, %struct.dentry** %8, align 8
  %22 = load %struct.configfs_dirent*, %struct.configfs_dirent** %6, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @CONFIGFS_ITEM_LINK, align 4
  %25 = load %struct.configfs_dirent*, %struct.configfs_dirent** %12, align 8
  %26 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @configfs_make_dirent(%struct.configfs_dirent* %20, %struct.dentry* %21, %struct.configfs_dirent* %22, i32 %23, i32 %24, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %5, align 4
  br label %57

33:                                               ; preds = %4
  %34 = load %struct.dentry*, %struct.dentry** %8, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call %struct.inode* @configfs_create(%struct.dentry* %34, i32 %35)
  store %struct.inode* %36, %struct.inode** %13, align 8
  %37 = load %struct.inode*, %struct.inode** %13, align 8
  %38 = call i64 @IS_ERR(%struct.inode* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %52

41:                                               ; preds = %33
  %42 = load i8*, i8** %9, align 8
  %43 = load %struct.inode*, %struct.inode** %13, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  %45 = load %struct.inode*, %struct.inode** %13, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 1
  store i32* @configfs_symlink_inode_operations, i32** %46, align 8
  %47 = load %struct.dentry*, %struct.dentry** %8, align 8
  %48 = load %struct.inode*, %struct.inode** %13, align 8
  %49 = call i32 @d_instantiate(%struct.dentry* %47, %struct.inode* %48)
  %50 = load %struct.dentry*, %struct.dentry** %8, align 8
  %51 = call i32 @dget(%struct.dentry* %50)
  store i32 0, i32* %5, align 4
  br label %57

52:                                               ; preds = %40
  %53 = load %struct.dentry*, %struct.dentry** %8, align 8
  %54 = call i32 @configfs_remove_dirent(%struct.dentry* %53)
  %55 = load %struct.inode*, %struct.inode** %13, align 8
  %56 = call i32 @PTR_ERR(%struct.inode* %55)
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %52, %41, %31
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @configfs_make_dirent(%struct.configfs_dirent*, %struct.dentry*, %struct.configfs_dirent*, i32, i32, i32) #1

declare dso_local %struct.inode* @configfs_create(%struct.dentry*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @dget(%struct.dentry*) #1

declare dso_local i32 @configfs_remove_dirent(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
