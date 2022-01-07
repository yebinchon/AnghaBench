; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hal_btc.c_rtl8723e_dm_bt_set_coex_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hal_btc.c_rtl8723e_dm_bt_set_coex_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }

@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"set coex table, set 0x6c0=0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"set coex table, set 0x6c8=0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"set coex table, set 0x6cc=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32, i32)* @rtl8723e_dm_bt_set_coex_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8723e_dm_bt_set_coex_table(%struct.ieee80211_hw* %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %13 = load i32, i32* @COMP_BT_COEXIST, align 4
  %14 = load i32, i32* @DBG_TRACE, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @RT_TRACE(%struct.rtl_priv* %12, i32 %13, i32 %14, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @rtl_write_dword(%struct.rtl_priv* %17, i32 1728, i32 %18)
  %20 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %21 = load i32, i32* @COMP_BT_COEXIST, align 4
  %22 = load i32, i32* @DBG_TRACE, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @RT_TRACE(%struct.rtl_priv* %20, i32 %21, i32 %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @rtl_write_dword(%struct.rtl_priv* %25, i32 1736, i32 %26)
  %28 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %29 = load i32, i32* @COMP_BT_COEXIST, align 4
  %30 = load i32, i32* @DBG_TRACE, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @RT_TRACE(%struct.rtl_priv* %28, i32 %29, i32 %30, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  %33 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @rtl_write_byte(%struct.rtl_priv* %33, i32 1740, i32 %34)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
