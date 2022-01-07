; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_dynroot.c_afs_try_auto_mntpt.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_dynroot.c_afs_try_auto_mntpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32 }
%struct.afs_vnode = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%p{%pd}, {%llx:%llu}\00", align 1
@AFS_VNODE_AUTOCELL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"= %p\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"= %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @afs_try_auto_mntpt(%struct.dentry* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.afs_vnode*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %5, align 8
  %10 = call %struct.afs_vnode* @AFS_FS_I(%struct.inode* %9)
  store %struct.afs_vnode* %10, %struct.afs_vnode** %6, align 8
  %11 = load i32, i32* @ENOENT, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %8, align 4
  %13 = load %struct.dentry*, %struct.dentry** %4, align 8
  %14 = load %struct.dentry*, %struct.dentry** %4, align 8
  %15 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %16 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %20 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @_enter(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.dentry* %13, %struct.dentry* %14, i32 %18, i32 %22)
  %24 = load i32, i32* @AFS_VNODE_AUTOCELL, align 4
  %25 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %26 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %25, i32 0, i32 0
  %27 = call i32 @test_bit(i32 %24, i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %2
  br label %51

30:                                               ; preds = %2
  %31 = load %struct.dentry*, %struct.dentry** %4, align 8
  %32 = call i32 @afs_probe_cell_name(%struct.dentry* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %51

36:                                               ; preds = %30
  %37 = load %struct.inode*, %struct.inode** %5, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.inode* @afs_iget_pseudo_dir(i32 %39, i32 0)
  store %struct.inode* %40, %struct.inode** %7, align 8
  %41 = load %struct.inode*, %struct.inode** %7, align 8
  %42 = call i64 @IS_ERR(%struct.inode* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load %struct.inode*, %struct.inode** %7, align 8
  %46 = call i32 @PTR_ERR(%struct.inode* %45)
  store i32 %46, i32* %8, align 4
  br label %51

47:                                               ; preds = %36
  %48 = load %struct.inode*, %struct.inode** %7, align 8
  %49 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.inode* %48)
  %50 = load %struct.inode*, %struct.inode** %7, align 8
  store %struct.inode* %50, %struct.inode** %3, align 8
  br label %64

51:                                               ; preds = %44, %35, %29
  %52 = load i32, i32* %8, align 4
  %53 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @ENOENT, align 4
  %56 = sub nsw i32 0, %55
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %62

59:                                               ; preds = %51
  %60 = load i32, i32* %8, align 4
  %61 = call %struct.inode* @ERR_PTR(i32 %60)
  br label %62

62:                                               ; preds = %59, %58
  %63 = phi %struct.inode* [ null, %58 ], [ %61, %59 ]
  store %struct.inode* %63, %struct.inode** %3, align 8
  br label %64

64:                                               ; preds = %62, %47
  %65 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %65
}

declare dso_local %struct.afs_vnode* @AFS_FS_I(%struct.inode*) #1

declare dso_local i32 @_enter(i8*, %struct.dentry*, %struct.dentry*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @afs_probe_cell_name(%struct.dentry*) #1

declare dso_local %struct.inode* @afs_iget_pseudo_dir(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @_leave(i8*, ...) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
