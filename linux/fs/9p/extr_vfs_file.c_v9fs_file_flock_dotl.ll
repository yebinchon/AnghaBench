; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_vfs_file.c_v9fs_file_flock_dotl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_vfs_file.c_v9fs_file_flock_dotl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.file_lock = type { i64, i32 }
%struct.inode = type { i32, i32 }

@ENOLCK = common dso_local global i32 0, align 4
@P9_DEBUG_VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"filp: %p cmd:%d lock: %p name: %pD\0A\00", align 1
@F_UNLCK = common dso_local global i64 0, align 8
@FL_FLOCK = common dso_local global i32 0, align 4
@FL_POSIX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, %struct.file_lock*)* @v9fs_file_flock_dotl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v9fs_file_flock_dotl(%struct.file* %0, i32 %1, %struct.file_lock* %2) #0 {
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
  br label %85

29:                                               ; preds = %22, %3
  %30 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %31 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @FL_FLOCK, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  br label %85

37:                                               ; preds = %29
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @IS_SETLK(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @IS_SETLKW(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %41, %37
  %46 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %47 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @F_UNLCK, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %45
  %52 = load %struct.inode*, %struct.inode** %7, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @filemap_write_and_wait(i32 %54)
  %56 = load %struct.inode*, %struct.inode** %7, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 0
  %58 = call i32 @invalidate_mapping_pages(i32* %57, i32 0, i32 -1)
  br label %59

59:                                               ; preds = %51, %45, %41
  %60 = load i32, i32* @FL_POSIX, align 4
  %61 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %62 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  %65 = load i32, i32* @FL_FLOCK, align 4
  %66 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %67 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = xor i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @IS_SETLK(i32 %70)
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @IS_SETLKW(i32 %72)
  %74 = or i32 %71, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %59
  %77 = load %struct.file*, %struct.file** %4, align 8
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %80 = call i32 @v9fs_file_do_lock(%struct.file* %77, i32 %78, %struct.file_lock* %79)
  store i32 %80, i32* %8, align 4
  br label %84

81:                                               ; preds = %59
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %8, align 4
  br label %84

84:                                               ; preds = %81, %76
  br label %85

85:                                               ; preds = %84, %36, %28
  %86 = load i32, i32* %8, align 4
  ret i32 %86
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i32 @p9_debug(i32, i8*, %struct.file*, i32, %struct.file_lock*, %struct.file*) #1

declare dso_local i64 @__mandatory_lock(%struct.inode*) #1

declare dso_local i32 @IS_SETLK(i32) #1

declare dso_local i32 @IS_SETLKW(i32) #1

declare dso_local i32 @filemap_write_and_wait(i32) #1

declare dso_local i32 @invalidate_mapping_pages(i32*, i32, i32) #1

declare dso_local i32 @v9fs_file_do_lock(%struct.file*, i32, %struct.file_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
