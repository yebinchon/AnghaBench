; ModuleID = '/home/carl/AnghaBench/linux/fs/crypto/extr_crypto.c_fscrypt_crypt_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/crypto/extr_crypto.c_fscrypt_crypt_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.fscrypt_info* }
%struct.fscrypt_info = type { %struct.crypto_skcipher* }
%struct.crypto_skcipher = type { i32 }
%struct.page = type { i32 }
%union.fscrypt_iv = type { i32 }
%struct.skcipher_request = type { i32 }
%struct.scatterlist = type { i32 }

@wait = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FS_CRYPTO_BLOCK_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_BACKLOG = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@crypto_req_done = common dso_local global i32 0, align 4
@FS_DECRYPT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"%scryption failed for block %llu: %d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"De\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"En\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fscrypt_crypt_block(%struct.inode* %0, i64 %1, i32 %2, %struct.page* %3, %struct.page* %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.page*, align 8
  %14 = alloca %struct.page*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %union.fscrypt_iv, align 4
  %19 = alloca %struct.skcipher_request*, align 8
  %20 = alloca %struct.scatterlist, align 4
  %21 = alloca %struct.scatterlist, align 4
  %22 = alloca %struct.fscrypt_info*, align 8
  %23 = alloca %struct.crypto_skcipher*, align 8
  %24 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %10, align 8
  store i64 %1, i64* %11, align 8
  store i32 %2, i32* %12, align 4
  store %struct.page* %3, %struct.page** %13, align 8
  store %struct.page* %4, %struct.page** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store %struct.skcipher_request* null, %struct.skcipher_request** %19, align 8
  %25 = load i32, i32* @wait, align 4
  %26 = call i32 @DECLARE_CRYPTO_WAIT(i32 %25)
  %27 = load %struct.inode*, %struct.inode** %10, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load %struct.fscrypt_info*, %struct.fscrypt_info** %28, align 8
  store %struct.fscrypt_info* %29, %struct.fscrypt_info** %22, align 8
  %30 = load %struct.fscrypt_info*, %struct.fscrypt_info** %22, align 8
  %31 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %30, i32 0, i32 0
  %32 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %31, align 8
  store %struct.crypto_skcipher* %32, %struct.crypto_skcipher** %23, align 8
  store i32 0, i32* %24, align 4
  %33 = load i32, i32* %15, align 4
  %34 = icmp ule i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i64 @WARN_ON_ONCE(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %8
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %9, align 4
  br label %112

41:                                               ; preds = %8
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* @FS_CRYPTO_BLOCK_SIZE, align 4
  %44 = urem i32 %42, %43
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i64 @WARN_ON_ONCE(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %9, align 4
  br label %112

52:                                               ; preds = %41
  %53 = load i32, i32* %12, align 4
  %54 = load %struct.fscrypt_info*, %struct.fscrypt_info** %22, align 8
  %55 = call i32 @fscrypt_generate_iv(%union.fscrypt_iv* %18, i32 %53, %struct.fscrypt_info* %54)
  %56 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %23, align 8
  %57 = load i32, i32* %17, align 4
  %58 = call %struct.skcipher_request* @skcipher_request_alloc(%struct.crypto_skcipher* %56, i32 %57)
  store %struct.skcipher_request* %58, %struct.skcipher_request** %19, align 8
  %59 = load %struct.skcipher_request*, %struct.skcipher_request** %19, align 8
  %60 = icmp ne %struct.skcipher_request* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %52
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %9, align 4
  br label %112

64:                                               ; preds = %52
  %65 = load %struct.skcipher_request*, %struct.skcipher_request** %19, align 8
  %66 = load i32, i32* @CRYPTO_TFM_REQ_MAY_BACKLOG, align 4
  %67 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @crypto_req_done, align 4
  %70 = call i32 @skcipher_request_set_callback(%struct.skcipher_request* %65, i32 %68, i32 %69, i32* @wait)
  %71 = call i32 @sg_init_table(%struct.scatterlist* %20, i32 1)
  %72 = load %struct.page*, %struct.page** %14, align 8
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* %16, align 4
  %75 = call i32 @sg_set_page(%struct.scatterlist* %20, %struct.page* %72, i32 %73, i32 %74)
  %76 = call i32 @sg_init_table(%struct.scatterlist* %21, i32 1)
  %77 = load %struct.page*, %struct.page** %13, align 8
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* %16, align 4
  %80 = call i32 @sg_set_page(%struct.scatterlist* %21, %struct.page* %77, i32 %78, i32 %79)
  %81 = load %struct.skcipher_request*, %struct.skcipher_request** %19, align 8
  %82 = load i32, i32* %15, align 4
  %83 = call i32 @skcipher_request_set_crypt(%struct.skcipher_request* %81, %struct.scatterlist* %21, %struct.scatterlist* %20, i32 %82, %union.fscrypt_iv* %18)
  %84 = load i64, i64* %11, align 8
  %85 = load i64, i64* @FS_DECRYPT, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %64
  %88 = load %struct.skcipher_request*, %struct.skcipher_request** %19, align 8
  %89 = call i32 @crypto_skcipher_decrypt(%struct.skcipher_request* %88)
  %90 = call i32 @crypto_wait_req(i32 %89, i32* @wait)
  store i32 %90, i32* %24, align 4
  br label %95

91:                                               ; preds = %64
  %92 = load %struct.skcipher_request*, %struct.skcipher_request** %19, align 8
  %93 = call i32 @crypto_skcipher_encrypt(%struct.skcipher_request* %92)
  %94 = call i32 @crypto_wait_req(i32 %93, i32* @wait)
  store i32 %94, i32* %24, align 4
  br label %95

95:                                               ; preds = %91, %87
  %96 = load %struct.skcipher_request*, %struct.skcipher_request** %19, align 8
  %97 = call i32 @skcipher_request_free(%struct.skcipher_request* %96)
  %98 = load i32, i32* %24, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %95
  %101 = load %struct.inode*, %struct.inode** %10, align 8
  %102 = load i64, i64* %11, align 8
  %103 = load i64, i64* @FS_DECRYPT, align 8
  %104 = icmp eq i64 %102, %103
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* %24, align 4
  %109 = call i32 @fscrypt_err(%struct.inode* %101, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %106, i32 %107, i32 %108)
  %110 = load i32, i32* %24, align 4
  store i32 %110, i32* %9, align 4
  br label %112

111:                                              ; preds = %95
  store i32 0, i32* %9, align 4
  br label %112

112:                                              ; preds = %111, %100, %61, %49, %38
  %113 = load i32, i32* %9, align 4
  ret i32 %113
}

declare dso_local i32 @DECLARE_CRYPTO_WAIT(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @fscrypt_generate_iv(%union.fscrypt_iv*, i32, %struct.fscrypt_info*) #1

declare dso_local %struct.skcipher_request* @skcipher_request_alloc(%struct.crypto_skcipher*, i32) #1

declare dso_local i32 @skcipher_request_set_callback(%struct.skcipher_request*, i32, i32, i32*) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @sg_set_page(%struct.scatterlist*, %struct.page*, i32, i32) #1

declare dso_local i32 @skcipher_request_set_crypt(%struct.skcipher_request*, %struct.scatterlist*, %struct.scatterlist*, i32, %union.fscrypt_iv*) #1

declare dso_local i32 @crypto_wait_req(i32, i32*) #1

declare dso_local i32 @crypto_skcipher_decrypt(%struct.skcipher_request*) #1

declare dso_local i32 @crypto_skcipher_encrypt(%struct.skcipher_request*) #1

declare dso_local i32 @skcipher_request_free(%struct.skcipher_request*) #1

declare dso_local i32 @fscrypt_err(%struct.inode*, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
