; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode_dotl.c_v9fs_vfs_get_link_dotl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode_dotl.c_v9fs_vfs_get_link_dotl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32 }
%struct.delayed_call = type { i32 }
%struct.p9_fid = type { i32 }

@ECHILD = common dso_local global i32 0, align 4
@P9_DEBUG_VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%pd\0A\00", align 1
@kfree_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)* @v9fs_vfs_get_link_dotl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @v9fs_vfs_get_link_dotl(%struct.dentry* %0, %struct.inode* %1, %struct.delayed_call* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.delayed_call*, align 8
  %8 = alloca %struct.p9_fid*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.delayed_call* %2, %struct.delayed_call** %7, align 8
  %11 = load %struct.dentry*, %struct.dentry** %5, align 8
  %12 = icmp ne %struct.dentry* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ECHILD, align 4
  %15 = sub nsw i32 0, %14
  %16 = call i8* @ERR_PTR(i32 %15)
  store i8* %16, i8** %4, align 8
  br label %43

17:                                               ; preds = %3
  %18 = load i32, i32* @P9_DEBUG_VFS, align 4
  %19 = load %struct.dentry*, %struct.dentry** %5, align 8
  %20 = call i32 @p9_debug(i32 %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.dentry* %19)
  %21 = load %struct.dentry*, %struct.dentry** %5, align 8
  %22 = call %struct.p9_fid* @v9fs_fid_lookup(%struct.dentry* %21)
  store %struct.p9_fid* %22, %struct.p9_fid** %8, align 8
  %23 = load %struct.p9_fid*, %struct.p9_fid** %8, align 8
  %24 = call i64 @IS_ERR(%struct.p9_fid* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load %struct.p9_fid*, %struct.p9_fid** %8, align 8
  %28 = call i8* @ERR_CAST(%struct.p9_fid* %27)
  store i8* %28, i8** %4, align 8
  br label %43

29:                                               ; preds = %17
  %30 = load %struct.p9_fid*, %struct.p9_fid** %8, align 8
  %31 = call i32 @p9_client_readlink(%struct.p9_fid* %30, i8** %9)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* %10, align 4
  %36 = call i8* @ERR_PTR(i32 %35)
  store i8* %36, i8** %4, align 8
  br label %43

37:                                               ; preds = %29
  %38 = load %struct.delayed_call*, %struct.delayed_call** %7, align 8
  %39 = load i32, i32* @kfree_link, align 4
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 @set_delayed_call(%struct.delayed_call* %38, i32 %39, i8* %40)
  %42 = load i8*, i8** %9, align 8
  store i8* %42, i8** %4, align 8
  br label %43

43:                                               ; preds = %37, %34, %26, %13
  %44 = load i8*, i8** %4, align 8
  ret i8* %44
}

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i32 @p9_debug(i32, i8*, %struct.dentry*) #1

declare dso_local %struct.p9_fid* @v9fs_fid_lookup(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.p9_fid*) #1

declare dso_local i8* @ERR_CAST(%struct.p9_fid*) #1

declare dso_local i32 @p9_client_readlink(%struct.p9_fid*, i8**) #1

declare dso_local i32 @set_delayed_call(%struct.delayed_call*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
