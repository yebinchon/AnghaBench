; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_ccamisc.c_alloc_and_prep_cprbmem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_ccamisc.c_alloc_and_prep_cprbmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CPRBX = type { i32, i32, i64, i32*, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"T2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32**, %struct.CPRBX**, %struct.CPRBX**)* @alloc_and_prep_cprbmem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_and_prep_cprbmem(i64 %0, i32** %1, %struct.CPRBX** %2, %struct.CPRBX** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.CPRBX**, align 8
  %9 = alloca %struct.CPRBX**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.CPRBX*, align 8
  %13 = alloca %struct.CPRBX*, align 8
  store i64 %0, i64* %6, align 8
  store i32** %1, i32*** %7, align 8
  store %struct.CPRBX** %2, %struct.CPRBX*** %8, align 8
  store %struct.CPRBX** %3, %struct.CPRBX*** %9, align 8
  %14 = load i64, i64* %6, align 8
  %15 = add i64 40, %14
  store i64 %15, i64* %11, align 8
  %16 = load i64, i64* %11, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i32* @kcalloc(i32 2, i64 %16, i32 %17)
  store i32* %18, i32** %10, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %62

24:                                               ; preds = %4
  %25 = load i32*, i32** %10, align 8
  %26 = bitcast i32* %25 to %struct.CPRBX*
  store %struct.CPRBX* %26, %struct.CPRBX** %12, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = load i64, i64* %11, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = bitcast i32* %29 to %struct.CPRBX*
  store %struct.CPRBX* %30, %struct.CPRBX** %13, align 8
  %31 = load %struct.CPRBX*, %struct.CPRBX** %12, align 8
  %32 = getelementptr inbounds %struct.CPRBX, %struct.CPRBX* %31, i32 0, i32 0
  store i32 40, i32* %32, align 8
  %33 = load %struct.CPRBX*, %struct.CPRBX** %12, align 8
  %34 = getelementptr inbounds %struct.CPRBX, %struct.CPRBX* %33, i32 0, i32 1
  store i32 2, i32* %34, align 4
  %35 = load %struct.CPRBX*, %struct.CPRBX** %12, align 8
  %36 = getelementptr inbounds %struct.CPRBX, %struct.CPRBX* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @memcpy(i32 %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %39 = load i64, i64* %11, align 8
  %40 = load %struct.CPRBX*, %struct.CPRBX** %12, align 8
  %41 = getelementptr inbounds %struct.CPRBX, %struct.CPRBX* %40, i32 0, i32 2
  store i64 %39, i64* %41, align 8
  %42 = load i64, i64* %6, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %24
  %45 = load %struct.CPRBX*, %struct.CPRBX** %12, align 8
  %46 = bitcast %struct.CPRBX* %45 to i32*
  %47 = getelementptr inbounds i32, i32* %46, i64 40
  %48 = load %struct.CPRBX*, %struct.CPRBX** %12, align 8
  %49 = getelementptr inbounds %struct.CPRBX, %struct.CPRBX* %48, i32 0, i32 4
  store i32* %47, i32** %49, align 8
  %50 = load %struct.CPRBX*, %struct.CPRBX** %13, align 8
  %51 = bitcast %struct.CPRBX* %50 to i32*
  %52 = getelementptr inbounds i32, i32* %51, i64 40
  %53 = load %struct.CPRBX*, %struct.CPRBX** %12, align 8
  %54 = getelementptr inbounds %struct.CPRBX, %struct.CPRBX* %53, i32 0, i32 3
  store i32* %52, i32** %54, align 8
  br label %55

55:                                               ; preds = %44, %24
  %56 = load i32*, i32** %10, align 8
  %57 = load i32**, i32*** %7, align 8
  store i32* %56, i32** %57, align 8
  %58 = load %struct.CPRBX*, %struct.CPRBX** %12, align 8
  %59 = load %struct.CPRBX**, %struct.CPRBX*** %8, align 8
  store %struct.CPRBX* %58, %struct.CPRBX** %59, align 8
  %60 = load %struct.CPRBX*, %struct.CPRBX** %13, align 8
  %61 = load %struct.CPRBX**, %struct.CPRBX*** %9, align 8
  store %struct.CPRBX* %60, %struct.CPRBX** %61, align 8
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %55, %21
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32* @kcalloc(i32, i64, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
