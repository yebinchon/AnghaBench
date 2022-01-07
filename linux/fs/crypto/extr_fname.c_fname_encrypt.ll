; ModuleID = '/home/carl/AnghaBench/linux/fs/crypto/extr_fname.c_fname_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/fs/crypto/extr_fname.c_fname_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.fscrypt_info* }
%struct.fscrypt_info = type { %struct.crypto_skcipher* }
%struct.crypto_skcipher = type { i32 }
%struct.qstr = type { i32, i32 }
%struct.skcipher_request = type { i32 }
%union.fscrypt_iv = type { i32 }
%struct.scatterlist = type { i32 }

@wait = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_BACKLOG = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@crypto_req_done = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Filename encryption failed: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fname_encrypt(%struct.inode* %0, %struct.qstr* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.qstr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.skcipher_request*, align 8
  %11 = alloca %struct.fscrypt_info*, align 8
  %12 = alloca %struct.crypto_skcipher*, align 8
  %13 = alloca %union.fscrypt_iv, align 4
  %14 = alloca %struct.scatterlist, align 4
  %15 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.qstr* %1, %struct.qstr** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.skcipher_request* null, %struct.skcipher_request** %10, align 8
  %16 = load i32, i32* @wait, align 4
  %17 = call i32 @DECLARE_CRYPTO_WAIT(i32 %16)
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load %struct.fscrypt_info*, %struct.fscrypt_info** %19, align 8
  store %struct.fscrypt_info* %20, %struct.fscrypt_info** %11, align 8
  %21 = load %struct.fscrypt_info*, %struct.fscrypt_info** %11, align 8
  %22 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %21, i32 0, i32 0
  %23 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %22, align 8
  store %struct.crypto_skcipher* %23, %struct.crypto_skcipher** %12, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.qstr*, %struct.qstr** %7, align 8
  %26 = getelementptr inbounds %struct.qstr, %struct.qstr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ult i32 %24, %27
  %29 = zext i1 %28 to i32
  %30 = call i64 @WARN_ON(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %4
  %33 = load i32, i32* @ENOBUFS, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %92

35:                                               ; preds = %4
  %36 = load i32*, i32** %8, align 8
  %37 = load %struct.qstr*, %struct.qstr** %7, align 8
  %38 = getelementptr inbounds %struct.qstr, %struct.qstr* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.qstr*, %struct.qstr** %7, align 8
  %41 = getelementptr inbounds %struct.qstr, %struct.qstr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @memcpy(i32* %36, i32 %39, i32 %42)
  %44 = load i32*, i32** %8, align 8
  %45 = load %struct.qstr*, %struct.qstr** %7, align 8
  %46 = getelementptr inbounds %struct.qstr, %struct.qstr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %44, i64 %48
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.qstr*, %struct.qstr** %7, align 8
  %52 = getelementptr inbounds %struct.qstr, %struct.qstr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sub i32 %50, %53
  %55 = call i32 @memset(i32* %49, i32 0, i32 %54)
  %56 = load %struct.fscrypt_info*, %struct.fscrypt_info** %11, align 8
  %57 = call i32 @fscrypt_generate_iv(%union.fscrypt_iv* %13, i32 0, %struct.fscrypt_info* %56)
  %58 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %12, align 8
  %59 = load i32, i32* @GFP_NOFS, align 4
  %60 = call %struct.skcipher_request* @skcipher_request_alloc(%struct.crypto_skcipher* %58, i32 %59)
  store %struct.skcipher_request* %60, %struct.skcipher_request** %10, align 8
  %61 = load %struct.skcipher_request*, %struct.skcipher_request** %10, align 8
  %62 = icmp ne %struct.skcipher_request* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %35
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %5, align 4
  br label %92

66:                                               ; preds = %35
  %67 = load %struct.skcipher_request*, %struct.skcipher_request** %10, align 8
  %68 = load i32, i32* @CRYPTO_TFM_REQ_MAY_BACKLOG, align 4
  %69 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @crypto_req_done, align 4
  %72 = call i32 @skcipher_request_set_callback(%struct.skcipher_request* %67, i32 %70, i32 %71, i32* @wait)
  %73 = load i32*, i32** %8, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @sg_init_one(%struct.scatterlist* %14, i32* %73, i32 %74)
  %76 = load %struct.skcipher_request*, %struct.skcipher_request** %10, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @skcipher_request_set_crypt(%struct.skcipher_request* %76, %struct.scatterlist* %14, %struct.scatterlist* %14, i32 %77, %union.fscrypt_iv* %13)
  %79 = load %struct.skcipher_request*, %struct.skcipher_request** %10, align 8
  %80 = call i32 @crypto_skcipher_encrypt(%struct.skcipher_request* %79)
  %81 = call i32 @crypto_wait_req(i32 %80, i32* @wait)
  store i32 %81, i32* %15, align 4
  %82 = load %struct.skcipher_request*, %struct.skcipher_request** %10, align 8
  %83 = call i32 @skcipher_request_free(%struct.skcipher_request* %82)
  %84 = load i32, i32* %15, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %66
  %87 = load %struct.inode*, %struct.inode** %6, align 8
  %88 = load i32, i32* %15, align 4
  %89 = call i32 @fscrypt_err(%struct.inode* %87, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* %15, align 4
  store i32 %90, i32* %5, align 4
  br label %92

91:                                               ; preds = %66
  store i32 0, i32* %5, align 4
  br label %92

92:                                               ; preds = %91, %86, %63, %32
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32 @DECLARE_CRYPTO_WAIT(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @fscrypt_generate_iv(%union.fscrypt_iv*, i32, %struct.fscrypt_info*) #1

declare dso_local %struct.skcipher_request* @skcipher_request_alloc(%struct.crypto_skcipher*, i32) #1

declare dso_local i32 @skcipher_request_set_callback(%struct.skcipher_request*, i32, i32, i32*) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i32*, i32) #1

declare dso_local i32 @skcipher_request_set_crypt(%struct.skcipher_request*, %struct.scatterlist*, %struct.scatterlist*, i32, %union.fscrypt_iv*) #1

declare dso_local i32 @crypto_wait_req(i32, i32*) #1

declare dso_local i32 @crypto_skcipher_encrypt(%struct.skcipher_request*) #1

declare dso_local i32 @skcipher_request_free(%struct.skcipher_request*) #1

declare dso_local i32 @fscrypt_err(%struct.inode*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
