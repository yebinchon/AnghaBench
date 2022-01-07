; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_crypt_tkip.c_michael_mic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_crypt_tkip.c_michael_mic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.crypto_shash* }
%struct.crypto_shash = type { i32 }

@desc = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_shash*, i32*, i32*, i32*, i64, i32*)* @michael_mic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @michael_mic(%struct.crypto_shash* %0, i32* %1, i32* %2, i32* %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_shash*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.crypto_shash* %0, %struct.crypto_shash** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** @desc, align 8
  %16 = load %struct.crypto_shash*, %struct.crypto_shash** %8, align 8
  %17 = call i32 @SHASH_DESC_ON_STACK(%struct.TYPE_7__* %15, %struct.crypto_shash* %16)
  %18 = load %struct.crypto_shash*, %struct.crypto_shash** %8, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** @desc, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  store %struct.crypto_shash* %18, %struct.crypto_shash** %20, align 8
  %21 = load %struct.crypto_shash*, %struct.crypto_shash** %8, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = call i64 @crypto_shash_setkey(%struct.crypto_shash* %21, i32* %22, i32 8)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %55

26:                                               ; preds = %6
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** @desc, align 8
  %28 = call i32 @crypto_shash_init(%struct.TYPE_7__* %27)
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %51

32:                                               ; preds = %26
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** @desc, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = call i32 @crypto_shash_update(%struct.TYPE_7__* %33, i32* %34, i64 16)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %14, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %51

39:                                               ; preds = %32
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** @desc, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = load i64, i64* %12, align 8
  %43 = call i32 @crypto_shash_update(%struct.TYPE_7__* %40, i32* %41, i64 %42)
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %51

47:                                               ; preds = %39
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** @desc, align 8
  %49 = load i32*, i32** %13, align 8
  %50 = call i32 @crypto_shash_final(%struct.TYPE_7__* %48, i32* %49)
  store i32 %50, i32* %14, align 4
  br label %51

51:                                               ; preds = %47, %46, %38, %31
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** @desc, align 8
  %53 = call i32 @shash_desc_zero(%struct.TYPE_7__* %52)
  %54 = load i32, i32* %14, align 4
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %51, %25
  %56 = load i32, i32* %7, align 4
  ret i32 %56
}

declare dso_local i32 @SHASH_DESC_ON_STACK(%struct.TYPE_7__*, %struct.crypto_shash*) #1

declare dso_local i64 @crypto_shash_setkey(%struct.crypto_shash*, i32*, i32) #1

declare dso_local i32 @crypto_shash_init(%struct.TYPE_7__*) #1

declare dso_local i32 @crypto_shash_update(%struct.TYPE_7__*, i32*, i64) #1

declare dso_local i32 @crypto_shash_final(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @shash_desc_zero(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
