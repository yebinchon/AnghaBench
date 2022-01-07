; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode.c_v9fs_vfs_mknod.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode.c_v9fs_vfs_mknod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.v9fs_session_info = type { i32 }

@U32_MAX_DIGITS = common dso_local global i64 0, align 8
@P9_DEBUG_VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c" %lu,%pd mode: %hx MAJOR: %u MINOR: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"b %u %u\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"c %u %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, i32)* @v9fs_vfs_mknod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v9fs_vfs_mknod(%struct.inode* %0, %struct.dentry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.v9fs_session_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = call %struct.v9fs_session_info* @v9fs_inode2v9ses(%struct.inode* %14)
  store %struct.v9fs_session_info* %15, %struct.v9fs_session_info** %9, align 8
  %16 = load i64, i64* @U32_MAX_DIGITS, align 8
  %17 = add nsw i64 2, %16
  %18 = add nsw i64 %17, 1
  %19 = load i64, i64* @U32_MAX_DIGITS, align 8
  %20 = add nsw i64 %18, %19
  %21 = add nsw i64 %20, 1
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %11, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %12, align 8
  %24 = load i32, i32* @P9_DEBUG_VFS, align 4
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.dentry*, %struct.dentry** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @MAJOR(i32 %30)
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @MINOR(i32 %32)
  %34 = call i32 @p9_debug(i32 %24, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %27, %struct.dentry* %28, i32 %29, i32 %31, i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = call i64 @S_ISBLK(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @MAJOR(i32 %39)
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @MINOR(i32 %41)
  %43 = call i32 @sprintf(i8* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %42)
  br label %56

44:                                               ; preds = %4
  %45 = load i32, i32* %7, align 4
  %46 = call i64 @S_ISCHR(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @MAJOR(i32 %49)
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @MINOR(i32 %51)
  %53 = call i32 @sprintf(i8* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %50, i32 %52)
  br label %55

54:                                               ; preds = %44
  store i8 0, i8* %23, align 16
  br label %55

55:                                               ; preds = %54, %48
  br label %56

56:                                               ; preds = %55, %38
  %57 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %9, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @unixmode2p9mode(%struct.v9fs_session_info* %57, i32 %58)
  store i32 %59, i32* %13, align 4
  %60 = load %struct.inode*, %struct.inode** %5, align 8
  %61 = load %struct.dentry*, %struct.dentry** %6, align 8
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @v9fs_vfs_mkspecial(%struct.inode* %60, %struct.dentry* %61, i32 %62, i8* %23)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %65)
  ret i32 %64
}

declare dso_local %struct.v9fs_session_info* @v9fs_inode2v9ses(%struct.inode*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @p9_debug(i32, i8*, i32, %struct.dentry*, i32, i32, i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i32 @unixmode2p9mode(%struct.v9fs_session_info*, i32) #1

declare dso_local i32 @v9fs_vfs_mkspecial(%struct.inode*, %struct.dentry*, i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
