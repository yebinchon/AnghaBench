; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_com.c_HalSetBrateCfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_com.c_HalSetBrateCfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

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
define dso_local void @HalSetBrateCfg(%struct.adapter* %0, i64* %1, i32* %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32* %2, i32** %6, align 8
  store i64 0, i64* %7, align 8
  br label %10

10:                                               ; preds = %92, %3
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* @NDIS_802_11_LENGTH_RATES_EX, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %95

14:                                               ; preds = %10
  %15 = load i64*, i64** %5, align 8
  %16 = load i64, i64* %7, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IEEE80211_BASIC_RATE_MASK, align 8
  %20 = and i64 %18, %19
  store i64 %20, i64* %8, align 8
  %21 = load i64*, i64** %5, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = and i64 %24, 127
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %8, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %91

28:                                               ; preds = %14
  %29 = load i64, i64* %9, align 8
  switch i64 %29, label %90 [
    i64 138, label %30
    i64 137, label %35
    i64 136, label %40
    i64 139, label %45
    i64 129, label %50
    i64 128, label %55
    i64 135, label %60
    i64 134, label %65
    i64 133, label %70
    i64 132, label %75
    i64 131, label %80
    i64 130, label %85
  ]

30:                                               ; preds = %28
  %31 = load i32, i32* @RATE_1M, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %31
  store i32 %34, i32* %32, align 4
  br label %90

35:                                               ; preds = %28
  %36 = load i32, i32* @RATE_2M, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %36
  store i32 %39, i32* %37, align 4
  br label %90

40:                                               ; preds = %28
  %41 = load i32, i32* @RATE_5_5M, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %41
  store i32 %44, i32* %42, align 4
  br label %90

45:                                               ; preds = %28
  %46 = load i32, i32* @RATE_11M, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %46
  store i32 %49, i32* %47, align 4
  br label %90

50:                                               ; preds = %28
  %51 = load i32, i32* @RATE_6M, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %51
  store i32 %54, i32* %52, align 4
  br label %90

55:                                               ; preds = %28
  %56 = load i32, i32* @RATE_9M, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %56
  store i32 %59, i32* %57, align 4
  br label %90

60:                                               ; preds = %28
  %61 = load i32, i32* @RATE_12M, align 4
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %61
  store i32 %64, i32* %62, align 4
  br label %90

65:                                               ; preds = %28
  %66 = load i32, i32* @RATE_18M, align 4
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %66
  store i32 %69, i32* %67, align 4
  br label %90

70:                                               ; preds = %28
  %71 = load i32, i32* @RATE_24M, align 4
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %71
  store i32 %74, i32* %72, align 4
  br label %90

75:                                               ; preds = %28
  %76 = load i32, i32* @RATE_36M, align 4
  %77 = load i32*, i32** %6, align 8
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %76
  store i32 %79, i32* %77, align 4
  br label %90

80:                                               ; preds = %28
  %81 = load i32, i32* @RATE_48M, align 4
  %82 = load i32*, i32** %6, align 8
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %81
  store i32 %84, i32* %82, align 4
  br label %90

85:                                               ; preds = %28
  %86 = load i32, i32* @RATE_54M, align 4
  %87 = load i32*, i32** %6, align 8
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %86
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %28, %85, %80, %75, %70, %65, %60, %55, %50, %45, %40, %35, %30
  br label %91

91:                                               ; preds = %90, %14
  br label %92

92:                                               ; preds = %91
  %93 = load i64, i64* %7, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %7, align 8
  br label %10

95:                                               ; preds = %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
