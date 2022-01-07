; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_rf.c_rtl92ee_phy_rf6052_set_bandwidth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_rf.c_rtl92ee_phy_rf6052_set_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i32* }

@RF90_PATH_A = common dso_local global i32 0, align 4
@RF_CHNLBW = common dso_local global i32 0, align 4
@RFREG_OFFSET_MASK = common dso_local global i32 0, align 4
@RF90_PATH_B = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"unknown bandwidth: %#X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92ee_phy_rf6052_set_bandwidth(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_phy*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %7)
  store %struct.rtl_priv* %8, %struct.rtl_priv** %5, align 8
  %9 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %10 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %9, i32 0, i32 0
  store %struct.rtl_phy* %10, %struct.rtl_phy** %6, align 8
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %80 [
    i32 129, label %12
    i32 128, label %47
  ]

12:                                               ; preds = %2
  %13 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %14 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, -3073
  %19 = call i32 @BIT(i32 10)
  %20 = or i32 %18, %19
  %21 = call i32 @BIT(i32 11)
  %22 = or i32 %20, %21
  %23 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %24 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  store i32 %22, i32* %26, align 4
  %27 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %28 = load i32, i32* @RF90_PATH_A, align 4
  %29 = load i32, i32* @RF_CHNLBW, align 4
  %30 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %31 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %32 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %27, i32 %28, i32 %29, i32 %30, i32 %35)
  %37 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %38 = load i32, i32* @RF90_PATH_B, align 4
  %39 = load i32, i32* @RF_CHNLBW, align 4
  %40 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %41 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %42 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %37, i32 %38, i32 %39, i32 %40, i32 %45)
  br label %83

47:                                               ; preds = %2
  %48 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %49 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, -3073
  %54 = call i32 @BIT(i32 10)
  %55 = or i32 %53, %54
  %56 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %57 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  store i32 %55, i32* %59, align 4
  %60 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %61 = load i32, i32* @RF90_PATH_A, align 4
  %62 = load i32, i32* @RF_CHNLBW, align 4
  %63 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %64 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %65 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %60, i32 %61, i32 %62, i32 %63, i32 %68)
  %70 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %71 = load i32, i32* @RF90_PATH_B, align 4
  %72 = load i32, i32* @RF_CHNLBW, align 4
  %73 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %74 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %75 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %70, i32 %71, i32 %72, i32 %73, i32 %78)
  br label %83

80:                                               ; preds = %2
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %80, %47, %12
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl_set_rfreg(%struct.ieee80211_hw*, i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
