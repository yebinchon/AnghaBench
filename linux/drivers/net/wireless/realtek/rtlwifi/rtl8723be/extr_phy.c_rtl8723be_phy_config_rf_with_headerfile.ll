; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_phy.c_rtl8723be_phy_config_rf_with_headerfile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_phy.c_rtl8723be_phy_config_rf_with_headerfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_hal = type { i32 }

@COMP_INIT = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Radio No %x\0A\00", align 1
@RTL8723BE_RADIOA_1TARRAY = common dso_local global i32 0, align 4
@RTL8723BE_RADIOA_1TARRAYLEN = common dso_local global i32 0, align 4
@RT_CID_819X_HP = common dso_local global i32 0, align 4
@COMP_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"switch case %#x not processed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl8723be_phy_config_rf_with_headerfile(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_hal*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %8)
  store %struct.rtl_priv* %9, %struct.rtl_priv** %5, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  %12 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %11)
  store %struct.rtl_hal* %12, %struct.rtl_hal** %6, align 8
  store i32 1, i32* %7, align 4
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %14 = load i32, i32* @COMP_INIT, align 4
  %15 = load i32, i32* @DBG_LOUD, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @RT_TRACE(%struct.rtl_priv* %13, i32 %14, i32 %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %4, align 4
  switch i32 %18, label %40 [
    i32 131, label %19
    i32 130, label %33
    i32 129, label %33
    i32 128, label %34
  ]

19:                                               ; preds = %2
  %20 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %21 = load i32, i32* @RTL8723BE_RADIOA_1TARRAY, align 4
  %22 = load i32, i32* @RTL8723BE_RADIOA_1TARRAYLEN, align 4
  %23 = call i32 @rtl8723be_phy_config_with_headerfile(%struct.ieee80211_hw* %20, i32 %21, i32 %22, i32 (%struct.ieee80211_hw*, i32, i32)* @_rtl8723be_config_rf_radio_a)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %25 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @RT_CID_819X_HP, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %31 = call i32 @_rtl8723be_config_rf_radio_a(%struct.ieee80211_hw* %30, i32 82, i32 517309)
  br label %32

32:                                               ; preds = %29, %19
  br label %40

33:                                               ; preds = %2, %2
  br label %40

34:                                               ; preds = %2
  %35 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %36 = load i32, i32* @COMP_ERR, align 4
  %37 = load i32, i32* @DBG_LOUD, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @RT_TRACE(%struct.rtl_priv* %35, i32 %36, i32 %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %2, %34, %33, %32
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32) #1

declare dso_local i32 @rtl8723be_phy_config_with_headerfile(%struct.ieee80211_hw*, i32, i32, i32 (%struct.ieee80211_hw*, i32, i32)*) #1

declare dso_local i32 @_rtl8723be_config_rf_radio_a(%struct.ieee80211_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
