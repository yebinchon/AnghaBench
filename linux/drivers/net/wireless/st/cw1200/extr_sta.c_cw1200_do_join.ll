; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c_cw1200_do_join.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c_cw1200_do_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_9__*, i32, i32, i32, i32, i64, i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_10__*, i64, i64, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i64, %struct.ieee80211_bss_conf }
%struct.ieee80211_bss_conf = type { i32, i32*, i64 }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.cfg80211_bss = type { i32 }
%struct.wsm_protected_mgmt_policy = type { i32, i32, i64 }
%struct.wsm_join = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }

@WSM_JOIN_PREAMBLE_LONG = common dso_local global i32 0, align 4
@WSM_JOIN_MODE_IBSS = common dso_local global i32 0, align 4
@WSM_JOIN_MODE_BSS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"[STA] - Join request already pending, skipping..\0A\00", align 1
@IEEE80211_BSS_TYPE_ANY = common dso_local global i32 0, align 4
@IEEE80211_PRIVACY_ANY = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@WSM_PHY_BAND_5G = common dso_local global i32 0, align 4
@WSM_PHY_BAND_2_4G = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"[STA] Join BSSID: %pM DTIM: %d, interval: %d\0A\00", align 1
@WLAN_EID_SSID = common dso_local global i32 0, align 4
@WSM_JOIN_FLAGS_P2P_GO = common dso_local global i32 0, align 4
@WSM_JOIN_FLAGS_FORCE = common dso_local global i32 0, align 4
@WSM_JOIN_FLAGS_FORCE_WITH_COMPLETE_IND = common dso_local global i32 0, align 4
@CW1200_JOIN_TIMEOUT = common dso_local global i64 0, align 8
@CW1200_AUTH_TIMEOUT = common dso_local global i64 0, align 8
@CW1200_JOIN_STATUS_JOINING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"[STA] cw1200_join_work: wsm_join failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cw1200_common*)* @cw1200_do_join to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cw1200_do_join(%struct.cw1200_common* %0) #0 {
  %2 = alloca %struct.cw1200_common*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ieee80211_bss_conf*, align 8
  %5 = alloca %struct.cfg80211_bss*, align 8
  %6 = alloca %struct.wsm_protected_mgmt_policy, align 8
  %7 = alloca %struct.wsm_join, align 8
  %8 = alloca i32*, align 8
  store %struct.cw1200_common* %0, %struct.cw1200_common** %2, align 8
  %9 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %10 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %9, i32 0, i32 15
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  store %struct.ieee80211_bss_conf* %12, %struct.ieee80211_bss_conf** %4, align 8
  store %struct.cfg80211_bss* null, %struct.cfg80211_bss** %5, align 8
  %13 = getelementptr inbounds %struct.wsm_join, %struct.wsm_join* %7, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = getelementptr inbounds %struct.wsm_join, %struct.wsm_join* %7, i32 0, i32 1
  %15 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %16 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %4, align 8
  %17 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @cw1200_rate_mask_to_wsm(%struct.cw1200_common* %15, i32 %18)
  store i32 %19, i32* %14, align 4
  %20 = getelementptr inbounds %struct.wsm_join, %struct.wsm_join* %7, i32 0, i32 2
  store i32 0, i32* %20, align 8
  %21 = getelementptr inbounds %struct.wsm_join, %struct.wsm_join* %7, i32 0, i32 3
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds %struct.wsm_join, %struct.wsm_join* %7, i32 0, i32 4
  store i32 0, i32* %22, align 8
  %23 = getelementptr inbounds %struct.wsm_join, %struct.wsm_join* %7, i32 0, i32 5
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds %struct.wsm_join, %struct.wsm_join* %7, i32 0, i32 6
  store i64 0, i64* %24, align 8
  %25 = getelementptr inbounds %struct.wsm_join, %struct.wsm_join* %7, i32 0, i32 7
  store i32 0, i32* %25, align 8
  %26 = getelementptr inbounds %struct.wsm_join, %struct.wsm_join* %7, i32 0, i32 8
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds %struct.wsm_join, %struct.wsm_join* %7, i32 0, i32 9
  store i32 0, i32* %27, align 8
  %28 = getelementptr inbounds %struct.wsm_join, %struct.wsm_join* %7, i32 0, i32 10
  store i32 0, i32* %28, align 4
  %29 = getelementptr inbounds %struct.wsm_join, %struct.wsm_join* %7, i32 0, i32 11
  %30 = load i32, i32* @WSM_JOIN_PREAMBLE_LONG, align 4
  store i32 %30, i32* %29, align 8
  %31 = getelementptr inbounds %struct.wsm_join, %struct.wsm_join* %7, i32 0, i32 12
  %32 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %4, align 8
  %33 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %1
  %37 = load i32, i32* @WSM_JOIN_MODE_IBSS, align 4
  br label %40

38:                                               ; preds = %1
  %39 = load i32, i32* @WSM_JOIN_MODE_BSS, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  store i32 %41, i32* %31, align 4
  %42 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %43 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %42, i32 0, i32 10
  %44 = call i64 @delayed_work_pending(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = call i32 @pr_warn(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %48 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %49 = call i32 @wsm_unlock_tx(%struct.cw1200_common* %48)
  br label %362

50:                                               ; preds = %40
  %51 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %52 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %51, i32 0, i32 11
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %57 = call i32 @cw1200_do_unjoin(%struct.cw1200_common* %56)
  br label %58

58:                                               ; preds = %55, %50
  %59 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %60 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %59, i32 0, i32 15
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  store i32* %64, i32** %3, align 8
  %65 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %66 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %65, i32 0, i32 6
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %71 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %70, i32 0, i32 16
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = load i32*, i32** %3, align 8
  %74 = load i32, i32* @IEEE80211_BSS_TYPE_ANY, align 4
  %75 = load i32, i32* @IEEE80211_PRIVACY_ANY, align 4
  %76 = call %struct.cfg80211_bss* @cfg80211_get_bss(i32 %69, %struct.TYPE_10__* %72, i32* %73, i32* null, i32 0, i32 %74, i32 %75)
  store %struct.cfg80211_bss* %76, %struct.cfg80211_bss** %5, align 8
  %77 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %5, align 8
  %78 = icmp ne %struct.cfg80211_bss* %77, null
  br i1 %78, label %87, label %79

79:                                               ; preds = %58
  %80 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %4, align 8
  %81 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %79
  %85 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %86 = call i32 @wsm_unlock_tx(%struct.cw1200_common* %85)
  br label %362

87:                                               ; preds = %79, %58
  %88 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %89 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %88, i32 0, i32 7
  %90 = call i32 @mutex_lock(i32* %89)
  %91 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %92 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %91, i32 0, i32 19
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = call i64 @atomic_read(i32* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %87
  %97 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %98 = call i32 @wsm_unlock_tx(%struct.cw1200_common* %97)
  br label %348

99:                                               ; preds = %87
  %100 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %101 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %100, i32 0, i32 0
  store i32 1, i32* %101, align 8
  %102 = getelementptr inbounds %struct.wsm_join, %struct.wsm_join* %7, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %99
  %106 = getelementptr inbounds %struct.wsm_join, %struct.wsm_join* %7, i32 0, i32 1
  store i32 7, i32* %106, align 4
  br label %107

107:                                              ; preds = %105, %99
  %108 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %109 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %107
  %113 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %114 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %113, i32 0, i32 1
  store i32 1, i32* %114, align 4
  br label %115

115:                                              ; preds = %112, %107
  %116 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %117 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds %struct.wsm_join, %struct.wsm_join* %7, i32 0, i32 2
  store i32 %118, i32* %119, align 8
  %120 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %121 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %120, i32 0, i32 18
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %158

124:                                              ; preds = %115
  %125 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %126 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = mul nsw i32 %127, 100
  %129 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %130 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = srem i32 %128, %131
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %145

134:                                              ; preds = %124
  %135 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %136 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = mul nsw i32 %137, 100
  %139 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %140 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = sdiv i32 %138, %141
  %143 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %144 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %143, i32 0, i32 3
  store i32 %142, i32* %144, align 4
  br label %157

145:                                              ; preds = %124
  %146 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %147 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = mul nsw i32 %148, 100
  %150 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %151 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = sdiv i32 %149, %152
  %154 = add nsw i32 %153, 1
  %155 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %156 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %155, i32 0, i32 3
  store i32 %154, i32* %156, align 4
  br label %157

157:                                              ; preds = %145, %134
  br label %158

158:                                              ; preds = %157, %115
  %159 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %160 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %159, i32 0, i32 6
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %175

166:                                              ; preds = %158
  %167 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %168 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %167, i32 0, i32 6
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %174 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %173, i32 0, i32 17
  store i64 %172, i64* %174, align 8
  br label %175

175:                                              ; preds = %166, %158
  %176 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %177 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %176, i32 0, i32 17
  %178 = load i64, i64* %177, align 8
  %179 = getelementptr inbounds %struct.wsm_join, %struct.wsm_join* %7, i32 0, i32 6
  store i64 %178, i64* %179, align 8
  %180 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %181 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %180, i32 0, i32 16
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = getelementptr inbounds %struct.wsm_join, %struct.wsm_join* %7, i32 0, i32 9
  store i32 %184, i32* %185, align 8
  %186 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %187 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %186, i32 0, i32 16
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %195

193:                                              ; preds = %175
  %194 = load i32, i32* @WSM_PHY_BAND_5G, align 4
  br label %197

195:                                              ; preds = %175
  %196 = load i32, i32* @WSM_PHY_BAND_2_4G, align 4
  br label %197

197:                                              ; preds = %195, %193
  %198 = phi i32 [ %194, %193 ], [ %196, %195 ]
  %199 = getelementptr inbounds %struct.wsm_join, %struct.wsm_join* %7, i32 0, i32 8
  store i32 %198, i32* %199, align 4
  %200 = getelementptr inbounds %struct.wsm_join, %struct.wsm_join* %7, i32 0, i32 7
  %201 = load i32, i32* %200, align 8
  %202 = load i32*, i32** %3, align 8
  %203 = call i32 @memcpy(i32 %201, i32* %202, i32 4)
  %204 = getelementptr inbounds %struct.wsm_join, %struct.wsm_join* %7, i32 0, i32 7
  %205 = load i32, i32* %204, align 8
  %206 = getelementptr inbounds %struct.wsm_join, %struct.wsm_join* %7, i32 0, i32 6
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %209 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %205, i64 %207, i32 %210)
  %212 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %4, align 8
  %213 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %212, i32 0, i32 2
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %237, label %216

216:                                              ; preds = %197
  %217 = call i32 (...) @rcu_read_lock()
  %218 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %5, align 8
  %219 = load i32, i32* @WLAN_EID_SSID, align 4
  %220 = call i32* @ieee80211_bss_get_ie(%struct.cfg80211_bss* %218, i32 %219)
  store i32* %220, i32** %8, align 8
  %221 = load i32*, i32** %8, align 8
  %222 = icmp ne i32* %221, null
  br i1 %222, label %223, label %235

223:                                              ; preds = %216
  %224 = load i32*, i32** %8, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 1
  %226 = load i32, i32* %225, align 4
  %227 = getelementptr inbounds %struct.wsm_join, %struct.wsm_join* %7, i32 0, i32 3
  store i32 %226, i32* %227, align 4
  %228 = getelementptr inbounds %struct.wsm_join, %struct.wsm_join* %7, i32 0, i32 5
  %229 = load i32, i32* %228, align 4
  %230 = load i32*, i32** %8, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 2
  %232 = getelementptr inbounds %struct.wsm_join, %struct.wsm_join* %7, i32 0, i32 3
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @memcpy(i32 %229, i32* %231, i32 %233)
  br label %235

235:                                              ; preds = %223, %216
  %236 = call i32 (...) @rcu_read_unlock()
  br label %237

237:                                              ; preds = %235, %197
  %238 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %239 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %238, i32 0, i32 15
  %240 = load %struct.TYPE_8__*, %struct.TYPE_8__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %252

244:                                              ; preds = %237
  %245 = load i32, i32* @WSM_JOIN_FLAGS_P2P_GO, align 4
  %246 = getelementptr inbounds %struct.wsm_join, %struct.wsm_join* %7, i32 0, i32 4
  %247 = load i32, i32* %246, align 8
  %248 = or i32 %247, %245
  store i32 %248, i32* %246, align 8
  %249 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %250 = call i32 @cw1200_rate_mask_to_wsm(%struct.cw1200_common* %249, i32 4080)
  %251 = getelementptr inbounds %struct.wsm_join, %struct.wsm_join* %7, i32 0, i32 1
  store i32 %250, i32* %251, align 4
  br label %252

252:                                              ; preds = %244, %237
  %253 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %4, align 8
  %254 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %253, i32 0, i32 2
  %255 = load i64, i64* %254, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %266, label %257

257:                                              ; preds = %252
  %258 = load i32, i32* @WSM_JOIN_FLAGS_FORCE, align 4
  %259 = getelementptr inbounds %struct.wsm_join, %struct.wsm_join* %7, i32 0, i32 4
  %260 = load i32, i32* %259, align 8
  %261 = or i32 %260, %258
  store i32 %261, i32* %259, align 8
  %262 = load i32, i32* @WSM_JOIN_FLAGS_FORCE_WITH_COMPLETE_IND, align 4
  %263 = getelementptr inbounds %struct.wsm_join, %struct.wsm_join* %7, i32 0, i32 4
  %264 = load i32, i32* %263, align 8
  %265 = or i32 %264, %262
  store i32 %265, i32* %263, align 8
  br label %266

266:                                              ; preds = %257, %252
  %267 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %268 = call i32 @wsm_flush_tx(%struct.cw1200_common* %267)
  %269 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %270 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %269, i32 0, i32 14
  %271 = load i64, i64* @CW1200_JOIN_TIMEOUT, align 8
  %272 = load i64, i64* @CW1200_AUTH_TIMEOUT, align 8
  %273 = add nsw i64 %271, %272
  %274 = call i32 @cw1200_pm_stay_awake(i32* %270, i64 %273)
  %275 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %276 = call i32 @cw1200_update_listening(%struct.cw1200_common* %275, i32 0)
  %277 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %278 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %279 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %278, i32 0, i32 13
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %282 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %281, i32 0, i32 12
  %283 = load i32, i32* %282, align 8
  %284 = call i32 @wsm_set_block_ack_policy(%struct.cw1200_common* %277, i32 %280, i32 %283)
  %285 = getelementptr inbounds %struct.wsm_join, %struct.wsm_join* %7, i32 0, i32 4
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* @WSM_JOIN_FLAGS_FORCE_WITH_COMPLETE_IND, align 4
  %288 = and i32 %286, %287
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %301

290:                                              ; preds = %266
  %291 = load i64, i64* @CW1200_JOIN_STATUS_JOINING, align 8
  %292 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %293 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %292, i32 0, i32 11
  store i64 %291, i64* %293, align 8
  %294 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %295 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %294, i32 0, i32 9
  %296 = load i32, i32* %295, align 8
  %297 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %298 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %297, i32 0, i32 10
  %299 = load i64, i64* @CW1200_JOIN_TIMEOUT, align 8
  %300 = call i32 @queue_delayed_work(i32 %296, i32* %298, i64 %299)
  br label %301

301:                                              ; preds = %290, %266
  %302 = getelementptr inbounds %struct.wsm_protected_mgmt_policy, %struct.wsm_protected_mgmt_policy* %6, i32 0, i32 2
  store i64 0, i64* %302, align 8
  %303 = getelementptr inbounds %struct.wsm_protected_mgmt_policy, %struct.wsm_protected_mgmt_policy* %6, i32 0, i32 0
  store i32 1, i32* %303, align 8
  %304 = getelementptr inbounds %struct.wsm_protected_mgmt_policy, %struct.wsm_protected_mgmt_policy* %6, i32 0, i32 1
  store i32 1, i32* %304, align 4
  %305 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %306 = call i32 @wsm_set_protected_mgmt_policy(%struct.cw1200_common* %305, %struct.wsm_protected_mgmt_policy* %6)
  %307 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %308 = call i64 @wsm_join(%struct.cw1200_common* %307, %struct.wsm_join* %7)
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %331

310:                                              ; preds = %301
  %311 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %312 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %313 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %312, i32 0, i32 10
  %314 = call i32 @cancel_delayed_work_sync(i32* %313)
  %315 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %316 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %317 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %316, i32 0, i32 4
  %318 = load i32, i32* %317, align 8
  %319 = call i32 @cw1200_update_listening(%struct.cw1200_common* %315, i32 %318)
  %320 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %321 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %320, i32 0, i32 9
  %322 = load i32, i32* %321, align 8
  %323 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %324 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %323, i32 0, i32 8
  %325 = call i64 @queue_work(i32 %322, i32* %324)
  %326 = icmp sle i64 %325, 0
  br i1 %326, label %327, label %330

327:                                              ; preds = %310
  %328 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %329 = call i32 @wsm_unlock_tx(%struct.cw1200_common* %328)
  br label %330

330:                                              ; preds = %327, %310
  br label %345

331:                                              ; preds = %301
  %332 = getelementptr inbounds %struct.wsm_join, %struct.wsm_join* %7, i32 0, i32 4
  %333 = load i32, i32* %332, align 8
  %334 = load i32, i32* @WSM_JOIN_FLAGS_FORCE_WITH_COMPLETE_IND, align 4
  %335 = and i32 %333, %334
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %340, label %337

337:                                              ; preds = %331
  %338 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %339 = call i32 @cw1200_join_complete(%struct.cw1200_common* %338)
  br label %340

340:                                              ; preds = %337, %331
  %341 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %342 = call i32 @cw1200_upload_keys(%struct.cw1200_common* %341)
  %343 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %344 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %343, i32 0, i32 5
  store i32 1, i32* %344, align 4
  br label %345

345:                                              ; preds = %340, %330
  %346 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %347 = call i32 @cw1200_update_filtering(%struct.cw1200_common* %346)
  br label %348

348:                                              ; preds = %345, %96
  %349 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %350 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %349, i32 0, i32 7
  %351 = call i32 @mutex_unlock(i32* %350)
  %352 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %5, align 8
  %353 = icmp ne %struct.cfg80211_bss* %352, null
  br i1 %353, label %354, label %362

354:                                              ; preds = %348
  %355 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %356 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %355, i32 0, i32 6
  %357 = load %struct.TYPE_9__*, %struct.TYPE_9__** %356, align 8
  %358 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %5, align 8
  %361 = call i32 @cfg80211_put_bss(i32 %359, %struct.cfg80211_bss* %360)
  br label %362

362:                                              ; preds = %46, %84, %354, %348
  ret void
}

declare dso_local i32 @cw1200_rate_mask_to_wsm(%struct.cw1200_common*, i32) #1

declare dso_local i64 @delayed_work_pending(i32*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @wsm_unlock_tx(%struct.cw1200_common*) #1

declare dso_local i32 @cw1200_do_unjoin(%struct.cw1200_common*) #1

declare dso_local %struct.cfg80211_bss* @cfg80211_get_bss(i32, %struct.TYPE_10__*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i64, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32* @ieee80211_bss_get_ie(%struct.cfg80211_bss*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @wsm_flush_tx(%struct.cw1200_common*) #1

declare dso_local i32 @cw1200_pm_stay_awake(i32*, i64) #1

declare dso_local i32 @cw1200_update_listening(%struct.cw1200_common*, i32) #1

declare dso_local i32 @wsm_set_block_ack_policy(%struct.cw1200_common*, i32, i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i64) #1

declare dso_local i32 @wsm_set_protected_mgmt_policy(%struct.cw1200_common*, %struct.wsm_protected_mgmt_policy*) #1

declare dso_local i64 @wsm_join(%struct.cw1200_common*, %struct.wsm_join*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i64 @queue_work(i32, i32*) #1

declare dso_local i32 @cw1200_join_complete(%struct.cw1200_common*) #1

declare dso_local i32 @cw1200_upload_keys(%struct.cw1200_common*) #1

declare dso_local i32 @cw1200_update_filtering(%struct.cw1200_common*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cfg80211_put_bss(i32, %struct.cfg80211_bss*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
