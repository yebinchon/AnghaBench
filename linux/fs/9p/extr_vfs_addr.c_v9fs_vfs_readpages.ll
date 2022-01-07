; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_vfs_addr.c_v9fs_vfs_readpages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_vfs_addr.c_v9fs_vfs_readpages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.list_head = type { i32 }

@P9_DEBUG_VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"inode: %p file: %p\0A\00", align 1
@v9fs_fid_readpage = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"  = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)* @v9fs_vfs_readpages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v9fs_vfs_readpages(%struct.file* %0, %struct.address_space* %1, %struct.list_head* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.inode*, align 8
  store %struct.file* %0, %struct.file** %6, align 8
  store %struct.address_space* %1, %struct.address_space** %7, align 8
  store %struct.list_head* %2, %struct.list_head** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.address_space*, %struct.address_space** %7, align 8
  %13 = getelementptr inbounds %struct.address_space, %struct.address_space* %12, i32 0, i32 0
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %14, %struct.inode** %11, align 8
  %15 = load i32, i32* @P9_DEBUG_VFS, align 4
  %16 = load %struct.inode*, %struct.inode** %11, align 8
  %17 = ptrtoint %struct.inode* %16 to i32
  %18 = load %struct.file*, %struct.file** %6, align 8
  %19 = call i32 (i32, i8*, i32, ...) @p9_debug(i32 %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %17, %struct.file* %18)
  %20 = load %struct.inode*, %struct.inode** %11, align 8
  %21 = load %struct.address_space*, %struct.address_space** %7, align 8
  %22 = load %struct.list_head*, %struct.list_head** %8, align 8
  %23 = call i32 @v9fs_readpages_from_fscache(%struct.inode* %20, %struct.address_space* %21, %struct.list_head* %22, i32* %9)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %5, align 4
  br label %40

28:                                               ; preds = %4
  %29 = load %struct.address_space*, %struct.address_space** %7, align 8
  %30 = load %struct.list_head*, %struct.list_head** %8, align 8
  %31 = load i32, i32* @v9fs_fid_readpage, align 4
  %32 = load %struct.file*, %struct.file** %6, align 8
  %33 = getelementptr inbounds %struct.file, %struct.file* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @read_cache_pages(%struct.address_space* %29, %struct.list_head* %30, i32 %31, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* @P9_DEBUG_VFS, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 (i32, i8*, i32, ...) @p9_debug(i32 %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %28, %26
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @p9_debug(i32, i8*, i32, ...) #1

declare dso_local i32 @v9fs_readpages_from_fscache(%struct.inode*, %struct.address_space*, %struct.list_head*, i32*) #1

declare dso_local i32 @read_cache_pages(%struct.address_space*, %struct.list_head*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
