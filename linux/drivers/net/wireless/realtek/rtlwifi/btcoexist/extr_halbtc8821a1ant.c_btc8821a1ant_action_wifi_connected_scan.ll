; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a1ant.c_btc8821a1ant_action_wifi_connected_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a1ant.c_btc8821a1ant_action_wifi_connected_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.btc_coexist = type { %struct.btc_bt_link_info }
%struct.btc_bt_link_info = type { i64 }

@BTC_PS_WIFI_NATIVE = common dso_local global i32 0, align 4
@BT_8821A_1ANT_BT_STATUS_ACL_BUSY = common dso_local global i64 0, align 8
@coex_dm = common dso_local global %struct.TYPE_2__* null, align 8
@NORMAL_EXEC = common dso_local global i32 0, align 4
@BT_8821A_1ANT_BT_STATUS_SCO_BUSY = common dso_local global i64 0, align 8
@BT_8821A_1ANT_BT_STATUS_ACL_SCO_BUSY = common dso_local global i64 0, align 8
@BT_8821A_1ANT_WIFI_STATUS_CONNECTED_SCAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*)* @btc8821a1ant_action_wifi_connected_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8821a1ant_action_wifi_connected_scan(%struct.btc_coexist* %0) #0 {
  %2 = alloca %struct.btc_coexist*, align 8
  %3 = alloca %struct.btc_bt_link_info*, align 8
  store %struct.btc_coexist* %0, %struct.btc_coexist** %2, align 8
  %4 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %5 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %4, i32 0, i32 0
  store %struct.btc_bt_link_info* %5, %struct.btc_bt_link_info** %3, align 8
  %6 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %7 = load i32, i32* @BTC_PS_WIFI_NATIVE, align 4
  %8 = call i32 @btc8821a1ant_power_save_state(%struct.btc_coexist* %6, i32 %7, i32 0, i32 0)
  %9 = load i64, i64* @BT_8821A_1ANT_BT_STATUS_ACL_BUSY, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %9, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %1
  %15 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %16 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %21 = load i32, i32* @NORMAL_EXEC, align 4
  %22 = call i32 @btc8821a1ant_ps_tdma(%struct.btc_coexist* %20, i32 %21, i32 1, i32 14)
  %23 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %24 = load i32, i32* @NORMAL_EXEC, align 4
  %25 = call i32 @btc8821a1ant_coex_table_with_type(%struct.btc_coexist* %23, i32 %24, i32 1)
  br label %33

26:                                               ; preds = %14
  %27 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %28 = load i32, i32* @NORMAL_EXEC, align 4
  %29 = call i32 @btc8821a1ant_ps_tdma(%struct.btc_coexist* %27, i32 %28, i32 1, i32 20)
  %30 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %31 = load i32, i32* @NORMAL_EXEC, align 4
  %32 = call i32 @btc8821a1ant_coex_table_with_type(%struct.btc_coexist* %30, i32 %31, i32 4)
  br label %33

33:                                               ; preds = %26, %19
  br label %58

34:                                               ; preds = %1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @BT_8821A_1ANT_BT_STATUS_SCO_BUSY, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @BT_8821A_1ANT_BT_STATUS_ACL_SCO_BUSY, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %40, %34
  %47 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %48 = load i32, i32* @BT_8821A_1ANT_WIFI_STATUS_CONNECTED_SCAN, align 4
  %49 = call i32 @btc8821a1ant_act_bt_sco_hid_only_busy(%struct.btc_coexist* %47, i32 %48)
  br label %57

50:                                               ; preds = %40
  %51 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %52 = load i32, i32* @NORMAL_EXEC, align 4
  %53 = call i32 @btc8821a1ant_ps_tdma(%struct.btc_coexist* %51, i32 %52, i32 0, i32 8)
  %54 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %55 = load i32, i32* @NORMAL_EXEC, align 4
  %56 = call i32 @btc8821a1ant_coex_table_with_type(%struct.btc_coexist* %54, i32 %55, i32 2)
  br label %57

57:                                               ; preds = %50, %46
  br label %58

58:                                               ; preds = %57, %33
  ret void
}

declare dso_local i32 @btc8821a1ant_power_save_state(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8821a1ant_ps_tdma(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8821a1ant_coex_table_with_type(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8821a1ant_act_bt_sco_hid_only_busy(%struct.btc_coexist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
