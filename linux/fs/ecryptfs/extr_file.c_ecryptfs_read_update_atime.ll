; ModuleID = '/home/carl/AnghaBench/linux/fs/ecryptfs/extr_file.c_ecryptfs_read_update_atime.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ecryptfs/extr_file.c_ecryptfs_read_update_atime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { %struct.file* }
%struct.file = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.iov_iter = type { i32 }
%struct.path = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kiocb*, %struct.iov_iter*)* @ecryptfs_read_update_atime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ecryptfs_read_update_atime(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca %struct.kiocb*, align 8
  %4 = alloca %struct.iov_iter*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.path*, align 8
  %7 = alloca %struct.file*, align 8
  store %struct.kiocb* %0, %struct.kiocb** %3, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %4, align 8
  %8 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %9 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %8, i32 0, i32 0
  %10 = load %struct.file*, %struct.file** %9, align 8
  store %struct.file* %10, %struct.file** %7, align 8
  %11 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %12 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %13 = call i64 @generic_file_read_iter(%struct.kiocb* %11, %struct.iov_iter* %12)
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp sge i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.file*, %struct.file** %7, align 8
  %18 = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.path* @ecryptfs_dentry_to_lower_path(i32 %20)
  store %struct.path* %21, %struct.path** %6, align 8
  %22 = load %struct.path*, %struct.path** %6, align 8
  %23 = call i32 @touch_atime(%struct.path* %22)
  br label %24

24:                                               ; preds = %16, %2
  %25 = load i64, i64* %5, align 8
  ret i64 %25
}

declare dso_local i64 @generic_file_read_iter(%struct.kiocb*, %struct.iov_iter*) #1

declare dso_local %struct.path* @ecryptfs_dentry_to_lower_path(i32) #1

declare dso_local i32 @touch_atime(%struct.path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
