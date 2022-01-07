; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_mseries_get_pll_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_mseries_get_pll_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ni_mseries_get_pll_parameters.pico_per_nano = internal constant i32 1000, align 4
@ni_mseries_get_pll_parameters.target_picosec = internal constant i32 12500, align 4
@NI_M_PLL_MAX_DIVISOR = common dso_local global i32 0, align 4
@NI_M_PLL_MAX_MULTIPLIER = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*, i32*)* @ni_mseries_get_pll_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_mseries_get_pll_parameters(i32 %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 1, i32* %11, align 4
  store i32 1, i32* %13, align 4
  %17 = load i32, i32* %6, align 4
  %18 = mul i32 %17, 1000
  store i32 %18, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 1, i32* %10, align 4
  br label %19

19:                                               ; preds = %50, %4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @NI_M_PLL_MAX_DIVISOR, align 4
  %22 = icmp ule i32 %20, %21
  br i1 %22, label %23, label %53

23:                                               ; preds = %19
  store i32 1, i32* %12, align 4
  br label %24

24:                                               ; preds = %46, %23
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* @NI_M_PLL_MAX_MULTIPLIER, align 4
  %27 = icmp ule i32 %25, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %24
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* %10, align 4
  %31 = mul i32 %29, %30
  %32 = load i32, i32* %12, align 4
  %33 = udiv i32 %31, %32
  store i32 %33, i32* %16, align 4
  %34 = load i32, i32* %16, align 4
  %35 = sub i32 %34, 12500
  %36 = call i64 @abs(i32 %35)
  %37 = load i32, i32* %15, align 4
  %38 = sub i32 %37, 12500
  %39 = call i64 @abs(i32 %38)
  %40 = icmp slt i64 %36, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %28
  %42 = load i32, i32* %16, align 4
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %13, align 4
  br label %45

45:                                               ; preds = %41, %28
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %12, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %12, align 4
  br label %24

49:                                               ; preds = %24
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %10, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %10, align 4
  br label %19

53:                                               ; preds = %19
  %54 = load i32, i32* %15, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %68

59:                                               ; preds = %53
  %60 = load i32, i32* %11, align 4
  %61 = load i32*, i32** %7, align 8
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* %13, align 4
  %63 = load i32*, i32** %8, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* %15, align 4
  %65 = mul nsw i32 %64, 4
  %66 = call i32 @DIV_ROUND_CLOSEST(i32 %65, i32 1000)
  %67 = load i32*, i32** %9, align 8
  store i32 %66, i32* %67, align 4
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %59, %56
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
