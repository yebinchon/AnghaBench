; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_xilinx_uartps.c_cdns_uart_calc_baud_divs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_xilinx_uartps.c_cdns_uart_calc_baud_divs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CDNS_UART_BDIV_MAX = common dso_local global i32 0, align 4
@CDNS_UART_CD_MAX = common dso_local global i32 0, align 4
@CDNS_UART_BDIV_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32*, i32*)* @cdns_uart_calc_baud_divs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_uart_calc_baud_divs(i32 %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %14, align 4
  store i32 -1, i32* %16, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @CDNS_UART_BDIV_MAX, align 4
  %20 = add nsw i32 %19, 1
  %21 = load i32, i32* @CDNS_UART_CD_MAX, align 4
  %22 = mul nsw i32 %20, %21
  %23 = udiv i32 %18, %22
  %24 = icmp ult i32 %17, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %5
  %26 = load i32*, i32** %10, align 8
  store i32 1, i32* %26, align 4
  %27 = load i32, i32* %6, align 4
  %28 = udiv i32 %27, 8
  store i32 %28, i32* %6, align 4
  br label %31

29:                                               ; preds = %5
  %30 = load i32*, i32** %10, align 8
  store i32 0, i32* %30, align 4
  br label %31

31:                                               ; preds = %29, %25
  %32 = load i32, i32* @CDNS_UART_BDIV_MIN, align 4
  store i32 %32, i32* %12, align 4
  br label %33

33:                                               ; preds = %81, %31
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* @CDNS_UART_BDIV_MAX, align 4
  %36 = icmp sle i32 %34, %35
  br i1 %36, label %37, label %84

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %12, align 4
  %41 = add nsw i32 %40, 1
  %42 = mul i32 %39, %41
  %43 = call i32 @DIV_ROUND_CLOSEST(i32 %38, i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %44, 1
  br i1 %45, label %50, label %46

46:                                               ; preds = %37
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @CDNS_UART_CD_MAX, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46, %37
  br label %81

51:                                               ; preds = %46
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %12, align 4
  %55 = add nsw i32 %54, 1
  %56 = mul nsw i32 %53, %55
  %57 = udiv i32 %52, %56
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp ugt i32 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %51
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %13, align 4
  %64 = sub i32 %62, %63
  store i32 %64, i32* %15, align 4
  br label %69

65:                                               ; preds = %51
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %7, align 4
  %68 = sub i32 %66, %67
  store i32 %68, i32* %15, align 4
  br label %69

69:                                               ; preds = %65, %61
  %70 = load i32, i32* %16, align 4
  %71 = load i32, i32* %15, align 4
  %72 = icmp ugt i32 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = load i32, i32* %12, align 4
  %75 = load i32*, i32** %8, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32*, i32** %9, align 8
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* %13, align 4
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %15, align 4
  store i32 %79, i32* %16, align 4
  br label %80

80:                                               ; preds = %73, %69
  br label %81

81:                                               ; preds = %80, %50
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %12, align 4
  br label %33

84:                                               ; preds = %33
  %85 = load i32, i32* %16, align 4
  %86 = mul i32 %85, 100
  %87 = load i32, i32* %7, align 4
  %88 = udiv i32 %86, %87
  %89 = icmp ult i32 %88, 3
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i32, i32* %7, align 4
  store i32 %91, i32* %14, align 4
  br label %92

92:                                               ; preds = %90, %84
  %93 = load i32, i32* %14, align 4
  ret i32 %93
}

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
