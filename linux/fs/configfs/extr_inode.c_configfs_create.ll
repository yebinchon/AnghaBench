; ModuleID = '/home/carl/AnghaBench/linux/fs/configfs/extr_inode.c_configfs_create.c'
source_filename = "/home/carl/AnghaBench/linux/fs/configfs/extr_inode.c_configfs_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.dentry = type { i32, i32, %struct.configfs_dirent* }
%struct.configfs_dirent = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @configfs_create(%struct.dentry* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.configfs_dirent*, align 8
  %8 = alloca %struct.inode*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.inode* null, %struct.inode** %6, align 8
  %9 = load %struct.dentry*, %struct.dentry** %4, align 8
  %10 = icmp ne %struct.dentry* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOENT, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.inode* @ERR_PTR(i32 %13)
  store %struct.inode* %14, %struct.inode** %3, align 8
  br label %54

15:                                               ; preds = %2
  %16 = load %struct.dentry*, %struct.dentry** %4, align 8
  %17 = call i64 @d_really_is_positive(%struct.dentry* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32, i32* @EEXIST, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.inode* @ERR_PTR(i32 %21)
  store %struct.inode* %22, %struct.inode** %3, align 8
  br label %54

23:                                               ; preds = %15
  %24 = load %struct.dentry*, %struct.dentry** %4, align 8
  %25 = getelementptr inbounds %struct.dentry, %struct.dentry* %24, i32 0, i32 2
  %26 = load %struct.configfs_dirent*, %struct.configfs_dirent** %25, align 8
  store %struct.configfs_dirent* %26, %struct.configfs_dirent** %7, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.configfs_dirent*, %struct.configfs_dirent** %7, align 8
  %29 = load %struct.dentry*, %struct.dentry** %4, align 8
  %30 = getelementptr inbounds %struct.dentry, %struct.dentry* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.inode* @configfs_new_inode(i32 %27, %struct.configfs_dirent* %28, i32 %31)
  store %struct.inode* %32, %struct.inode** %6, align 8
  %33 = load %struct.inode*, %struct.inode** %6, align 8
  %34 = icmp ne %struct.inode* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %23
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  %38 = call %struct.inode* @ERR_PTR(i32 %37)
  store %struct.inode* %38, %struct.inode** %3, align 8
  br label %54

39:                                               ; preds = %23
  %40 = load %struct.dentry*, %struct.dentry** %4, align 8
  %41 = getelementptr inbounds %struct.dentry, %struct.dentry* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call %struct.inode* @d_inode(i32 %42)
  store %struct.inode* %43, %struct.inode** %8, align 8
  %44 = load %struct.inode*, %struct.inode** %8, align 8
  %45 = call i32 @current_time(%struct.inode* %44)
  %46 = load %struct.inode*, %struct.inode** %8, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.inode*, %struct.inode** %8, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 1
  store i32 %45, i32* %49, align 4
  %50 = load %struct.configfs_dirent*, %struct.configfs_dirent** %7, align 8
  %51 = load %struct.inode*, %struct.inode** %6, align 8
  %52 = call i32 @configfs_set_inode_lock_class(%struct.configfs_dirent* %50, %struct.inode* %51)
  %53 = load %struct.inode*, %struct.inode** %6, align 8
  store %struct.inode* %53, %struct.inode** %3, align 8
  br label %54

54:                                               ; preds = %39, %35, %19, %11
  %55 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %55
}

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i64 @d_really_is_positive(%struct.dentry*) #1

declare dso_local %struct.inode* @configfs_new_inode(i32, %struct.configfs_dirent*, i32) #1

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @configfs_set_inode_lock_class(%struct.configfs_dirent*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
