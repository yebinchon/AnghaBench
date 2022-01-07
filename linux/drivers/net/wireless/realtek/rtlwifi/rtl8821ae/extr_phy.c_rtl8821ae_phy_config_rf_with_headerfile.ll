; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c_rtl8821ae_phy_config_rf_with_headerfile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c_rtl8821ae_phy_config_rf_with_headerfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }

@RTL8821AE_RADIOA_1TARRAYLEN = common dso_local global i32 0, align 4
@RTL8821AE_RADIOA_ARRAY = common dso_local global i32* null, align 8
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Radio_A:RTL8821AE_RADIOA_ARRAY %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Radio No %x\0A\00", align 1
@_rtl8821ae_config_rf_radio_a = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"switch case %#x not processed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl8821ae_phy_config_rf_with_headerfile(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtl_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  store %struct.rtl_priv* %11, %struct.rtl_priv** %9, align 8
  %12 = load i32, i32* @RTL8821AE_RADIOA_1TARRAYLEN, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i32*, i32** @RTL8821AE_RADIOA_ARRAY, align 8
  store i32* %13, i32** %7, align 8
  %14 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %15 = load i32, i32* @COMP_INIT, align 4
  %16 = load i32, i32* @DBG_LOUD, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @RT_TRACE(%struct.rtl_priv* %14, i32 %15, i32 %16, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %20 = load i32, i32* @COMP_INIT, align 4
  %21 = load i32, i32* @DBG_LOUD, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @RT_TRACE(%struct.rtl_priv* %19, i32 %20, i32 %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  store i32 1, i32* %6, align 4
  %24 = load i32, i32* %5, align 4
  switch i32 %24, label %34 [
    i32 131, label %25
    i32 130, label %31
    i32 129, label %31
    i32 128, label %31
  ]

25:                                               ; preds = %2
  %26 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @_rtl8821ae_config_rf_radio_a, align 4
  %30 = call i32 @__rtl8821ae_phy_config_with_headerfile(%struct.ieee80211_hw* %26, i32* %27, i32 %28, i32 %29)
  store i32 %30, i32* %3, align 4
  br label %35

31:                                               ; preds = %2, %2, %2
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %2, %31
  store i32 1, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %25
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32) #1

declare dso_local i32 @__rtl8821ae_phy_config_with_headerfile(%struct.ieee80211_hw*, i32*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
