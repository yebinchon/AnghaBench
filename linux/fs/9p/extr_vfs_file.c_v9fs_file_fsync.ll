; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_vfs_file.c_v9fs_file_fsync.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_vfs_file.c_v9fs_file_fsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.p9_fid*, %struct.TYPE_2__* }
%struct.p9_fid = type { i32 }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.p9_wstat = type { i32 }

@P9_DEBUG_VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"filp %p datasync %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, i32, i32)* @v9fs_file_fsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v9fs_file_fsync(%struct.file* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.p9_fid*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.p9_wstat, align 4
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.file*, %struct.file** %6, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.inode*, %struct.inode** %17, align 8
  store %struct.inode* %18, %struct.inode** %11, align 8
  %19 = load %struct.file*, %struct.file** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @file_write_and_wait_range(%struct.file* %19, i32 %20, i32 %21)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %13, align 4
  store i32 %26, i32* %5, align 4
  br label %43

27:                                               ; preds = %4
  %28 = load %struct.inode*, %struct.inode** %11, align 8
  %29 = call i32 @inode_lock(%struct.inode* %28)
  %30 = load i32, i32* @P9_DEBUG_VFS, align 4
  %31 = load %struct.file*, %struct.file** %6, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @p9_debug(i32 %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.file* %31, i32 %32)
  %34 = load %struct.file*, %struct.file** %6, align 8
  %35 = getelementptr inbounds %struct.file, %struct.file* %34, i32 0, i32 0
  %36 = load %struct.p9_fid*, %struct.p9_fid** %35, align 8
  store %struct.p9_fid* %36, %struct.p9_fid** %10, align 8
  %37 = call i32 @v9fs_blank_wstat(%struct.p9_wstat* %12)
  %38 = load %struct.p9_fid*, %struct.p9_fid** %10, align 8
  %39 = call i32 @p9_client_wstat(%struct.p9_fid* %38, %struct.p9_wstat* %12)
  store i32 %39, i32* %13, align 4
  %40 = load %struct.inode*, %struct.inode** %11, align 8
  %41 = call i32 @inode_unlock(%struct.inode* %40)
  %42 = load i32, i32* %13, align 4
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %27, %25
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @file_write_and_wait_range(%struct.file*, i32, i32) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @p9_debug(i32, i8*, %struct.file*, i32) #1

declare dso_local i32 @v9fs_blank_wstat(%struct.p9_wstat*) #1

declare dso_local i32 @p9_client_wstat(%struct.p9_fid*, %struct.p9_wstat*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
