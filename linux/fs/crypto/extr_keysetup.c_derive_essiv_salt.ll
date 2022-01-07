; ModuleID = '/home/carl/AnghaBench/linux/fs/crypto/extr_keysetup.c_derive_essiv_salt.c'
source_filename = "/home/carl/AnghaBench/linux/fs/crypto/extr_keysetup.c_derive_essiv_salt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.crypto_shash* }
%struct.crypto_shash = type { i32 }

@essiv_hash_tfm = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"sha256\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Missing crypto API support for SHA-256\00", align 1
@ENOPKG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Error allocating SHA-256 transform: %ld\00", align 1
@desc = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*)* @derive_essiv_salt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @derive_essiv_salt(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.crypto_shash*, align 8
  %9 = alloca %struct.crypto_shash*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* @essiv_hash_tfm, align 4
  %11 = call %struct.crypto_shash* @READ_ONCE(i32 %10)
  store %struct.crypto_shash* %11, %struct.crypto_shash** %8, align 8
  %12 = load %struct.crypto_shash*, %struct.crypto_shash** %8, align 8
  %13 = icmp ne %struct.crypto_shash* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %49

18:                                               ; preds = %3
  %19 = call %struct.crypto_shash* @crypto_alloc_shash(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  store %struct.crypto_shash* %19, %struct.crypto_shash** %8, align 8
  %20 = load %struct.crypto_shash*, %struct.crypto_shash** %8, align 8
  %21 = call i64 @IS_ERR(%struct.crypto_shash* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %18
  %24 = load %struct.crypto_shash*, %struct.crypto_shash** %8, align 8
  %25 = call i32 @PTR_ERR(%struct.crypto_shash* %24)
  %26 = load i32, i32* @ENOENT, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = call i32 @fscrypt_warn(i32* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @ENOPKG, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %61

33:                                               ; preds = %23
  %34 = load %struct.crypto_shash*, %struct.crypto_shash** %8, align 8
  %35 = call i32 @PTR_ERR(%struct.crypto_shash* %34)
  %36 = call i32 @fscrypt_err(i32* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = load %struct.crypto_shash*, %struct.crypto_shash** %8, align 8
  %38 = call i32 @PTR_ERR(%struct.crypto_shash* %37)
  store i32 %38, i32* %4, align 4
  br label %61

39:                                               ; preds = %18
  %40 = load %struct.crypto_shash*, %struct.crypto_shash** %8, align 8
  %41 = call %struct.crypto_shash* @cmpxchg(i32* @essiv_hash_tfm, i32* null, %struct.crypto_shash* %40)
  store %struct.crypto_shash* %41, %struct.crypto_shash** %9, align 8
  %42 = load %struct.crypto_shash*, %struct.crypto_shash** %9, align 8
  %43 = icmp ne %struct.crypto_shash* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.crypto_shash*, %struct.crypto_shash** %8, align 8
  %46 = call i32 @crypto_free_shash(%struct.crypto_shash* %45)
  %47 = load %struct.crypto_shash*, %struct.crypto_shash** %9, align 8
  store %struct.crypto_shash* %47, %struct.crypto_shash** %8, align 8
  br label %48

48:                                               ; preds = %44, %39
  br label %49

49:                                               ; preds = %48, %3
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @desc, align 8
  %51 = load %struct.crypto_shash*, %struct.crypto_shash** %8, align 8
  %52 = call i32 @SHASH_DESC_ON_STACK(%struct.TYPE_4__* %50, %struct.crypto_shash* %51)
  %53 = load %struct.crypto_shash*, %struct.crypto_shash** %8, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @desc, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store %struct.crypto_shash* %53, %struct.crypto_shash** %55, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @desc, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @crypto_shash_digest(%struct.TYPE_4__* %56, i32* %57, i32 %58, i32* %59)
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %49, %33, %29
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.crypto_shash* @READ_ONCE(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.crypto_shash* @crypto_alloc_shash(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_shash*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_shash*) #1

declare dso_local i32 @fscrypt_warn(i32*, i8*) #1

declare dso_local i32 @fscrypt_err(i32*, i8*, i32) #1

declare dso_local %struct.crypto_shash* @cmpxchg(i32*, i32*, %struct.crypto_shash*) #1

declare dso_local i32 @crypto_free_shash(%struct.crypto_shash*) #1

declare dso_local i32 @SHASH_DESC_ON_STACK(%struct.TYPE_4__*, %struct.crypto_shash*) #1

declare dso_local i32 @crypto_shash_digest(%struct.TYPE_4__*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
