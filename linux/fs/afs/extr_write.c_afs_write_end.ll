; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_write.c_afs_write_end.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_write.c_afs_write_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.address_space = type { i32 }
%struct.page = type { i32 }
%struct.afs_vnode = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.key = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"{%llx:%llu},{%lx}\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"dirtied\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_write_end(%struct.file* %0, %struct.address_space* %1, i64 %2, i32 %3, i32 %4, %struct.page* %5, i8* %6) #0 {
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.address_space*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.page*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.afs_vnode*, align 8
  %16 = alloca %struct.key*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.address_space* %1, %struct.address_space** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.page* %5, %struct.page** %13, align 8
  store i8* %6, i8** %14, align 8
  %20 = load %struct.file*, %struct.file** %8, align 8
  %21 = call i32 @file_inode(%struct.file* %20)
  %22 = call %struct.afs_vnode* @AFS_FS_I(i32 %21)
  store %struct.afs_vnode* %22, %struct.afs_vnode** %15, align 8
  %23 = load %struct.file*, %struct.file** %8, align 8
  %24 = call %struct.key* @afs_file_key(%struct.file* %23)
  store %struct.key* %24, %struct.key** %16, align 8
  %25 = load %struct.afs_vnode*, %struct.afs_vnode** %15, align 8
  %26 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.afs_vnode*, %struct.afs_vnode** %15, align 8
  %30 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.page*, %struct.page** %13, align 8
  %34 = getelementptr inbounds %struct.page, %struct.page* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @_enter(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %32, i32 %35)
  %37 = load i64, i64* %10, align 8
  %38 = load i32, i32* %12, align 4
  %39 = zext i32 %38 to i64
  %40 = add nsw i64 %37, %39
  store i64 %40, i64* %18, align 8
  %41 = load %struct.afs_vnode*, %struct.afs_vnode** %15, align 8
  %42 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %41, i32 0, i32 1
  %43 = call i64 @i_size_read(i32* %42)
  store i64 %43, i64* %17, align 8
  %44 = load i64, i64* %18, align 8
  %45 = load i64, i64* %17, align 8
  %46 = icmp sgt i64 %44, %45
  br i1 %46, label %47, label %66

47:                                               ; preds = %7
  %48 = load %struct.afs_vnode*, %struct.afs_vnode** %15, align 8
  %49 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %48, i32 0, i32 0
  %50 = call i32 @spin_lock(i32* %49)
  %51 = load %struct.afs_vnode*, %struct.afs_vnode** %15, align 8
  %52 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %51, i32 0, i32 1
  %53 = call i64 @i_size_read(i32* %52)
  store i64 %53, i64* %17, align 8
  %54 = load i64, i64* %18, align 8
  %55 = load i64, i64* %17, align 8
  %56 = icmp sgt i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %47
  %58 = load %struct.afs_vnode*, %struct.afs_vnode** %15, align 8
  %59 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %58, i32 0, i32 1
  %60 = load i64, i64* %18, align 8
  %61 = call i32 @i_size_write(i32* %59, i64 %60)
  br label %62

62:                                               ; preds = %57, %47
  %63 = load %struct.afs_vnode*, %struct.afs_vnode** %15, align 8
  %64 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %63, i32 0, i32 0
  %65 = call i32 @spin_unlock(i32* %64)
  br label %66

66:                                               ; preds = %62, %7
  %67 = load %struct.page*, %struct.page** %13, align 8
  %68 = call i32 @PageUptodate(%struct.page* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %93, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp ult i32 %71, %72
  br i1 %73, label %74, label %90

74:                                               ; preds = %70
  %75 = load %struct.afs_vnode*, %struct.afs_vnode** %15, align 8
  %76 = load %struct.key*, %struct.key** %16, align 8
  %77 = load i64, i64* %10, align 8
  %78 = load i32, i32* %12, align 4
  %79 = zext i32 %78 to i64
  %80 = add nsw i64 %77, %79
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %12, align 4
  %83 = sub i32 %81, %82
  %84 = load %struct.page*, %struct.page** %13, align 8
  %85 = call i32 @afs_fill_page(%struct.afs_vnode* %75, %struct.key* %76, i64 %80, i32 %83, %struct.page* %84)
  store i32 %85, i32* %19, align 4
  %86 = load i32, i32* %19, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %74
  br label %103

89:                                               ; preds = %74
  br label %90

90:                                               ; preds = %89, %70
  %91 = load %struct.page*, %struct.page** %13, align 8
  %92 = call i32 @SetPageUptodate(%struct.page* %91)
  br label %93

93:                                               ; preds = %90, %66
  %94 = load %struct.page*, %struct.page** %13, align 8
  %95 = call i32 @set_page_dirty(%struct.page* %94)
  %96 = load %struct.page*, %struct.page** %13, align 8
  %97 = call i64 @PageDirty(%struct.page* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %93
  %100 = call i32 @_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %93
  %102 = load i32, i32* %12, align 4
  store i32 %102, i32* %19, align 4
  br label %103

103:                                              ; preds = %101, %88
  %104 = load %struct.page*, %struct.page** %13, align 8
  %105 = call i32 @unlock_page(%struct.page* %104)
  %106 = load %struct.page*, %struct.page** %13, align 8
  %107 = call i32 @put_page(%struct.page* %106)
  %108 = load i32, i32* %19, align 4
  ret i32 %108
}

declare dso_local %struct.afs_vnode* @AFS_FS_I(i32) #1

declare dso_local i32 @file_inode(%struct.file*) #1

declare dso_local %struct.key* @afs_file_key(%struct.file*) #1

declare dso_local i32 @_enter(i8*, i32, i32, i32) #1

declare dso_local i64 @i_size_read(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @i_size_write(i32*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @afs_fill_page(%struct.afs_vnode*, %struct.key*, i64, i32, %struct.page*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i64 @PageDirty(%struct.page*) #1

declare dso_local i32 @_debug(i8*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
