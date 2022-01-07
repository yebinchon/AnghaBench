; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_phy.c__rtl92s_phy_config_bb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_phy.c__rtl92s_phy_config_bb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }

@AGCTAB_ARRAYLENGTH = common dso_local global i32 0, align 4
@rtl8192seagctab_array = common dso_local global i32* null, align 8
@PHY_REG_2T2RARRAYLENGTH = common dso_local global i32 0, align 4
@rtl8192sephy_reg_2t2rarray = common dso_local global i32* null, align 8
@BASEBAND_CONFIG_PHY_REG = common dso_local global i64 0, align 8
@MASKDWORD = common dso_local global i32 0, align 4
@BASEBAND_CONFIG_AGC_TAB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i64)* @_rtl92s_phy_config_bb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl92s_phy_config_bb(%struct.ieee80211_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i32, i32* @AGCTAB_ARRAYLENGTH, align 4
  store i32 %10, i32* %9, align 4
  %11 = load i32*, i32** @rtl8192seagctab_array, align 8
  store i32* %11, i32** %7, align 8
  %12 = load i32, i32* @PHY_REG_2T2RARRAYLENGTH, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i32*, i32** @rtl8192sephy_reg_2t2rarray, align 8
  store i32* %13, i32** %6, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @BASEBAND_CONFIG_PHY_REG, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %48

17:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %44, %17
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %47

22:                                               ; preds = %18
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @rtl_addr_delay(i32 %27)
  %29 = call i32 @udelay(i32 1)
  %30 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MASKDWORD, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @rtl92s_phy_set_bb_reg(%struct.ieee80211_hw* %30, i32 %35, i32 %36, i32 %42)
  br label %44

44:                                               ; preds = %22
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 2
  store i32 %46, i32* %5, align 4
  br label %18

47:                                               ; preds = %18
  br label %78

48:                                               ; preds = %2
  %49 = load i64, i64* %4, align 8
  %50 = load i64, i64* @BASEBAND_CONFIG_AGC_TAB, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %77

52:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %73, %52
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %76

57:                                               ; preds = %53
  %58 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @MASKDWORD, align 4
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @rtl92s_phy_set_bb_reg(%struct.ieee80211_hw* %58, i32 %63, i32 %64, i32 %70)
  %72 = call i32 @udelay(i32 1)
  br label %73

73:                                               ; preds = %57
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 2
  store i32 %75, i32* %5, align 4
  br label %53

76:                                               ; preds = %53
  br label %77

77:                                               ; preds = %76, %48
  br label %78

78:                                               ; preds = %77, %47
  ret i32 1
}

declare dso_local i32 @rtl_addr_delay(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @rtl92s_phy_set_bb_reg(%struct.ieee80211_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
