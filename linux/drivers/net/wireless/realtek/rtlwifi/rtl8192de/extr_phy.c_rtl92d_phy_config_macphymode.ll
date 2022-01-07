; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c_rtl92d_phy_config_macphymode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c_rtl92d_phy_config_macphymode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_hal = type { i32 }

@REG_MAC_PHY_CTRL_NORMAL = common dso_local global i32 0, align 4
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"MacPhyMode: DUALMAC_DUALPHY\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"MacPhyMode: SINGLEMAC_SINGLEPHY\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"MacPhyMode: DUALMAC_SINGLEPHY\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92d_phy_config_macphymode(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_hal*, align 8
  %5 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %7 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %6)
  store %struct.rtl_priv* %7, %struct.rtl_priv** %3, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %8)
  %10 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %9)
  store %struct.rtl_hal* %10, %struct.rtl_hal** %4, align 8
  %11 = load i32, i32* @REG_MAC_PHY_CTRL_NORMAL, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %13 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %39 [
    i32 130, label %15
    i32 128, label %23
    i32 129, label %31
  ]

15:                                               ; preds = %1
  %16 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %17 = load i32, i32* @COMP_INIT, align 4
  %18 = load i32, i32* @DBG_LOUD, align 4
  %19 = call i32 @RT_TRACE(%struct.rtl_priv* %16, i32 %17, i32 %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @rtl_write_byte(%struct.rtl_priv* %20, i32 %21, i32 243)
  br label %39

23:                                               ; preds = %1
  %24 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %25 = load i32, i32* @COMP_INIT, align 4
  %26 = load i32, i32* @DBG_LOUD, align 4
  %27 = call i32 @RT_TRACE(%struct.rtl_priv* %24, i32 %25, i32 %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @rtl_write_byte(%struct.rtl_priv* %28, i32 %29, i32 244)
  br label %39

31:                                               ; preds = %1
  %32 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %33 = load i32, i32* @COMP_INIT, align 4
  %34 = load i32, i32* @DBG_LOUD, align 4
  %35 = call i32 @RT_TRACE(%struct.rtl_priv* %32, i32 %33, i32 %34, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %36 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @rtl_write_byte(%struct.rtl_priv* %36, i32 %37, i32 241)
  br label %39

39:                                               ; preds = %1, %31, %23, %15
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
