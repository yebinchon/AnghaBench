; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sirfsoc_uart.c_sirfsoc_uart_calc_sample_div.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sirfsoc_uart.c_sirfsoc_uart_calc_sample_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIRF_MIN_SAMPLE_DIV = common dso_local global i16 0, align 2
@SIRF_MAX_SAMPLE_DIV = common dso_local global i16 0, align 2
@SIRF_IOCLK_DIV_MAX = common dso_local global i64 0, align 8
@SIRF_IOCLK_DIV_MASK = common dso_local global i32 0, align 4
@SIRF_SAMPLE_DIV_MASK = common dso_local global i32 0, align 4
@SIRF_SAMPLE_DIV_SHIFT = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64*)* @sirfsoc_uart_calc_sample_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sirfsoc_uart_calc_sample_div(i64 %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  store i64 -1, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %13 = load i16, i16* @SIRF_MIN_SAMPLE_DIV, align 2
  store i16 %13, i16* %8, align 2
  br label %14

14:                                               ; preds = %87, %3
  %15 = load i16, i16* %8, align 2
  %16 = zext i16 %15 to i32
  %17 = load i16, i16* @SIRF_MAX_SAMPLE_DIV, align 2
  %18 = zext i16 %17 to i32
  %19 = icmp sle i32 %16, %18
  br i1 %19, label %20, label %90

20:                                               ; preds = %14
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* %4, align 8
  %23 = load i16, i16* %8, align 2
  %24 = zext i16 %23 to i32
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = mul i64 %22, %26
  %28 = udiv i64 %21, %27
  %29 = sub i64 %28, 1
  store i64 %29, i64* %10, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* @SIRF_IOCLK_DIV_MAX, align 8
  %32 = icmp ugt i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %20
  br label %87

34:                                               ; preds = %20
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* %10, align 8
  %37 = add i64 %36, 1
  %38 = load i16, i16* %8, align 2
  %39 = zext i16 %38 to i32
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = mul i64 %37, %41
  %43 = udiv i64 %35, %42
  store i64 %43, i64* %11, align 8
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* %4, align 8
  %46 = sub i64 %44, %45
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %34
  %51 = load i32, i32* %12, align 4
  br label %55

52:                                               ; preds = %34
  %53 = load i32, i32* %12, align 4
  %54 = sub nsw i32 0, %53
  br label %55

55:                                               ; preds = %52, %50
  %56 = phi i32 [ %51, %50 ], [ %54, %52 ]
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* %7, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %86

61:                                               ; preds = %55
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @SIRF_IOCLK_DIV_MASK, align 4
  %64 = xor i32 %63, -1
  %65 = and i32 %62, %64
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = zext i32 %66 to i64
  %68 = load i64, i64* %10, align 8
  %69 = or i64 %67, %68
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @SIRF_SAMPLE_DIV_MASK, align 4
  %73 = xor i32 %72, -1
  %74 = and i32 %71, %73
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i16, i16* %8, align 2
  %77 = zext i16 %76 to i32
  %78 = load i16, i16* @SIRF_SAMPLE_DIV_SHIFT, align 2
  %79 = zext i16 %78 to i32
  %80 = shl i32 %77, %79
  %81 = or i32 %75, %80
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  store i64 %83, i64* %7, align 8
  %84 = load i64, i64* %11, align 8
  %85 = load i64*, i64** %6, align 8
  store i64 %84, i64* %85, align 8
  br label %86

86:                                               ; preds = %61, %55
  br label %87

87:                                               ; preds = %86, %33
  %88 = load i16, i16* %8, align 2
  %89 = add i16 %88, 1
  store i16 %89, i16* %8, align 2
  br label %14

90:                                               ; preds = %14
  %91 = load i32, i32* %9, align 4
  ret i32 %91
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
