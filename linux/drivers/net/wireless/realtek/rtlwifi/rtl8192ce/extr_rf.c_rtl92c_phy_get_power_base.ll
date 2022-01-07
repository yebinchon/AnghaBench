; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ce/extr_rf.c_rtl92c_phy_get_power_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ce/extr_rf.c_rtl92c_phy_get_power_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i64 }
%struct.rtl_efuse = type { i32**, i32** }

@FPHY = common dso_local global i32 0, align 4
@PHY_TXPWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c" [OFDM power base index rf(%c) = 0x%x]\0A\00", align 1
@HT_CHANNEL_WIDTH_20 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c" [MCS power base index rf(%c) = 0x%x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32*, i32, i32*, i32*)* @rtl92c_phy_get_power_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl92c_phy_get_power_base(%struct.ieee80211_hw* %0, i32* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.rtl_priv*, align 8
  %12 = alloca %struct.rtl_phy*, align 8
  %13 = alloca %struct.rtl_efuse*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [2 x i32], align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %20 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %21 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %20)
  store %struct.rtl_priv* %21, %struct.rtl_priv** %11, align 8
  %22 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %23 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %22, i32 0, i32 0
  store %struct.rtl_phy* %23, %struct.rtl_phy** %12, align 8
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %25 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %24)
  %26 = call %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv* %25)
  store %struct.rtl_efuse* %26, %struct.rtl_efuse** %13, align 8
  store i32 0, i32* %18, align 4
  br label %27

27:                                               ; preds = %86, %5
  %28 = load i32, i32* %18, align 4
  %29 = icmp slt i32 %28, 2
  br i1 %29, label %30, label %89

30:                                               ; preds = %27
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %18, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %18, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 %37
  store i32 %35, i32* %38, align 4
  %39 = load %struct.rtl_efuse*, %struct.rtl_efuse** %13, align 8
  %40 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %39, i32 0, i32 0
  %41 = load i32**, i32*** %40, align 8
  %42 = load i32, i32* %18, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %41, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %16, align 4
  %51 = load i32, i32* %18, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %16, align 4
  %56 = add nsw i32 %54, %55
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = shl i32 %57, 24
  %59 = load i32, i32* %14, align 4
  %60 = shl i32 %59, 16
  %61 = or i32 %58, %60
  %62 = load i32, i32* %14, align 4
  %63 = shl i32 %62, 8
  %64 = or i32 %61, %63
  %65 = load i32, i32* %14, align 4
  %66 = or i32 %64, %65
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %14, align 4
  %68 = load i32*, i32** %9, align 8
  %69 = load i32, i32* %18, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 %67, i32* %71, align 4
  %72 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %73 = load i32, i32* @FPHY, align 4
  %74 = load i32, i32* @PHY_TXPWR, align 4
  %75 = load i32, i32* %18, align 4
  %76 = icmp eq i32 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i32 65, i32 66
  %79 = trunc i32 %78 to i8
  %80 = load i32*, i32** %9, align 8
  %81 = load i32, i32* %18, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @RTPRINT(%struct.rtl_priv* %72, i32 %73, i32 %74, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8 signext %79, i32 %84)
  br label %86

86:                                               ; preds = %30
  %87 = load i32, i32* %18, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %18, align 4
  br label %27

89:                                               ; preds = %27
  store i32 0, i32* %18, align 4
  br label %90

90:                                               ; preds = %152, %89
  %91 = load i32, i32* %18, align 4
  %92 = icmp slt i32 %91, 2
  br i1 %92, label %93, label %155

93:                                               ; preds = %90
  %94 = load %struct.rtl_phy*, %struct.rtl_phy** %12, align 8
  %95 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @HT_CHANNEL_WIDTH_20, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %118

99:                                               ; preds = %93
  %100 = load %struct.rtl_efuse*, %struct.rtl_efuse** %13, align 8
  %101 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %100, i32 0, i32 1
  %102 = load i32**, i32*** %101, align 8
  %103 = load i32, i32* %18, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32*, i32** %102, i64 %104
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sub nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %106, i64 %109
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %17, align 4
  %112 = load i32, i32* %17, align 4
  %113 = load i32, i32* %18, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, %112
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %99, %93
  %119 = load i32, i32* %18, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 %120
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %15, align 4
  %123 = load i32, i32* %15, align 4
  %124 = shl i32 %123, 24
  %125 = load i32, i32* %15, align 4
  %126 = shl i32 %125, 16
  %127 = or i32 %124, %126
  %128 = load i32, i32* %15, align 4
  %129 = shl i32 %128, 8
  %130 = or i32 %127, %129
  %131 = load i32, i32* %15, align 4
  %132 = or i32 %130, %131
  store i32 %132, i32* %15, align 4
  %133 = load i32, i32* %15, align 4
  %134 = load i32*, i32** %10, align 8
  %135 = load i32, i32* %18, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  store i32 %133, i32* %137, align 4
  %138 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %139 = load i32, i32* @FPHY, align 4
  %140 = load i32, i32* @PHY_TXPWR, align 4
  %141 = load i32, i32* %18, align 4
  %142 = icmp eq i32 %141, 0
  %143 = zext i1 %142 to i64
  %144 = select i1 %142, i32 65, i32 66
  %145 = trunc i32 %144 to i8
  %146 = load i32*, i32** %10, align 8
  %147 = load i32, i32* %18, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @RTPRINT(%struct.rtl_priv* %138, i32 %139, i32 %140, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8 signext %145, i32 %150)
  br label %152

152:                                              ; preds = %118
  %153 = load i32, i32* %18, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %18, align 4
  br label %90

155:                                              ; preds = %90
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv*) #1

declare dso_local i32 @RTPRINT(%struct.rtl_priv*, i32, i32, i8*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
