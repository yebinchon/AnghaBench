; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_hal_com.c_hal_set_brate_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_hal_com.c_hal_set_brate_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NDIS_802_11_LENGTH_RATES_EX = common dso_local global i64 0, align 8
@IEEE80211_BASIC_RATE_MASK = common dso_local global i64 0, align 8
@RATE_1M = common dso_local global i32 0, align 4
@RATE_2M = common dso_local global i32 0, align 4
@RATE_5_5M = common dso_local global i32 0, align 4
@RATE_11M = common dso_local global i32 0, align 4
@RATE_6M = common dso_local global i32 0, align 4
@RATE_9M = common dso_local global i32 0, align 4
@RATE_12M = common dso_local global i32 0, align 4
@RATE_18M = common dso_local global i32 0, align 4
@RATE_24M = common dso_local global i32 0, align 4
@RATE_36M = common dso_local global i32 0, align 4
@RATE_48M = common dso_local global i32 0, align 4
@RATE_54M = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hal_set_brate_cfg(i64* %0, i32* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64* %0, i64** %3, align 8
  store i32* %1, i32** %4, align 8
  store i64 0, i64* %5, align 8
  br label %8

8:                                                ; preds = %90, %2
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @NDIS_802_11_LENGTH_RATES_EX, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %93

12:                                               ; preds = %8
  %13 = load i64*, i64** %3, align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @IEEE80211_BASIC_RATE_MASK, align 8
  %18 = and i64 %16, %17
  store i64 %18, i64* %6, align 8
  %19 = load i64*, i64** %3, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = and i64 %22, 127
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %89

26:                                               ; preds = %12
  %27 = load i64, i64* %7, align 8
  switch i64 %27, label %88 [
    i64 138, label %28
    i64 137, label %33
    i64 136, label %38
    i64 139, label %43
    i64 129, label %48
    i64 128, label %53
    i64 135, label %58
    i64 134, label %63
    i64 133, label %68
    i64 132, label %73
    i64 131, label %78
    i64 130, label %83
  ]

28:                                               ; preds = %26
  %29 = load i32, i32* @RATE_1M, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %29
  store i32 %32, i32* %30, align 4
  br label %88

33:                                               ; preds = %26
  %34 = load i32, i32* @RATE_2M, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %34
  store i32 %37, i32* %35, align 4
  br label %88

38:                                               ; preds = %26
  %39 = load i32, i32* @RATE_5_5M, align 4
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %39
  store i32 %42, i32* %40, align 4
  br label %88

43:                                               ; preds = %26
  %44 = load i32, i32* @RATE_11M, align 4
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %44
  store i32 %47, i32* %45, align 4
  br label %88

48:                                               ; preds = %26
  %49 = load i32, i32* @RATE_6M, align 4
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %49
  store i32 %52, i32* %50, align 4
  br label %88

53:                                               ; preds = %26
  %54 = load i32, i32* @RATE_9M, align 4
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %54
  store i32 %57, i32* %55, align 4
  br label %88

58:                                               ; preds = %26
  %59 = load i32, i32* @RATE_12M, align 4
  %60 = load i32*, i32** %4, align 8
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %59
  store i32 %62, i32* %60, align 4
  br label %88

63:                                               ; preds = %26
  %64 = load i32, i32* @RATE_18M, align 4
  %65 = load i32*, i32** %4, align 8
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %64
  store i32 %67, i32* %65, align 4
  br label %88

68:                                               ; preds = %26
  %69 = load i32, i32* @RATE_24M, align 4
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %69
  store i32 %72, i32* %70, align 4
  br label %88

73:                                               ; preds = %26
  %74 = load i32, i32* @RATE_36M, align 4
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %74
  store i32 %77, i32* %75, align 4
  br label %88

78:                                               ; preds = %26
  %79 = load i32, i32* @RATE_48M, align 4
  %80 = load i32*, i32** %4, align 8
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %79
  store i32 %82, i32* %80, align 4
  br label %88

83:                                               ; preds = %26
  %84 = load i32, i32* @RATE_54M, align 4
  %85 = load i32*, i32** %4, align 8
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %84
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %26, %83, %78, %73, %68, %63, %58, %53, %48, %43, %38, %33, %28
  br label %89

89:                                               ; preds = %88, %12
  br label %90

90:                                               ; preds = %89
  %91 = load i64, i64* %5, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %5, align 8
  br label %8

93:                                               ; preds = %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
