; ModuleID = '/home/carl/AnghaBench/linux/fs/crypto/extr_keysetup.c_init_essiv_generator.c'
source_filename = "/home/carl/AnghaBench/linux/fs/crypto/extr_keysetup.c_init_essiv_generator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscrypt_info = type { %struct.crypto_cipher*, %struct.TYPE_2__* }
%struct.crypto_cipher = type { i32 }
%struct.TYPE_2__ = type { i64 }

@SHA256_DIGEST_SIZE = common dso_local global i32 0, align 4
@AES_BLOCK_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"aes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fscrypt_info*, i32*, i32)* @init_essiv_generator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_essiv_generator(%struct.fscrypt_info* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fscrypt_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.crypto_cipher*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.fscrypt_info* %0, %struct.fscrypt_info** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @SHA256_DIGEST_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %10, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %11, align 8
  %17 = load %struct.fscrypt_info*, %struct.fscrypt_info** %5, align 8
  %18 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %23 = icmp ne i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 @WARN_ON(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %62

30:                                               ; preds = %3
  %31 = call %struct.crypto_cipher* @crypto_alloc_cipher(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  store %struct.crypto_cipher* %31, %struct.crypto_cipher** %9, align 8
  %32 = load %struct.crypto_cipher*, %struct.crypto_cipher** %9, align 8
  %33 = call i64 @IS_ERR(%struct.crypto_cipher* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.crypto_cipher*, %struct.crypto_cipher** %9, align 8
  %37 = call i32 @PTR_ERR(%struct.crypto_cipher* %36)
  store i32 %37, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %62

38:                                               ; preds = %30
  %39 = load %struct.crypto_cipher*, %struct.crypto_cipher** %9, align 8
  %40 = load %struct.fscrypt_info*, %struct.fscrypt_info** %5, align 8
  %41 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %40, i32 0, i32 0
  store %struct.crypto_cipher* %39, %struct.crypto_cipher** %41, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @derive_essiv_salt(i32* %42, i32 %43, i32* %16)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %57

48:                                               ; preds = %38
  %49 = load %struct.crypto_cipher*, %struct.crypto_cipher** %9, align 8
  %50 = mul nuw i64 4, %14
  %51 = trunc i64 %50 to i32
  %52 = call i32 @crypto_cipher_setkey(%struct.crypto_cipher* %49, i32* %16, i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %57

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56, %55, %47
  %58 = mul nuw i64 4, %14
  %59 = trunc i64 %58 to i32
  %60 = call i32 @memzero_explicit(i32* %16, i32 %59)
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %62

62:                                               ; preds = %57, %35, %27
  %63 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %63)
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @WARN_ON(i32) #2

declare dso_local %struct.crypto_cipher* @crypto_alloc_cipher(i8*, i32, i32) #2

declare dso_local i64 @IS_ERR(%struct.crypto_cipher*) #2

declare dso_local i32 @PTR_ERR(%struct.crypto_cipher*) #2

declare dso_local i32 @derive_essiv_salt(i32*, i32, i32*) #2

declare dso_local i32 @crypto_cipher_setkey(%struct.crypto_cipher*, i32*, i32) #2

declare dso_local i32 @memzero_explicit(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
