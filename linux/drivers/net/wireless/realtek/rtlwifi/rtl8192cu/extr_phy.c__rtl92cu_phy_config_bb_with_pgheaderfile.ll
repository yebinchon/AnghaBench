; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_phy.c__rtl92cu_phy_config_bb_with_pgheaderfile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_phy.c__rtl92cu_phy_config_bb_with_pgheaderfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32* }

@PHY_REG_PG = common dso_local global i64 0, align 8
@BASEBAND_CONFIG_PHY_REG = common dso_local global i64 0, align 8
@COMP_SEND = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"configtype != BaseBand_Config_PHY_REG\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_rtl92cu_phy_config_bb_with_pgheaderfile(%struct.ieee80211_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_phy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  store %struct.rtl_priv* %11, %struct.rtl_priv** %5, align 8
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %13 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %12, i32 0, i32 0
  store %struct.rtl_phy* %13, %struct.rtl_phy** %6, align 8
  %14 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %15 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %17 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i64, i64* @PHY_REG_PG, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %9, align 4
  %23 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %24 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i64, i64* @PHY_REG_PG, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %8, align 8
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* @BASEBAND_CONFIG_PHY_REG, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %68

33:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %64, %33
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %67

38:                                               ; preds = %34
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @rtl_addr_delay(i32 %43)
  %45 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 2
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @_rtl92c_store_pwrindex_diffrate_offset(%struct.ieee80211_hw* %45, i32 %50, i32 %56, i32 %62)
  br label %64

64:                                               ; preds = %38
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 3
  store i32 %66, i32* %7, align 4
  br label %34

67:                                               ; preds = %34
  br label %73

68:                                               ; preds = %2
  %69 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %70 = load i32, i32* @COMP_SEND, align 4
  %71 = load i32, i32* @DBG_TRACE, align 4
  %72 = call i32 @RT_TRACE(%struct.rtl_priv* %69, i32 %70, i32 %71, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %73

73:                                               ; preds = %68, %67
  ret i32 1
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_addr_delay(i32) #1

declare dso_local i32 @_rtl92c_store_pwrindex_diffrate_offset(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
