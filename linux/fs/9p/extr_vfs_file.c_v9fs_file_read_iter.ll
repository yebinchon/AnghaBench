; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_vfs_file.c_v9fs_file_read_iter.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_vfs_file.c_v9fs_file_read_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.p9_fid* }
%struct.p9_fid = type { i32 }
%struct.iov_iter = type { i32 }

@P9_DEBUG_VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"count %zu offset %lld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.iov_iter*)* @v9fs_file_read_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v9fs_file_read_iter(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kiocb*, align 8
  %5 = alloca %struct.iov_iter*, align 8
  %6 = alloca %struct.p9_fid*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %4, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %5, align 8
  %9 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %10 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.p9_fid*, %struct.p9_fid** %12, align 8
  store %struct.p9_fid* %13, %struct.p9_fid** %6, align 8
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* @P9_DEBUG_VFS, align 4
  %15 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %16 = call i32 @iov_iter_count(%struct.iov_iter* %15)
  %17 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %18 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @p9_debug(i32 %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19)
  %21 = load %struct.p9_fid*, %struct.p9_fid** %6, align 8
  %22 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %23 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %26 = call i32 @p9_client_read(%struct.p9_fid* %21, i32 %24, %struct.iov_iter* %25, i32* %8)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %3, align 4
  br label %38

31:                                               ; preds = %2
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %34 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %31, %29
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @p9_debug(i32, i8*, i32, i32) #1

declare dso_local i32 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i32 @p9_client_read(%struct.p9_fid*, i32, %struct.iov_iter*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
