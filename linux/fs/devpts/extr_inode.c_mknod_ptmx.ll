; ModuleID = '/home/carl/AnghaBench/linux/fs/devpts/extr_inode.c_mknod_ptmx.c'
source_filename = "/home/carl/AnghaBench/linux/fs/devpts/extr_inode.c_mknod_ptmx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.dentry* }
%struct.dentry = type { i32 }
%struct.inode = type { i32, i32, i32, i32, i32, i32 }
%struct.pts_fs_info = type { %struct.dentry*, %struct.pts_mount_opts }
%struct.pts_mount_opts = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"ptmx\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Unable to alloc dentry for ptmx node\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Unable to alloc inode for ptmx node\0A\00", align 1
@S_IFCHR = common dso_local global i32 0, align 4
@TTYAUX_MAJOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*)* @mknod_ptmx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mknod_ptmx(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.pts_fs_info*, align 8
  %9 = alloca %struct.pts_mount_opts*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  %14 = load %struct.super_block*, %struct.super_block** %2, align 8
  %15 = getelementptr inbounds %struct.super_block, %struct.super_block* %14, i32 0, i32 0
  %16 = load %struct.dentry*, %struct.dentry** %15, align 8
  store %struct.dentry* %16, %struct.dentry** %7, align 8
  %17 = load %struct.super_block*, %struct.super_block** %2, align 8
  %18 = call %struct.pts_fs_info* @DEVPTS_SB(%struct.super_block* %17)
  store %struct.pts_fs_info* %18, %struct.pts_fs_info** %8, align 8
  %19 = load %struct.pts_fs_info*, %struct.pts_fs_info** %8, align 8
  %20 = getelementptr inbounds %struct.pts_fs_info, %struct.pts_fs_info* %19, i32 0, i32 1
  store %struct.pts_mount_opts* %20, %struct.pts_mount_opts** %9, align 8
  %21 = call i32 (...) @current_fsuid()
  store i32 %21, i32* %10, align 4
  %22 = call i32 (...) @current_fsgid()
  store i32 %22, i32* %11, align 4
  %23 = load %struct.dentry*, %struct.dentry** %7, align 8
  %24 = call i32 @d_inode(%struct.dentry* %23)
  %25 = call i32 @inode_lock(i32 %24)
  %26 = load %struct.pts_fs_info*, %struct.pts_fs_info** %8, align 8
  %27 = getelementptr inbounds %struct.pts_fs_info, %struct.pts_fs_info* %26, i32 0, i32 0
  %28 = load %struct.dentry*, %struct.dentry** %27, align 8
  %29 = icmp ne %struct.dentry* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %80

31:                                               ; preds = %1
  %32 = load %struct.dentry*, %struct.dentry** %7, align 8
  %33 = call %struct.dentry* @d_alloc_name(%struct.dentry* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.dentry* %33, %struct.dentry** %5, align 8
  %34 = load %struct.dentry*, %struct.dentry** %5, align 8
  %35 = icmp ne %struct.dentry* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  %37 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %80

38:                                               ; preds = %31
  %39 = load %struct.super_block*, %struct.super_block** %2, align 8
  %40 = call %struct.inode* @new_inode(%struct.super_block* %39)
  store %struct.inode* %40, %struct.inode** %6, align 8
  %41 = load %struct.inode*, %struct.inode** %6, align 8
  %42 = icmp ne %struct.inode* %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %45 = load %struct.dentry*, %struct.dentry** %5, align 8
  %46 = call i32 @dput(%struct.dentry* %45)
  br label %80

47:                                               ; preds = %38
  %48 = load %struct.inode*, %struct.inode** %6, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 0
  store i32 2, i32* %49, align 4
  %50 = load %struct.inode*, %struct.inode** %6, align 8
  %51 = call i32 @current_time(%struct.inode* %50)
  %52 = load %struct.inode*, %struct.inode** %6, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load %struct.inode*, %struct.inode** %6, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 4
  store i32 %51, i32* %55, align 4
  %56 = load %struct.inode*, %struct.inode** %6, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 5
  store i32 %51, i32* %57, align 4
  %58 = load i32, i32* @S_IFCHR, align 4
  %59 = load %struct.pts_mount_opts*, %struct.pts_mount_opts** %9, align 8
  %60 = getelementptr inbounds %struct.pts_mount_opts, %struct.pts_mount_opts* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %58, %61
  store i32 %62, i32* %3, align 4
  %63 = load %struct.inode*, %struct.inode** %6, align 8
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @TTYAUX_MAJOR, align 4
  %66 = call i32 @MKDEV(i32 %65, i32 2)
  %67 = call i32 @init_special_inode(%struct.inode* %63, i32 %64, i32 %66)
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.inode*, %struct.inode** %6, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* %11, align 4
  %72 = load %struct.inode*, %struct.inode** %6, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.dentry*, %struct.dentry** %5, align 8
  %75 = load %struct.inode*, %struct.inode** %6, align 8
  %76 = call i32 @d_add(%struct.dentry* %74, %struct.inode* %75)
  %77 = load %struct.dentry*, %struct.dentry** %5, align 8
  %78 = load %struct.pts_fs_info*, %struct.pts_fs_info** %8, align 8
  %79 = getelementptr inbounds %struct.pts_fs_info, %struct.pts_fs_info* %78, i32 0, i32 0
  store %struct.dentry* %77, %struct.dentry** %79, align 8
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %47, %43, %36, %30
  %81 = load %struct.dentry*, %struct.dentry** %7, align 8
  %82 = call i32 @d_inode(%struct.dentry* %81)
  %83 = call i32 @inode_unlock(i32 %82)
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local %struct.pts_fs_info* @DEVPTS_SB(%struct.super_block*) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i32 @current_fsgid(...) #1

declare dso_local i32 @inode_lock(i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local %struct.dentry* @d_alloc_name(%struct.dentry*, i8*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @d_add(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @inode_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
