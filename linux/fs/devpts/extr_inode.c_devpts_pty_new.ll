; ModuleID = '/home/carl/AnghaBench/linux/fs/devpts/extr_inode.c_devpts_pty_new.c'
source_filename = "/home/carl/AnghaBench/linux/fs/devpts/extr_inode.c_devpts_pty_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i8* }
%struct.pts_fs_info = type { %struct.pts_mount_opts, %struct.super_block* }
%struct.pts_mount_opts = type { i32, i32, i64, i32, i64 }
%struct.super_block = type { %struct.dentry* }
%struct.inode = type { i32, i32, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@S_IFCHR = common dso_local global i32 0, align 4
@UNIX98_PTY_SLAVE_MAJOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @devpts_pty_new(%struct.pts_fs_info* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.pts_fs_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.super_block*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca %struct.pts_mount_opts*, align 8
  %13 = alloca [12 x i8], align 1
  store %struct.pts_fs_info* %0, %struct.pts_fs_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %14 = load %struct.pts_fs_info*, %struct.pts_fs_info** %5, align 8
  %15 = getelementptr inbounds %struct.pts_fs_info, %struct.pts_fs_info* %14, i32 0, i32 1
  %16 = load %struct.super_block*, %struct.super_block** %15, align 8
  store %struct.super_block* %16, %struct.super_block** %9, align 8
  %17 = load %struct.super_block*, %struct.super_block** %9, align 8
  %18 = getelementptr inbounds %struct.super_block, %struct.super_block* %17, i32 0, i32 0
  %19 = load %struct.dentry*, %struct.dentry** %18, align 8
  store %struct.dentry* %19, %struct.dentry** %11, align 8
  %20 = load %struct.pts_fs_info*, %struct.pts_fs_info** %5, align 8
  %21 = getelementptr inbounds %struct.pts_fs_info, %struct.pts_fs_info* %20, i32 0, i32 0
  store %struct.pts_mount_opts* %21, %struct.pts_mount_opts** %12, align 8
  %22 = load %struct.super_block*, %struct.super_block** %9, align 8
  %23 = call %struct.inode* @new_inode(%struct.super_block* %22)
  store %struct.inode* %23, %struct.inode** %10, align 8
  %24 = load %struct.inode*, %struct.inode** %10, align 8
  %25 = icmp ne %struct.inode* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.dentry* @ERR_PTR(i32 %28)
  store %struct.dentry* %29, %struct.dentry** %4, align 8
  br label %108

30:                                               ; preds = %3
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 3
  %33 = load %struct.inode*, %struct.inode** %10, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.pts_mount_opts*, %struct.pts_mount_opts** %12, align 8
  %36 = getelementptr inbounds %struct.pts_mount_opts, %struct.pts_mount_opts* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = load %struct.pts_mount_opts*, %struct.pts_mount_opts** %12, align 8
  %41 = getelementptr inbounds %struct.pts_mount_opts, %struct.pts_mount_opts* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  br label %45

43:                                               ; preds = %30
  %44 = call i32 (...) @current_fsuid()
  br label %45

45:                                               ; preds = %43, %39
  %46 = phi i32 [ %42, %39 ], [ %44, %43 ]
  %47 = load %struct.inode*, %struct.inode** %10, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 4
  %49 = load %struct.pts_mount_opts*, %struct.pts_mount_opts** %12, align 8
  %50 = getelementptr inbounds %struct.pts_mount_opts, %struct.pts_mount_opts* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = load %struct.pts_mount_opts*, %struct.pts_mount_opts** %12, align 8
  %55 = getelementptr inbounds %struct.pts_mount_opts, %struct.pts_mount_opts* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  br label %59

57:                                               ; preds = %45
  %58 = call i32 (...) @current_fsgid()
  br label %59

59:                                               ; preds = %57, %53
  %60 = phi i32 [ %56, %53 ], [ %58, %57 ]
  %61 = load %struct.inode*, %struct.inode** %10, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 4
  %63 = load %struct.inode*, %struct.inode** %10, align 8
  %64 = call i32 @current_time(%struct.inode* %63)
  %65 = load %struct.inode*, %struct.inode** %10, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.inode*, %struct.inode** %10, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 2
  store i32 %64, i32* %68, align 4
  %69 = load %struct.inode*, %struct.inode** %10, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 3
  store i32 %64, i32* %70, align 4
  %71 = load %struct.inode*, %struct.inode** %10, align 8
  %72 = load i32, i32* @S_IFCHR, align 4
  %73 = load %struct.pts_mount_opts*, %struct.pts_mount_opts** %12, align 8
  %74 = getelementptr inbounds %struct.pts_mount_opts, %struct.pts_mount_opts* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %72, %75
  %77 = load i32, i32* @UNIX98_PTY_SLAVE_MAJOR, align 4
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @MKDEV(i32 %77, i32 %78)
  %80 = call i32 @init_special_inode(%struct.inode* %71, i32 %76, i32 %79)
  %81 = getelementptr inbounds [12 x i8], [12 x i8]* %13, i64 0, i64 0
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @sprintf(i8* %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %82)
  %84 = load %struct.dentry*, %struct.dentry** %11, align 8
  %85 = getelementptr inbounds [12 x i8], [12 x i8]* %13, i64 0, i64 0
  %86 = call %struct.dentry* @d_alloc_name(%struct.dentry* %84, i8* %85)
  store %struct.dentry* %86, %struct.dentry** %8, align 8
  %87 = load %struct.dentry*, %struct.dentry** %8, align 8
  %88 = icmp ne %struct.dentry* %87, null
  br i1 %88, label %89, label %100

89:                                               ; preds = %59
  %90 = load i8*, i8** %7, align 8
  %91 = load %struct.dentry*, %struct.dentry** %8, align 8
  %92 = getelementptr inbounds %struct.dentry, %struct.dentry* %91, i32 0, i32 0
  store i8* %90, i8** %92, align 8
  %93 = load %struct.dentry*, %struct.dentry** %8, align 8
  %94 = load %struct.inode*, %struct.inode** %10, align 8
  %95 = call i32 @d_add(%struct.dentry* %93, %struct.inode* %94)
  %96 = load %struct.dentry*, %struct.dentry** %11, align 8
  %97 = call i32 @d_inode(%struct.dentry* %96)
  %98 = load %struct.dentry*, %struct.dentry** %8, align 8
  %99 = call i32 @fsnotify_create(i32 %97, %struct.dentry* %98)
  br label %106

100:                                              ; preds = %59
  %101 = load %struct.inode*, %struct.inode** %10, align 8
  %102 = call i32 @iput(%struct.inode* %101)
  %103 = load i32, i32* @ENOMEM, align 4
  %104 = sub nsw i32 0, %103
  %105 = call %struct.dentry* @ERR_PTR(i32 %104)
  store %struct.dentry* %105, %struct.dentry** %8, align 8
  br label %106

106:                                              ; preds = %100, %89
  %107 = load %struct.dentry*, %struct.dentry** %8, align 8
  store %struct.dentry* %107, %struct.dentry** %4, align 8
  br label %108

108:                                              ; preds = %106, %26
  %109 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %109
}

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i32 @current_fsgid(...) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local %struct.dentry* @d_alloc_name(%struct.dentry*, i8*) #1

declare dso_local i32 @d_add(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @fsnotify_create(i32, %struct.dentry*) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
