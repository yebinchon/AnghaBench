; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_vfs_addr.c_v9fs_write_end.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_vfs_addr.c_v9fs_write_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.address_space = type { i32 }
%struct.page = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }

@P9_DEBUG_VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"filp %p, mapping %p\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page*, i8*)* @v9fs_write_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v9fs_write_end(%struct.file* %0, %struct.address_space* %1, i32 %2, i32 %3, i32 %4, %struct.page* %5, i8* %6) #0 {
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.address_space*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.page*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.inode*, align 8
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.address_space* %1, %struct.address_space** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.page* %5, %struct.page** %13, align 8
  store i8* %6, i8** %14, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %12, align 4
  %19 = add i32 %17, %18
  store i32 %19, i32* %15, align 4
  %20 = load %struct.page*, %struct.page** %13, align 8
  %21 = getelementptr inbounds %struct.page, %struct.page* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.inode*, %struct.inode** %23, align 8
  store %struct.inode* %24, %struct.inode** %16, align 8
  %25 = load i32, i32* @P9_DEBUG_VFS, align 4
  %26 = load %struct.file*, %struct.file** %8, align 8
  %27 = load %struct.address_space*, %struct.address_space** %9, align 8
  %28 = call i32 @p9_debug(i32 %25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.file* %26, %struct.address_space* %27)
  %29 = load %struct.page*, %struct.page** %13, align 8
  %30 = call i32 @PageUptodate(%struct.page* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %49, label %32

32:                                               ; preds = %7
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ult i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32 0, i32* %12, align 4
  br label %69

40:                                               ; preds = %32
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @PAGE_SIZE, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load %struct.page*, %struct.page** %13, align 8
  %46 = call i32 @SetPageUptodate(%struct.page* %45)
  br label %47

47:                                               ; preds = %44, %40
  br label %48

48:                                               ; preds = %47
  br label %49

49:                                               ; preds = %48, %7
  %50 = load i32, i32* %15, align 4
  %51 = load %struct.inode*, %struct.inode** %16, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ugt i32 %50, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %49
  %56 = load %struct.inode*, %struct.inode** %16, align 8
  %57 = load i32, i32* %15, align 4
  %58 = load %struct.inode*, %struct.inode** %16, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sub i32 %57, %60
  %62 = call i32 @inode_add_bytes(%struct.inode* %56, i32 %61)
  %63 = load %struct.inode*, %struct.inode** %16, align 8
  %64 = load i32, i32* %15, align 4
  %65 = call i32 @i_size_write(%struct.inode* %63, i32 %64)
  br label %66

66:                                               ; preds = %55, %49
  %67 = load %struct.page*, %struct.page** %13, align 8
  %68 = call i32 @set_page_dirty(%struct.page* %67)
  br label %69

69:                                               ; preds = %66, %39
  %70 = load %struct.page*, %struct.page** %13, align 8
  %71 = call i32 @unlock_page(%struct.page* %70)
  %72 = load %struct.page*, %struct.page** %13, align 8
  %73 = call i32 @put_page(%struct.page* %72)
  %74 = load i32, i32* %12, align 4
  ret i32 %74
}

declare dso_local i32 @p9_debug(i32, i8*, %struct.file*, %struct.address_space*) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @inode_add_bytes(%struct.inode*, i32) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
