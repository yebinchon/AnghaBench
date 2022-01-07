; ModuleID = '/home/carl/AnghaBench/linux/fs/crypto/extr_fname.c_fname_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/fs/crypto/extr_fname.c_fname_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.fscrypt_info* }
%struct.fscrypt_info = type { %struct.crypto_skcipher* }
%struct.crypto_skcipher = type { i32 }
%struct.fscrypt_str = type { i32, i32 }
%struct.skcipher_request = type { i32 }
%struct.scatterlist = type { i32 }
%union.fscrypt_iv = type { i32 }

@wait = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_BACKLOG = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@crypto_req_done = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Filename decryption failed: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.fscrypt_str*, %struct.fscrypt_str*)* @fname_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fname_decrypt(%struct.inode* %0, %struct.fscrypt_str* %1, %struct.fscrypt_str* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.fscrypt_str*, align 8
  %7 = alloca %struct.fscrypt_str*, align 8
  %8 = alloca %struct.skcipher_request*, align 8
  %9 = alloca %struct.scatterlist, align 4
  %10 = alloca %struct.scatterlist, align 4
  %11 = alloca %struct.fscrypt_info*, align 8
  %12 = alloca %struct.crypto_skcipher*, align 8
  %13 = alloca %union.fscrypt_iv, align 4
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.fscrypt_str* %1, %struct.fscrypt_str** %6, align 8
  store %struct.fscrypt_str* %2, %struct.fscrypt_str** %7, align 8
  store %struct.skcipher_request* null, %struct.skcipher_request** %8, align 8
  %15 = load i32, i32* @wait, align 4
  %16 = call i32 @DECLARE_CRYPTO_WAIT(i32 %15)
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load %struct.fscrypt_info*, %struct.fscrypt_info** %18, align 8
  store %struct.fscrypt_info* %19, %struct.fscrypt_info** %11, align 8
  %20 = load %struct.fscrypt_info*, %struct.fscrypt_info** %11, align 8
  %21 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %20, i32 0, i32 0
  %22 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %21, align 8
  store %struct.crypto_skcipher* %22, %struct.crypto_skcipher** %12, align 8
  %23 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %12, align 8
  %24 = load i32, i32* @GFP_NOFS, align 4
  %25 = call %struct.skcipher_request* @skcipher_request_alloc(%struct.crypto_skcipher* %23, i32 %24)
  store %struct.skcipher_request* %25, %struct.skcipher_request** %8, align 8
  %26 = load %struct.skcipher_request*, %struct.skcipher_request** %8, align 8
  %27 = icmp ne %struct.skcipher_request* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %81

31:                                               ; preds = %3
  %32 = load %struct.skcipher_request*, %struct.skcipher_request** %8, align 8
  %33 = load i32, i32* @CRYPTO_TFM_REQ_MAY_BACKLOG, align 4
  %34 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @crypto_req_done, align 4
  %37 = call i32 @skcipher_request_set_callback(%struct.skcipher_request* %32, i32 %35, i32 %36, i32* @wait)
  %38 = load %struct.fscrypt_info*, %struct.fscrypt_info** %11, align 8
  %39 = call i32 @fscrypt_generate_iv(%union.fscrypt_iv* %13, i32 0, %struct.fscrypt_info* %38)
  %40 = load %struct.fscrypt_str*, %struct.fscrypt_str** %6, align 8
  %41 = getelementptr inbounds %struct.fscrypt_str, %struct.fscrypt_str* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.fscrypt_str*, %struct.fscrypt_str** %6, align 8
  %44 = getelementptr inbounds %struct.fscrypt_str, %struct.fscrypt_str* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @sg_init_one(%struct.scatterlist* %9, i32 %42, i32 %45)
  %47 = load %struct.fscrypt_str*, %struct.fscrypt_str** %7, align 8
  %48 = getelementptr inbounds %struct.fscrypt_str, %struct.fscrypt_str* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.fscrypt_str*, %struct.fscrypt_str** %7, align 8
  %51 = getelementptr inbounds %struct.fscrypt_str, %struct.fscrypt_str* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @sg_init_one(%struct.scatterlist* %10, i32 %49, i32 %52)
  %54 = load %struct.skcipher_request*, %struct.skcipher_request** %8, align 8
  %55 = load %struct.fscrypt_str*, %struct.fscrypt_str** %6, align 8
  %56 = getelementptr inbounds %struct.fscrypt_str, %struct.fscrypt_str* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @skcipher_request_set_crypt(%struct.skcipher_request* %54, %struct.scatterlist* %9, %struct.scatterlist* %10, i32 %57, %union.fscrypt_iv* %13)
  %59 = load %struct.skcipher_request*, %struct.skcipher_request** %8, align 8
  %60 = call i32 @crypto_skcipher_decrypt(%struct.skcipher_request* %59)
  %61 = call i32 @crypto_wait_req(i32 %60, i32* @wait)
  store i32 %61, i32* %14, align 4
  %62 = load %struct.skcipher_request*, %struct.skcipher_request** %8, align 8
  %63 = call i32 @skcipher_request_free(%struct.skcipher_request* %62)
  %64 = load i32, i32* %14, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %31
  %67 = load %struct.inode*, %struct.inode** %5, align 8
  %68 = load i32, i32* %14, align 4
  %69 = call i32 @fscrypt_err(%struct.inode* %67, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %14, align 4
  store i32 %70, i32* %4, align 4
  br label %81

71:                                               ; preds = %31
  %72 = load %struct.fscrypt_str*, %struct.fscrypt_str** %7, align 8
  %73 = getelementptr inbounds %struct.fscrypt_str, %struct.fscrypt_str* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.fscrypt_str*, %struct.fscrypt_str** %6, align 8
  %76 = getelementptr inbounds %struct.fscrypt_str, %struct.fscrypt_str* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @strnlen(i32 %74, i32 %77)
  %79 = load %struct.fscrypt_str*, %struct.fscrypt_str** %7, align 8
  %80 = getelementptr inbounds %struct.fscrypt_str, %struct.fscrypt_str* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %71, %66, %28
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @DECLARE_CRYPTO_WAIT(i32) #1

declare dso_local %struct.skcipher_request* @skcipher_request_alloc(%struct.crypto_skcipher*, i32) #1

declare dso_local i32 @skcipher_request_set_callback(%struct.skcipher_request*, i32, i32, i32*) #1

declare dso_local i32 @fscrypt_generate_iv(%union.fscrypt_iv*, i32, %struct.fscrypt_info*) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i32, i32) #1

declare dso_local i32 @skcipher_request_set_crypt(%struct.skcipher_request*, %struct.scatterlist*, %struct.scatterlist*, i32, %union.fscrypt_iv*) #1

declare dso_local i32 @crypto_wait_req(i32, i32*) #1

declare dso_local i32 @crypto_skcipher_decrypt(%struct.skcipher_request*) #1

declare dso_local i32 @skcipher_request_free(%struct.skcipher_request*) #1

declare dso_local i32 @fscrypt_err(%struct.inode*, i8*, i32) #1

declare dso_local i32 @strnlen(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
