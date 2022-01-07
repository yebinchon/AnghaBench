; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_file.c_iter_get_bvecs_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_file.c_iter_get_bvecs_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iov_iter = type { i32 }
%struct.bio_vec = type { i32 }

@INT_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.iov_iter*, i64, %struct.bio_vec**, i32*)* @iter_get_bvecs_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iter_get_bvecs_alloc(%struct.iov_iter* %0, i64 %1, %struct.bio_vec** %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.iov_iter*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.bio_vec**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.bio_vec*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.iov_iter* %0, %struct.iov_iter** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.bio_vec** %2, %struct.bio_vec*** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %15 = call i64 @iov_iter_count(%struct.iov_iter* %14)
  store i64 %15, i64* %11, align 8
  %16 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @iov_iter_truncate(%struct.iov_iter* %16, i64 %17)
  %19 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %20 = load i32, i32* @INT_MAX, align 4
  %21 = call i32 @iov_iter_npages(%struct.iov_iter* %19, i32 %20)
  store i32 %21, i32* %13, align 4
  %22 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %23 = load i64, i64* %11, align 8
  %24 = call i32 @iov_iter_reexpand(%struct.iov_iter* %22, i64 %23)
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = load i32, i32* @__GFP_ZERO, align 4
  %28 = or i32 %26, %27
  %29 = call %struct.bio_vec* @kvmalloc_array(i32 %25, i32 4, i32 %28)
  store %struct.bio_vec* %29, %struct.bio_vec** %10, align 8
  %30 = load %struct.bio_vec*, %struct.bio_vec** %10, align 8
  %31 = icmp ne %struct.bio_vec* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %4
  %33 = load i64, i64* @ENOMEM, align 8
  %34 = sub nsw i64 0, %33
  store i64 %34, i64* %5, align 8
  br label %52

35:                                               ; preds = %4
  %36 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.bio_vec*, %struct.bio_vec** %10, align 8
  %39 = call i64 @__iter_get_bvecs(%struct.iov_iter* %36, i64 %37, %struct.bio_vec* %38)
  store i64 %39, i64* %12, align 8
  %40 = load i64, i64* %12, align 8
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load %struct.bio_vec*, %struct.bio_vec** %10, align 8
  %44 = call i32 @kvfree(%struct.bio_vec* %43)
  %45 = load i64, i64* %12, align 8
  store i64 %45, i64* %5, align 8
  br label %52

46:                                               ; preds = %35
  %47 = load %struct.bio_vec*, %struct.bio_vec** %10, align 8
  %48 = load %struct.bio_vec**, %struct.bio_vec*** %8, align 8
  store %struct.bio_vec* %47, %struct.bio_vec** %48, align 8
  %49 = load i32, i32* %13, align 4
  %50 = load i32*, i32** %9, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i64, i64* %12, align 8
  store i64 %51, i64* %5, align 8
  br label %52

52:                                               ; preds = %46, %42, %32
  %53 = load i64, i64* %5, align 8
  ret i64 %53
}

declare dso_local i64 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i32 @iov_iter_truncate(%struct.iov_iter*, i64) #1

declare dso_local i32 @iov_iter_npages(%struct.iov_iter*, i32) #1

declare dso_local i32 @iov_iter_reexpand(%struct.iov_iter*, i64) #1

declare dso_local %struct.bio_vec* @kvmalloc_array(i32, i32, i32) #1

declare dso_local i64 @__iter_get_bvecs(%struct.iov_iter*, i64, %struct.bio_vec*) #1

declare dso_local i32 @kvfree(%struct.bio_vec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
