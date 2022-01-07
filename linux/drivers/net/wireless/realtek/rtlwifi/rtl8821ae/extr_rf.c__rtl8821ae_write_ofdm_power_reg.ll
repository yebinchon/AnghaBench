; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_rf.c__rtl8821ae_write_ofdm_power_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_rf.c__rtl8821ae_write_ofdm_power_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }

@RTXAGC_A_OFDM18_OFDM6 = common dso_local global i32 0, align 4
@RTXAGC_A_OFDM54_OFDM24 = common dso_local global i32 0, align 4
@RTXAGC_A_MCS03_MCS00 = common dso_local global i32 0, align 4
@RTXAGC_A_MCS07_MCS04 = common dso_local global i32 0, align 4
@RTXAGC_A_MCS11_MCS08 = common dso_local global i32 0, align 4
@RTXAGC_A_MCS15_MCS12 = common dso_local global i32 0, align 4
@RTXAGC_B_OFDM18_OFDM6 = common dso_local global i32 0, align 4
@RTXAGC_B_OFDM54_OFDM24 = common dso_local global i32 0, align 4
@RTXAGC_B_MCS03_MCS00 = common dso_local global i32 0, align 4
@RTXAGC_B_MCS07_MCS04 = common dso_local global i32 0, align 4
@RTXAGC_B_MCS11_MCS08 = common dso_local global i32 0, align 4
@RTXAGC_B_MCS15_MCS12 = common dso_local global i32 0, align 4
@RF6052_MAX_TX_PWR = common dso_local global i32 0, align 4
@MASKDWORD = common dso_local global i32 0, align 4
@FPHY = common dso_local global i32 0, align 4
@PHY_TXPWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Set 0x%x = %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32*)* @_rtl8821ae_write_ofdm_power_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8821ae_write_ofdm_power_reg(%struct.ieee80211_hw* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.rtl_priv*, align 8
  %8 = alloca [6 x i32], align 16
  %9 = alloca [6 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [4 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %16 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %15)
  store %struct.rtl_priv* %16, %struct.rtl_priv** %7, align 8
  %17 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  %18 = load i32, i32* @RTXAGC_A_OFDM18_OFDM6, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds i32, i32* %17, i64 1
  %20 = load i32, i32* @RTXAGC_A_OFDM54_OFDM24, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds i32, i32* %19, i64 1
  %22 = load i32, i32* @RTXAGC_A_MCS03_MCS00, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds i32, i32* %21, i64 1
  %24 = load i32, i32* @RTXAGC_A_MCS07_MCS04, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds i32, i32* %23, i64 1
  %26 = load i32, i32* @RTXAGC_A_MCS11_MCS08, align 4
  store i32 %26, i32* %25, align 4
  %27 = getelementptr inbounds i32, i32* %25, i64 1
  %28 = load i32, i32* @RTXAGC_A_MCS15_MCS12, align 4
  store i32 %28, i32* %27, align 4
  %29 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %30 = load i32, i32* @RTXAGC_B_OFDM18_OFDM6, align 4
  store i32 %30, i32* %29, align 4
  %31 = getelementptr inbounds i32, i32* %29, i64 1
  %32 = load i32, i32* @RTXAGC_B_OFDM54_OFDM24, align 4
  store i32 %32, i32* %31, align 4
  %33 = getelementptr inbounds i32, i32* %31, i64 1
  %34 = load i32, i32* @RTXAGC_B_MCS03_MCS00, align 4
  store i32 %34, i32* %33, align 4
  %35 = getelementptr inbounds i32, i32* %33, i64 1
  %36 = load i32, i32* @RTXAGC_B_MCS07_MCS04, align 4
  store i32 %36, i32* %35, align 4
  %37 = getelementptr inbounds i32, i32* %35, i64 1
  %38 = load i32, i32* @RTXAGC_B_MCS11_MCS08, align 4
  store i32 %38, i32* %37, align 4
  %39 = getelementptr inbounds i32, i32* %37, i64 1
  %40 = load i32, i32* @RTXAGC_B_MCS15_MCS12, align 4
  store i32 %40, i32* %39, align 4
  store i32 0, i32* %11, align 4
  br label %41

41:                                               ; preds = %119, %3
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %42, 2
  br i1 %43, label %44, label %122

44:                                               ; preds = %41
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %50

50:                                               ; preds = %77, %44
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %51, 4
  br i1 %52, label %53, label %80

53:                                               ; preds = %50
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %10, align 4
  %56 = mul nsw i32 %55, 8
  %57 = shl i32 127, %56
  %58 = and i32 %54, %57
  %59 = load i32, i32* %10, align 4
  %60 = mul nsw i32 %59, 8
  %61 = ashr i32 %58, %60
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %63
  store i32 %61, i32* %64, align 4
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @RF6052_MAX_TX_PWR, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %53
  %72 = load i32, i32* @RF6052_MAX_TX_PWR, align 4
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %74
  store i32 %72, i32* %75, align 4
  br label %76

76:                                               ; preds = %71, %53
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %10, align 4
  br label %50

80:                                               ; preds = %50
  %81 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 3
  %82 = load i32, i32* %81, align 4
  %83 = shl i32 %82, 24
  %84 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  %85 = load i32, i32* %84, align 8
  %86 = shl i32 %85, 16
  %87 = or i32 %83, %86
  %88 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = shl i32 %89, 8
  %91 = or i32 %87, %90
  %92 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %93 = load i32, i32* %92, align 16
  %94 = or i32 %91, %93
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %11, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %80
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 %99
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %14, align 4
  br label %107

102:                                              ; preds = %80
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 %104
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %14, align 4
  br label %107

107:                                              ; preds = %102, %97
  %108 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* @MASKDWORD, align 4
  %111 = load i32, i32* %13, align 4
  %112 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %108, i32 %109, i32 %110, i32 %111)
  %113 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %114 = load i32, i32* @FPHY, align 4
  %115 = load i32, i32* @PHY_TXPWR, align 4
  %116 = load i32, i32* %14, align 4
  %117 = load i32, i32* %13, align 4
  %118 = call i32 @RTPRINT(%struct.rtl_priv* %113, i32 %114, i32 %115, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %107
  %120 = load i32, i32* %11, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %11, align 4
  br label %41

122:                                              ; preds = %41
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @RTPRINT(%struct.rtl_priv*, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
