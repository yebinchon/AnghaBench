; ModuleID = '/home/carl/AnghaBench/linux/fs/crypto/extr_keysetup_v1.c_derive_key_aes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/crypto/extr_keysetup_v1.c_derive_key_aes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i32 }
%struct.scatterlist = type { i32 }
%struct.crypto_skcipher = type { i32 }

@FS_KEY_DERIVATION_NONCE_SIZE = common dso_local global i32 0, align 4
@wait = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"ecb(aes)\00", align 1
@CRYPTO_TFM_REQ_FORBID_WEAK_KEYS = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_BACKLOG = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@crypto_req_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32)* @derive_key_aes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @derive_key_aes(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.skcipher_request*, align 8
  %11 = alloca %struct.scatterlist, align 4
  %12 = alloca %struct.scatterlist, align 4
  %13 = alloca %struct.crypto_skcipher*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* @FS_KEY_DERIVATION_NONCE_SIZE, align 4
  %15 = zext i32 %14 to i64
  store i32 0, i32* %9, align 4
  store %struct.skcipher_request* null, %struct.skcipher_request** %10, align 8
  %16 = load i32, i32* @wait, align 4
  %17 = call i32 @DECLARE_CRYPTO_WAIT(i32 %16)
  %18 = call %struct.crypto_skcipher* @crypto_alloc_skcipher(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  store %struct.crypto_skcipher* %18, %struct.crypto_skcipher** %13, align 8
  %19 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %13, align 8
  %20 = call i64 @IS_ERR(%struct.crypto_skcipher* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %13, align 8
  %24 = call i32 @PTR_ERR(%struct.crypto_skcipher* %23)
  store i32 %24, i32* %9, align 4
  store %struct.crypto_skcipher* null, %struct.crypto_skcipher** %13, align 8
  br label %64

25:                                               ; preds = %4
  %26 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %13, align 8
  %27 = load i32, i32* @CRYPTO_TFM_REQ_FORBID_WEAK_KEYS, align 4
  %28 = call i32 @crypto_skcipher_set_flags(%struct.crypto_skcipher* %26, i32 %27)
  %29 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %13, align 8
  %30 = load i32, i32* @GFP_NOFS, align 4
  %31 = call %struct.skcipher_request* @skcipher_request_alloc(%struct.crypto_skcipher* %29, i32 %30)
  store %struct.skcipher_request* %31, %struct.skcipher_request** %10, align 8
  %32 = load %struct.skcipher_request*, %struct.skcipher_request** %10, align 8
  %33 = icmp ne %struct.skcipher_request* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %25
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %9, align 4
  br label %64

37:                                               ; preds = %25
  %38 = load %struct.skcipher_request*, %struct.skcipher_request** %10, align 8
  %39 = load i32, i32* @CRYPTO_TFM_REQ_MAY_BACKLOG, align 4
  %40 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @crypto_req_done, align 4
  %43 = call i32 @skcipher_request_set_callback(%struct.skcipher_request* %38, i32 %41, i32 %42, i32* @wait)
  %44 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %13, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* @FS_KEY_DERIVATION_NONCE_SIZE, align 4
  %47 = call i32 @crypto_skcipher_setkey(%struct.crypto_skcipher* %44, i32* %45, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %37
  br label %64

51:                                               ; preds = %37
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @sg_init_one(%struct.scatterlist* %11, i32* %52, i32 %53)
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @sg_init_one(%struct.scatterlist* %12, i32* %55, i32 %56)
  %58 = load %struct.skcipher_request*, %struct.skcipher_request** %10, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @skcipher_request_set_crypt(%struct.skcipher_request* %58, %struct.scatterlist* %11, %struct.scatterlist* %12, i32 %59, i32* null)
  %61 = load %struct.skcipher_request*, %struct.skcipher_request** %10, align 8
  %62 = call i32 @crypto_skcipher_encrypt(%struct.skcipher_request* %61)
  %63 = call i32 @crypto_wait_req(i32 %62, i32* @wait)
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %51, %50, %34, %22
  %65 = load %struct.skcipher_request*, %struct.skcipher_request** %10, align 8
  %66 = call i32 @skcipher_request_free(%struct.skcipher_request* %65)
  %67 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %13, align 8
  %68 = call i32 @crypto_free_skcipher(%struct.crypto_skcipher* %67)
  %69 = load i32, i32* %9, align 4
  ret i32 %69
}

declare dso_local i32 @DECLARE_CRYPTO_WAIT(i32) #1

declare dso_local %struct.crypto_skcipher* @crypto_alloc_skcipher(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_skcipher*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_skcipher*) #1

declare dso_local i32 @crypto_skcipher_set_flags(%struct.crypto_skcipher*, i32) #1

declare dso_local %struct.skcipher_request* @skcipher_request_alloc(%struct.crypto_skcipher*, i32) #1

declare dso_local i32 @skcipher_request_set_callback(%struct.skcipher_request*, i32, i32, i32*) #1

declare dso_local i32 @crypto_skcipher_setkey(%struct.crypto_skcipher*, i32*, i32) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i32*, i32) #1

declare dso_local i32 @skcipher_request_set_crypt(%struct.skcipher_request*, %struct.scatterlist*, %struct.scatterlist*, i32, i32*) #1

declare dso_local i32 @crypto_wait_req(i32, i32*) #1

declare dso_local i32 @crypto_skcipher_encrypt(%struct.skcipher_request*) #1

declare dso_local i32 @skcipher_request_free(%struct.skcipher_request*) #1

declare dso_local i32 @crypto_free_skcipher(%struct.crypto_skcipher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
