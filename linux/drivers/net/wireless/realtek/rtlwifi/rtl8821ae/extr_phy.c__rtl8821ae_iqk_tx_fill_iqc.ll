; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8821ae_iqk_tx_fill_iqc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8821ae_iqk_tx_fill_iqc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }

@COMP_IQK = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"TX_X = %x;;TX_Y = %x =====> fill to IQC\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"0xcd4 = %x;;0xccc = %x ====>fill to IQC\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32, i32)* @_rtl8821ae_iqk_tx_fill_iqc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8821ae_iqk_tx_fill_iqc(%struct.ieee80211_hw* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtl_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  store %struct.rtl_priv* %11, %struct.rtl_priv** %9, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %43 [
    i32 128, label %13
  ]

13:                                               ; preds = %4
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %15 = call i32 @BIT(i32 31)
  %16 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %14, i32 2092, i32 %15, i32 1)
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %18 = call i32 @rtl_write_dword(%struct.rtl_priv* %17, i32 3216, i32 128)
  %19 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %20 = call i32 @rtl_write_dword(%struct.rtl_priv* %19, i32 3268, i32 537133056)
  %21 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %22 = call i32 @rtl_write_dword(%struct.rtl_priv* %21, i32 3272, i32 536870912)
  %23 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %23, i32 3276, i32 2047, i32 %24)
  %26 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %26, i32 3284, i32 2047, i32 %27)
  %29 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %30 = load i32, i32* @COMP_IQK, align 4
  %31 = load i32, i32* @DBG_LOUD, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @RT_TRACE(%struct.rtl_priv* %29, i32 %30, i32 %31, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %36 = load i32, i32* @COMP_IQK, align 4
  %37 = load i32, i32* @DBG_LOUD, align 4
  %38 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %39 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %38, i32 3284, i32 2047)
  %40 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %41 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %40, i32 3276, i32 2047)
  %42 = call i32 @RT_TRACE(%struct.rtl_priv* %35, i32 %36, i32 %37, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %41)
  br label %44

43:                                               ; preds = %4
  br label %44

44:                                               ; preds = %43, %13
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @rtl_get_bbreg(%struct.ieee80211_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
