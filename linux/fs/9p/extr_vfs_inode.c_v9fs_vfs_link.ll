; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode.c_v9fs_vfs_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode.c_v9fs_vfs_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.p9_fid = type { i32 }

@U32_MAX_DIGITS = common dso_local global i32 0, align 4
@P9_DEBUG_VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c" %lu,%pd,%pd\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@P9_DMLINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* @v9fs_vfs_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v9fs_vfs_link(%struct.dentry* %0, %struct.inode* %1, %struct.dentry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.p9_fid*, align 8
  %12 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  %13 = load i32, i32* @U32_MAX_DIGITS, align 4
  %14 = add nsw i32 1, %13
  %15 = add nsw i32 %14, 2
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  %19 = load i32, i32* @P9_DEBUG_VFS, align 4
  %20 = load %struct.inode*, %struct.inode** %6, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.dentry*, %struct.dentry** %7, align 8
  %24 = load %struct.dentry*, %struct.dentry** %5, align 8
  %25 = call i32 @p9_debug(i32 %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %22, %struct.dentry* %23, %struct.dentry* %24)
  %26 = load %struct.dentry*, %struct.dentry** %5, align 8
  %27 = call %struct.p9_fid* @v9fs_fid_clone(%struct.dentry* %26)
  store %struct.p9_fid* %27, %struct.p9_fid** %11, align 8
  %28 = load %struct.p9_fid*, %struct.p9_fid** %11, align 8
  %29 = call i64 @IS_ERR(%struct.p9_fid* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load %struct.p9_fid*, %struct.p9_fid** %11, align 8
  %33 = call i32 @PTR_ERR(%struct.p9_fid* %32)
  store i32 %33, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %56

34:                                               ; preds = %3
  %35 = load %struct.p9_fid*, %struct.p9_fid** %11, align 8
  %36 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @sprintf(i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load %struct.inode*, %struct.inode** %6, align 8
  %40 = load %struct.dentry*, %struct.dentry** %7, align 8
  %41 = load i32, i32* @P9_DMLINK, align 4
  %42 = call i32 @v9fs_vfs_mkspecial(%struct.inode* %39, %struct.dentry* %40, i32 %41, i8* %18)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %34
  %46 = load %struct.p9_fid*, %struct.p9_fid** %11, align 8
  %47 = load %struct.dentry*, %struct.dentry** %5, align 8
  %48 = call i32 @d_inode(%struct.dentry* %47)
  %49 = call i32 @v9fs_refresh_inode(%struct.p9_fid* %46, i32 %48)
  %50 = load %struct.inode*, %struct.inode** %6, align 8
  %51 = call i32 @v9fs_invalidate_inode_attr(%struct.inode* %50)
  br label %52

52:                                               ; preds = %45, %34
  %53 = load %struct.p9_fid*, %struct.p9_fid** %11, align 8
  %54 = call i32 @p9_client_clunk(%struct.p9_fid* %53)
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %56

56:                                               ; preds = %52, %31
  %57 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %57)
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @p9_debug(i32, i8*, i32, %struct.dentry*, %struct.dentry*) #2

declare dso_local %struct.p9_fid* @v9fs_fid_clone(%struct.dentry*) #2

declare dso_local i64 @IS_ERR(%struct.p9_fid*) #2

declare dso_local i32 @PTR_ERR(%struct.p9_fid*) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local i32 @v9fs_vfs_mkspecial(%struct.inode*, %struct.dentry*, i32, i8*) #2

declare dso_local i32 @v9fs_refresh_inode(%struct.p9_fid*, i32) #2

declare dso_local i32 @d_inode(%struct.dentry*) #2

declare dso_local i32 @v9fs_invalidate_inode_attr(%struct.inode*) #2

declare dso_local i32 @p9_client_clunk(%struct.p9_fid*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
