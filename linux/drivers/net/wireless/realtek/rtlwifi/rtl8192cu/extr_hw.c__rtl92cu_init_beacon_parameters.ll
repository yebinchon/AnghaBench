; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_hw.c__rtl92cu_init_beacon_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_hw.c__rtl92cu_init_beacon_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_hal = type { i32 }

@REG_BCN_CTRL = common dso_local global i32 0, align 4
@REG_TBTT_PROHIBIT = common dso_local global i32 0, align 4
@REG_DRVERLYINT = common dso_local global i32 0, align 4
@DRIVER_EARLY_INT_TIME = common dso_local global i32 0, align 4
@REG_BCNDMATIM = common dso_local global i32 0, align 4
@BCN_DMA_ATIME_INT_TIME = common dso_local global i32 0, align 4
@REG_BCNTCFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl92cu_init_beacon_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92cu_init_beacon_parameters(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_hal*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %6 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %5)
  store %struct.rtl_priv* %6, %struct.rtl_priv** %3, align 8
  %7 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %8 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %7)
  store %struct.rtl_hal* %8, %struct.rtl_hal** %4, align 8
  %9 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %10 = load i32, i32* @REG_BCN_CTRL, align 4
  %11 = call i32 @rtl_write_word(%struct.rtl_priv* %9, i32 %10, i32 4112)
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %13 = load i32, i32* @REG_TBTT_PROHIBIT, align 4
  %14 = call i32 @rtl_write_word(%struct.rtl_priv* %12, i32 %13, i32 25604)
  %15 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %16 = load i32, i32* @REG_DRVERLYINT, align 4
  %17 = load i32, i32* @DRIVER_EARLY_INT_TIME, align 4
  %18 = call i32 @rtl_write_byte(%struct.rtl_priv* %15, i32 %16, i32 %17)
  %19 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %20 = load i32, i32* @REG_BCNDMATIM, align 4
  %21 = load i32, i32* @BCN_DMA_ATIME_INT_TIME, align 4
  %22 = call i32 @rtl_write_byte(%struct.rtl_priv* %19, i32 %20, i32 %21)
  %23 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %24 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @IS_NORMAL_CHIP(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %1
  %29 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %30 = load i32, i32* @REG_BCNTCFG, align 4
  %31 = call i32 @rtl_write_word(%struct.rtl_priv* %29, i32 %30, i32 26127)
  br label %36

32:                                               ; preds = %1
  %33 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %34 = load i32, i32* @REG_BCNTCFG, align 4
  %35 = call i32 @rtl_write_word(%struct.rtl_priv* %33, i32 %34, i32 26367)
  br label %36

36:                                               ; preds = %32, %28
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @rtl_write_word(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i64 @IS_NORMAL_CHIP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
