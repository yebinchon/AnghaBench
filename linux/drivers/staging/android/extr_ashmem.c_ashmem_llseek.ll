; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/android/extr_ashmem.c_ashmem_llseek.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/android/extr_ashmem.c_ashmem_llseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.ashmem_area* }
%struct.ashmem_area = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ashmem_mutex = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@EBADF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i64, i32)* @ashmem_llseek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ashmem_llseek(%struct.file* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ashmem_area*, align 8
  %9 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 1
  %12 = load %struct.ashmem_area*, %struct.ashmem_area** %11, align 8
  store %struct.ashmem_area* %12, %struct.ashmem_area** %8, align 8
  %13 = call i32 @mutex_lock(i32* @ashmem_mutex)
  %14 = load %struct.ashmem_area*, %struct.ashmem_area** %8, align 8
  %15 = getelementptr inbounds %struct.ashmem_area, %struct.ashmem_area* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = call i32 @mutex_unlock(i32* @ashmem_mutex)
  %20 = load i64, i64* @EINVAL, align 8
  %21 = sub nsw i64 0, %20
  store i64 %21, i64* %4, align 8
  br label %52

22:                                               ; preds = %3
  %23 = load %struct.ashmem_area*, %struct.ashmem_area** %8, align 8
  %24 = getelementptr inbounds %struct.ashmem_area, %struct.ashmem_area* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = icmp ne %struct.TYPE_2__* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = call i32 @mutex_unlock(i32* @ashmem_mutex)
  %29 = load i64, i64* @EBADF, align 8
  %30 = sub nsw i64 0, %29
  store i64 %30, i64* %4, align 8
  br label %52

31:                                               ; preds = %22
  %32 = call i32 @mutex_unlock(i32* @ashmem_mutex)
  %33 = load %struct.ashmem_area*, %struct.ashmem_area** %8, align 8
  %34 = getelementptr inbounds %struct.ashmem_area, %struct.ashmem_area* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i64 @vfs_llseek(%struct.TYPE_2__* %35, i64 %36, i32 %37)
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load i64, i64* %9, align 8
  store i64 %42, i64* %4, align 8
  br label %52

43:                                               ; preds = %31
  %44 = load %struct.ashmem_area*, %struct.ashmem_area** %8, align 8
  %45 = getelementptr inbounds %struct.ashmem_area, %struct.ashmem_area* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.file*, %struct.file** %5, align 8
  %50 = getelementptr inbounds %struct.file, %struct.file* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i64, i64* %9, align 8
  store i64 %51, i64* %4, align 8
  br label %52

52:                                               ; preds = %43, %41, %27, %18
  %53 = load i64, i64* %4, align 8
  ret i64 %53
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @vfs_llseek(%struct.TYPE_2__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
