; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_btc8821a2ant_init_coex_dm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_btc8821a2ant_init_coex_dm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btc_coexist = type { i32 }

@NORMAL_EXEC = common dso_local global i32 0, align 4
@BTC_PS_WIFI_NATIVE = common dso_local global i32 0, align 4
@FORCE_EXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*)* @btc8821a2ant_init_coex_dm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8821a2ant_init_coex_dm(%struct.btc_coexist* %0) #0 {
  %2 = alloca %struct.btc_coexist*, align 8
  store %struct.btc_coexist* %0, %struct.btc_coexist** %2, align 8
  %3 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %4 = load i32, i32* @NORMAL_EXEC, align 4
  %5 = call i32 @btc8821a2ant_coex_table_with_type(%struct.btc_coexist* %3, i32 %4, i32 0)
  %6 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %7 = load i32, i32* @BTC_PS_WIFI_NATIVE, align 4
  %8 = call i32 @btc8821a2ant_power_save_state(%struct.btc_coexist* %6, i32 %7, i32 0, i32 0)
  %9 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %10 = load i32, i32* @FORCE_EXEC, align 4
  %11 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %9, i32 %10, i32 0, i32 1)
  %12 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %13 = load i32, i32* @FORCE_EXEC, align 4
  %14 = call i32 @btc8821a2ant_fw_dac_swing_lvl(%struct.btc_coexist* %12, i32 %13, i32 6)
  %15 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %16 = load i32, i32* @FORCE_EXEC, align 4
  %17 = call i32 @btc8821a2ant_dec_bt_pwr(%struct.btc_coexist* %15, i32 %16, i32 0)
  %18 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %19 = call i32 @btc8821a2ant_sw_mechanism1(%struct.btc_coexist* %18, i32 0, i32 0, i32 0, i32 0)
  %20 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %21 = call i32 @btc8821a2ant_sw_mechanism2(%struct.btc_coexist* %20, i32 0, i32 0, i32 0, i32 24)
  ret void
}

declare dso_local i32 @btc8821a2ant_coex_table_with_type(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8821a2ant_power_save_state(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8821a2ant_fw_dac_swing_lvl(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8821a2ant_dec_bt_pwr(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8821a2ant_sw_mechanism1(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i32 @btc8821a2ant_sw_mechanism2(%struct.btc_coexist*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
