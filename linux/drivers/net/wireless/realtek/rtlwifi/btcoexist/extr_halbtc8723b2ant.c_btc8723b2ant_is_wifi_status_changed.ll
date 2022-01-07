; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b2ant.c_btc8723b2ant_is_wifi_status_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b2ant.c_btc8723b2ant_is_wifi_status_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32*)* }

@btc8723b2ant_is_wifi_status_changed.pre_wifi_busy = internal global i32 0, align 4
@btc8723b2ant_is_wifi_status_changed.pre_under_4way = internal global i32 0, align 4
@btc8723b2ant_is_wifi_status_changed.pre_bt_hs_on = internal global i32 0, align 4
@BTC_RSSI_STATE_HIGH = common dso_local global i64 0, align 8
@BTC_GET_BL_WIFI_CONNECTED = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_BUSY = common dso_local global i32 0, align 4
@BTC_GET_BL_HS_OPERATION = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_4_WAY_PROGRESS = common dso_local global i32 0, align 4
@BT_8723B_2ANT_WIFI_RSSI_COEXSWITCH_THRES = common dso_local global i64 0, align 8
@coex_dm = common dso_local global %struct.TYPE_2__* null, align 8
@BTC_RSSI_STATE_LOW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btc_coexist*)* @btc8723b2ant_is_wifi_status_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btc8723b2ant_is_wifi_status_changed(%struct.btc_coexist* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btc_coexist*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.btc_coexist* %0, %struct.btc_coexist** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load i64, i64* @BTC_RSSI_STATE_HIGH, align 8
  store i64 %10, i64* %8, align 8
  %11 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %12 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %11, i32 0, i32 0
  %13 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %12, align 8
  %14 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %15 = load i32, i32* @BTC_GET_BL_WIFI_CONNECTED, align 4
  %16 = call i32 %13(%struct.btc_coexist* %14, i32 %15, i32* %7)
  %17 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %18 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %17, i32 0, i32 0
  %19 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %18, align 8
  %20 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %21 = load i32, i32* @BTC_GET_BL_WIFI_BUSY, align 4
  %22 = call i32 %19(%struct.btc_coexist* %20, i32 %21, i32* %4)
  %23 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %24 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %23, i32 0, i32 0
  %25 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %24, align 8
  %26 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %27 = load i32, i32* @BTC_GET_BL_HS_OPERATION, align 4
  %28 = call i32 %25(%struct.btc_coexist* %26, i32 %27, i32* %6)
  %29 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %30 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %29, i32 0, i32 0
  %31 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %30, align 8
  %32 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %33 = load i32, i32* @BTC_GET_BL_WIFI_4_WAY_PROGRESS, align 4
  %34 = call i32 %31(%struct.btc_coexist* %32, i32 %33, i32* %5)
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %73

37:                                               ; preds = %1
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @btc8723b2ant_is_wifi_status_changed.pre_wifi_busy, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* @btc8723b2ant_is_wifi_status_changed.pre_wifi_busy, align 4
  store i32 1, i32* %2, align 4
  br label %74

43:                                               ; preds = %37
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @btc8723b2ant_is_wifi_status_changed.pre_under_4way, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* @btc8723b2ant_is_wifi_status_changed.pre_under_4way, align 4
  store i32 1, i32* %2, align 4
  br label %74

49:                                               ; preds = %43
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @btc8723b2ant_is_wifi_status_changed.pre_bt_hs_on, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* @btc8723b2ant_is_wifi_status_changed.pre_bt_hs_on, align 4
  store i32 1, i32* %2, align 4
  br label %74

55:                                               ; preds = %49
  %56 = load i64, i64* @BT_8723B_2ANT_WIFI_RSSI_COEXSWITCH_THRES, align 8
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %56, %59
  store i64 %60, i64* %9, align 8
  %61 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %62 = load i64, i64* %9, align 8
  %63 = call i64 @btc8723b2ant_wifi_rssi_state(%struct.btc_coexist* %61, i32 0, i32 2, i64 %62, i32 0)
  store i64 %63, i64* %8, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* @BTC_RSSI_STATE_HIGH, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %71, label %67

67:                                               ; preds = %55
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* @BTC_RSSI_STATE_LOW, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67, %55
  store i32 1, i32* %2, align 4
  br label %74

72:                                               ; preds = %67
  br label %73

73:                                               ; preds = %72, %1
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %71, %53, %47, %41
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i64 @btc8723b2ant_wifi_rssi_state(%struct.btc_coexist*, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
