; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_pkey_api.c_pkey_ccadata_aes_attr_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_pkey_api.c_pkey_ccadata_aes_attr_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkey_seckey = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i64, i64)* @pkey_ccadata_aes_attr_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkey_ccadata_aes_attr_read(i32 %0, i32 %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.pkey_seckey*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = bitcast i8* %14 to %struct.pkey_seckey*
  store %struct.pkey_seckey* %15, %struct.pkey_seckey** %13, align 8
  %16 = load i64, i64* %10, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = load i64, i64* %11, align 8
  %20 = icmp ult i64 %19, 4
  br i1 %20, label %21, label %24

21:                                               ; preds = %18, %5
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %61

24:                                               ; preds = %18
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load i64, i64* %11, align 8
  %29 = icmp ult i64 %28, 8
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %61

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33, %24
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.pkey_seckey*, %struct.pkey_seckey** %13, align 8
  %37 = getelementptr inbounds %struct.pkey_seckey, %struct.pkey_seckey* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @cca_genseckey(i32 -1, i32 -1, i32 %35, i32 %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %6, align 4
  br label %61

44:                                               ; preds = %34
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %44
  %48 = load %struct.pkey_seckey*, %struct.pkey_seckey** %13, align 8
  %49 = getelementptr inbounds %struct.pkey_seckey, %struct.pkey_seckey* %48, i32 1
  store %struct.pkey_seckey* %49, %struct.pkey_seckey** %13, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.pkey_seckey*, %struct.pkey_seckey** %13, align 8
  %52 = getelementptr inbounds %struct.pkey_seckey, %struct.pkey_seckey* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @cca_genseckey(i32 -1, i32 -1, i32 %50, i32 %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %6, align 4
  br label %61

59:                                               ; preds = %47
  store i32 8, i32* %6, align 4
  br label %61

60:                                               ; preds = %44
  store i32 4, i32* %6, align 4
  br label %61

61:                                               ; preds = %60, %59, %57, %42, %30, %21
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i32 @cca_genseckey(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
