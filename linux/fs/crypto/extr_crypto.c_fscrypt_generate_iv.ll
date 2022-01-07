; ModuleID = '/home/carl/AnghaBench/linux/fs/crypto/extr_crypto.c_fscrypt_generate_iv.c'
source_filename = "/home/carl/AnghaBench/linux/fs/crypto/extr_crypto.c_fscrypt_generate_iv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.fscrypt_iv = type { i32 }
%struct.fscrypt_info = type { i32*, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@FS_KEY_DERIVATION_NONCE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fscrypt_generate_iv(%union.fscrypt_iv* %0, i32 %1, %struct.fscrypt_info* %2) #0 {
  %4 = alloca %union.fscrypt_iv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fscrypt_info*, align 8
  store %union.fscrypt_iv* %0, %union.fscrypt_iv** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.fscrypt_info* %2, %struct.fscrypt_info** %6, align 8
  %7 = load %union.fscrypt_iv*, %union.fscrypt_iv** %4, align 8
  %8 = load %struct.fscrypt_info*, %struct.fscrypt_info** %6, align 8
  %9 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @memset(%union.fscrypt_iv* %7, i32 0, i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @cpu_to_le64(i32 %14)
  %16 = load %union.fscrypt_iv*, %union.fscrypt_iv** %4, align 8
  %17 = bitcast %union.fscrypt_iv* %16 to i32*
  store i32 %15, i32* %17, align 4
  %18 = load %struct.fscrypt_info*, %struct.fscrypt_info** %6, align 8
  %19 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %18, i32 0, i32 2
  %20 = call i64 @fscrypt_is_direct_key_policy(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %3
  %23 = load %union.fscrypt_iv*, %union.fscrypt_iv** %4, align 8
  %24 = bitcast %union.fscrypt_iv* %23 to i32*
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.fscrypt_info*, %struct.fscrypt_info** %6, align 8
  %27 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @FS_KEY_DERIVATION_NONCE_SIZE, align 4
  %30 = call i32 @memcpy(i32 %25, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %22, %3
  %32 = load %struct.fscrypt_info*, %struct.fscrypt_info** %6, align 8
  %33 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = load %struct.fscrypt_info*, %struct.fscrypt_info** %6, align 8
  %38 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load %union.fscrypt_iv*, %union.fscrypt_iv** %4, align 8
  %41 = bitcast %union.fscrypt_iv* %40 to i32*
  %42 = load i32, i32* %41, align 4
  %43 = load %union.fscrypt_iv*, %union.fscrypt_iv** %4, align 8
  %44 = bitcast %union.fscrypt_iv* %43 to i32*
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @crypto_cipher_encrypt_one(i32* %39, i32 %42, i32 %45)
  br label %47

47:                                               ; preds = %36, %31
  ret void
}

declare dso_local i32 @memset(%union.fscrypt_iv*, i32, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i64 @fscrypt_is_direct_key_policy(i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @crypto_cipher_encrypt_one(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
