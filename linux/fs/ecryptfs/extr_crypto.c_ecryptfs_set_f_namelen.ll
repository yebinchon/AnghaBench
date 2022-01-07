; ModuleID = '/home/carl/AnghaBench/linux/fs/ecryptfs/extr_crypto.c_ecryptfs_set_f_namelen.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ecryptfs/extr_crypto.c_ecryptfs_set_f_namelen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecryptfs_mount_crypt_stat = type { i32, i32 }
%struct.crypto_skcipher = type { i32 }
%struct.mutex = type { i32 }

@ECRYPTFS_GLOBAL_ENCRYPT_FILENAMES = common dso_local global i32 0, align 4
@NAME_MAX = common dso_local global i64 0, align 8
@ENC_NAME_MAX_BLOCKLEN_8_OR_16 = common dso_local global i64 0, align 8
@ECRYPTFS_FNEK_ENCRYPTED_FILENAME_PREFIX_SIZE = common dso_local global i64 0, align 8
@ECRYPTFS_TAG_70_MAX_METADATA_SIZE = common dso_local global i64 0, align 8
@ECRYPTFS_FILENAME_MIN_RANDOM_PREPEND_BYTES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecryptfs_set_f_namelen(i64* %0, i64 %1, %struct.ecryptfs_mount_crypt_stat* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ecryptfs_mount_crypt_stat*, align 8
  %8 = alloca %struct.crypto_skcipher*, align 8
  %9 = alloca %struct.mutex*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.ecryptfs_mount_crypt_stat* %2, %struct.ecryptfs_mount_crypt_stat** %7, align 8
  %12 = load %struct.ecryptfs_mount_crypt_stat*, %struct.ecryptfs_mount_crypt_stat** %7, align 8
  %13 = getelementptr inbounds %struct.ecryptfs_mount_crypt_stat, %struct.ecryptfs_mount_crypt_stat* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @ECRYPTFS_GLOBAL_ENCRYPT_FILENAMES, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i64, i64* %6, align 8
  %20 = load i64*, i64** %5, align 8
  store i64 %19, i64* %20, align 8
  store i32 0, i32* %4, align 4
  br label %83

21:                                               ; preds = %3
  %22 = load %struct.ecryptfs_mount_crypt_stat*, %struct.ecryptfs_mount_crypt_stat** %7, align 8
  %23 = getelementptr inbounds %struct.ecryptfs_mount_crypt_stat, %struct.ecryptfs_mount_crypt_stat* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ecryptfs_get_tfm_and_mutex_for_cipher_name(%struct.crypto_skcipher** %8, %struct.mutex** %9, i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load i64*, i64** %5, align 8
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %4, align 4
  br label %83

32:                                               ; preds = %21
  %33 = load %struct.mutex*, %struct.mutex** %9, align 8
  %34 = call i32 @mutex_lock(%struct.mutex* %33)
  %35 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %8, align 8
  %36 = call i64 @crypto_skcipher_blocksize(%struct.crypto_skcipher* %35)
  store i64 %36, i64* %10, align 8
  %37 = load %struct.mutex*, %struct.mutex** %9, align 8
  %38 = call i32 @mutex_unlock(%struct.mutex* %37)
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @NAME_MAX, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %32
  %43 = load i64, i64* %10, align 8
  %44 = icmp eq i64 %43, 8
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i64, i64* %10, align 8
  %47 = icmp eq i64 %46, 16
  br i1 %47, label %48, label %51

48:                                               ; preds = %45, %42
  %49 = load i64, i64* @ENC_NAME_MAX_BLOCKLEN_8_OR_16, align 8
  %50 = load i64*, i64** %5, align 8
  store i64 %49, i64* %50, align 8
  store i32 0, i32* %4, align 4
  br label %83

51:                                               ; preds = %45, %32
  %52 = load i64, i64* %6, align 8
  %53 = load i64*, i64** %5, align 8
  store i64 %52, i64* %53, align 8
  %54 = load i64, i64* @ECRYPTFS_FNEK_ENCRYPTED_FILENAME_PREFIX_SIZE, align 8
  %55 = load i64*, i64** %5, align 8
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %56, %54
  store i64 %57, i64* %55, align 8
  %58 = load i64*, i64** %5, align 8
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @ecryptfs_max_decoded_size(i64 %59)
  %61 = sub nsw i32 %60, 3
  %62 = sext i32 %61 to i64
  %63 = load i64*, i64** %5, align 8
  store i64 %62, i64* %63, align 8
  %64 = load i64, i64* @ECRYPTFS_TAG_70_MAX_METADATA_SIZE, align 8
  %65 = load i64*, i64** %5, align 8
  %66 = load i64, i64* %65, align 8
  %67 = sub nsw i64 %66, %64
  store i64 %67, i64* %65, align 8
  %68 = load i64, i64* @ECRYPTFS_FILENAME_MIN_RANDOM_PREPEND_BYTES, align 8
  %69 = load i64*, i64** %5, align 8
  %70 = load i64, i64* %69, align 8
  %71 = sub nsw i64 %70, %68
  store i64 %71, i64* %69, align 8
  %72 = load i64, i64* %10, align 8
  %73 = sub i64 %72, 1
  %74 = load i64*, i64** %5, align 8
  %75 = load i64, i64* %74, align 8
  %76 = sub i64 %75, %73
  store i64 %76, i64* %74, align 8
  %77 = load i64*, i64** %5, align 8
  %78 = load i64, i64* %77, align 8
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %51
  %81 = load i64*, i64** %5, align 8
  store i64 0, i64* %81, align 8
  br label %82

82:                                               ; preds = %80, %51
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %82, %48, %29, %18
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @ecryptfs_get_tfm_and_mutex_for_cipher_name(%struct.crypto_skcipher**, %struct.mutex**, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mutex_lock(%struct.mutex*) #1

declare dso_local i64 @crypto_skcipher_blocksize(%struct.crypto_skcipher*) #1

declare dso_local i32 @mutex_unlock(%struct.mutex*) #1

declare dso_local i32 @ecryptfs_max_decoded_size(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
