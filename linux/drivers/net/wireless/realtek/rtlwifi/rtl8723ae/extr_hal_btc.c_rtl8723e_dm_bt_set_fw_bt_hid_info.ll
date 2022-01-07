; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hal_btc.c_rtl8723e_dm_bt_set_fw_bt_hid_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hal_btc.c_rtl8723e_dm_bt_set_fw_bt_hid_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"[BTCoex], Set BT HID information=0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"[BTCoex], write 0x24=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32)* @rtl8723e_dm_bt_set_fw_bt_hid_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8723e_dm_bt_set_fw_bt_hid_info(%struct.ieee80211_hw* %0, i32 %1) #0 {
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
  %10 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = call i32 @BIT(i32 0)
  %15 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %14
  store i32 %17, i32* %15, align 4
  %18 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %19 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 0, i32* %20, align 4
  br label %21

21:                                               ; preds = %13, %2
  %22 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %23 = load i32, i32* @COMP_BT_COEXIST, align 4
  %24 = load i32, i32* @DBG_TRACE, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @RT_TRACE(%struct.rtl_priv* %22, i32 %23, i32 %24, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %28 = load i32, i32* @COMP_BT_COEXIST, align 4
  %29 = load i32, i32* @DBG_TRACE, align 4
  %30 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @RT_TRACE(%struct.rtl_priv* %27, i32 %28, i32 %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %34 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %35 = call i32 @rtl8723e_fill_h2c_cmd(%struct.ieee80211_hw* %33, i32 36, i32 1, i32* %34)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32) #1

declare dso_local i32 @rtl8723e_fill_h2c_cmd(%struct.ieee80211_hw*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
