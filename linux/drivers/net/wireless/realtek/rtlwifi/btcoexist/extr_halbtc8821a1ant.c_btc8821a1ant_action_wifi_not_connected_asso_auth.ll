; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a1ant.c_btc8821a1ant_action_wifi_not_connected_asso_auth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a1ant.c_btc8821a1ant_action_wifi_not_connected_asso_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btc_coexist = type { %struct.btc_bt_link_info }
%struct.btc_bt_link_info = type { i64, i64, i64, i64 }

@BTC_PS_WIFI_NATIVE = common dso_local global i32 0, align 4
@NORMAL_EXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*)* @btc8821a1ant_action_wifi_not_connected_asso_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8821a1ant_action_wifi_not_connected_asso_auth(%struct.btc_coexist* %0) #0 {
  %2 = alloca %struct.btc_coexist*, align 8
  %3 = alloca %struct.btc_bt_link_info*, align 8
  store %struct.btc_coexist* %0, %struct.btc_coexist** %2, align 8
  %4 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %5 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %4, i32 0, i32 0
  store %struct.btc_bt_link_info* %5, %struct.btc_bt_link_info** %3, align 8
  %6 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %7 = load i32, i32* @BTC_PS_WIFI_NATIVE, align 4
  %8 = call i32 @btc8821a1ant_power_save_state(%struct.btc_coexist* %6, i32 %7, i32 0, i32 0)
  %9 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %10 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %15 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %13, %1
  %19 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %20 = load i32, i32* @NORMAL_EXEC, align 4
  %21 = call i32 @btc8821a1ant_ps_tdma(%struct.btc_coexist* %19, i32 %20, i32 1, i32 14)
  %22 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %23 = load i32, i32* @NORMAL_EXEC, align 4
  %24 = call i32 @btc8821a1ant_coex_table_with_type(%struct.btc_coexist* %22, i32 %23, i32 1)
  br label %50

25:                                               ; preds = %13
  %26 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %27 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %32 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30, %25
  %36 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %37 = load i32, i32* @NORMAL_EXEC, align 4
  %38 = call i32 @btc8821a1ant_ps_tdma(%struct.btc_coexist* %36, i32 %37, i32 1, i32 20)
  %39 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %40 = load i32, i32* @NORMAL_EXEC, align 4
  %41 = call i32 @btc8821a1ant_coex_table_with_type(%struct.btc_coexist* %39, i32 %40, i32 4)
  br label %49

42:                                               ; preds = %30
  %43 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %44 = load i32, i32* @NORMAL_EXEC, align 4
  %45 = call i32 @btc8821a1ant_ps_tdma(%struct.btc_coexist* %43, i32 %44, i32 0, i32 8)
  %46 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %47 = load i32, i32* @NORMAL_EXEC, align 4
  %48 = call i32 @btc8821a1ant_coex_table_with_type(%struct.btc_coexist* %46, i32 %47, i32 2)
  br label %49

49:                                               ; preds = %42, %35
  br label %50

50:                                               ; preds = %49, %18
  ret void
}

declare dso_local i32 @btc8821a1ant_power_save_state(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8821a1ant_ps_tdma(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8821a1ant_coex_table_with_type(%struct.btc_coexist*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
