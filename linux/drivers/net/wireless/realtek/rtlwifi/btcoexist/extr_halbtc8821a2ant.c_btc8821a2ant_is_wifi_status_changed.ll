; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_btc8821a2ant_is_wifi_status_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_btc8821a2ant_is_wifi_status_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32*)* }

@btc8821a2ant_is_wifi_status_changed.pre_wifi_busy = internal global i32 1, align 4
@btc8821a2ant_is_wifi_status_changed.pre_under_4way = internal global i32 1, align 4
@btc8821a2ant_is_wifi_status_changed.pre_bt_hs_on = internal global i32 1, align 4
@BTC_RSSI_STATE_HIGH = common dso_local global i64 0, align 8
@BTC_GET_BL_WIFI_CONNECTED = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_BUSY = common dso_local global i32 0, align 4
@BTC_GET_BL_HS_OPERATION = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_4_WAY_PROGRESS = common dso_local global i32 0, align 4
@BT_8821A_2ANT_WIFI_RSSI_COEXSWITCH_THRES = common dso_local global i32 0, align 4
@BTC_RSSI_STATE_LOW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btc_coexist*)* @btc8821a2ant_is_wifi_status_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btc8821a2ant_is_wifi_status_changed(%struct.btc_coexist* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btc_coexist*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.btc_coexist* %0, %struct.btc_coexist** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i64, i64* @BTC_RSSI_STATE_HIGH, align 8
  store i64 %9, i64* %8, align 8
  %10 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %11 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %10, i32 0, i32 0
  %12 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %11, align 8
  %13 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %14 = load i32, i32* @BTC_GET_BL_WIFI_CONNECTED, align 4
  %15 = call i32 %12(%struct.btc_coexist* %13, i32 %14, i32* %7)
  %16 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %17 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %16, i32 0, i32 0
  %18 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %17, align 8
  %19 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %20 = load i32, i32* @BTC_GET_BL_WIFI_BUSY, align 4
  %21 = call i32 %18(%struct.btc_coexist* %19, i32 %20, i32* %4)
  %22 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %23 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %22, i32 0, i32 0
  %24 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %23, align 8
  %25 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %26 = load i32, i32* @BTC_GET_BL_HS_OPERATION, align 4
  %27 = call i32 %24(%struct.btc_coexist* %25, i32 %26, i32* %6)
  %28 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %29 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %28, i32 0, i32 0
  %30 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %29, align 8
  %31 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %32 = load i32, i32* @BTC_GET_BL_WIFI_4_WAY_PROGRESS, align 4
  %33 = call i32 %30(%struct.btc_coexist* %31, i32 %32, i32* %5)
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %67

36:                                               ; preds = %1
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @btc8821a2ant_is_wifi_status_changed.pre_wifi_busy, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* @btc8821a2ant_is_wifi_status_changed.pre_wifi_busy, align 4
  store i32 1, i32* %2, align 4
  br label %68

42:                                               ; preds = %36
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @btc8821a2ant_is_wifi_status_changed.pre_under_4way, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* @btc8821a2ant_is_wifi_status_changed.pre_under_4way, align 4
  store i32 1, i32* %2, align 4
  br label %68

48:                                               ; preds = %42
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @btc8821a2ant_is_wifi_status_changed.pre_bt_hs_on, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* @btc8821a2ant_is_wifi_status_changed.pre_bt_hs_on, align 4
  store i32 1, i32* %2, align 4
  br label %68

54:                                               ; preds = %48
  %55 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %56 = load i32, i32* @BT_8821A_2ANT_WIFI_RSSI_COEXSWITCH_THRES, align 4
  %57 = call i64 @btc8821a2ant_wifi_rssi_state(%struct.btc_coexist* %55, i32 3, i32 2, i32 %56, i32 0)
  store i64 %57, i64* %8, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* @BTC_RSSI_STATE_HIGH, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %54
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* @BTC_RSSI_STATE_LOW, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61, %54
  store i32 1, i32* %2, align 4
  br label %68

66:                                               ; preds = %61
  br label %67

67:                                               ; preds = %66, %1
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %65, %52, %46, %40
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i64 @btc8821a2ant_wifi_rssi_state(%struct.btc_coexist*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
