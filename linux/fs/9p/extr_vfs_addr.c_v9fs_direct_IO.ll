; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_vfs_addr.c_v9fs_direct_IO.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_vfs_addr.c_v9fs_direct_IO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i64, %struct.file* }
%struct.file = type { i32 }
%struct.iov_iter = type { i32 }
%struct.inode = type { i32 }

@WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kiocb*, %struct.iov_iter*)* @v9fs_direct_IO to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @v9fs_direct_IO(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca %struct.kiocb*, align 8
  %4 = alloca %struct.iov_iter*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i64, align 8
  store %struct.kiocb* %0, %struct.kiocb** %3, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %4, align 8
  %11 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %12 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %11, i32 0, i32 1
  %13 = load %struct.file*, %struct.file** %12, align 8
  store %struct.file* %13, %struct.file** %5, align 8
  %14 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %15 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %6, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %18 = call i64 @iov_iter_rw(%struct.iov_iter* %17)
  %19 = load i64, i64* @WRITE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %50

21:                                               ; preds = %2
  %22 = load %struct.file*, %struct.file** %5, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %27 = call i64 @p9_client_write(i32 %24, i64 %25, %struct.iov_iter* %26, i32* %8)
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %21
  %31 = load %struct.file*, %struct.file** %5, align 8
  %32 = call %struct.inode* @file_inode(%struct.file* %31)
  store %struct.inode* %32, %struct.inode** %9, align 8
  %33 = load %struct.inode*, %struct.inode** %9, align 8
  %34 = call i64 @i_size_read(%struct.inode* %33)
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = add nsw i64 %35, %36
  %38 = load i64, i64* %10, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %30
  %41 = load %struct.inode*, %struct.inode** %9, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = add nsw i64 %42, %43
  %45 = load i64, i64* %10, align 8
  %46 = sub nsw i64 %44, %45
  %47 = call i32 @inode_add_bytes(%struct.inode* %41, i64 %46)
  br label %48

48:                                               ; preds = %40, %30
  br label %49

49:                                               ; preds = %48, %21
  br label %57

50:                                               ; preds = %2
  %51 = load %struct.file*, %struct.file** %5, align 8
  %52 = getelementptr inbounds %struct.file, %struct.file* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i64, i64* %6, align 8
  %55 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %56 = call i64 @p9_client_read(i32 %53, i64 %54, %struct.iov_iter* %55, i32* %8)
  store i64 %56, i64* %7, align 8
  br label %57

57:                                               ; preds = %50, %49
  %58 = load i64, i64* %7, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i64, i64* %7, align 8
  br label %65

62:                                               ; preds = %57
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  br label %65

65:                                               ; preds = %62, %60
  %66 = phi i64 [ %61, %60 ], [ %64, %62 ]
  ret i64 %66
}

declare dso_local i64 @iov_iter_rw(%struct.iov_iter*) #1

declare dso_local i64 @p9_client_write(i32, i64, %struct.iov_iter*, i32*) #1

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @inode_add_bytes(%struct.inode*, i64) #1

declare dso_local i64 @p9_client_read(i32, i64, %struct.iov_iter*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
