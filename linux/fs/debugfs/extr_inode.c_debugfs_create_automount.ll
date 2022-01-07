; ModuleID = '/home/carl/AnghaBench/linux/fs/debugfs/extr_inode.c_debugfs_create_automount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/debugfs/extr_inode.c_debugfs_create_automount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, i8*, i32 }
%struct.inode = type { i8*, i32 }

@.str = private unnamed_addr constant [53 x i8] c"out of free dentries, can not create automount '%s'\0A\00", align 1
@S_AUTOMOUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @debugfs_create_automount(i8* %0, %struct.dentry* %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.inode*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load %struct.dentry*, %struct.dentry** %7, align 8
  %14 = call %struct.dentry* @start_creating(i8* %12, %struct.dentry* %13)
  store %struct.dentry* %14, %struct.dentry** %10, align 8
  %15 = load %struct.dentry*, %struct.dentry** %10, align 8
  %16 = call i64 @IS_ERR(%struct.dentry* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load %struct.dentry*, %struct.dentry** %10, align 8
  store %struct.dentry* %19, %struct.dentry** %5, align 8
  br label %69

20:                                               ; preds = %4
  %21 = load %struct.dentry*, %struct.dentry** %10, align 8
  %22 = getelementptr inbounds %struct.dentry, %struct.dentry* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.inode* @debugfs_get_inode(i32 %23)
  store %struct.inode* %24, %struct.inode** %11, align 8
  %25 = load %struct.inode*, %struct.inode** %11, align 8
  %26 = icmp ne %struct.inode* %25, null
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %20
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8* %32)
  %34 = load %struct.dentry*, %struct.dentry** %10, align 8
  %35 = call %struct.dentry* @failed_creating(%struct.dentry* %34)
  store %struct.dentry* %35, %struct.dentry** %5, align 8
  br label %69

36:                                               ; preds = %20
  %37 = load %struct.inode*, %struct.inode** %11, align 8
  %38 = call i32 @make_empty_dir_inode(%struct.inode* %37)
  %39 = load i32, i32* @S_AUTOMOUNT, align 4
  %40 = load %struct.inode*, %struct.inode** %11, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load %struct.inode*, %struct.inode** %11, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  %47 = load i64, i64* %8, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = load %struct.dentry*, %struct.dentry** %10, align 8
  %50 = getelementptr inbounds %struct.dentry, %struct.dentry* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load %struct.inode*, %struct.inode** %11, align 8
  %52 = call i32 @inc_nlink(%struct.inode* %51)
  %53 = load %struct.dentry*, %struct.dentry** %10, align 8
  %54 = load %struct.inode*, %struct.inode** %11, align 8
  %55 = call i32 @d_instantiate(%struct.dentry* %53, %struct.inode* %54)
  %56 = load %struct.dentry*, %struct.dentry** %10, align 8
  %57 = getelementptr inbounds %struct.dentry, %struct.dentry* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call %struct.inode* @d_inode(i32 %58)
  %60 = call i32 @inc_nlink(%struct.inode* %59)
  %61 = load %struct.dentry*, %struct.dentry** %10, align 8
  %62 = getelementptr inbounds %struct.dentry, %struct.dentry* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call %struct.inode* @d_inode(i32 %63)
  %65 = load %struct.dentry*, %struct.dentry** %10, align 8
  %66 = call i32 @fsnotify_mkdir(%struct.inode* %64, %struct.dentry* %65)
  %67 = load %struct.dentry*, %struct.dentry** %10, align 8
  %68 = call %struct.dentry* @end_creating(%struct.dentry* %67)
  store %struct.dentry* %68, %struct.dentry** %5, align 8
  br label %69

69:                                               ; preds = %36, %31, %18
  %70 = load %struct.dentry*, %struct.dentry** %5, align 8
  ret %struct.dentry* %70
}

declare dso_local %struct.dentry* @start_creating(i8*, %struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local %struct.inode* @debugfs_get_inode(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local %struct.dentry* @failed_creating(%struct.dentry*) #1

declare dso_local i32 @make_empty_dir_inode(%struct.inode*) #1

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
