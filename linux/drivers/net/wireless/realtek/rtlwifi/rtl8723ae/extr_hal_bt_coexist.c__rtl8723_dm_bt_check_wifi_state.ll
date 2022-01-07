; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hal_bt_coexist.c__rtl8723_dm_bt_check_wifi_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hal_bt_coexist.c__rtl8723_dm_bt_check_wifi_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, %struct.rtl_phy }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.rtl_phy = type { i64 }

@BT_COEX_STATE_WIFI_IDLE = common dso_local global i32 0, align 4
@BT_COEX_STATE_WIFI_UPLINK = common dso_local global i32 0, align 4
@BT_COEX_STATE_WIFI_DOWNLINK = common dso_local global i32 0, align 4
@WIRELESS_MODE_G = common dso_local global i64 0, align 8
@WIRELESS_MODE_B = common dso_local global i64 0, align 8
@BT_COEX_STATE_WIFI_LEGACY = common dso_local global i32 0, align 4
@BT_COEX_STATE_WIFI_HT20 = common dso_local global i32 0, align 4
@BT_COEX_STATE_WIFI_HT40 = common dso_local global i32 0, align 4
@HT_CHANNEL_WIDTH_20_40 = common dso_local global i64 0, align 8
@bt_operation_on = common dso_local global i64 0, align 8
@BT_COEX_STATE_BT30 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_rtl8723_dm_bt_check_wifi_state(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_phy*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %6 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %5)
  store %struct.rtl_priv* %6, %struct.rtl_priv** %3, align 8
  %7 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %8 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %7, i32 0, i32 3
  store %struct.rtl_phy* %8, %struct.rtl_phy** %4, align 8
  %9 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %10 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %64

14:                                               ; preds = %1
  %15 = load i32, i32* @BT_COEX_STATE_WIFI_IDLE, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %18 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, %16
  store i32 %21, i32* %19, align 8
  %22 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %23 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %14
  %28 = load i32, i32* @BT_COEX_STATE_WIFI_UPLINK, align 4
  %29 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %30 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %28
  store i32 %33, i32* %31, align 8
  br label %42

34:                                               ; preds = %14
  %35 = load i32, i32* @BT_COEX_STATE_WIFI_UPLINK, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %38 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, %36
  store i32 %41, i32* %39, align 8
  br label %42

42:                                               ; preds = %34, %27
  %43 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %44 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load i32, i32* @BT_COEX_STATE_WIFI_DOWNLINK, align 4
  %50 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %51 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %49
  store i32 %54, i32* %52, align 8
  br label %63

55:                                               ; preds = %42
  %56 = load i32, i32* @BT_COEX_STATE_WIFI_DOWNLINK, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %59 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = and i32 %61, %57
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %55, %48
  br label %85

64:                                               ; preds = %1
  %65 = load i32, i32* @BT_COEX_STATE_WIFI_IDLE, align 4
  %66 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %67 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %65
  store i32 %70, i32* %68, align 8
  %71 = load i32, i32* @BT_COEX_STATE_WIFI_UPLINK, align 4
  %72 = xor i32 %71, -1
  %73 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %74 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %76, %72
  store i32 %77, i32* %75, align 8
  %78 = load i32, i32* @BT_COEX_STATE_WIFI_DOWNLINK, align 4
  %79 = xor i32 %78, -1
  %80 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %81 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = and i32 %83, %79
  store i32 %84, i32* %82, align 8
  br label %85

85:                                               ; preds = %64, %63
  %86 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %87 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @WIRELESS_MODE_G, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %99, label %92

92:                                               ; preds = %85
  %93 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %94 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @WIRELESS_MODE_B, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %120

99:                                               ; preds = %92, %85
  %100 = load i32, i32* @BT_COEX_STATE_WIFI_LEGACY, align 4
  %101 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %102 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %100
  store i32 %105, i32* %103, align 8
  %106 = load i32, i32* @BT_COEX_STATE_WIFI_HT20, align 4
  %107 = xor i32 %106, -1
  %108 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %109 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = and i32 %111, %107
  store i32 %112, i32* %110, align 8
  %113 = load i32, i32* @BT_COEX_STATE_WIFI_HT40, align 4
  %114 = xor i32 %113, -1
  %115 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %116 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = and i32 %118, %114
  store i32 %119, i32* %117, align 8
  br label %162

120:                                              ; preds = %92
  %121 = load i32, i32* @BT_COEX_STATE_WIFI_LEGACY, align 4
  %122 = xor i32 %121, -1
  %123 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %124 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = and i32 %126, %122
  store i32 %127, i32* %125, align 8
  %128 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %129 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @HT_CHANNEL_WIDTH_20_40, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %147

133:                                              ; preds = %120
  %134 = load i32, i32* @BT_COEX_STATE_WIFI_HT40, align 4
  %135 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %136 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = or i32 %138, %134
  store i32 %139, i32* %137, align 8
  %140 = load i32, i32* @BT_COEX_STATE_WIFI_HT20, align 4
  %141 = xor i32 %140, -1
  %142 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %143 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = and i32 %145, %141
  store i32 %146, i32* %144, align 8
  br label %161

147:                                              ; preds = %120
  %148 = load i32, i32* @BT_COEX_STATE_WIFI_HT20, align 4
  %149 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %150 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = or i32 %152, %148
  store i32 %153, i32* %151, align 8
  %154 = load i32, i32* @BT_COEX_STATE_WIFI_HT40, align 4
  %155 = xor i32 %154, -1
  %156 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %157 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = and i32 %159, %155
  store i32 %160, i32* %158, align 8
  br label %161

161:                                              ; preds = %147, %133
  br label %162

162:                                              ; preds = %161, %99
  %163 = load i64, i64* @bt_operation_on, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %162
  %166 = load i32, i32* @BT_COEX_STATE_BT30, align 4
  %167 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %168 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = or i32 %170, %166
  store i32 %171, i32* %169, align 8
  br label %180

172:                                              ; preds = %162
  %173 = load i32, i32* @BT_COEX_STATE_BT30, align 4
  %174 = xor i32 %173, -1
  %175 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %176 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = and i32 %178, %174
  store i32 %179, i32* %177, align 8
  br label %180

180:                                              ; preds = %172, %165
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
