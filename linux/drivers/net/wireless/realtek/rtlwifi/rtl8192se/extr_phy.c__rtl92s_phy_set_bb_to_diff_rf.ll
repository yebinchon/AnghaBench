; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_phy.c__rtl92s_phy_set_bb_to_diff_rf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_phy.c__rtl92s_phy_set_bb_to_diff_rf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i64 }

@RF_1T1R = common dso_local global i64 0, align 8
@rtl8192sephy_changeto_1t1rarray = common dso_local global i32* null, align 8
@PHY_CHANGETO_1T1RARRAYLENGTH = common dso_local global i32 0, align 4
@RF_1T2R = common dso_local global i64 0, align 8
@rtl8192sephy_changeto_1t2rarray = common dso_local global i32* null, align 8
@PHY_CHANGETO_1T2RARRAYLENGTH = common dso_local global i32 0, align 4
@BASEBAND_CONFIG_PHY_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i64)* @_rtl92s_phy_set_bb_to_diff_rf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl92s_phy_set_bb_to_diff_rf(%struct.ieee80211_hw* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.rtl_priv*, align 8
  %7 = alloca %struct.rtl_phy*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  store %struct.rtl_priv* %12, %struct.rtl_priv** %6, align 8
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %14 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %13, i32 0, i32 0
  store %struct.rtl_phy* %14, %struct.rtl_phy** %7, align 8
  %15 = load %struct.rtl_phy*, %struct.rtl_phy** %7, align 8
  %16 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @RF_1T1R, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32*, i32** @rtl8192sephy_changeto_1t1rarray, align 8
  store i32* %21, i32** %8, align 8
  %22 = load i32, i32* @PHY_CHANGETO_1T1RARRAYLENGTH, align 4
  store i32 %22, i32* %9, align 4
  br label %34

23:                                               ; preds = %2
  %24 = load %struct.rtl_phy*, %struct.rtl_phy** %7, align 8
  %25 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @RF_1T2R, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32*, i32** @rtl8192sephy_changeto_1t2rarray, align 8
  store i32* %30, i32** %8, align 8
  %31 = load i32, i32* @PHY_CHANGETO_1T2RARRAYLENGTH, align 4
  store i32 %31, i32* %9, align 4
  br label %33

32:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %74

33:                                               ; preds = %29
  br label %34

34:                                               ; preds = %33, %20
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* @BASEBAND_CONFIG_PHY_REG, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %73

38:                                               ; preds = %34
  store i32 0, i32* %10, align 4
  br label %39

39:                                               ; preds = %69, %38
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %72

43:                                               ; preds = %39
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @rtl_addr_delay(i32 %48)
  %50 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 2
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @rtl92s_phy_set_bb_reg(%struct.ieee80211_hw* %50, i32 %55, i32 %61, i32 %67)
  br label %69

69:                                               ; preds = %43
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 3
  store i32 %71, i32* %10, align 4
  br label %39

72:                                               ; preds = %39
  br label %73

73:                                               ; preds = %72, %34
  store i32 1, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %32
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_addr_delay(i32) #1

declare dso_local i32 @rtl92s_phy_set_bb_reg(%struct.ieee80211_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
