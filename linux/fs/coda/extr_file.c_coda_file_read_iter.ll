; ModuleID = '/home/carl/AnghaBench/linux/fs/coda/extr_file.c_coda_file_read_iter.c'
source_filename = "/home/carl/AnghaBench/linux/fs/coda/extr_file.c_coda_file_read_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32, %struct.file* }
%struct.file = type { i32 }
%struct.iov_iter = type { i32 }
%struct.inode = type { i32 }
%struct.coda_file_info = type { i32, i32 }

@CODA_ACCESS_TYPE_READ = common dso_local global i32 0, align 4
@CODA_ACCESS_TYPE_READ_FINISH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kiocb*, %struct.iov_iter*)* @coda_file_read_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @coda_file_read_iter(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca %struct.kiocb*, align 8
  %4 = alloca %struct.iov_iter*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.coda_file_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.kiocb* %0, %struct.kiocb** %3, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %4, align 8
  %11 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %12 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %11, i32 0, i32 1
  %13 = load %struct.file*, %struct.file** %12, align 8
  store %struct.file* %13, %struct.file** %5, align 8
  %14 = load %struct.file*, %struct.file** %5, align 8
  %15 = call %struct.inode* @file_inode(%struct.file* %14)
  store %struct.inode* %15, %struct.inode** %6, align 8
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = call %struct.coda_file_info* @coda_ftoc(%struct.file* %16)
  store %struct.coda_file_info* %17, %struct.coda_file_info** %7, align 8
  %18 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %19 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %8, align 4
  %21 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %22 = call i64 @iov_iter_count(%struct.iov_iter* %21)
  store i64 %22, i64* %9, align 8
  %23 = load %struct.inode*, %struct.inode** %6, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.inode*, %struct.inode** %6, align 8
  %27 = call i32 @coda_i2f(%struct.inode* %26)
  %28 = load %struct.coda_file_info*, %struct.coda_file_info** %7, align 8
  %29 = getelementptr inbounds %struct.coda_file_info, %struct.coda_file_info* %28, i32 0, i32 0
  %30 = load i64, i64* %9, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @CODA_ACCESS_TYPE_READ, align 4
  %33 = call i64 @venus_access_intent(i32 %25, i32 %27, i32* %29, i64 %30, i32 %31, i32 %32)
  store i64 %33, i64* %10, align 8
  %34 = load i64, i64* %10, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %2
  br label %45

37:                                               ; preds = %2
  %38 = load %struct.coda_file_info*, %struct.coda_file_info** %7, align 8
  %39 = getelementptr inbounds %struct.coda_file_info, %struct.coda_file_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %42 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %43 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %42, i32 0, i32 0
  %44 = call i64 @vfs_iter_read(i32 %40, %struct.iov_iter* %41, i32* %43, i32 0)
  store i64 %44, i64* %10, align 8
  br label %45

45:                                               ; preds = %37, %36
  %46 = load %struct.inode*, %struct.inode** %6, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.inode*, %struct.inode** %6, align 8
  %50 = call i32 @coda_i2f(%struct.inode* %49)
  %51 = load %struct.coda_file_info*, %struct.coda_file_info** %7, align 8
  %52 = getelementptr inbounds %struct.coda_file_info, %struct.coda_file_info* %51, i32 0, i32 0
  %53 = load i64, i64* %9, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @CODA_ACCESS_TYPE_READ_FINISH, align 4
  %56 = call i64 @venus_access_intent(i32 %48, i32 %50, i32* %52, i64 %53, i32 %54, i32 %55)
  %57 = load i64, i64* %10, align 8
  ret i64 %57
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.coda_file_info* @coda_ftoc(%struct.file*) #1

declare dso_local i64 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i64 @venus_access_intent(i32, i32, i32*, i64, i32, i32) #1

declare dso_local i32 @coda_i2f(%struct.inode*) #1

declare dso_local i64 @vfs_iter_read(i32, %struct.iov_iter*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
