; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_dm.c_rtl88e_dm_rx_hw_antena_div_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_dm.c_rtl88e_dm_rx_hw_antena_div_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }

@DM_REG_ANTSEL_PIN_11N = common dso_local global i32 0, align 4
@MASKDWORD = common dso_local global i32 0, align 4
@DM_REG_PIN_CTRL_11N = common dso_local global i32 0, align 4
@DM_REG_RX_ANT_CTRL_11N = common dso_local global i32 0, align 4
@DM_REG_LNA_SWITCH_11N = common dso_local global i32 0, align 4
@DM_REG_ANTDIV_PARA1_11N = common dso_local global i32 0, align 4
@DM_REG_BB_PWR_SAV4_11N = common dso_local global i32 0, align 4
@DM_REG_CCK_ANTDIV_PARA2_11N = common dso_local global i32 0, align 4
@MAIN_ANT = common dso_local global i32 0, align 4
@DM_REG_ANT_MAPPING1_11N = common dso_local global i32 0, align 4
@MASKLWORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl88e_dm_rx_hw_antena_div_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl88e_dm_rx_hw_antena_div_init(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %4 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %5 = load i32, i32* @DM_REG_ANTSEL_PIN_11N, align 4
  %6 = load i32, i32* @MASKDWORD, align 4
  %7 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %4, i32 %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = load i32, i32* @DM_REG_ANTSEL_PIN_11N, align 4
  %10 = load i32, i32* @MASKDWORD, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @BIT(i32 23)
  %13 = call i32 @BIT(i32 25)
  %14 = or i32 %12, %13
  %15 = or i32 %11, %14
  %16 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %8, i32 %9, i32 %10, i32 %15)
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %18 = load i32, i32* @DM_REG_PIN_CTRL_11N, align 4
  %19 = call i32 @BIT(i32 9)
  %20 = call i32 @BIT(i32 8)
  %21 = or i32 %19, %20
  %22 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %17, i32 %18, i32 %21, i32 0)
  %23 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %24 = load i32, i32* @DM_REG_RX_ANT_CTRL_11N, align 4
  %25 = call i32 @BIT(i32 10)
  %26 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %23, i32 %24, i32 %25, i32 0)
  %27 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %28 = load i32, i32* @DM_REG_LNA_SWITCH_11N, align 4
  %29 = call i32 @BIT(i32 22)
  %30 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %27, i32 %28, i32 %29, i32 1)
  %31 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %32 = load i32, i32* @DM_REG_LNA_SWITCH_11N, align 4
  %33 = call i32 @BIT(i32 31)
  %34 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %31, i32 %32, i32 %33, i32 1)
  %35 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %36 = load i32, i32* @DM_REG_ANTDIV_PARA1_11N, align 4
  %37 = load i32, i32* @MASKDWORD, align 4
  %38 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %35, i32 %36, i32 %37, i32 160)
  %39 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %40 = load i32, i32* @DM_REG_BB_PWR_SAV4_11N, align 4
  %41 = call i32 @BIT(i32 7)
  %42 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %39, i32 %40, i32 %41, i32 1)
  %43 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %44 = load i32, i32* @DM_REG_CCK_ANTDIV_PARA2_11N, align 4
  %45 = call i32 @BIT(i32 4)
  %46 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %43, i32 %44, i32 %45, i32 1)
  %47 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %48 = load i32, i32* @MAIN_ANT, align 4
  %49 = call i32 @rtl88e_dm_update_rx_idle_ant(%struct.ieee80211_hw* %47, i32 %48)
  %50 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %51 = load i32, i32* @DM_REG_ANT_MAPPING1_11N, align 4
  %52 = load i32, i32* @MASKLWORD, align 4
  %53 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %50, i32 %51, i32 %52, i32 513)
  ret void
}

declare dso_local i32 @rtl_get_bbreg(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl88e_dm_update_rx_idle_ant(%struct.ieee80211_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
