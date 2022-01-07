; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8812ae_phy_get_txpower_by_rate_base_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8812ae_phy_get_txpower_by_rate_base_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }

@BAND_ON_2_4G = common dso_local global i32 0, align 4
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"Wrong rate 0x%x to obtain index in 2.4G in PHY_GetTxPowerByRateBaseIndex()\0A\00", align 1
@BAND_ON_5G = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [74 x i8] c"Wrong rate 0x%x to obtain index in 5G in PHY_GetTxPowerByRateBaseIndex()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32, i32)* @_rtl8812ae_phy_get_txpower_by_rate_base_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl8812ae_phy_get_txpower_by_rate_base_index(%struct.ieee80211_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtl_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  store %struct.rtl_priv* %10, %struct.rtl_priv** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @BAND_ON_2_4G, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %20 [
    i32 172, label %16
    i32 170, label %16
    i32 166, label %16
    i32 175, label %16
    i32 165, label %17
    i32 164, label %17
    i32 174, label %17
    i32 173, label %17
    i32 171, label %17
    i32 169, label %17
    i32 168, label %17
    i32 167, label %17
    i32 163, label %18
    i32 162, label %18
    i32 155, label %18
    i32 154, label %18
    i32 153, label %18
    i32 152, label %18
    i32 151, label %18
    i32 150, label %18
    i32 149, label %19
    i32 148, label %19
    i32 161, label %19
    i32 160, label %19
    i32 159, label %19
    i32 158, label %19
    i32 157, label %19
    i32 156, label %19
  ]

16:                                               ; preds = %14, %14, %14, %14
  store i32 0, i32* %8, align 4
  br label %26

17:                                               ; preds = %14, %14, %14, %14, %14, %14, %14, %14
  store i32 1, i32* %8, align 4
  br label %26

18:                                               ; preds = %14, %14, %14, %14, %14, %14, %14, %14
  store i32 2, i32* %8, align 4
  br label %26

19:                                               ; preds = %14, %14, %14, %14, %14, %14, %14, %14
  store i32 3, i32* %8, align 4
  br label %26

20:                                               ; preds = %14
  %21 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %22 = load i32, i32* @COMP_INIT, align 4
  %23 = load i32, i32* @DBG_LOUD, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @RT_TRACE(%struct.rtl_priv* %21, i32 %22, i32 %23, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %20, %19, %18, %17, %16
  br label %46

27:                                               ; preds = %3
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @BAND_ON_5G, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %27
  %32 = load i32, i32* %6, align 4
  switch i32 %32, label %38 [
    i32 165, label %33
    i32 164, label %33
    i32 174, label %33
    i32 173, label %33
    i32 171, label %33
    i32 169, label %33
    i32 168, label %33
    i32 167, label %33
    i32 163, label %34
    i32 162, label %34
    i32 155, label %34
    i32 154, label %34
    i32 153, label %34
    i32 152, label %34
    i32 151, label %34
    i32 150, label %34
    i32 149, label %35
    i32 148, label %35
    i32 161, label %35
    i32 160, label %35
    i32 159, label %35
    i32 158, label %35
    i32 157, label %35
    i32 156, label %35
    i32 147, label %36
    i32 146, label %36
    i32 145, label %36
    i32 144, label %36
    i32 143, label %36
    i32 142, label %36
    i32 141, label %36
    i32 140, label %36
    i32 139, label %36
    i32 138, label %36
    i32 137, label %37
    i32 136, label %37
    i32 135, label %37
    i32 134, label %37
    i32 133, label %37
    i32 132, label %37
    i32 131, label %37
    i32 130, label %37
    i32 129, label %37
    i32 128, label %37
  ]

33:                                               ; preds = %31, %31, %31, %31, %31, %31, %31, %31
  store i32 0, i32* %8, align 4
  br label %44

34:                                               ; preds = %31, %31, %31, %31, %31, %31, %31, %31
  store i32 1, i32* %8, align 4
  br label %44

35:                                               ; preds = %31, %31, %31, %31, %31, %31, %31, %31
  store i32 2, i32* %8, align 4
  br label %44

36:                                               ; preds = %31, %31, %31, %31, %31, %31, %31, %31, %31, %31
  store i32 3, i32* %8, align 4
  br label %44

37:                                               ; preds = %31, %31, %31, %31, %31, %31, %31, %31, %31, %31
  store i32 4, i32* %8, align 4
  br label %44

38:                                               ; preds = %31
  %39 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %40 = load i32, i32* @COMP_INIT, align 4
  %41 = load i32, i32* @DBG_LOUD, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @RT_TRACE(%struct.rtl_priv* %39, i32 %40, i32 %41, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %38, %37, %36, %35, %34, %33
  br label %45

45:                                               ; preds = %44, %27
  br label %46

46:                                               ; preds = %45, %26
  %47 = load i32, i32* %8, align 4
  ret i32 %47
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
