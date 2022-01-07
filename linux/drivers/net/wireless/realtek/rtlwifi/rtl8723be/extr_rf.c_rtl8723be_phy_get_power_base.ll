; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_rf.c_rtl8723be_phy_get_power_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_rf.c_rtl8723be_phy_get_power_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i64 }

@FPHY = common dso_local global i32 0, align 4
@PHY_TXPWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c" [OFDM power base index rf(%c) = 0x%x]\0A\00", align 1
@HT_CHANNEL_WIDTH_20 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c" [MCS power base index rf(%c) = 0x%x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32*, i32*, i32*, i32, i32*, i32*)* @rtl8723be_phy_get_power_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8723be_phy_get_power_base(%struct.ieee80211_hw* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.ieee80211_hw*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.rtl_priv*, align 8
  %16 = alloca %struct.rtl_phy*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [2 x i32], align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %22 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %21)
  store %struct.rtl_priv* %22, %struct.rtl_priv** %15, align 8
  %23 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %24 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %23, i32 0, i32 0
  store %struct.rtl_phy* %24, %struct.rtl_phy** %16, align 8
  store i32 0, i32* %19, align 4
  br label %25

25:                                               ; preds = %63, %7
  %26 = load i32, i32* %19, align 4
  %27 = icmp slt i32 %26, 2
  br i1 %27, label %28, label %66

28:                                               ; preds = %25
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* %19, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %17, align 4
  %34 = load i32, i32* %17, align 4
  %35 = shl i32 %34, 24
  %36 = load i32, i32* %17, align 4
  %37 = shl i32 %36, 16
  %38 = or i32 %35, %37
  %39 = load i32, i32* %17, align 4
  %40 = shl i32 %39, 8
  %41 = or i32 %38, %40
  %42 = load i32, i32* %17, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %17, align 4
  %44 = load i32, i32* %17, align 4
  %45 = load i32*, i32** %13, align 8
  %46 = load i32, i32* %19, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 %44, i32* %48, align 4
  %49 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %50 = load i32, i32* @FPHY, align 4
  %51 = load i32, i32* @PHY_TXPWR, align 4
  %52 = load i32, i32* %19, align 4
  %53 = icmp eq i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 65, i32 66
  %56 = trunc i32 %55 to i8
  %57 = load i32*, i32** %13, align 8
  %58 = load i32, i32* %19, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @RTPRINT(%struct.rtl_priv* %49, i32 %50, i32 %51, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8 signext %56, i32 %61)
  br label %63

63:                                               ; preds = %28
  %64 = load i32, i32* %19, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %19, align 4
  br label %25

66:                                               ; preds = %25
  store i32 0, i32* %19, align 4
  br label %67

67:                                               ; preds = %128, %66
  %68 = load i32, i32* %19, align 4
  %69 = icmp slt i32 %68, 2
  br i1 %69, label %70, label %131

70:                                               ; preds = %67
  %71 = load %struct.rtl_phy*, %struct.rtl_phy** %16, align 8
  %72 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @HT_CHANNEL_WIDTH_20, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %70
  %77 = load i32*, i32** %10, align 8
  %78 = load i32, i32* %19, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %19, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 %83
  store i32 %81, i32* %84, align 4
  br label %94

85:                                               ; preds = %70
  %86 = load i32*, i32** %11, align 8
  %87 = load i32, i32* %19, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %19, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 %92
  store i32 %90, i32* %93, align 4
  br label %94

94:                                               ; preds = %85, %76
  %95 = load i32, i32* %19, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 %96
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %18, align 4
  %99 = load i32, i32* %18, align 4
  %100 = shl i32 %99, 24
  %101 = load i32, i32* %18, align 4
  %102 = shl i32 %101, 16
  %103 = or i32 %100, %102
  %104 = load i32, i32* %18, align 4
  %105 = shl i32 %104, 8
  %106 = or i32 %103, %105
  %107 = load i32, i32* %18, align 4
  %108 = or i32 %106, %107
  store i32 %108, i32* %18, align 4
  %109 = load i32, i32* %18, align 4
  %110 = load i32*, i32** %14, align 8
  %111 = load i32, i32* %19, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  store i32 %109, i32* %113, align 4
  %114 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %115 = load i32, i32* @FPHY, align 4
  %116 = load i32, i32* @PHY_TXPWR, align 4
  %117 = load i32, i32* %19, align 4
  %118 = icmp eq i32 %117, 0
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i32 65, i32 66
  %121 = trunc i32 %120 to i8
  %122 = load i32*, i32** %14, align 8
  %123 = load i32, i32* %19, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @RTPRINT(%struct.rtl_priv* %114, i32 %115, i32 %116, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8 signext %121, i32 %126)
  br label %128

128:                                              ; preds = %94
  %129 = load i32, i32* %19, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %19, align 4
  br label %67

131:                                              ; preds = %67
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RTPRINT(%struct.rtl_priv*, i32, i32, i8*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
