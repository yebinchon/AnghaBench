; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_vfs_file.c_v9fs_file_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_vfs_file.c_v9fs_file_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.file_lock = type { i64 }
%struct.inode = type { i32, i32 }

@P9_DEBUG_VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"filp: %p lock: %p\0A\00", align 1
@F_UNLCK = common dso_local global i64 0, align 8
@ENOLCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, %struct.file_lock*)* @v9fs_file_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v9fs_file_lock(%struct.file* %0, i32 %1, %struct.file_lock* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.file_lock*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.file_lock* %2, %struct.file_lock** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.inode* @file_inode(%struct.file* %10)
  store %struct.inode* %11, %struct.inode** %9, align 8
  %12 = load i32, i32* @P9_DEBUG_VFS, align 4
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %15 = call i32 @p9_debug(i32 %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.file* %13, %struct.file_lock* %14)
  %16 = load %struct.inode*, %struct.inode** %9, align 8
  %17 = call i64 @__mandatory_lock(%struct.inode* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %3
  %20 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %21 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @F_UNLCK, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @ENOLCK, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %52

28:                                               ; preds = %19, %3
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @IS_SETLK(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %6, align 4
  %34 = call i64 @IS_SETLKW(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %32, %28
  %37 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %38 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @F_UNLCK, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = load %struct.inode*, %struct.inode** %9, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @filemap_write_and_wait(i32 %45)
  %47 = load %struct.inode*, %struct.inode** %9, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 0
  %49 = call i32 @invalidate_mapping_pages(i32* %48, i32 0, i32 -1)
  br label %50

50:                                               ; preds = %42, %36, %32
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %50, %25
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i32 @p9_debug(i32, i8*, %struct.file*, %struct.file_lock*) #1

declare dso_local i64 @__mandatory_lock(%struct.inode*) #1

declare dso_local i64 @IS_SETLK(i32) #1

declare dso_local i64 @IS_SETLKW(i32) #1

declare dso_local i32 @filemap_write_and_wait(i32) #1

declare dso_local i32 @invalidate_mapping_pages(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
