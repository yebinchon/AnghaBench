; ModuleID = '/home/carl/AnghaBench/linux/fs/configfs/extr_inode.c_configfs_new_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/configfs/extr_inode.c_configfs_new_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.configfs_dirent = type { i32 }
%struct.super_block = type { i32 }

@configfs_aops = common dso_local global i32 0, align 4
@configfs_inode_operations = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @configfs_new_inode(i32 %0, %struct.configfs_dirent* %1, %struct.super_block* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.configfs_dirent*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.inode*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.configfs_dirent* %1, %struct.configfs_dirent** %5, align 8
  store %struct.super_block* %2, %struct.super_block** %6, align 8
  %8 = load %struct.super_block*, %struct.super_block** %6, align 8
  %9 = call %struct.inode* @new_inode(%struct.super_block* %8)
  store %struct.inode* %9, %struct.inode** %7, align 8
  %10 = load %struct.inode*, %struct.inode** %7, align 8
  %11 = icmp ne %struct.inode* %10, null
  br i1 %11, label %12, label %37

12:                                               ; preds = %3
  %13 = call i32 (...) @get_next_ino()
  %14 = load %struct.inode*, %struct.inode** %7, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 8
  %16 = load %struct.inode*, %struct.inode** %7, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32* @configfs_aops, i32** %19, align 8
  %20 = load %struct.inode*, %struct.inode** %7, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  store i32* @configfs_inode_operations, i32** %21, align 8
  %22 = load %struct.configfs_dirent*, %struct.configfs_dirent** %5, align 8
  %23 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %12
  %27 = load %struct.inode*, %struct.inode** %7, align 8
  %28 = load %struct.configfs_dirent*, %struct.configfs_dirent** %5, align 8
  %29 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @set_inode_attr(%struct.inode* %27, i32 %30)
  br label %36

32:                                               ; preds = %12
  %33 = load %struct.inode*, %struct.inode** %7, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @set_default_inode_attr(%struct.inode* %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %26
  br label %37

37:                                               ; preds = %36, %3
  %38 = load %struct.inode*, %struct.inode** %7, align 8
  ret %struct.inode* %38
}

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

declare dso_local i32 @get_next_ino(...) #1

declare dso_local i32 @set_inode_attr(%struct.inode*, i32) #1

declare dso_local i32 @set_default_inode_attr(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
