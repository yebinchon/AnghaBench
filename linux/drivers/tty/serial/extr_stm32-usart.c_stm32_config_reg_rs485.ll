; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_stm32-usart.c_stm32_config_reg_rs485.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_stm32-usart.c_stm32_config_reg_rs485.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USART_CR1_DEAT_MASK = common dso_local global i32 0, align 4
@USART_CR1_DEAT_SHIFT = common dso_local global i32 0, align 4
@USART_CR3_DEM = common dso_local global i32 0, align 4
@USART_CR1_OVER8 = common dso_local global i32 0, align 4
@USART_CR1_DEDT_SHIFT = common dso_local global i32 0, align 4
@USART_CR1_DEDT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32)* @stm32_config_reg_rs485 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_config_reg_rs485(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* @USART_CR1_DEAT_MASK, align 4
  %15 = load i32, i32* @USART_CR1_DEAT_SHIFT, align 4
  %16 = ashr i32 %14, %15
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* @USART_CR3_DEM, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %17
  store i32 %20, i32* %18, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @USART_CR1_OVER8, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %5
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %10, align 4
  %30 = mul nsw i32 %28, %29
  %31 = mul nsw i32 %30, 8
  store i32 %31, i32* %11, align 4
  br label %37

32:                                               ; preds = %5
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %10, align 4
  %35 = mul nsw i32 %33, %34
  %36 = mul nsw i32 %35, 16
  store i32 %36, i32* %11, align 4
  br label %37

37:                                               ; preds = %32, %27
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @DIV_ROUND_CLOSEST(i32 %38, i32 1000)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %12, align 4
  br label %47

45:                                               ; preds = %37
  %46 = load i32, i32* %11, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @USART_CR1_DEAT_SHIFT, align 4
  %51 = shl i32 %49, %50
  %52 = load i32, i32* @USART_CR1_DEAT_MASK, align 4
  %53 = and i32 %51, %52
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %54
  store i32 %57, i32* %55, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %47
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %10, align 4
  %63 = mul nsw i32 %61, %62
  %64 = mul nsw i32 %63, 8
  store i32 %64, i32* %11, align 4
  br label %70

65:                                               ; preds = %47
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %10, align 4
  %68 = mul nsw i32 %66, %67
  %69 = mul nsw i32 %68, 16
  store i32 %69, i32* %11, align 4
  br label %70

70:                                               ; preds = %65, %60
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @DIV_ROUND_CLOSEST(i32 %71, i32 1000)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, i32* %12, align 4
  br label %80

78:                                               ; preds = %70
  %79 = load i32, i32* %11, align 4
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi i32 [ %77, %76 ], [ %79, %78 ]
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* @USART_CR1_DEDT_SHIFT, align 4
  %84 = shl i32 %82, %83
  %85 = load i32, i32* @USART_CR1_DEDT_MASK, align 4
  %86 = and i32 %84, %85
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load i32*, i32** %6, align 8
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %87
  store i32 %90, i32* %88, align 4
  ret void
}

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
