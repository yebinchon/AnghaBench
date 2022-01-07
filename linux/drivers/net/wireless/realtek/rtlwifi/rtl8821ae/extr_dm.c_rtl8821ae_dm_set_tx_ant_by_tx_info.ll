; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_dm.c_rtl8821ae_dm_set_tx_ant_by_tx_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_dm.c_rtl8821ae_dm_set_tx_ant_by_tx_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_efuse = type { i64 }
%struct.rtl_hal = type { i64 }
%struct.rtl_dm = type { %struct.fast_ant_training }
%struct.fast_ant_training = type { i32* }

@HARDWARE_TYPE_RTL8812AE = common dso_local global i64 0, align 8
@CG_TRX_HW_ANTDIV = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8821ae_dm_set_tx_ant_by_tx_info(%struct.ieee80211_hw* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.rtl_efuse*, align 8
  %8 = alloca %struct.rtl_hal*, align 8
  %9 = alloca %struct.rtl_dm*, align 8
  %10 = alloca %struct.fast_ant_training*, align 8
  %11 = alloca i32*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %13 = call i32 @rtl_priv(%struct.ieee80211_hw* %12)
  %14 = call %struct.rtl_efuse* @rtl_efuse(i32 %13)
  store %struct.rtl_efuse* %14, %struct.rtl_efuse** %7, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %16 = call i32 @rtl_priv(%struct.ieee80211_hw* %15)
  %17 = call %struct.rtl_hal* @rtl_hal(i32 %16)
  store %struct.rtl_hal* %17, %struct.rtl_hal** %8, align 8
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %19 = call i32 @rtl_priv(%struct.ieee80211_hw* %18)
  %20 = call %struct.rtl_dm* @rtl_dm(i32 %19)
  store %struct.rtl_dm* %20, %struct.rtl_dm** %9, align 8
  %21 = load %struct.rtl_dm*, %struct.rtl_dm** %9, align 8
  %22 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %21, i32 0, i32 0
  store %struct.fast_ant_training* %22, %struct.fast_ant_training** %10, align 8
  %23 = load i32*, i32** %5, align 8
  store i32* %23, i32** %11, align 8
  %24 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %25 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @HARDWARE_TYPE_RTL8812AE, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  br label %45

30:                                               ; preds = %3
  %31 = load %struct.rtl_efuse*, %struct.rtl_efuse** %7, align 8
  %32 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @CG_TRX_HW_ANTDIV, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %30
  %37 = load i32*, i32** %11, align 8
  %38 = load %struct.fast_ant_training*, %struct.fast_ant_training** %10, align 8
  %39 = getelementptr inbounds %struct.fast_ant_training, %struct.fast_ant_training* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @set_tx_desc_tx_ant(i32* %37, i32 %43)
  br label %45

45:                                               ; preds = %29, %36, %30
  ret void
}

declare dso_local %struct.rtl_efuse* @rtl_efuse(i32) #1

declare dso_local i32 @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(i32) #1

declare dso_local %struct.rtl_dm* @rtl_dm(i32) #1

declare dso_local i32 @set_tx_desc_tx_ant(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
