; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_phy.c__rtl8723e_phy_config_bb_with_pgheaderfile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_phy.c__rtl8723e_phy_config_bb_with_pgheaderfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }

@RTL8723E_PHY_REG_ARRAY_PGLENGTH = common dso_local global i32 0, align 4
@RTL8723EPHY_REG_ARRAY_PG = common dso_local global i32* null, align 8
@BASEBAND_CONFIG_PHY_REG = common dso_local global i64 0, align 8
@COMP_SEND = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"configtype != BaseBand_Config_PHY_REG\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i64)* @_rtl8723e_phy_config_bb_with_pgheaderfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl8723e_phy_config_bb_with_pgheaderfile(%struct.ieee80211_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  store %struct.rtl_priv* %10, %struct.rtl_priv** %5, align 8
  %11 = load i32, i32* @RTL8723E_PHY_REG_ARRAY_PGLENGTH, align 4
  store i32 %11, i32* %8, align 4
  %12 = load i32*, i32** @RTL8723EPHY_REG_ARRAY_PG, align 8
  store i32* %12, i32** %7, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @BASEBAND_CONFIG_PHY_REG, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %104

16:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %100, %16
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %103

21:                                               ; preds = %17
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 254
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = call i32 @mdelay(i32 50)
  br label %80

30:                                               ; preds = %21
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 253
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = call i32 @mdelay(i32 5)
  br label %79

39:                                               ; preds = %30
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 252
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = call i32 @mdelay(i32 1)
  br label %78

48:                                               ; preds = %39
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 251
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = call i32 @udelay(i32 50)
  br label %77

57:                                               ; preds = %48
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 250
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = call i32 @udelay(i32 5)
  br label %76

66:                                               ; preds = %57
  %67 = load i32*, i32** %7, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 249
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = call i32 @udelay(i32 1)
  br label %75

75:                                               ; preds = %73, %66
  br label %76

76:                                               ; preds = %75, %64
  br label %77

77:                                               ; preds = %76, %55
  br label %78

78:                                               ; preds = %77, %46
  br label %79

79:                                               ; preds = %78, %37
  br label %80

80:                                               ; preds = %79, %28
  %81 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %82 = load i32*, i32** %7, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %7, align 8
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %7, align 8
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 2
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @store_pwrindex_diffrate_offset(%struct.ieee80211_hw* %81, i32 %86, i32 %92, i32 %98)
  br label %100

100:                                              ; preds = %80
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 3
  store i32 %102, i32* %6, align 4
  br label %17

103:                                              ; preds = %17
  br label %109

104:                                              ; preds = %2
  %105 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %106 = load i32, i32* @COMP_SEND, align 4
  %107 = load i32, i32* @DBG_TRACE, align 4
  %108 = call i32 @RT_TRACE(%struct.rtl_priv* %105, i32 %106, i32 %107, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %109

109:                                              ; preds = %104, %103
  ret i32 1
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @store_pwrindex_diffrate_offset(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
