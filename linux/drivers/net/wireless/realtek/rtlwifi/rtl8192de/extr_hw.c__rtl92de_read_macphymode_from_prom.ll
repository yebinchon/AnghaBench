; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_hw.c__rtl92de_read_macphymode_from_prom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_hw.c__rtl92de_read_macphymode_from_prom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_hal = type { i32 }

@EEPROM_MAC_FUNCTION = common dso_local global i64 0, align 8
@SINGLEMAC_SINGLEPHY = common dso_local global i32 0, align 4
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"MacPhyMode SINGLEMAC_SINGLEPHY\0A\00", align 1
@DUALMAC_DUALPHY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"MacPhyMode DUALMAC_DUALPHY\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32*)* @_rtl92de_read_macphymode_from_prom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92de_read_macphymode_from_prom(%struct.ieee80211_hw* %0, i32* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_hal*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %8)
  store %struct.rtl_priv* %9, %struct.rtl_priv** %5, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  %12 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %11)
  store %struct.rtl_hal* %12, %struct.rtl_hal** %6, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = load i64, i64* @EEPROM_MAC_FUNCTION, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @BIT(i32 3)
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load i32, i32* @SINGLEMAC_SINGLEPHY, align 4
  %23 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %24 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %26 = load i32, i32* @COMP_INIT, align 4
  %27 = load i32, i32* @DBG_LOUD, align 4
  %28 = call i32 @RT_TRACE(%struct.rtl_priv* %25, i32 %26, i32 %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %37

29:                                               ; preds = %2
  %30 = load i32, i32* @DUALMAC_DUALPHY, align 4
  %31 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %32 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %34 = load i32, i32* @COMP_INIT, align 4
  %35 = load i32, i32* @DBG_LOUD, align 4
  %36 = call i32 @RT_TRACE(%struct.rtl_priv* %33, i32 %34, i32 %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %29, %21
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
