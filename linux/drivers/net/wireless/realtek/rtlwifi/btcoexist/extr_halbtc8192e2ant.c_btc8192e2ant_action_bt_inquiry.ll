; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8192e2ant.c_btc8192e2ant_action_bt_inquiry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8192e2ant.c_btc8192e2ant_action_bt_inquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32*)* }

@BTC_SET_ACT_DISABLE_LOW_POWER = common dso_local global i32 0, align 4
@NORMAL_EXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*)* @btc8192e2ant_action_bt_inquiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8192e2ant_action_bt_inquiry(%struct.btc_coexist* %0) #0 {
  %2 = alloca %struct.btc_coexist*, align 8
  %3 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %2, align 8
  store i32 1, i32* %3, align 4
  %4 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %5 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %4, i32 0, i32 0
  %6 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %5, align 8
  %7 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %8 = load i32, i32* @BTC_SET_ACT_DISABLE_LOW_POWER, align 4
  %9 = call i32 %6(%struct.btc_coexist* %7, i32 %8, i32* %3)
  %10 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %11 = load i32, i32* @NORMAL_EXEC, align 4
  %12 = call i32 @btc8192e2ant_switch_ss_type(%struct.btc_coexist* %10, i32 %11, i32 1)
  %13 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %14 = load i32, i32* @NORMAL_EXEC, align 4
  %15 = call i32 @btc8192e2ant_coex_table_with_type(%struct.btc_coexist* %13, i32 %14, i32 2)
  %16 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %17 = load i32, i32* @NORMAL_EXEC, align 4
  %18 = call i32 @btc8192e2ant_ps_tdma(%struct.btc_coexist* %16, i32 %17, i32 1, i32 3)
  %19 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %20 = load i32, i32* @NORMAL_EXEC, align 4
  %21 = call i32 @btc8192e2ant_fw_dac_swing_lvl(%struct.btc_coexist* %19, i32 %20, i32 6)
  %22 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %23 = load i32, i32* @NORMAL_EXEC, align 4
  %24 = call i32 @btc8192e2ant_dec_bt_pwr(%struct.btc_coexist* %22, i32 %23, i32 0)
  %25 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %26 = call i32 @btc8192e2ant_sw_mechanism1(%struct.btc_coexist* %25, i32 0, i32 0, i32 0, i32 0)
  %27 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %28 = call i32 @btc8192e2ant_sw_mechanism2(%struct.btc_coexist* %27, i32 0, i32 0, i32 0, i32 24)
  ret void
}

declare dso_local i32 @btc8192e2ant_switch_ss_type(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8192e2ant_coex_table_with_type(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8192e2ant_ps_tdma(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8192e2ant_fw_dac_swing_lvl(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8192e2ant_dec_bt_pwr(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8192e2ant_sw_mechanism1(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i32 @btc8192e2ant_sw_mechanism2(%struct.btc_coexist*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
