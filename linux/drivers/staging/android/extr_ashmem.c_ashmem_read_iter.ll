; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/android/extr_ashmem.c_ashmem_read_iter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/android/extr_ashmem.c_ashmem_read_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ashmem_area* }
%struct.ashmem_area = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.iov_iter = type { i32 }

@ashmem_mutex = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.iov_iter*)* @ashmem_read_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ashmem_read_iter(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca %struct.kiocb*, align 8
  %4 = alloca %struct.iov_iter*, align 8
  %5 = alloca %struct.ashmem_area*, align 8
  %6 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %3, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %4, align 8
  %7 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %8 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %7, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.ashmem_area*, %struct.ashmem_area** %10, align 8
  store %struct.ashmem_area* %11, %struct.ashmem_area** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = call i32 @mutex_lock(i32* @ashmem_mutex)
  %13 = load %struct.ashmem_area*, %struct.ashmem_area** %5, align 8
  %14 = getelementptr inbounds %struct.ashmem_area, %struct.ashmem_area* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %47

18:                                               ; preds = %2
  %19 = load %struct.ashmem_area*, %struct.ashmem_area** %5, align 8
  %20 = getelementptr inbounds %struct.ashmem_area, %struct.ashmem_area* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = icmp ne %struct.TYPE_4__* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @EBADF, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %47

26:                                               ; preds = %18
  %27 = call i32 @mutex_unlock(i32* @ashmem_mutex)
  %28 = load %struct.ashmem_area*, %struct.ashmem_area** %5, align 8
  %29 = getelementptr inbounds %struct.ashmem_area, %struct.ashmem_area* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %32 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %33 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %32, i32 0, i32 0
  %34 = call i32 @vfs_iter_read(%struct.TYPE_4__* %30, %struct.iov_iter* %31, i32* %33, i32 0)
  store i32 %34, i32* %6, align 4
  %35 = call i32 @mutex_lock(i32* @ashmem_mutex)
  %36 = load i32, i32* %6, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %26
  %39 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %40 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ashmem_area*, %struct.ashmem_area** %5, align 8
  %43 = getelementptr inbounds %struct.ashmem_area, %struct.ashmem_area* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 %41, i32* %45, align 4
  br label %46

46:                                               ; preds = %38, %26
  br label %47

47:                                               ; preds = %46, %23, %17
  %48 = call i32 @mutex_unlock(i32* @ashmem_mutex)
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @vfs_iter_read(%struct.TYPE_4__*, %struct.iov_iter*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
