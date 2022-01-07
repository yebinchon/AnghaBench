; ModuleID = '/home/carl/AnghaBench/linux/fs/crypto/extr_fscrypt_private.h_fscrypt_valid_enc_modes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/crypto/extr_fscrypt_private.h_fscrypt_valid_enc_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FSCRYPT_MODE_AES_128_CBC = common dso_local global i64 0, align 8
@FSCRYPT_MODE_AES_128_CTS = common dso_local global i64 0, align 8
@FSCRYPT_MODE_AES_256_XTS = common dso_local global i64 0, align 8
@FSCRYPT_MODE_AES_256_CTS = common dso_local global i64 0, align 8
@FSCRYPT_MODE_ADIANTUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @fscrypt_valid_enc_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fscrypt_valid_enc_modes(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @FSCRYPT_MODE_AES_128_CBC, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @FSCRYPT_MODE_AES_128_CTS, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i32 1, i32* %3, align 4
  br label %33

14:                                               ; preds = %9, %2
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @FSCRYPT_MODE_AES_256_XTS, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @FSCRYPT_MODE_AES_256_CTS, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %33

23:                                               ; preds = %18, %14
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @FSCRYPT_MODE_ADIANTUM, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @FSCRYPT_MODE_ADIANTUM, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 1, i32* %3, align 4
  br label %33

32:                                               ; preds = %27, %23
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %31, %22, %13
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
