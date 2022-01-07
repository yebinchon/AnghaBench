; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_vfs_file.c_v9fs_file_write_iter.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_vfs_file.c_v9fs_file_write_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32, %struct.file* }
%struct.file = type { i32 }
%struct.iov_iter = type { i32 }
%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.iov_iter*)* @v9fs_file_write_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v9fs_file_write_iter(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kiocb*, align 8
  %5 = alloca %struct.iov_iter*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.kiocb* %0, %struct.kiocb** %4, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %5, align 8
  %14 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %15 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %14, i32 0, i32 1
  %16 = load %struct.file*, %struct.file** %15, align 8
  store %struct.file* %16, %struct.file** %6, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %18 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %19 = call i32 @generic_write_checks(%struct.kiocb* %17, %struct.iov_iter* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %100

24:                                               ; preds = %2
  %25 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %26 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %8, align 4
  %28 = load %struct.file*, %struct.file** %6, align 8
  %29 = getelementptr inbounds %struct.file, %struct.file* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %32 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %35 = call i32 @p9_client_write(i32 %30, i32 %33, %struct.iov_iter* %34, i32* %9)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %98

38:                                               ; preds = %24
  %39 = load %struct.file*, %struct.file** %6, align 8
  %40 = call %struct.inode* @file_inode(%struct.file* %39)
  store %struct.inode* %40, %struct.inode** %10, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @PAGE_SHIFT, align 4
  %43 = ashr i32 %41, %42
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %12, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %45, %46
  %48 = sub nsw i32 %47, 1
  %49 = load i32, i32* @PAGE_SHIFT, align 4
  %50 = ashr i32 %48, %49
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %13, align 8
  %52 = load %struct.inode*, %struct.inode** %10, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = icmp ne %struct.TYPE_2__* %54, null
  br i1 %55, label %56, label %70

56:                                               ; preds = %38
  %57 = load %struct.inode*, %struct.inode** %10, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %56
  %64 = load %struct.inode*, %struct.inode** %10, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i64, i64* %12, align 8
  %68 = load i64, i64* %13, align 8
  %69 = call i32 @invalidate_inode_pages2_range(%struct.TYPE_2__* %66, i64 %67, i64 %68)
  br label %70

70:                                               ; preds = %63, %56, %38
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %73 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, %71
  store i32 %75, i32* %73, align 8
  %76 = load %struct.inode*, %struct.inode** %10, align 8
  %77 = call i32 @i_size_read(%struct.inode* %76)
  store i32 %77, i32* %11, align 4
  %78 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %79 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = icmp sgt i32 %80, %81
  br i1 %82, label %83, label %96

83:                                               ; preds = %70
  %84 = load %struct.inode*, %struct.inode** %10, align 8
  %85 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %86 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %11, align 4
  %89 = sub nsw i32 %87, %88
  %90 = call i32 @inode_add_bytes(%struct.inode* %84, i32 %89)
  %91 = load %struct.inode*, %struct.inode** %10, align 8
  %92 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %93 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @v9fs_i_size_write(%struct.inode* %91, i32 %94)
  br label %96

96:                                               ; preds = %83, %70
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* %3, align 4
  br label %100

98:                                               ; preds = %24
  %99 = load i32, i32* %9, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %98, %96, %22
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @generic_write_checks(%struct.kiocb*, %struct.iov_iter*) #1

declare dso_local i32 @p9_client_write(i32, i32, %struct.iov_iter*, i32*) #1

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i32 @invalidate_inode_pages2_range(%struct.TYPE_2__*, i64, i64) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @inode_add_bytes(%struct.inode*, i32) #1

declare dso_local i32 @v9fs_i_size_write(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
