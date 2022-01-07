; ModuleID = '/home/carl/AnghaBench/linux/fs/crypto/extr_keysetup.c_fscrypt_set_derived_key.c'
source_filename = "/home/carl/AnghaBench/linux/fs/crypto/extr_keysetup.c_fscrypt_set_derived_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscrypt_info = type { i32, %struct.crypto_skcipher*, %struct.fscrypt_mode* }
%struct.crypto_skcipher = type { i32 }
%struct.fscrypt_mode = type { i32, i64 }

@.str = private unnamed_addr constant [39 x i8] c"Error initializing ESSIV generator: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fscrypt_set_derived_key(%struct.fscrypt_info* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fscrypt_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.fscrypt_mode*, align 8
  %7 = alloca %struct.crypto_skcipher*, align 8
  %8 = alloca i32, align 4
  store %struct.fscrypt_info* %0, %struct.fscrypt_info** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.fscrypt_info*, %struct.fscrypt_info** %4, align 8
  %10 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %9, i32 0, i32 2
  %11 = load %struct.fscrypt_mode*, %struct.fscrypt_mode** %10, align 8
  store %struct.fscrypt_mode* %11, %struct.fscrypt_mode** %6, align 8
  %12 = load %struct.fscrypt_mode*, %struct.fscrypt_mode** %6, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load %struct.fscrypt_info*, %struct.fscrypt_info** %4, align 8
  %15 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.crypto_skcipher* @fscrypt_allocate_skcipher(%struct.fscrypt_mode* %12, i32* %13, i32 %16)
  store %struct.crypto_skcipher* %17, %struct.crypto_skcipher** %7, align 8
  %18 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %7, align 8
  %19 = call i64 @IS_ERR(%struct.crypto_skcipher* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %7, align 8
  %23 = call i32 @PTR_ERR(%struct.crypto_skcipher* %22)
  store i32 %23, i32* %3, align 4
  br label %50

24:                                               ; preds = %2
  %25 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %7, align 8
  %26 = load %struct.fscrypt_info*, %struct.fscrypt_info** %4, align 8
  %27 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %26, i32 0, i32 1
  store %struct.crypto_skcipher* %25, %struct.crypto_skcipher** %27, align 8
  %28 = load %struct.fscrypt_mode*, %struct.fscrypt_mode** %6, align 8
  %29 = getelementptr inbounds %struct.fscrypt_mode, %struct.fscrypt_mode* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %24
  %33 = load %struct.fscrypt_info*, %struct.fscrypt_info** %4, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load %struct.fscrypt_mode*, %struct.fscrypt_mode** %6, align 8
  %36 = getelementptr inbounds %struct.fscrypt_mode, %struct.fscrypt_mode* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @init_essiv_generator(%struct.fscrypt_info* %33, i32* %34, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %32
  %42 = load %struct.fscrypt_info*, %struct.fscrypt_info** %4, align 8
  %43 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @fscrypt_warn(i32 %44, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %3, align 4
  br label %50

48:                                               ; preds = %32
  br label %49

49:                                               ; preds = %48, %24
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %41, %21
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.crypto_skcipher* @fscrypt_allocate_skcipher(%struct.fscrypt_mode*, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_skcipher*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_skcipher*) #1

declare dso_local i32 @init_essiv_generator(%struct.fscrypt_info*, i32*, i32) #1

declare dso_local i32 @fscrypt_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
