; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c__rtl92d_phy_calc_curvindex.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c__rtl92d_phy_calc_curvindex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }

@TARGET_CHNL_NUM_5G = common dso_local global i32 0, align 4
@TARGET_CHNL_NUM_2G = common dso_local global i32 0, align 4
@CV_CURVE_CNT = common dso_local global i32 0, align 4
@FINIT = common dso_local global i32 0, align 4
@INIT_IQK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"curveindex[%d] = %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32*, i32*, i32, i32*)* @_rtl92d_phy_calc_curvindex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92d_phy_calc_curvindex(%struct.ieee80211_hw* %0, i32* %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.rtl_priv*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %18 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %17)
  store %struct.rtl_priv* %18, %struct.rtl_priv** %11, align 8
  store i32 -1, i32* %12, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* @TARGET_CHNL_NUM_5G, align 4
  br label %25

23:                                               ; preds = %5
  %24 = load i32, i32* @TARGET_CHNL_NUM_2G, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  store i32 %26, i32* %16, align 4
  store i32 0, i32* %14, align 4
  br label %27

27:                                               ; preds = %88, %25
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* %16, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %91

31:                                               ; preds = %27
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %36 = load i32, i32* %14, align 4
  %37 = add nsw i32 %36, 1
  %38 = call i32 @_rtl92d_is_legal_5g_channel(%struct.ieee80211_hw* %35, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  br label %88

41:                                               ; preds = %34, %31
  %42 = load i32*, i32** %10, align 8
  %43 = load i32, i32* %14, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 0, i32* %45, align 4
  store i32 0, i32* %15, align 4
  br label %46

46:                                               ; preds = %74, %41
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* @CV_CURVE_CNT, align 4
  %49 = mul nsw i32 %48, 2
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %51, label %77

51:                                               ; preds = %46
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* %14, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* %15, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @_rtl92d_phy_get_abs(i32 %56, i32 %61)
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %51
  %67 = load i32, i32* %15, align 4
  %68 = load i32*, i32** %10, align 8
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 %67, i32* %71, align 4
  %72 = load i32, i32* %13, align 4
  store i32 %72, i32* %12, align 4
  br label %73

73:                                               ; preds = %66, %51
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %15, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %15, align 4
  br label %46

77:                                               ; preds = %46
  store i32 -1, i32* %12, align 4
  %78 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %79 = load i32, i32* @FINIT, align 4
  %80 = load i32, i32* @INIT_IQK, align 4
  %81 = load i32, i32* %14, align 4
  %82 = load i32*, i32** %10, align 8
  %83 = load i32, i32* %14, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @RTPRINT(%struct.rtl_priv* %78, i32 %79, i32 %80, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %81, i32 %86)
  br label %88

88:                                               ; preds = %77, %40
  %89 = load i32, i32* %14, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %14, align 4
  br label %27

91:                                               ; preds = %27
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @_rtl92d_is_legal_5g_channel(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @_rtl92d_phy_get_abs(i32, i32) #1

declare dso_local i32 @RTPRINT(%struct.rtl_priv*, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
