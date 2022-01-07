; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_vfs_file.c_v9fs_file_lock_dotl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_vfs_file.c_v9fs_file_lock_dotl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.file_lock = type { i64 }
%struct.inode = type { i32, i32 }

@ENOLCK = common dso_local global i32 0, align 4
@P9_DEBUG_VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"filp: %p cmd:%d lock: %p name: %pD\0A\00", align 1
@F_UNLCK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, %struct.file_lock*)* @v9fs_file_lock_dotl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v9fs_file_lock_dotl(%struct.file* %0, i32 %1, %struct.file_lock* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.file_lock*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.file_lock* %2, %struct.file_lock** %6, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = call %struct.inode* @file_inode(%struct.file* %9)
  store %struct.inode* %10, %struct.inode** %7, align 8
  %11 = load i32, i32* @ENOLCK, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* @P9_DEBUG_VFS, align 4
  %14 = load %struct.file*, %struct.file** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %17 = load %struct.file*, %struct.file** %4, align 8
  %18 = call i32 @p9_debug(i32 %13, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.file* %14, i32 %15, %struct.file_lock* %16, %struct.file* %17)
  %19 = load %struct.inode*, %struct.inode** %7, align 8
  %20 = call i64 @__mandatory_lock(%struct.inode* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %3
  %23 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %24 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @F_UNLCK, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %77

29:                                               ; preds = %22, %3
  %30 = load i32, i32* %5, align 4
  %31 = call i64 @IS_SETLK(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %5, align 4
  %35 = call i64 @IS_SETLKW(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %33, %29
  %38 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %39 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @F_UNLCK, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %37
  %44 = load %struct.inode*, %struct.inode** %7, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @filemap_write_and_wait(i32 %46)
  %48 = load %struct.inode*, %struct.inode** %7, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 0
  %50 = call i32 @invalidate_mapping_pages(i32* %49, i32 0, i32 -1)
  br label %51

51:                                               ; preds = %43, %37, %33
  %52 = load i32, i32* %5, align 4
  %53 = call i64 @IS_SETLK(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %5, align 4
  %57 = call i64 @IS_SETLKW(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %55, %51
  %60 = load %struct.file*, %struct.file** %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %63 = call i32 @v9fs_file_do_lock(%struct.file* %60, i32 %61, %struct.file_lock* %62)
  store i32 %63, i32* %8, align 4
  br label %76

64:                                               ; preds = %55
  %65 = load i32, i32* %5, align 4
  %66 = call i64 @IS_GETLK(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load %struct.file*, %struct.file** %4, align 8
  %70 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %71 = call i32 @v9fs_file_getlock(%struct.file* %69, %struct.file_lock* %70)
  store i32 %71, i32* %8, align 4
  br label %75

72:                                               ; preds = %64
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %72, %68
  br label %76

76:                                               ; preds = %75, %59
  br label %77

77:                                               ; preds = %76, %28
  %78 = load i32, i32* %8, align 4
  ret i32 %78
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i32 @p9_debug(i32, i8*, %struct.file*, i32, %struct.file_lock*, %struct.file*) #1

declare dso_local i64 @__mandatory_lock(%struct.inode*) #1

declare dso_local i64 @IS_SETLK(i32) #1

declare dso_local i64 @IS_SETLKW(i32) #1

declare dso_local i32 @filemap_write_and_wait(i32) #1

declare dso_local i32 @invalidate_mapping_pages(i32*, i32, i32) #1

declare dso_local i32 @v9fs_file_do_lock(%struct.file*, i32, %struct.file_lock*) #1

declare dso_local i64 @IS_GETLK(i32) #1

declare dso_local i32 @v9fs_file_getlock(%struct.file*, %struct.file_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
