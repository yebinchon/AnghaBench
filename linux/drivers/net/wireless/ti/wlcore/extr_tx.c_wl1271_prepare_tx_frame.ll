; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_tx.c_wl1271_prepare_tx_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_tx.c_wl1271_prepare_tx_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32, i64 }
%struct.wl12xx_vif = type { i64, i64 }
%struct.sk_buff = type { i64, i32 }
%struct.ieee80211_tx_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }

@.str = private unnamed_addr constant [20 x i8] c"discarding null skb\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WL12XX_INVALID_LINK_ID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"invalid hlid. dropping skb 0x%p\00", align 1
@WLCORE_QUIRK_TKIP_HEADER_SPACE = common dso_local global i32 0, align 4
@WLAN_CIPHER_SUITE_TKIP = common dso_local global i64 0, align 8
@WL1271_EXTRA_SPACE_TKIP = common dso_local global i64 0, align 8
@WLAN_CIPHER_SUITE_WEP40 = common dso_local global i64 0, align 8
@WLAN_CIPHER_SUITE_WEP104 = common dso_local global i64 0, align 8
@WL1271_CIPHER_SUITE_GEM = common dso_local global i64 0, align 8
@BSS_TYPE_AP_BSS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, %struct.wl12xx_vif*, %struct.sk_buff*, i64, i64)* @wl1271_prepare_tx_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1271_prepare_tx_frame(%struct.wl1271* %0, %struct.wl12xx_vif* %1, %struct.sk_buff* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wl1271*, align 8
  %8 = alloca %struct.wl12xx_vif*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ieee80211_tx_info*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.wl1271* %0, %struct.wl1271** %7, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %8, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %17, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %5
  %24 = call i32 (i8*, ...) @wl1271_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %210

27:                                               ; preds = %5
  %28 = load i64, i64* %11, align 8
  %29 = load i64, i64* @WL12XX_INVALID_LINK_ID, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %33 = call i32 (i8*, ...) @wl1271_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), %struct.sk_buff* %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %210

36:                                               ; preds = %27
  %37 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %38 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %37)
  store %struct.ieee80211_tx_info* %38, %struct.ieee80211_tx_info** %12, align 8
  %39 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %41 = call i32 @wl12xx_is_dummy_packet(%struct.wl1271* %39, %struct.sk_buff* %40)
  store i32 %41, i32* %16, align 4
  %42 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %43 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @WLCORE_QUIRK_TKIP_HEADER_SPACE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %65

48:                                               ; preds = %36
  %49 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %50 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = icmp ne %struct.TYPE_3__* %52, null
  br i1 %53, label %54, label %65

54:                                               ; preds = %48
  %55 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %56 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @WLAN_CIPHER_SUITE_TKIP, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = load i64, i64* @WL1271_EXTRA_SPACE_TKIP, align 8
  store i64 %64, i64* %13, align 8
  br label %65

65:                                               ; preds = %63, %54, %48, %36
  %66 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %67 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = icmp ne %struct.TYPE_3__* %69, null
  br i1 %70, label %71, label %128

71:                                               ; preds = %65
  %72 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %73 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %19, align 8
  %78 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %79 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %20, align 8
  %84 = load i64, i64* %20, align 8
  %85 = load i64, i64* @WLAN_CIPHER_SUITE_WEP40, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %91, label %87

87:                                               ; preds = %71
  %88 = load i64, i64* %20, align 8
  %89 = load i64, i64* @WLAN_CIPHER_SUITE_WEP104, align 8
  %90 = icmp eq i64 %88, %89
  br label %91

91:                                               ; preds = %87, %71
  %92 = phi i1 [ true, %71 ], [ %90, %87 ]
  %93 = zext i1 %92 to i32
  store i32 %93, i32* %18, align 4
  %94 = load i32, i32* %18, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %91
  %97 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %98 = icmp ne %struct.wl12xx_vif* %97, null
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %101 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %19, align 8
  %104 = icmp ne i64 %102, %103
  br label %105

105:                                              ; preds = %99, %96, %91
  %106 = phi i1 [ false, %96 ], [ false, %91 ], [ %104, %99 ]
  %107 = zext i1 %106 to i32
  %108 = call i64 @WARN_ON(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %123

110:                                              ; preds = %105
  %111 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %112 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %113 = load i64, i64* %19, align 8
  %114 = call i32 @wl1271_set_default_wep_key(%struct.wl1271* %111, %struct.wl12xx_vif* %112, i64 %113)
  store i32 %114, i32* %14, align 4
  %115 = load i32, i32* %14, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %110
  %118 = load i32, i32* %14, align 4
  store i32 %118, i32* %6, align 4
  br label %210

119:                                              ; preds = %110
  %120 = load i64, i64* %19, align 8
  %121 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %122 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  br label %123

123:                                              ; preds = %119, %105
  %124 = load i64, i64* %20, align 8
  %125 = load i64, i64* @WL1271_CIPHER_SUITE_GEM, align 8
  %126 = icmp eq i64 %124, %125
  %127 = zext i1 %126 to i32
  store i32 %127, i32* %17, align 4
  br label %128

128:                                              ; preds = %123, %65
  %129 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %130 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %131 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %132 = load i64, i64* %13, align 8
  %133 = load i64, i64* %10, align 8
  %134 = load i64, i64* %11, align 8
  %135 = load i32, i32* %17, align 4
  %136 = call i32 @wl1271_tx_allocate(%struct.wl1271* %129, %struct.wl12xx_vif* %130, %struct.sk_buff* %131, i64 %132, i64 %133, i64 %134, i32 %135)
  store i32 %136, i32* %14, align 4
  %137 = load i32, i32* %14, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %128
  %140 = load i32, i32* %14, align 4
  store i32 %140, i32* %6, align 4
  br label %210

141:                                              ; preds = %128
  %142 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %143 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %144 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %145 = load i64, i64* %13, align 8
  %146 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %147 = load i64, i64* %11, align 8
  %148 = call i32 @wl1271_tx_fill_hdr(%struct.wl1271* %142, %struct.wl12xx_vif* %143, %struct.sk_buff* %144, i64 %145, %struct.ieee80211_tx_info* %146, i64 %147)
  %149 = load i32, i32* %16, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %169, label %151

151:                                              ; preds = %141
  %152 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %153 = icmp ne %struct.wl12xx_vif* %152, null
  br i1 %153, label %154, label %169

154:                                              ; preds = %151
  %155 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %156 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @BSS_TYPE_AP_BSS, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %169

160:                                              ; preds = %154
  %161 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %162 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %163 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %164 = call i32 @wl1271_tx_ap_update_inconnection_sta(%struct.wl1271* %161, %struct.wl12xx_vif* %162, %struct.sk_buff* %163)
  %165 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %166 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %167 = load i64, i64* %11, align 8
  %168 = call i32 @wl1271_tx_regulate_link(%struct.wl1271* %165, %struct.wl12xx_vif* %166, i64 %167)
  br label %169

169:                                              ; preds = %160, %154, %151, %141
  %170 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %171 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %172 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = call i64 @wlcore_calc_packet_alignment(%struct.wl1271* %170, i64 %173)
  store i64 %174, i64* %15, align 8
  %175 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %176 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* %10, align 8
  %179 = add nsw i64 %177, %178
  %180 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %181 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %184 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = call i32 @memcpy(i64 %179, i32 %182, i64 %185)
  %187 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %188 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* %10, align 8
  %191 = add nsw i64 %189, %190
  %192 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %193 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = add nsw i64 %191, %194
  %196 = load i64, i64* %15, align 8
  %197 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %198 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = sub nsw i64 %196, %199
  %201 = call i32 @memset(i64 %195, i32 0, i64 %200)
  %202 = load i32, i32* %16, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %169
  %205 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %206 = call i32 @skb_pull(%struct.sk_buff* %205, i32 4)
  br label %207

207:                                              ; preds = %204, %169
  %208 = load i64, i64* %15, align 8
  %209 = trunc i64 %208 to i32
  store i32 %209, i32* %6, align 4
  br label %210

210:                                              ; preds = %207, %139, %117, %31, %23
  %211 = load i32, i32* %6, align 4
  ret i32 %211
}

declare dso_local i32 @wl1271_error(i8*, ...) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @wl12xx_is_dummy_packet(%struct.wl1271*, %struct.sk_buff*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @wl1271_set_default_wep_key(%struct.wl1271*, %struct.wl12xx_vif*, i64) #1

declare dso_local i32 @wl1271_tx_allocate(%struct.wl1271*, %struct.wl12xx_vif*, %struct.sk_buff*, i64, i64, i64, i32) #1

declare dso_local i32 @wl1271_tx_fill_hdr(%struct.wl1271*, %struct.wl12xx_vif*, %struct.sk_buff*, i64, %struct.ieee80211_tx_info*, i64) #1

declare dso_local i32 @wl1271_tx_ap_update_inconnection_sta(%struct.wl1271*, %struct.wl12xx_vif*, %struct.sk_buff*) #1

declare dso_local i32 @wl1271_tx_regulate_link(%struct.wl1271*, %struct.wl12xx_vif*, i64) #1

declare dso_local i64 @wlcore_calc_packet_alignment(%struct.wl1271*, i64) #1

declare dso_local i32 @memcpy(i64, i32, i64) #1

declare dso_local i32 @memset(i64, i32, i64) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
