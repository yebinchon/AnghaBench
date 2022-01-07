; ModuleID = '/home/carl/AnghaBench/linux/fs/ecryptfs/extr_crypto.c_ecryptfs_init_crypt_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ecryptfs/extr_crypto.c_ecryptfs_init_crypt_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecryptfs_crypt_stat = type { i32, i32, i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Initializing cipher [%s]; strlen = [%d]; key_size_bits = [%zd]\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"cbc\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"cryptfs: init_crypt_ctx(): Error initializing cipher [%s]\0A\00", align 1
@CRYPTO_TFM_REQ_FORBID_WEAK_KEYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecryptfs_init_crypt_ctx(%struct.ecryptfs_crypt_stat* %0) #0 {
  %2 = alloca %struct.ecryptfs_crypt_stat*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %struct.ecryptfs_crypt_stat* %0, %struct.ecryptfs_crypt_stat** %2, align 8
  %5 = load i32, i32* @EINVAL, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* @KERN_DEBUG, align 4
  %8 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %2, align 8
  %9 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = sext i32 %10 to i64
  %12 = inttoptr i64 %11 to i8*
  %13 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %2, align 8
  %14 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @strlen(i32 %15)
  %17 = trunc i64 %16 to i32
  %18 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %2, align 8
  %19 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = shl i32 %20, 3
  %22 = call i32 (i32, i8*, i8*, ...) @ecryptfs_printk(i32 %7, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i8* %12, i32 %17, i32 %21)
  %23 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %2, align 8
  %24 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %23, i32 0, i32 1
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %2, align 8
  %27 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %68

31:                                               ; preds = %1
  %32 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %2, align 8
  %33 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @ecryptfs_crypto_api_algify_cipher_name(i8** %3, i32 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %68

39:                                               ; preds = %31
  %40 = load i8*, i8** %3, align 8
  %41 = call i32* @crypto_alloc_skcipher(i8* %40, i32 0, i32 0)
  %42 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %2, align 8
  %43 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %42, i32 0, i32 2
  store i32* %41, i32** %43, align 8
  %44 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %2, align 8
  %45 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = call i64 @IS_ERR(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %39
  %50 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %2, align 8
  %51 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @PTR_ERR(i32* %52)
  store i32 %53, i32* %4, align 4
  %54 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %2, align 8
  %55 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %54, i32 0, i32 2
  store i32* null, i32** %55, align 8
  %56 = load i32, i32* @KERN_ERR, align 4
  %57 = load i8*, i8** %3, align 8
  %58 = call i32 (i32, i8*, i8*, ...) @ecryptfs_printk(i32 %56, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i8* %57)
  br label %65

59:                                               ; preds = %39
  %60 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %2, align 8
  %61 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* @CRYPTO_TFM_REQ_FORBID_WEAK_KEYS, align 4
  %64 = call i32 @crypto_skcipher_set_flags(i32* %62, i32 %63)
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %59, %49
  %66 = load i8*, i8** %3, align 8
  %67 = call i32 @kfree(i8* %66)
  br label %68

68:                                               ; preds = %65, %38, %30
  %69 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %2, align 8
  %70 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %69, i32 0, i32 1
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @ecryptfs_printk(i32, i8*, i8*, ...) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ecryptfs_crypto_api_algify_cipher_name(i8**, i32, i8*) #1

declare dso_local i32* @crypto_alloc_skcipher(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @crypto_skcipher_set_flags(i32*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
