; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvmem/extr_stm32-romem.c_stm32_bsec_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvmem/extr_stm32-romem.c_stm32_bsec_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_romem_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@STM32_SMC_PROG_OTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Can't write data%d (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i64)* @stm32_bsec_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_bsec_write(i8* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.stm32_romem_priv*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.stm32_romem_priv*
  store %struct.stm32_romem_priv* %16, %struct.stm32_romem_priv** %10, align 8
  %17 = load %struct.stm32_romem_priv*, %struct.stm32_romem_priv** %10, align 8
  %18 = getelementptr inbounds %struct.stm32_romem_priv, %struct.stm32_romem_priv* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.device*, %struct.device** %19, align 8
  store %struct.device* %20, %struct.device** %11, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = bitcast i8* %21 to i32*
  store i32* %22, i32** %12, align 8
  %23 = load i64, i64* %9, align 8
  %24 = urem i64 %23, 4
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* %7, align 4
  %28 = urem i32 %27, 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26, %4
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %65

33:                                               ; preds = %26
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %14, align 4
  br label %35

35:                                               ; preds = %61, %33
  %36 = load i32, i32* %14, align 4
  %37 = sext i32 %36 to i64
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = load i64, i64* %9, align 8
  %41 = add i64 %39, %40
  %42 = icmp ult i64 %37, %41
  br i1 %42, label %43, label %64

43:                                               ; preds = %35
  %44 = load i32, i32* @STM32_SMC_PROG_OTP, align 4
  %45 = load i32, i32* %14, align 4
  %46 = ashr i32 %45, 2
  %47 = load i32*, i32** %12, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %12, align 8
  %49 = load i32, i32* %47, align 4
  %50 = call i32 @stm32_bsec_smc(i32 %44, i32 %46, i32 %49, i32* null)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %43
  %54 = load %struct.device*, %struct.device** %11, align 8
  %55 = load i32, i32* %14, align 4
  %56 = ashr i32 %55, 2
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @dev_err(%struct.device* %54, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load i32, i32* %13, align 4
  store i32 %59, i32* %5, align 4
  br label %65

60:                                               ; preds = %43
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %14, align 4
  %63 = add nsw i32 %62, 4
  store i32 %63, i32* %14, align 4
  br label %35

64:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %64, %53, %30
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @stm32_bsec_smc(i32, i32, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
