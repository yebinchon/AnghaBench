; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_michael_mic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_michael_mic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_shash = type { i32 }
%struct.shash_desc = type { %struct.crypto_shash* }

@.str = private unnamed_addr constant [12 x i8] c"michael_mic\00", align 1
@MICHAEL_MIC_KEY_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32*)* @michael_mic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @michael_mic(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca [4 x i32], align 16
  %12 = alloca %struct.crypto_shash*, align 8
  %13 = alloca %struct.shash_desc*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds i32, i32* %15, i64 1
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 0, i32* %19, align 4
  store %struct.crypto_shash* null, %struct.crypto_shash** %12, align 8
  store %struct.shash_desc* null, %struct.shash_desc** %13, align 8
  %20 = call %struct.crypto_shash* @crypto_alloc_shash(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  store %struct.crypto_shash* %20, %struct.crypto_shash** %12, align 8
  %21 = load %struct.crypto_shash*, %struct.crypto_shash** %12, align 8
  %22 = call i64 @IS_ERR(%struct.crypto_shash* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load %struct.crypto_shash*, %struct.crypto_shash** %12, align 8
  %26 = call i32 @PTR_ERR(%struct.crypto_shash* %25)
  store i32 %26, i32* %14, align 4
  br label %83

27:                                               ; preds = %5
  %28 = load %struct.crypto_shash*, %struct.crypto_shash** %12, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* @MICHAEL_MIC_KEY_LEN, align 4
  %31 = call i32 @crypto_shash_setkey(%struct.crypto_shash* %28, i32* %29, i32 %30)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %80

35:                                               ; preds = %27
  %36 = load %struct.crypto_shash*, %struct.crypto_shash** %12, align 8
  %37 = call i64 @crypto_shash_descsize(%struct.crypto_shash* %36)
  %38 = add i64 8, %37
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.shash_desc* @kmalloc(i64 %38, i32 %39)
  store %struct.shash_desc* %40, %struct.shash_desc** %13, align 8
  %41 = load %struct.shash_desc*, %struct.shash_desc** %13, align 8
  %42 = icmp ne %struct.shash_desc* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %35
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %14, align 4
  br label %80

46:                                               ; preds = %35
  %47 = load %struct.crypto_shash*, %struct.crypto_shash** %12, align 8
  %48 = load %struct.shash_desc*, %struct.shash_desc** %13, align 8
  %49 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %48, i32 0, i32 0
  store %struct.crypto_shash* %47, %struct.crypto_shash** %49, align 8
  %50 = load %struct.shash_desc*, %struct.shash_desc** %13, align 8
  %51 = call i32 @crypto_shash_init(%struct.shash_desc* %50)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %77

55:                                               ; preds = %46
  %56 = load %struct.shash_desc*, %struct.shash_desc** %13, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @crypto_shash_update(%struct.shash_desc* %56, i32* %57, i32 12)
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %77

62:                                               ; preds = %55
  %63 = load %struct.shash_desc*, %struct.shash_desc** %13, align 8
  %64 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %65 = call i32 @crypto_shash_update(%struct.shash_desc* %63, i32* %64, i32 4)
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %77

69:                                               ; preds = %62
  %70 = load %struct.shash_desc*, %struct.shash_desc** %13, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 12
  %73 = load i32, i32* %8, align 4
  %74 = sub i32 %73, 12
  %75 = load i32*, i32** %10, align 8
  %76 = call i32 @crypto_shash_finup(%struct.shash_desc* %70, i32* %72, i32 %74, i32* %75)
  store i32 %76, i32* %14, align 4
  br label %77

77:                                               ; preds = %69, %68, %61, %54
  %78 = load %struct.shash_desc*, %struct.shash_desc** %13, align 8
  %79 = call i32 @kzfree(%struct.shash_desc* %78)
  br label %80

80:                                               ; preds = %77, %43, %34
  %81 = load %struct.crypto_shash*, %struct.crypto_shash** %12, align 8
  %82 = call i32 @crypto_free_shash(%struct.crypto_shash* %81)
  br label %83

83:                                               ; preds = %80, %24
  %84 = load i32, i32* %14, align 4
  ret i32 %84
}

declare dso_local %struct.crypto_shash* @crypto_alloc_shash(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_shash*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_shash*) #1

declare dso_local i32 @crypto_shash_setkey(%struct.crypto_shash*, i32*, i32) #1

declare dso_local %struct.shash_desc* @kmalloc(i64, i32) #1

declare dso_local i64 @crypto_shash_descsize(%struct.crypto_shash*) #1

declare dso_local i32 @crypto_shash_init(%struct.shash_desc*) #1

declare dso_local i32 @crypto_shash_update(%struct.shash_desc*, i32*, i32) #1

declare dso_local i32 @crypto_shash_finup(%struct.shash_desc*, i32*, i32, i32*) #1

declare dso_local i32 @kzfree(%struct.shash_desc*) #1

declare dso_local i32 @crypto_free_shash(%struct.crypto_shash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
