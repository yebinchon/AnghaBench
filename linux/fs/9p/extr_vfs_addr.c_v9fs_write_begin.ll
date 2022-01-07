; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_vfs_addr.c_v9fs_write_begin.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_vfs_addr.c_v9fs_write_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.v9fs_inode = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@P9_DEBUG_VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"filp %p, mapping %p\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page**, i8**)* @v9fs_write_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v9fs_write_begin(%struct.file* %0, %struct.address_space* %1, i32 %2, i32 %3, i32 %4, %struct.page** %5, i8** %6) #0 {
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.address_space*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.page**, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.page*, align 8
  %17 = alloca %struct.v9fs_inode*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.inode*, align 8
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.address_space* %1, %struct.address_space** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.page** %5, %struct.page*** %13, align 8
  store i8** %6, i8*** %14, align 8
  store i32 0, i32* %15, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @PAGE_SHIFT, align 4
  %22 = ashr i32 %20, %21
  store i32 %22, i32* %18, align 4
  %23 = load %struct.address_space*, %struct.address_space** %9, align 8
  %24 = getelementptr inbounds %struct.address_space, %struct.address_space* %23, i32 0, i32 0
  %25 = load %struct.inode*, %struct.inode** %24, align 8
  store %struct.inode* %25, %struct.inode** %19, align 8
  %26 = load i32, i32* @P9_DEBUG_VFS, align 4
  %27 = load %struct.file*, %struct.file** %8, align 8
  %28 = load %struct.address_space*, %struct.address_space** %9, align 8
  %29 = call i32 @p9_debug(i32 %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.file* %27, %struct.address_space* %28)
  %30 = load %struct.inode*, %struct.inode** %19, align 8
  %31 = call %struct.v9fs_inode* @V9FS_I(%struct.inode* %30)
  store %struct.v9fs_inode* %31, %struct.v9fs_inode** %17, align 8
  br label %32

32:                                               ; preds = %69, %7
  %33 = load %struct.address_space*, %struct.address_space** %9, align 8
  %34 = load i32, i32* %18, align 4
  %35 = load i32, i32* %12, align 4
  %36 = call %struct.page* @grab_cache_page_write_begin(%struct.address_space* %33, i32 %34, i32 %35)
  store %struct.page* %36, %struct.page** %16, align 8
  %37 = load %struct.page*, %struct.page** %16, align 8
  %38 = icmp ne %struct.page* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %15, align 4
  br label %71

42:                                               ; preds = %32
  %43 = load %struct.v9fs_inode*, %struct.v9fs_inode** %17, align 8
  %44 = getelementptr inbounds %struct.v9fs_inode, %struct.v9fs_inode* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @BUG_ON(i32 %48)
  %50 = load %struct.page*, %struct.page** %16, align 8
  %51 = call i64 @PageUptodate(%struct.page* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  br label %71

54:                                               ; preds = %42
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @PAGE_SIZE, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %71

59:                                               ; preds = %54
  %60 = load %struct.v9fs_inode*, %struct.v9fs_inode** %17, align 8
  %61 = getelementptr inbounds %struct.v9fs_inode, %struct.v9fs_inode* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.page*, %struct.page** %16, align 8
  %64 = call i32 @v9fs_fid_readpage(i32 %62, %struct.page* %63)
  store i32 %64, i32* %15, align 4
  %65 = load %struct.page*, %struct.page** %16, align 8
  %66 = call i32 @put_page(%struct.page* %65)
  %67 = load i32, i32* %15, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %59
  br label %32

70:                                               ; preds = %59
  br label %71

71:                                               ; preds = %70, %58, %53, %39
  %72 = load %struct.page*, %struct.page** %16, align 8
  %73 = load %struct.page**, %struct.page*** %13, align 8
  store %struct.page* %72, %struct.page** %73, align 8
  %74 = load i32, i32* %15, align 4
  ret i32 %74
}

declare dso_local i32 @p9_debug(i32, i8*, %struct.file*, %struct.address_space*) #1

declare dso_local %struct.v9fs_inode* @V9FS_I(%struct.inode*) #1

declare dso_local %struct.page* @grab_cache_page_write_begin(%struct.address_space*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @PageUptodate(%struct.page*) #1

declare dso_local i32 @v9fs_fid_readpage(i32, %struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
