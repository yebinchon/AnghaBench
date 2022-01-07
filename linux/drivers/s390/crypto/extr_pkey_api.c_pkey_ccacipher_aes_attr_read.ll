; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_pkey_api.c_pkey_ccacipher_aes_attr_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_pkey_api.c_pkey_ccacipher_aes_attr_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CCACIPHERTOKENSIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i64, i64)* @pkey_ccacipher_aes_attr_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkey_ccacipher_aes_attr_read(i32 %0, i32 %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i64, i64* %10, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %5
  %17 = load i64, i64* %11, align 8
  %18 = load i64, i64* @CCACIPHERTOKENSIZE, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16, %5
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %81

23:                                               ; preds = %16
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* @CCACIPHERTOKENSIZE, align 8
  %29 = mul i64 2, %28
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %81

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34, %23
  %36 = load i64, i64* @CCACIPHERTOKENSIZE, align 8
  store i64 %36, i64* %12, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 @cca_gencipherkey(i32 -1, i32 -1, i32 %37, i32 0, i8* %38, i64* %12)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* %13, align 4
  store i32 %43, i32* %6, align 4
  br label %81

44:                                               ; preds = %35
  %45 = load i8*, i8** %9, align 8
  %46 = load i64, i64* %12, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  %48 = load i64, i64* @CCACIPHERTOKENSIZE, align 8
  %49 = load i64, i64* %12, align 8
  %50 = sub i64 %48, %49
  %51 = call i32 @memset(i8* %47, i32 0, i64 %50)
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %78

54:                                               ; preds = %44
  %55 = load i64, i64* @CCACIPHERTOKENSIZE, align 8
  store i64 %55, i64* %12, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i8*, i8** %9, align 8
  %58 = load i64, i64* @CCACIPHERTOKENSIZE, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  %60 = call i32 @cca_gencipherkey(i32 -1, i32 -1, i32 %56, i32 0, i8* %59, i64* %12)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = load i32, i32* %13, align 4
  store i32 %64, i32* %6, align 4
  br label %81

65:                                               ; preds = %54
  %66 = load i8*, i8** %9, align 8
  %67 = load i64, i64* @CCACIPHERTOKENSIZE, align 8
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  %69 = load i64, i64* %12, align 8
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  %71 = load i64, i64* @CCACIPHERTOKENSIZE, align 8
  %72 = load i64, i64* %12, align 8
  %73 = sub i64 %71, %72
  %74 = call i32 @memset(i8* %70, i32 0, i64 %73)
  %75 = load i64, i64* @CCACIPHERTOKENSIZE, align 8
  %76 = mul i64 2, %75
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %6, align 4
  br label %81

78:                                               ; preds = %44
  %79 = load i64, i64* @CCACIPHERTOKENSIZE, align 8
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %78, %65, %63, %42, %31, %20
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local i32 @cca_gencipherkey(i32, i32, i32, i32, i8*, i64*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
