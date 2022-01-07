; ModuleID = '/home/carl/AnghaBench/linux/fs/configfs/extr_dir.c_configfs_create_dir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/configfs/extr_dir.c_configfs_create_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { %struct.dentry* }
%struct.dentry = type { i32, %struct.TYPE_2__, %struct.dentry* }
%struct.TYPE_2__ = type { i32 }
%struct.configfs_fragment = type { i32 }
%struct.inode = type { i32*, i32* }

@S_IFDIR = common dso_local global i32 0, align 4
@S_IRWXU = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IXUGO = common dso_local global i32 0, align 4
@CONFIGFS_DIR = common dso_local global i32 0, align 4
@CONFIGFS_USET_CREATING = common dso_local global i32 0, align 4
@configfs_dir_inode_operations = common dso_local global i32 0, align 4
@configfs_dir_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, %struct.dentry*, %struct.configfs_fragment*)* @configfs_create_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @configfs_create_dir(%struct.config_item* %0, %struct.dentry* %1, %struct.configfs_fragment* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.configfs_fragment*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.inode*, align 8
  store %struct.config_item* %0, %struct.config_item** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.configfs_fragment* %2, %struct.configfs_fragment** %7, align 8
  %12 = load i32, i32* @S_IFDIR, align 4
  %13 = load i32, i32* @S_IRWXU, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @S_IRUGO, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @S_IXUGO, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %9, align 4
  %19 = load %struct.dentry*, %struct.dentry** %6, align 8
  %20 = getelementptr inbounds %struct.dentry, %struct.dentry* %19, i32 0, i32 2
  %21 = load %struct.dentry*, %struct.dentry** %20, align 8
  store %struct.dentry* %21, %struct.dentry** %10, align 8
  %22 = load %struct.config_item*, %struct.config_item** %5, align 8
  %23 = icmp ne %struct.config_item* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load %struct.dentry*, %struct.dentry** %10, align 8
  %28 = getelementptr inbounds %struct.dentry, %struct.dentry* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.dentry*, %struct.dentry** %6, align 8
  %31 = getelementptr inbounds %struct.dentry, %struct.dentry* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @configfs_dirent_exists(i32 %29, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %3
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %4, align 4
  br label %95

40:                                               ; preds = %3
  %41 = load %struct.dentry*, %struct.dentry** %10, align 8
  %42 = getelementptr inbounds %struct.dentry, %struct.dentry* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.dentry*, %struct.dentry** %6, align 8
  %45 = load %struct.config_item*, %struct.config_item** %5, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @CONFIGFS_DIR, align 4
  %48 = load i32, i32* @CONFIGFS_USET_CREATING, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.configfs_fragment*, %struct.configfs_fragment** %7, align 8
  %51 = call i32 @configfs_make_dirent(i32 %43, %struct.dentry* %44, %struct.config_item* %45, i32 %46, i32 %49, %struct.configfs_fragment* %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %40
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %4, align 4
  br label %95

57:                                               ; preds = %40
  %58 = load %struct.dentry*, %struct.dentry** %10, align 8
  %59 = getelementptr inbounds %struct.dentry, %struct.dentry* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.dentry*, %struct.dentry** %6, align 8
  %62 = getelementptr inbounds %struct.dentry, %struct.dentry* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @configfs_set_dir_dirent_depth(i32 %60, i32 %63)
  %65 = load %struct.dentry*, %struct.dentry** %6, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call %struct.inode* @configfs_create(%struct.dentry* %65, i32 %66)
  store %struct.inode* %67, %struct.inode** %11, align 8
  %68 = load %struct.inode*, %struct.inode** %11, align 8
  %69 = call i64 @IS_ERR(%struct.inode* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %57
  br label %90

72:                                               ; preds = %57
  %73 = load %struct.inode*, %struct.inode** %11, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 1
  store i32* @configfs_dir_inode_operations, i32** %74, align 8
  %75 = load %struct.inode*, %struct.inode** %11, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 0
  store i32* @configfs_dir_operations, i32** %76, align 8
  %77 = load %struct.inode*, %struct.inode** %11, align 8
  %78 = call i32 @inc_nlink(%struct.inode* %77)
  %79 = load %struct.dentry*, %struct.dentry** %6, align 8
  %80 = load %struct.inode*, %struct.inode** %11, align 8
  %81 = call i32 @d_instantiate(%struct.dentry* %79, %struct.inode* %80)
  %82 = load %struct.dentry*, %struct.dentry** %6, align 8
  %83 = call i32 @dget(%struct.dentry* %82)
  %84 = load %struct.dentry*, %struct.dentry** %10, align 8
  %85 = call %struct.inode* @d_inode(%struct.dentry* %84)
  %86 = call i32 @inc_nlink(%struct.inode* %85)
  %87 = load %struct.dentry*, %struct.dentry** %6, align 8
  %88 = load %struct.config_item*, %struct.config_item** %5, align 8
  %89 = getelementptr inbounds %struct.config_item, %struct.config_item* %88, i32 0, i32 0
  store %struct.dentry* %87, %struct.dentry** %89, align 8
  store i32 0, i32* %4, align 4
  br label %95

90:                                               ; preds = %71
  %91 = load %struct.dentry*, %struct.dentry** %6, align 8
  %92 = call i32 @configfs_remove_dirent(%struct.dentry* %91)
  %93 = load %struct.inode*, %struct.inode** %11, align 8
  %94 = call i32 @PTR_ERR(%struct.inode* %93)
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %90, %72, %55, %38
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @configfs_dirent_exists(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @configfs_make_dirent(i32, %struct.dentry*, %struct.config_item*, i32, i32, %struct.configfs_fragment*) #1

declare dso_local i32 @configfs_set_dir_dirent_depth(i32, i32) #1

declare dso_local %struct.inode* @configfs_create(%struct.dentry*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @dget(%struct.dentry*) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @configfs_remove_dirent(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
