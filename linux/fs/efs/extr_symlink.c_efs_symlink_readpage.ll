; ModuleID = '/home/carl/AnghaBench/linux/fs/efs/extr_symlink.c_efs_symlink_readpage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/efs/extr_symlink.c_efs_symlink_readpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.page = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32, i32 }
%struct.buffer_head = type { i32 }

@ENAMETOOLONG = common dso_local global i32 0, align 4
@EFS_BLOCKSIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.page*)* @efs_symlink_readpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efs_symlink_readpage(%struct.file* %0, %struct.page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  %11 = load %struct.page*, %struct.page** %5, align 8
  %12 = call i8* @page_address(%struct.page* %11)
  store i8* %12, i8** %6, align 8
  %13 = load %struct.page*, %struct.page** %5, align 8
  %14 = getelementptr inbounds %struct.page, %struct.page* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.inode*, %struct.inode** %16, align 8
  store %struct.inode* %17, %struct.inode** %8, align 8
  %18 = load %struct.inode*, %struct.inode** %8, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* @ENAMETOOLONG, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @EFS_BLOCKSIZE, align 4
  %25 = mul nsw i32 2, %24
  %26 = icmp sgt i32 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %93

28:                                               ; preds = %2
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %10, align 4
  %31 = load %struct.inode*, %struct.inode** %8, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.inode*, %struct.inode** %8, align 8
  %35 = call i32 @efs_bmap(%struct.inode* %34, i32 0)
  %36 = call %struct.buffer_head* @sb_bread(i32 %33, i32 %35)
  store %struct.buffer_head* %36, %struct.buffer_head** %7, align 8
  %37 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %38 = icmp ne %struct.buffer_head* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %28
  br label %93

40:                                               ; preds = %28
  %41 = load i8*, i8** %6, align 8
  %42 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %43 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @EFS_BLOCKSIZE, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* @EFS_BLOCKSIZE, align 4
  br label %52

50:                                               ; preds = %40
  %51 = load i32, i32* %9, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  %54 = call i32 @memcpy(i8* %41, i32 %44, i32 %53)
  %55 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %56 = call i32 @brelse(%struct.buffer_head* %55)
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @EFS_BLOCKSIZE, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %84

60:                                               ; preds = %52
  %61 = load %struct.inode*, %struct.inode** %8, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.inode*, %struct.inode** %8, align 8
  %65 = call i32 @efs_bmap(%struct.inode* %64, i32 1)
  %66 = call %struct.buffer_head* @sb_bread(i32 %63, i32 %65)
  store %struct.buffer_head* %66, %struct.buffer_head** %7, align 8
  %67 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %68 = icmp ne %struct.buffer_head* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %60
  br label %93

70:                                               ; preds = %60
  %71 = load i8*, i8** %6, align 8
  %72 = load i32, i32* @EFS_BLOCKSIZE, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %76 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @EFS_BLOCKSIZE, align 4
  %80 = sub nsw i32 %78, %79
  %81 = call i32 @memcpy(i8* %74, i32 %77, i32 %80)
  %82 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %83 = call i32 @brelse(%struct.buffer_head* %82)
  br label %84

84:                                               ; preds = %70, %52
  %85 = load i8*, i8** %6, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  store i8 0, i8* %88, align 1
  %89 = load %struct.page*, %struct.page** %5, align 8
  %90 = call i32 @SetPageUptodate(%struct.page* %89)
  %91 = load %struct.page*, %struct.page** %5, align 8
  %92 = call i32 @unlock_page(%struct.page* %91)
  store i32 0, i32* %3, align 4
  br label %99

93:                                               ; preds = %69, %39, %27
  %94 = load %struct.page*, %struct.page** %5, align 8
  %95 = call i32 @SetPageError(%struct.page* %94)
  %96 = load %struct.page*, %struct.page** %5, align 8
  %97 = call i32 @unlock_page(%struct.page* %96)
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %93, %84
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local %struct.buffer_head* @sb_bread(i32, i32) #1

declare dso_local i32 @efs_bmap(%struct.inode*, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @SetPageError(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
