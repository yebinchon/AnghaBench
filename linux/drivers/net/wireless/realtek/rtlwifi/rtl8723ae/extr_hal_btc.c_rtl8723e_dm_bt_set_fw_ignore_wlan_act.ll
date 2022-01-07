; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hal_btc.c_rtl8723e_dm_bt_set_fw_ignore_wlan_act.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hal_btc.c_rtl8723e_dm_bt_set_fw_ignore_wlan_act.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"[BTCoex], BT Ignore Wlan_Act !!\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"[BTCoex], BT don't ignore Wlan_Act !!\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"[BTCoex], set FW for BT Ignore Wlan_Act, write 0x25=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32)* @rtl8723e_dm_bt_set_fw_ignore_wlan_act to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8723e_dm_bt_set_fw_ignore_wlan_act(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca [1 x i32], align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %7)
  store %struct.rtl_priv* %8, %struct.rtl_priv** %5, align 8
  %9 = bitcast [1 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 4, i1 false)
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %14 = load i32, i32* @COMP_BT_COEXIST, align 4
  %15 = load i32, i32* @DBG_TRACE, align 4
  %16 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %13, i32 %14, i32 %15, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 @BIT(i32 0)
  %18 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %17
  store i32 %20, i32* %18, align 4
  %21 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %22 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 0, i32* %23, align 4
  br label %29

24:                                               ; preds = %2
  %25 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %26 = load i32, i32* @COMP_BT_COEXIST, align 4
  %27 = load i32, i32* @DBG_TRACE, align 4
  %28 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %25, i32 %26, i32 %27, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %24, %12
  %30 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %31 = load i32, i32* @COMP_BT_COEXIST, align 4
  %32 = load i32, i32* @DBG_TRACE, align 4
  %33 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %30, i32 %31, i32 %32, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  %36 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %37 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %38 = call i32 @rtl8723e_fill_h2c_cmd(%struct.ieee80211_hw* %36, i32 37, i32 1, i32* %37)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl8723e_fill_h2c_cmd(%struct.ieee80211_hw*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
