; ModuleID = '/home/carl/AnghaBench/linux/fs/coda/extr_file.c_coda_file_write_iter.c'
source_filename = "/home/carl/AnghaBench/linux/fs/coda/extr_file.c_coda_file_write_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32, %struct.file* }
%struct.file = type { i32 }
%struct.iov_iter = type { i32 }
%struct.inode = type { i32, i32, i32, i32, i32 }
%struct.coda_file_info = type { i32, %struct.file* }

@CODA_ACCESS_TYPE_WRITE = common dso_local global i32 0, align 4
@CODA_ACCESS_TYPE_WRITE_FINISH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kiocb*, %struct.iov_iter*)* @coda_file_write_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @coda_file_write_iter(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca %struct.kiocb*, align 8
  %4 = alloca %struct.iov_iter*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.coda_file_info*, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.kiocb* %0, %struct.kiocb** %3, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %4, align 8
  %12 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %13 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %12, i32 0, i32 1
  %14 = load %struct.file*, %struct.file** %13, align 8
  store %struct.file* %14, %struct.file** %5, align 8
  %15 = load %struct.file*, %struct.file** %5, align 8
  %16 = call %struct.inode* @file_inode(%struct.file* %15)
  store %struct.inode* %16, %struct.inode** %6, align 8
  %17 = load %struct.file*, %struct.file** %5, align 8
  %18 = call %struct.coda_file_info* @coda_ftoc(%struct.file* %17)
  store %struct.coda_file_info* %18, %struct.coda_file_info** %7, align 8
  %19 = load %struct.coda_file_info*, %struct.coda_file_info** %7, align 8
  %20 = getelementptr inbounds %struct.coda_file_info, %struct.coda_file_info* %19, i32 0, i32 1
  %21 = load %struct.file*, %struct.file** %20, align 8
  store %struct.file* %21, %struct.file** %8, align 8
  %22 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %23 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %9, align 4
  %25 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %26 = call i64 @iov_iter_count(%struct.iov_iter* %25)
  store i64 %26, i64* %10, align 8
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.inode*, %struct.inode** %6, align 8
  %31 = call i32 @coda_i2f(%struct.inode* %30)
  %32 = load %struct.coda_file_info*, %struct.coda_file_info** %7, align 8
  %33 = getelementptr inbounds %struct.coda_file_info, %struct.coda_file_info* %32, i32 0, i32 0
  %34 = load i64, i64* %10, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @CODA_ACCESS_TYPE_WRITE, align 4
  %37 = call i64 @venus_access_intent(i32 %29, i32 %31, i32* %33, i64 %34, i32 %35, i32 %36)
  store i64 %37, i64* %11, align 8
  %38 = load i64, i64* %11, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %2
  br label %76

41:                                               ; preds = %2
  %42 = load %struct.file*, %struct.file** %8, align 8
  %43 = call i32 @file_start_write(%struct.file* %42)
  %44 = load %struct.inode*, %struct.inode** %6, align 8
  %45 = call i32 @inode_lock(%struct.inode* %44)
  %46 = load %struct.coda_file_info*, %struct.coda_file_info** %7, align 8
  %47 = getelementptr inbounds %struct.coda_file_info, %struct.coda_file_info* %46, i32 0, i32 1
  %48 = load %struct.file*, %struct.file** %47, align 8
  %49 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %50 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %51 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %50, i32 0, i32 0
  %52 = call i64 @vfs_iter_write(%struct.file* %48, %struct.iov_iter* %49, i32* %51, i32 0)
  store i64 %52, i64* %11, align 8
  %53 = load %struct.file*, %struct.file** %8, align 8
  %54 = call %struct.inode* @file_inode(%struct.file* %53)
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.inode*, %struct.inode** %6, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.inode*, %struct.inode** %6, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 511
  %63 = ashr i32 %62, 9
  %64 = load %struct.inode*, %struct.inode** %6, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.inode*, %struct.inode** %6, align 8
  %67 = call i32 @current_time(%struct.inode* %66)
  %68 = load %struct.inode*, %struct.inode** %6, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  %70 = load %struct.inode*, %struct.inode** %6, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 4
  store i32 %67, i32* %71, align 4
  %72 = load %struct.inode*, %struct.inode** %6, align 8
  %73 = call i32 @inode_unlock(%struct.inode* %72)
  %74 = load %struct.file*, %struct.file** %8, align 8
  %75 = call i32 @file_end_write(%struct.file* %74)
  br label %76

76:                                               ; preds = %41, %40
  %77 = load %struct.inode*, %struct.inode** %6, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.inode*, %struct.inode** %6, align 8
  %81 = call i32 @coda_i2f(%struct.inode* %80)
  %82 = load %struct.coda_file_info*, %struct.coda_file_info** %7, align 8
  %83 = getelementptr inbounds %struct.coda_file_info, %struct.coda_file_info* %82, i32 0, i32 0
  %84 = load i64, i64* %10, align 8
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @CODA_ACCESS_TYPE_WRITE_FINISH, align 4
  %87 = call i64 @venus_access_intent(i32 %79, i32 %81, i32* %83, i64 %84, i32 %85, i32 %86)
  %88 = load i64, i64* %11, align 8
  ret i64 %88
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.coda_file_info* @coda_ftoc(%struct.file*) #1

declare dso_local i64 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i64 @venus_access_intent(i32, i32, i32*, i64, i32, i32) #1

declare dso_local i32 @coda_i2f(%struct.inode*) #1

declare dso_local i32 @file_start_write(%struct.file*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i64 @vfs_iter_write(%struct.file*, %struct.iov_iter*, i32*, i32) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @file_end_write(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
