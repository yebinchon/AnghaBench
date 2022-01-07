; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_crypto.c_wusb_ccm_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_crypto.c_wusb_ccm_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.crypto_shash* }
%struct.crypto_shash = type { i32 }
%struct.wusb_mac_scratch = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32, i64, %struct.aes_ccm_nonce }
%struct.aes_ccm_nonce = type { i32 }
%struct.TYPE_11__ = type { i32, i8*, %struct.aes_ccm_nonce }
%struct.TYPE_10__ = type { i32, i8* }
%struct.aes_ccm_label = type { i32 }

@desc = common dso_local global %struct.TYPE_13__* null, align 8
@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_shash*, %struct.wusb_mac_scratch*, i8*, %struct.aes_ccm_nonce*, %struct.aes_ccm_label*, i8*, i64)* @wusb_ccm_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wusb_ccm_mac(%struct.crypto_shash* %0, %struct.wusb_mac_scratch* %1, i8* %2, %struct.aes_ccm_nonce* %3, %struct.aes_ccm_label* %4, i8* %5, i64 %6) #0 {
  %8 = alloca %struct.crypto_shash*, align 8
  %9 = alloca %struct.wusb_mac_scratch*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.aes_ccm_nonce*, align 8
  %12 = alloca %struct.aes_ccm_label*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store %struct.crypto_shash* %0, %struct.crypto_shash** %8, align 8
  store %struct.wusb_mac_scratch* %1, %struct.wusb_mac_scratch** %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.aes_ccm_nonce* %3, %struct.aes_ccm_nonce** %11, align 8
  store %struct.aes_ccm_label* %4, %struct.aes_ccm_label** %12, align 8
  store i8* %5, i8** %13, align 8
  store i64 %6, i64* %14, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** @desc, align 8
  %18 = load %struct.crypto_shash*, %struct.crypto_shash** %8, align 8
  %19 = call i32 @SHASH_DESC_ON_STACK(%struct.TYPE_13__* %17, %struct.crypto_shash* %18)
  %20 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %15, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %16, align 8
  %24 = call i32 @BUILD_BUG_ON(i32 1)
  %25 = call i32 @BUILD_BUG_ON(i32 1)
  %26 = call i32 @BUILD_BUG_ON(i32 1)
  %27 = call i32 @BUILD_BUG_ON(i32 1)
  %28 = load %struct.wusb_mac_scratch*, %struct.wusb_mac_scratch** %9, align 8
  %29 = getelementptr inbounds %struct.wusb_mac_scratch, %struct.wusb_mac_scratch* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  store i32 89, i32* %30, align 8
  %31 = load %struct.wusb_mac_scratch*, %struct.wusb_mac_scratch** %9, align 8
  %32 = getelementptr inbounds %struct.wusb_mac_scratch, %struct.wusb_mac_scratch* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 2
  %34 = load %struct.aes_ccm_nonce*, %struct.aes_ccm_nonce** %11, align 8
  %35 = bitcast %struct.aes_ccm_nonce* %33 to i8*
  %36 = bitcast %struct.aes_ccm_nonce* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 4 %36, i64 4, i1 false)
  %37 = call i8* @cpu_to_be16(i64 0)
  %38 = load %struct.wusb_mac_scratch*, %struct.wusb_mac_scratch** %9, align 8
  %39 = getelementptr inbounds %struct.wusb_mac_scratch, %struct.wusb_mac_scratch* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  store i8* %37, i8** %40, align 8
  %41 = load i64, i64* %14, align 8
  %42 = add i64 %41, 14
  %43 = call i8* @cpu_to_be16(i64 %42)
  %44 = load %struct.wusb_mac_scratch*, %struct.wusb_mac_scratch** %9, align 8
  %45 = getelementptr inbounds %struct.wusb_mac_scratch, %struct.wusb_mac_scratch* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  store i8* %43, i8** %46, align 8
  %47 = load %struct.wusb_mac_scratch*, %struct.wusb_mac_scratch** %9, align 8
  %48 = getelementptr inbounds %struct.wusb_mac_scratch, %struct.wusb_mac_scratch* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load %struct.aes_ccm_label*, %struct.aes_ccm_label** %12, align 8
  %51 = call i32 @memcpy(i32* %49, %struct.aes_ccm_label* %50, i32 4)
  %52 = load %struct.crypto_shash*, %struct.crypto_shash** %8, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** @desc, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  store %struct.crypto_shash* %52, %struct.crypto_shash** %54, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** @desc, align 8
  %56 = call i32 @crypto_shash_init(%struct.TYPE_13__* %55)
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** @desc, align 8
  %58 = load %struct.wusb_mac_scratch*, %struct.wusb_mac_scratch** %9, align 8
  %59 = getelementptr inbounds %struct.wusb_mac_scratch, %struct.wusb_mac_scratch* %58, i32 0, i32 1
  %60 = bitcast %struct.TYPE_11__* %59 to i32*
  %61 = call i32 @crypto_shash_update(%struct.TYPE_13__* %57, i32* %60, i32 40)
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** @desc, align 8
  %63 = load i8*, i8** %13, align 8
  %64 = load i64, i64* %14, align 8
  %65 = call i32 @crypto_shash_finup(%struct.TYPE_13__* %62, i8* %63, i64 %64, i32* %23)
  %66 = load %struct.wusb_mac_scratch*, %struct.wusb_mac_scratch** %9, align 8
  %67 = getelementptr inbounds %struct.wusb_mac_scratch, %struct.wusb_mac_scratch* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  %69 = load %struct.wusb_mac_scratch*, %struct.wusb_mac_scratch** %9, align 8
  %70 = getelementptr inbounds %struct.wusb_mac_scratch, %struct.wusb_mac_scratch* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 2
  %72 = load %struct.aes_ccm_nonce*, %struct.aes_ccm_nonce** %11, align 8
  %73 = bitcast %struct.aes_ccm_nonce* %71 to i8*
  %74 = bitcast %struct.aes_ccm_nonce* %72 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %73, i8* align 4 %74, i64 4, i1 false)
  %75 = load %struct.wusb_mac_scratch*, %struct.wusb_mac_scratch** %9, align 8
  %76 = getelementptr inbounds %struct.wusb_mac_scratch, %struct.wusb_mac_scratch* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 1
  store i64 0, i64* %77, align 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** @desc, align 8
  %79 = load %struct.wusb_mac_scratch*, %struct.wusb_mac_scratch** %9, align 8
  %80 = getelementptr inbounds %struct.wusb_mac_scratch, %struct.wusb_mac_scratch* %79, i32 0, i32 0
  %81 = bitcast %struct.TYPE_12__* %80 to i32*
  %82 = load %struct.wusb_mac_scratch*, %struct.wusb_mac_scratch** %9, align 8
  %83 = getelementptr inbounds %struct.wusb_mac_scratch, %struct.wusb_mac_scratch* %82, i32 0, i32 0
  %84 = bitcast %struct.TYPE_12__* %83 to i32*
  %85 = call i32 @crypto_shash_digest(%struct.TYPE_13__* %78, i32* %81, i32 24, i32* %84)
  %86 = load i8*, i8** %10, align 8
  %87 = load %struct.wusb_mac_scratch*, %struct.wusb_mac_scratch** %9, align 8
  %88 = getelementptr inbounds %struct.wusb_mac_scratch, %struct.wusb_mac_scratch* %87, i32 0, i32 0
  %89 = bitcast %struct.TYPE_12__* %88 to i32*
  %90 = call i32 @crypto_xor_cpy(i8* %86, i32* %89, i32* %23, i32 8)
  %91 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %91)
  ret i32 8
}

declare dso_local i32 @SHASH_DESC_ON_STACK(%struct.TYPE_13__*, %struct.crypto_shash*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @BUILD_BUG_ON(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i8* @cpu_to_be16(i64) #1

declare dso_local i32 @memcpy(i32*, %struct.aes_ccm_label*, i32) #1

declare dso_local i32 @crypto_shash_init(%struct.TYPE_13__*) #1

declare dso_local i32 @crypto_shash_update(%struct.TYPE_13__*, i32*, i32) #1

declare dso_local i32 @crypto_shash_finup(%struct.TYPE_13__*, i8*, i64, i32*) #1

declare dso_local i32 @crypto_shash_digest(%struct.TYPE_13__*, i32*, i32, i32*) #1

declare dso_local i32 @crypto_xor_cpy(i8*, i32*, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
