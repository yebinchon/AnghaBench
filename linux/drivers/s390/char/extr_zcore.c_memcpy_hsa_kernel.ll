; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_zcore.c_memcpy_hsa_kernel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_zcore.c_memcpy_hsa_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hsa_available = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@hsa_buf = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"sclp_sdias_copy() failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcpy_hsa_kernel(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i32, i32* @hsa_available, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @ENODATA, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %56

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %31, %15
  %17 = load i64, i64* %7, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %55

19:                                               ; preds = %16
  %20 = load i64, i64* @hsa_buf, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @PAGE_SIZE, align 8
  %23 = udiv i64 %21, %22
  %24 = add i64 %23, 2
  %25 = call i64 @sclp_sdias_copy(i64 %20, i64 %24, i32 1)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = call i32 @TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %56

31:                                               ; preds = %19
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @PAGE_SIZE, align 8
  %34 = urem i64 %32, %33
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* @PAGE_SIZE, align 8
  %36 = load i64, i64* %8, align 8
  %37 = sub i64 %35, %36
  %38 = load i64, i64* %7, align 8
  %39 = call i64 @min(i64 %37, i64 %38)
  store i64 %39, i64* %9, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = load i64, i64* @hsa_buf, align 8
  %42 = load i64, i64* %8, align 8
  %43 = add i64 %41, %42
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @memcpy(i8* %40, i64 %43, i64 %44)
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %6, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* %6, align 8
  %49 = load i64, i64* %9, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr i8, i8* %50, i64 %49
  store i8* %51, i8** %5, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* %7, align 8
  %54 = sub i64 %53, %52
  store i64 %54, i64* %7, align 8
  br label %16

55:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %27, %12
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i64 @sclp_sdias_copy(i64, i64, i32) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @memcpy(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
