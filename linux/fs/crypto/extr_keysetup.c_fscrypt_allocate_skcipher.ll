; ModuleID = '/home/carl/AnghaBench/linux/fs/crypto/extr_keysetup.c_fscrypt_allocate_skcipher.c'
source_filename = "/home/carl/AnghaBench/linux/fs/crypto/extr_keysetup.c_fscrypt_allocate_skcipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_skcipher = type { i32 }
%struct.fscrypt_mode = type { i32, i32, i32, i32 }
%struct.inode = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Missing crypto API support for %s (API name: \22%s\22)\00", align 1
@ENOPKG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Error allocating '%s' transform: %ld\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"fscrypt: %s using implementation \22%s\22\0A\00", align 1
@CRYPTO_TFM_REQ_FORBID_WEAK_KEYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.crypto_skcipher* @fscrypt_allocate_skcipher(%struct.fscrypt_mode* %0, i32* %1, %struct.inode* %2) #0 {
  %4 = alloca %struct.crypto_skcipher*, align 8
  %5 = alloca %struct.fscrypt_mode*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.crypto_skcipher*, align 8
  %9 = alloca i32, align 4
  store %struct.fscrypt_mode* %0, %struct.fscrypt_mode** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  %10 = load %struct.fscrypt_mode*, %struct.fscrypt_mode** %5, align 8
  %11 = getelementptr inbounds %struct.fscrypt_mode, %struct.fscrypt_mode* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.crypto_skcipher* @crypto_alloc_skcipher(i32 %12, i32 0, i32 0)
  store %struct.crypto_skcipher* %13, %struct.crypto_skcipher** %8, align 8
  %14 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %8, align 8
  %15 = call i64 @IS_ERR(%struct.crypto_skcipher* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %44

17:                                               ; preds = %3
  %18 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %8, align 8
  %19 = call i32 @PTR_ERR(%struct.crypto_skcipher* %18)
  %20 = load i32, i32* @ENOENT, align 4
  %21 = sub nsw i32 0, %20
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %17
  %24 = load %struct.inode*, %struct.inode** %7, align 8
  %25 = load %struct.fscrypt_mode*, %struct.fscrypt_mode** %5, align 8
  %26 = getelementptr inbounds %struct.fscrypt_mode, %struct.fscrypt_mode* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.fscrypt_mode*, %struct.fscrypt_mode** %5, align 8
  %29 = getelementptr inbounds %struct.fscrypt_mode, %struct.fscrypt_mode* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @fscrypt_warn(%struct.inode* %24, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %30)
  %32 = load i32, i32* @ENOPKG, align 4
  %33 = sub nsw i32 0, %32
  %34 = call %struct.crypto_skcipher* @ERR_PTR(i32 %33)
  store %struct.crypto_skcipher* %34, %struct.crypto_skcipher** %4, align 8
  br label %85

35:                                               ; preds = %17
  %36 = load %struct.inode*, %struct.inode** %7, align 8
  %37 = load %struct.fscrypt_mode*, %struct.fscrypt_mode** %5, align 8
  %38 = getelementptr inbounds %struct.fscrypt_mode, %struct.fscrypt_mode* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %8, align 8
  %41 = call i32 @PTR_ERR(%struct.crypto_skcipher* %40)
  %42 = call i32 @fscrypt_err(%struct.inode* %36, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %41)
  %43 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %8, align 8
  store %struct.crypto_skcipher* %43, %struct.crypto_skcipher** %4, align 8
  br label %85

44:                                               ; preds = %3
  %45 = load %struct.fscrypt_mode*, %struct.fscrypt_mode** %5, align 8
  %46 = getelementptr inbounds %struct.fscrypt_mode, %struct.fscrypt_mode* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %44
  %54 = load %struct.fscrypt_mode*, %struct.fscrypt_mode** %5, align 8
  %55 = getelementptr inbounds %struct.fscrypt_mode, %struct.fscrypt_mode* %54, i32 0, i32 0
  store i32 1, i32* %55, align 4
  %56 = load %struct.fscrypt_mode*, %struct.fscrypt_mode** %5, align 8
  %57 = getelementptr inbounds %struct.fscrypt_mode, %struct.fscrypt_mode* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %8, align 8
  %60 = call %struct.TYPE_4__* @crypto_skcipher_alg(%struct.crypto_skcipher* %59)
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @pr_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %58, i32 %63)
  br label %65

65:                                               ; preds = %53, %44
  %66 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %8, align 8
  %67 = load i32, i32* @CRYPTO_TFM_REQ_FORBID_WEAK_KEYS, align 4
  %68 = call i32 @crypto_skcipher_set_flags(%struct.crypto_skcipher* %66, i32 %67)
  %69 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %8, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = load %struct.fscrypt_mode*, %struct.fscrypt_mode** %5, align 8
  %72 = getelementptr inbounds %struct.fscrypt_mode, %struct.fscrypt_mode* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @crypto_skcipher_setkey(%struct.crypto_skcipher* %69, i32* %70, i32 %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %65
  br label %80

78:                                               ; preds = %65
  %79 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %8, align 8
  store %struct.crypto_skcipher* %79, %struct.crypto_skcipher** %4, align 8
  br label %85

80:                                               ; preds = %77
  %81 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %8, align 8
  %82 = call i32 @crypto_free_skcipher(%struct.crypto_skcipher* %81)
  %83 = load i32, i32* %9, align 4
  %84 = call %struct.crypto_skcipher* @ERR_PTR(i32 %83)
  store %struct.crypto_skcipher* %84, %struct.crypto_skcipher** %4, align 8
  br label %85

85:                                               ; preds = %80, %78, %35, %23
  %86 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %4, align 8
  ret %struct.crypto_skcipher* %86
}

declare dso_local %struct.crypto_skcipher* @crypto_alloc_skcipher(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_skcipher*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_skcipher*) #1

declare dso_local i32 @fscrypt_warn(%struct.inode*, i8*, i32, i32) #1

declare dso_local %struct.crypto_skcipher* @ERR_PTR(i32) #1

declare dso_local i32 @fscrypt_err(%struct.inode*, i8*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @crypto_skcipher_alg(%struct.crypto_skcipher*) #1

declare dso_local i32 @crypto_skcipher_set_flags(%struct.crypto_skcipher*, i32) #1

declare dso_local i32 @crypto_skcipher_setkey(%struct.crypto_skcipher*, i32*, i32) #1

declare dso_local i32 @crypto_free_skcipher(%struct.crypto_skcipher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
