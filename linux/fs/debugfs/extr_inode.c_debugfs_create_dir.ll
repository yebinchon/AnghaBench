; ModuleID = '/home/carl/AnghaBench/linux/fs/debugfs/extr_inode.c_debugfs_create_dir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/debugfs/extr_inode.c_debugfs_create_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, i32 }
%struct.inode = type { i32, i32*, i32* }

@.str = private unnamed_addr constant [53 x i8] c"out of free dentries, can not create directory '%s'\0A\00", align 1
@S_IFDIR = common dso_local global i32 0, align 4
@S_IRWXU = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IXUGO = common dso_local global i32 0, align 4
@debugfs_dir_inode_operations = common dso_local global i32 0, align 4
@simple_dir_operations = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @debugfs_create_dir(i8* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.inode*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load %struct.dentry*, %struct.dentry** %5, align 8
  %10 = call %struct.dentry* @start_creating(i8* %8, %struct.dentry* %9)
  store %struct.dentry* %10, %struct.dentry** %6, align 8
  %11 = load %struct.dentry*, %struct.dentry** %6, align 8
  %12 = call i64 @IS_ERR(%struct.dentry* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load %struct.dentry*, %struct.dentry** %6, align 8
  store %struct.dentry* %15, %struct.dentry** %3, align 8
  br label %64

16:                                               ; preds = %2
  %17 = load %struct.dentry*, %struct.dentry** %6, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.inode* @debugfs_get_inode(i32 %19)
  store %struct.inode* %20, %struct.inode** %7, align 8
  %21 = load %struct.inode*, %struct.inode** %7, align 8
  %22 = icmp ne %struct.inode* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %16
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8* %28)
  %30 = load %struct.dentry*, %struct.dentry** %6, align 8
  %31 = call %struct.dentry* @failed_creating(%struct.dentry* %30)
  store %struct.dentry* %31, %struct.dentry** %3, align 8
  br label %64

32:                                               ; preds = %16
  %33 = load i32, i32* @S_IFDIR, align 4
  %34 = load i32, i32* @S_IRWXU, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @S_IRUGO, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @S_IXUGO, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.inode*, %struct.inode** %7, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.inode*, %struct.inode** %7, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 2
  store i32* @debugfs_dir_inode_operations, i32** %43, align 8
  %44 = load %struct.inode*, %struct.inode** %7, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 1
  store i32* @simple_dir_operations, i32** %45, align 8
  %46 = load %struct.inode*, %struct.inode** %7, align 8
  %47 = call i32 @inc_nlink(%struct.inode* %46)
  %48 = load %struct.dentry*, %struct.dentry** %6, align 8
  %49 = load %struct.inode*, %struct.inode** %7, align 8
  %50 = call i32 @d_instantiate(%struct.dentry* %48, %struct.inode* %49)
  %51 = load %struct.dentry*, %struct.dentry** %6, align 8
  %52 = getelementptr inbounds %struct.dentry, %struct.dentry* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.inode* @d_inode(i32 %53)
  %55 = call i32 @inc_nlink(%struct.inode* %54)
  %56 = load %struct.dentry*, %struct.dentry** %6, align 8
  %57 = getelementptr inbounds %struct.dentry, %struct.dentry* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call %struct.inode* @d_inode(i32 %58)
  %60 = load %struct.dentry*, %struct.dentry** %6, align 8
  %61 = call i32 @fsnotify_mkdir(%struct.inode* %59, %struct.dentry* %60)
  %62 = load %struct.dentry*, %struct.dentry** %6, align 8
  %63 = call %struct.dentry* @end_creating(%struct.dentry* %62)
  store %struct.dentry* %63, %struct.dentry** %3, align 8
  br label %64

64:                                               ; preds = %32, %27, %14
  %65 = load %struct.dentry*, %struct.dentry** %3, align 8
  ret %struct.dentry* %65
}

declare dso_local %struct.dentry* @start_creating(i8*, %struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local %struct.inode* @debugfs_get_inode(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local %struct.dentry* @failed_creating(%struct.dentry*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local i32 @fsnotify_mkdir(%struct.inode*, %struct.dentry*) #1

declare dso_local %struct.dentry* @end_creating(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
