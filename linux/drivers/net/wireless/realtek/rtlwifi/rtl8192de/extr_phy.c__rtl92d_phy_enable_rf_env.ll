; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c__rtl92d_phy_enable_rf_env.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c__rtl92d_phy_enable_rf_env.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { %struct.bb_reg_def* }
%struct.bb_reg_def = type { i32, i32, i32, i32 }

@COMP_RF = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"====>\0A\00", align 1
@BRFSI_RFENV = common dso_local global i32 0, align 4
@B3WIREADDRESSLENGTH = common dso_local global i32 0, align 4
@B3WIREDATALENGTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"<====\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i64, i32*)* @_rtl92d_phy_enable_rf_env to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92d_phy_enable_rf_env(%struct.ieee80211_hw* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.rtl_priv*, align 8
  %8 = alloca %struct.rtl_phy*, align 8
  %9 = alloca %struct.bb_reg_def*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  store %struct.rtl_priv* %11, %struct.rtl_priv** %7, align 8
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %13 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %12, i32 0, i32 0
  store %struct.rtl_phy* %13, %struct.rtl_phy** %8, align 8
  %14 = load %struct.rtl_phy*, %struct.rtl_phy** %8, align 8
  %15 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %14, i32 0, i32 0
  %16 = load %struct.bb_reg_def*, %struct.bb_reg_def** %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %16, i64 %17
  store %struct.bb_reg_def* %18, %struct.bb_reg_def** %9, align 8
  %19 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %20 = load i32, i32* @COMP_RF, align 4
  %21 = load i32, i32* @DBG_LOUD, align 4
  %22 = call i32 @RT_TRACE(%struct.rtl_priv* %19, i32 %20, i32 %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %23 = load i64, i64* %5, align 8
  switch i64 %23, label %41 [
    i64 131, label %24
    i64 129, label %24
    i64 130, label %32
    i64 128, label %32
  ]

24:                                               ; preds = %3, %3
  %25 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %26 = load %struct.bb_reg_def*, %struct.bb_reg_def** %9, align 8
  %27 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @BRFSI_RFENV, align 4
  %30 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %25, i32 %28, i32 %29)
  %31 = load i32*, i32** %6, align 8
  store i32 %30, i32* %31, align 4
  br label %41

32:                                               ; preds = %3, %3
  %33 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %34 = load %struct.bb_reg_def*, %struct.bb_reg_def** %9, align 8
  %35 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @BRFSI_RFENV, align 4
  %38 = shl i32 %37, 16
  %39 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %33, i32 %36, i32 %38)
  %40 = load i32*, i32** %6, align 8
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %3, %32, %24
  %42 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %43 = load %struct.bb_reg_def*, %struct.bb_reg_def** %9, align 8
  %44 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @BRFSI_RFENV, align 4
  %47 = shl i32 %46, 16
  %48 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %42, i32 %45, i32 %47, i32 1)
  %49 = call i32 @udelay(i32 1)
  %50 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %51 = load %struct.bb_reg_def*, %struct.bb_reg_def** %9, align 8
  %52 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @BRFSI_RFENV, align 4
  %55 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %50, i32 %53, i32 %54, i32 1)
  %56 = call i32 @udelay(i32 1)
  %57 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %58 = load %struct.bb_reg_def*, %struct.bb_reg_def** %9, align 8
  %59 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @B3WIREADDRESSLENGTH, align 4
  %62 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %57, i32 %60, i32 %61, i32 0)
  %63 = call i32 @udelay(i32 1)
  %64 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %65 = load %struct.bb_reg_def*, %struct.bb_reg_def** %9, align 8
  %66 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @B3WIREDATALENGTH, align 4
  %69 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %64, i32 %67, i32 %68, i32 0)
  %70 = call i32 @udelay(i32 1)
  %71 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %72 = load i32, i32* @COMP_RF, align 4
  %73 = load i32, i32* @DBG_LOUD, align 4
  %74 = call i32 @RT_TRACE(%struct.rtl_priv* %71, i32 %72, i32 %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @rtl_get_bbreg(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
