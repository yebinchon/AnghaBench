; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sirfsoc_uart.c_sirfsoc_usp_calc_sample_div.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sirfsoc_uart.c_sirfsoc_usp_calc_sample_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIRF_USP_MIN_SAMPLE_DIV = common dso_local global i16 0, align 2
@SIRF_MAX_SAMPLE_DIV = common dso_local global i16 0, align 2
@SIRF_IOCLK_DIV_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64*)* @sirfsoc_usp_calc_sample_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sirfsoc_usp_calc_sample_div(i64 %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i16, align 2
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  store i64 -1, i64* %7, align 8
  store i64 0, i64* %9, align 8
  %11 = load i16, i16* @SIRF_USP_MIN_SAMPLE_DIV, align 2
  store i16 %11, i16* %8, align 2
  br label %12

12:                                               ; preds = %75, %3
  %13 = load i16, i16* %8, align 2
  %14 = zext i16 %13 to i32
  %15 = load i16, i16* @SIRF_MAX_SAMPLE_DIV, align 2
  %16 = zext i16 %15 to i32
  %17 = icmp sle i32 %14, %16
  br i1 %17, label %18, label %78

18:                                               ; preds = %12
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* %4, align 8
  %22 = load i16, i16* %8, align 2
  %23 = zext i16 %22 to i64
  %24 = mul i64 %21, %23
  %25 = udiv i64 %24, 2
  %26 = add i64 %20, %25
  %27 = load i64, i64* %4, align 8
  %28 = load i16, i16* %8, align 2
  %29 = zext i16 %28 to i64
  %30 = mul i64 %27, %29
  %31 = udiv i64 %26, %30
  %32 = load i64, i64* %4, align 8
  %33 = mul i64 %31, %32
  %34 = load i16, i16* %8, align 2
  %35 = zext i16 %34 to i64
  %36 = mul i64 %33, %35
  %37 = sub i64 %19, %36
  store i64 %37, i64* %10, align 8
  %38 = load i64, i64* %10, align 8
  %39 = icmp ugt i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %18
  %41 = load i64, i64* %10, align 8
  br label %45

42:                                               ; preds = %18
  %43 = load i64, i64* %10, align 8
  %44 = sub i64 0, %43
  br label %45

45:                                               ; preds = %42, %40
  %46 = phi i64 [ %41, %40 ], [ %44, %42 ]
  store i64 %46, i64* %10, align 8
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* %7, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %74

50:                                               ; preds = %45
  %51 = load i64, i64* %5, align 8
  %52 = mul i64 2, %51
  %53 = load i64, i64* %4, align 8
  %54 = load i16, i16* %8, align 2
  %55 = zext i16 %54 to i64
  %56 = mul i64 %53, %55
  %57 = udiv i64 %52, %56
  %58 = add i64 %57, 1
  %59 = udiv i64 %58, 2
  %60 = sub i64 %59, 1
  store i64 %60, i64* %9, align 8
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* @SIRF_IOCLK_DIV_MAX, align 8
  %63 = icmp ugt i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %50
  br label %75

65:                                               ; preds = %50
  %66 = load i64, i64* %10, align 8
  store i64 %66, i64* %7, align 8
  %67 = load i16, i16* %8, align 2
  %68 = zext i16 %67 to i64
  %69 = load i64*, i64** %6, align 8
  store i64 %68, i64* %69, align 8
  %70 = load i64, i64* %10, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %65
  br label %78

73:                                               ; preds = %65
  br label %74

74:                                               ; preds = %73, %45
  br label %75

75:                                               ; preds = %74, %64
  %76 = load i16, i16* %8, align 2
  %77 = add i16 %76, 1
  store i16 %77, i16* %8, align 2
  br label %12

78:                                               ; preds = %72, %12
  %79 = load i64, i64* %9, align 8
  %80 = trunc i64 %79 to i32
  ret i32 %80
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
