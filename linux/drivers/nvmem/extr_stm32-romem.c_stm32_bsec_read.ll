; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvmem/extr_stm32-romem.c_stm32_bsec_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvmem/extr_stm32-romem.c_stm32_bsec_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_romem_priv = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.device* }
%struct.device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@STM32MP15_BSEC_NUM_LOWER = common dso_local global i32 0, align 4
@STM32MP15_BSEC_DATA0 = common dso_local global i64 0, align 8
@STM32_SMC_READ_SHADOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Can't read data%d (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i64)* @stm32_bsec_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_bsec_read(i8* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.stm32_romem_priv*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = bitcast i8* %23 to %struct.stm32_romem_priv*
  store %struct.stm32_romem_priv* %24, %struct.stm32_romem_priv** %10, align 8
  %25 = load %struct.stm32_romem_priv*, %struct.stm32_romem_priv** %10, align 8
  %26 = getelementptr inbounds %struct.stm32_romem_priv, %struct.stm32_romem_priv* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load %struct.device*, %struct.device** %27, align 8
  store %struct.device* %28, %struct.device** %11, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = bitcast i8* %29 to i32*
  store i32* %30, i32** %15, align 8
  store i32* %14, i32** %16, align 8
  store i32 0, i32* %18, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @rounddown(i32 %31, i32 4)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %33, 3
  store i32 %34, i32* %20, align 4
  %35 = load i64, i64* %9, align 8
  %36 = load i32, i32* %20, align 4
  %37 = sext i32 %36 to i64
  %38 = add i64 %35, %37
  %39 = call i32 @roundup(i64 %38, i32 4)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %13, align 4
  %42 = add nsw i32 %40, %41
  %43 = load %struct.stm32_romem_priv*, %struct.stm32_romem_priv** %10, align 8
  %44 = getelementptr inbounds %struct.stm32_romem_priv, %struct.stm32_romem_priv* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp sgt i32 %42, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %4
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %122

51:                                               ; preds = %4
  %52 = load i32, i32* %12, align 4
  store i32 %52, i32* %17, align 4
  br label %53

53:                                               ; preds = %118, %51
  %54 = load i32, i32* %17, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %13, align 4
  %57 = add nsw i32 %55, %56
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %121

59:                                               ; preds = %53
  %60 = load i32, i32* %17, align 4
  %61 = ashr i32 %60, 2
  store i32 %61, i32* %22, align 4
  %62 = load i32, i32* %22, align 4
  %63 = load i32, i32* @STM32MP15_BSEC_NUM_LOWER, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %59
  %66 = load %struct.stm32_romem_priv*, %struct.stm32_romem_priv** %10, align 8
  %67 = getelementptr inbounds %struct.stm32_romem_priv, %struct.stm32_romem_priv* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @STM32MP15_BSEC_DATA0, align 8
  %70 = add nsw i64 %68, %69
  %71 = load i32, i32* %17, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %70, %72
  %74 = call i32 @readl_relaxed(i64 %73)
  store i32 %74, i32* %14, align 4
  br label %88

75:                                               ; preds = %59
  %76 = load i32, i32* @STM32_SMC_READ_SHADOW, align 4
  %77 = load i32, i32* %22, align 4
  %78 = call i32 @stm32_bsec_smc(i32 %76, i32 %77, i32 0, i32* %14)
  store i32 %78, i32* %19, align 4
  %79 = load i32, i32* %19, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %75
  %82 = load %struct.device*, %struct.device** %11, align 8
  %83 = load i32, i32* %22, align 4
  %84 = load i32, i32* %19, align 4
  %85 = call i32 @dev_err(%struct.device* %82, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %83, i32 %84)
  %86 = load i32, i32* %19, align 4
  store i32 %86, i32* %5, align 4
  br label %122

87:                                               ; preds = %75
  br label %88

88:                                               ; preds = %87, %65
  %89 = load i32, i32* %20, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %88
  %92 = load i64, i64* %9, align 8
  %93 = load i32, i32* %20, align 4
  %94 = sub nsw i32 4, %93
  %95 = sext i32 %94 to i64
  %96 = call i32 @min(i64 %92, i64 %95)
  store i32 %96, i32* %21, align 4
  br label %100

97:                                               ; preds = %88
  %98 = load i64, i64* %9, align 8
  %99 = call i32 @min(i64 %98, i64 4)
  store i32 %99, i32* %21, align 4
  br label %100

100:                                              ; preds = %97, %91
  %101 = load i32*, i32** %15, align 8
  %102 = load i32, i32* %18, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32*, i32** %16, align 8
  %106 = load i32, i32* %20, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %21, align 4
  %110 = call i32 @memcpy(i32* %104, i32* %108, i32 %109)
  %111 = load i32, i32* %21, align 4
  %112 = sext i32 %111 to i64
  %113 = load i64, i64* %9, align 8
  %114 = sub i64 %113, %112
  store i64 %114, i64* %9, align 8
  %115 = load i32, i32* %21, align 4
  %116 = load i32, i32* %18, align 4
  %117 = add nsw i32 %116, %115
  store i32 %117, i32* %18, align 4
  store i32 0, i32* %20, align 4
  br label %118

118:                                              ; preds = %100
  %119 = load i32, i32* %17, align 4
  %120 = add nsw i32 %119, 4
  store i32 %120, i32* %17, align 4
  br label %53

121:                                              ; preds = %53
  store i32 0, i32* %5, align 4
  br label %122

122:                                              ; preds = %121, %81, %48
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local i32 @rounddown(i32, i32) #1

declare dso_local i32 @roundup(i64, i32) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @stm32_bsec_smc(i32, i32, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @min(i64, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
