; ModuleID = '/home/carl/AnghaBench/linux/fs/debugfs/extr_inode.c___debugfs_create_file.c'
source_filename = "/home/carl/AnghaBench/linux/fs/debugfs/extr_inode.c___debugfs_create_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, i8*, i32 }
%struct.file_operations = type { i32 }
%struct.inode = type { i32, %struct.file_operations*, i32*, i8* }

@S_IFMT = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"out of free dentries, can not create file '%s'\0A\00", align 1
@debugfs_file_inode_operations = common dso_local global i32 0, align 4
@DEBUGFS_FSDATA_IS_REAL_FOPS_BIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (i8*, i32, %struct.dentry*, i8*, %struct.file_operations*, %struct.file_operations*)* @__debugfs_create_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @__debugfs_create_file(i8* %0, i32 %1, %struct.dentry* %2, i8* %3, %struct.file_operations* %4, %struct.file_operations* %5) #0 {
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.file_operations*, align 8
  %13 = alloca %struct.file_operations*, align 8
  %14 = alloca %struct.dentry*, align 8
  %15 = alloca %struct.inode*, align 8
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.dentry* %2, %struct.dentry** %10, align 8
  store i8* %3, i8** %11, align 8
  store %struct.file_operations* %4, %struct.file_operations** %12, align 8
  store %struct.file_operations* %5, %struct.file_operations** %13, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @S_IFMT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %6
  %21 = load i32, i32* @S_IFREG, align 4
  %22 = load i32, i32* %9, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %20, %6
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @S_ISREG(i32 %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @BUG_ON(i32 %29)
  %31 = load i8*, i8** %8, align 8
  %32 = load %struct.dentry*, %struct.dentry** %10, align 8
  %33 = call %struct.dentry* @start_creating(i8* %31, %struct.dentry* %32)
  store %struct.dentry* %33, %struct.dentry** %14, align 8
  %34 = load %struct.dentry*, %struct.dentry** %14, align 8
  %35 = call i64 @IS_ERR(%struct.dentry* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %24
  %38 = load %struct.dentry*, %struct.dentry** %14, align 8
  store %struct.dentry* %38, %struct.dentry** %7, align 8
  br label %85

39:                                               ; preds = %24
  %40 = load %struct.dentry*, %struct.dentry** %14, align 8
  %41 = getelementptr inbounds %struct.dentry, %struct.dentry* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call %struct.inode* @debugfs_get_inode(i32 %42)
  store %struct.inode* %43, %struct.inode** %15, align 8
  %44 = load %struct.inode*, %struct.inode** %15, align 8
  %45 = icmp ne %struct.inode* %44, null
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %39
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %51)
  %53 = load %struct.dentry*, %struct.dentry** %14, align 8
  %54 = call %struct.dentry* @failed_creating(%struct.dentry* %53)
  store %struct.dentry* %54, %struct.dentry** %7, align 8
  br label %85

55:                                               ; preds = %39
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.inode*, %struct.inode** %15, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = load %struct.inode*, %struct.inode** %15, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 3
  store i8* %59, i8** %61, align 8
  %62 = load %struct.inode*, %struct.inode** %15, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 2
  store i32* @debugfs_file_inode_operations, i32** %63, align 8
  %64 = load %struct.file_operations*, %struct.file_operations** %12, align 8
  %65 = load %struct.inode*, %struct.inode** %15, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 1
  store %struct.file_operations* %64, %struct.file_operations** %66, align 8
  %67 = load %struct.file_operations*, %struct.file_operations** %13, align 8
  %68 = ptrtoint %struct.file_operations* %67 to i64
  %69 = load i64, i64* @DEBUGFS_FSDATA_IS_REAL_FOPS_BIT, align 8
  %70 = or i64 %68, %69
  %71 = inttoptr i64 %70 to i8*
  %72 = load %struct.dentry*, %struct.dentry** %14, align 8
  %73 = getelementptr inbounds %struct.dentry, %struct.dentry* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  %74 = load %struct.dentry*, %struct.dentry** %14, align 8
  %75 = load %struct.inode*, %struct.inode** %15, align 8
  %76 = call i32 @d_instantiate(%struct.dentry* %74, %struct.inode* %75)
  %77 = load %struct.dentry*, %struct.dentry** %14, align 8
  %78 = getelementptr inbounds %struct.dentry, %struct.dentry* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @d_inode(i32 %79)
  %81 = load %struct.dentry*, %struct.dentry** %14, align 8
  %82 = call i32 @fsnotify_create(i32 %80, %struct.dentry* %81)
  %83 = load %struct.dentry*, %struct.dentry** %14, align 8
  %84 = call %struct.dentry* @end_creating(%struct.dentry* %83)
  store %struct.dentry* %84, %struct.dentry** %7, align 8
  br label %85

85:                                               ; preds = %55, %50, %37
  %86 = load %struct.dentry*, %struct.dentry** %7, align 8
  ret %struct.dentry* %86
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local %struct.dentry* @start_creating(i8*, %struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local %struct.inode* @debugfs_get_inode(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local %struct.dentry* @failed_creating(%struct.dentry*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @fsnotify_create(i32, %struct.dentry*) #1

declare dso_local i32 @d_inode(i32) #1

declare dso_local %struct.dentry* @end_creating(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
