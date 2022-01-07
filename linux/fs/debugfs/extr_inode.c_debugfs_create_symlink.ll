; ModuleID = '/home/carl/AnghaBench/linux/fs/debugfs/extr_inode.c_debugfs_create_symlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/debugfs/extr_inode.c_debugfs_create_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32, i8*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"out of free dentries, can not create symlink '%s'\0A\00", align 1
@S_IFLNK = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@debugfs_symlink_inode_operations = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @debugfs_create_symlink(i8* %0, %struct.dentry* %1, i8* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i8* @kstrdup(i8* %11, i32 %12)
  store i8* %13, i8** %10, align 8
  %14 = load i8*, i8** %10, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.dentry* @ERR_PTR(i32 %18)
  store %struct.dentry* %19, %struct.dentry** %4, align 8
  br label %65

20:                                               ; preds = %3
  %21 = load i8*, i8** %5, align 8
  %22 = load %struct.dentry*, %struct.dentry** %6, align 8
  %23 = call %struct.dentry* @start_creating(i8* %21, %struct.dentry* %22)
  store %struct.dentry* %23, %struct.dentry** %8, align 8
  %24 = load %struct.dentry*, %struct.dentry** %8, align 8
  %25 = call i64 @IS_ERR(%struct.dentry* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load i8*, i8** %10, align 8
  %29 = call i32 @kfree(i8* %28)
  %30 = load %struct.dentry*, %struct.dentry** %8, align 8
  store %struct.dentry* %30, %struct.dentry** %4, align 8
  br label %65

31:                                               ; preds = %20
  %32 = load %struct.dentry*, %struct.dentry** %8, align 8
  %33 = getelementptr inbounds %struct.dentry, %struct.dentry* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.inode* @debugfs_get_inode(i32 %34)
  store %struct.inode* %35, %struct.inode** %9, align 8
  %36 = load %struct.inode*, %struct.inode** %9, align 8
  %37 = icmp ne %struct.inode* %36, null
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %31
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %43)
  %45 = load i8*, i8** %10, align 8
  %46 = call i32 @kfree(i8* %45)
  %47 = load %struct.dentry*, %struct.dentry** %8, align 8
  %48 = call %struct.dentry* @failed_creating(%struct.dentry* %47)
  store %struct.dentry* %48, %struct.dentry** %4, align 8
  br label %65

49:                                               ; preds = %31
  %50 = load i32, i32* @S_IFLNK, align 4
  %51 = load i32, i32* @S_IRWXUGO, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.inode*, %struct.inode** %9, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.inode*, %struct.inode** %9, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 2
  store i32* @debugfs_symlink_inode_operations, i32** %56, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = load %struct.inode*, %struct.inode** %9, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  %60 = load %struct.dentry*, %struct.dentry** %8, align 8
  %61 = load %struct.inode*, %struct.inode** %9, align 8
  %62 = call i32 @d_instantiate(%struct.dentry* %60, %struct.inode* %61)
  %63 = load %struct.dentry*, %struct.dentry** %8, align 8
  %64 = call %struct.dentry* @end_creating(%struct.dentry* %63)
  store %struct.dentry* %64, %struct.dentry** %4, align 8
  br label %65

65:                                               ; preds = %49, %42, %27, %16
  %66 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %66
}

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.dentry* @start_creating(i8*, %struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local %struct.inode* @debugfs_get_inode(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local %struct.dentry* @failed_creating(%struct.dentry*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local %struct.dentry* @end_creating(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
