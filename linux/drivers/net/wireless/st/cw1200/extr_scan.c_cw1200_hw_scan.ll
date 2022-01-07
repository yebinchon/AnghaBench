; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_scan.c_cw1200_hw_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_scan.c_cw1200_hw_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32, %struct.cw1200_common* }
%struct.cw1200_common = type { i64, %struct.TYPE_6__, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64, i32, %struct.wsm_ssid*, i32, i32*, i32*, i32*, i64, %struct.cfg80211_scan_request*, i32 }
%struct.wsm_ssid = type { i64, i32* }
%struct.cfg80211_scan_request = type { i32, i64, %struct.TYPE_5__*, i32*, i64, i32 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_scan_request = type { %struct.cfg80211_scan_request }
%struct.wsm_template_frame = type { i64, i32 }

@WSM_FRAME_TYPE_PROBE_REQUEST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CW1200_JOIN_STATUS_AP = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"[SCAN] Scan request for %d SSIDs.\0A\00", align 1
@WSM_SCAN_MAX_NUM_OF_SSIDS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cw1200_hw_scan(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_scan_request* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_scan_request*, align 8
  %8 = alloca %struct.cw1200_common*, align 8
  %9 = alloca %struct.cfg80211_scan_request*, align 8
  %10 = alloca %struct.wsm_template_frame, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.wsm_ssid*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_scan_request* %2, %struct.ieee80211_scan_request** %7, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %14, i32 0, i32 1
  %16 = load %struct.cw1200_common*, %struct.cw1200_common** %15, align 8
  store %struct.cw1200_common* %16, %struct.cw1200_common** %8, align 8
  %17 = load %struct.ieee80211_scan_request*, %struct.ieee80211_scan_request** %7, align 8
  %18 = getelementptr inbounds %struct.ieee80211_scan_request, %struct.ieee80211_scan_request* %17, i32 0, i32 0
  store %struct.cfg80211_scan_request* %18, %struct.cfg80211_scan_request** %9, align 8
  %19 = getelementptr inbounds %struct.wsm_template_frame, %struct.wsm_template_frame* %10, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = getelementptr inbounds %struct.wsm_template_frame, %struct.wsm_template_frame* %10, i32 0, i32 1
  %21 = load i32, i32* @WSM_FRAME_TYPE_PROBE_REQUEST, align 4
  store i32 %21, i32* %20, align 8
  %22 = load %struct.cw1200_common*, %struct.cw1200_common** %8, align 8
  %23 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %22, i32 0, i32 5
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = icmp ne %struct.TYPE_4__* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %254

29:                                               ; preds = %3
  %30 = load %struct.cw1200_common*, %struct.cw1200_common** %8, align 8
  %31 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @CW1200_JOIN_STATUS_AP, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @EOPNOTSUPP, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %254

38:                                               ; preds = %29
  %39 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %9, align 8
  %40 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %54

43:                                               ; preds = %38
  %44 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %9, align 8
  %45 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %44, i32 0, i32 2
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %43
  %52 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %9, align 8
  %53 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %52, i32 0, i32 0
  store i32 0, i32* %53, align 8
  br label %54

54:                                               ; preds = %51, %43, %38
  %55 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %56 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %9, align 8
  %59 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @wiphy_dbg(i32 %57, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %9, align 8
  %63 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @WSM_SCAN_MAX_NUM_OF_SSIDS, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %54
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %254

70:                                               ; preds = %54
  %71 = load %struct.cw1200_common*, %struct.cw1200_common** %8, align 8
  %72 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 9
  %74 = call i32 @down(i32* %73)
  %75 = load %struct.cw1200_common*, %struct.cw1200_common** %8, align 8
  %76 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %75, i32 0, i32 3
  %77 = call i32 @mutex_lock(i32* %76)
  %78 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %79 = load %struct.cw1200_common*, %struct.cw1200_common** %8, align 8
  %80 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %79, i32 0, i32 5
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %9, align 8
  %85 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = call i64 @ieee80211_probereq_get(%struct.ieee80211_hw* %78, i32 %83, i32* null, i32 0, i64 %86)
  %88 = getelementptr inbounds %struct.wsm_template_frame, %struct.wsm_template_frame* %10, i32 0, i32 0
  store i64 %87, i64* %88, align 8
  %89 = getelementptr inbounds %struct.wsm_template_frame, %struct.wsm_template_frame* %10, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %102, label %92

92:                                               ; preds = %70
  %93 = load %struct.cw1200_common*, %struct.cw1200_common** %8, align 8
  %94 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %93, i32 0, i32 3
  %95 = call i32 @mutex_unlock(i32* %94)
  %96 = load %struct.cw1200_common*, %struct.cw1200_common** %8, align 8
  %97 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 9
  %99 = call i32 @up(i32* %98)
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %4, align 4
  br label %254

102:                                              ; preds = %70
  %103 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %9, align 8
  %104 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %103, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.wsm_template_frame, %struct.wsm_template_frame* %10, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %9, align 8
  %111 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %9, align 8
  %114 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %113, i32 0, i32 4
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @skb_put_data(i64 %109, i32 %112, i64 %115)
  br label %117

117:                                              ; preds = %107, %102
  %118 = load %struct.cw1200_common*, %struct.cw1200_common** %8, align 8
  %119 = call i32 @wsm_set_template_frame(%struct.cw1200_common* %118, %struct.wsm_template_frame* %10)
  store i32 %119, i32* %12, align 4
  %120 = load i32, i32* %12, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %117
  %123 = load %struct.cw1200_common*, %struct.cw1200_common** %8, align 8
  %124 = call i32 @wsm_set_probe_responder(%struct.cw1200_common* %123, i32 1)
  store i32 %124, i32* %12, align 4
  br label %125

125:                                              ; preds = %122, %117
  %126 = load i32, i32* %12, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %140

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct.wsm_template_frame, %struct.wsm_template_frame* %10, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @dev_kfree_skb(i64 %130)
  %132 = load %struct.cw1200_common*, %struct.cw1200_common** %8, align 8
  %133 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %132, i32 0, i32 3
  %134 = call i32 @mutex_unlock(i32* %133)
  %135 = load %struct.cw1200_common*, %struct.cw1200_common** %8, align 8
  %136 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 9
  %138 = call i32 @up(i32* %137)
  %139 = load i32, i32* %12, align 4
  store i32 %139, i32* %4, align 4
  br label %254

140:                                              ; preds = %125
  %141 = load %struct.cw1200_common*, %struct.cw1200_common** %8, align 8
  %142 = call i32 @wsm_lock_tx(%struct.cw1200_common* %141)
  %143 = load %struct.cw1200_common*, %struct.cw1200_common** %8, align 8
  %144 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 8
  %146 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %145, align 8
  %147 = call i32 @BUG_ON(%struct.cfg80211_scan_request* %146)
  %148 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %9, align 8
  %149 = load %struct.cw1200_common*, %struct.cw1200_common** %8, align 8
  %150 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 8
  store %struct.cfg80211_scan_request* %148, %struct.cfg80211_scan_request** %151, align 8
  %152 = load %struct.cw1200_common*, %struct.cw1200_common** %8, align 8
  %153 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  store i64 0, i64* %154, align 8
  %155 = load %struct.cw1200_common*, %struct.cw1200_common** %8, align 8
  %156 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 7
  store i64 0, i64* %157, align 8
  %158 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %9, align 8
  %159 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %158, i32 0, i32 3
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  %162 = load %struct.cw1200_common*, %struct.cw1200_common** %8, align 8
  %163 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 5
  store i32* %161, i32** %164, align 8
  %165 = load %struct.cw1200_common*, %struct.cw1200_common** %8, align 8
  %166 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 5
  %168 = load i32*, i32** %167, align 8
  %169 = load %struct.cw1200_common*, %struct.cw1200_common** %8, align 8
  %170 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 6
  store i32* %168, i32** %171, align 8
  %172 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %9, align 8
  %173 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %172, i32 0, i32 3
  %174 = load i32*, i32** %173, align 8
  %175 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %9, align 8
  %176 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = getelementptr inbounds i32, i32* %174, i64 %177
  %179 = load %struct.cw1200_common*, %struct.cw1200_common** %8, align 8
  %180 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 4
  store i32* %178, i32** %181, align 8
  %182 = load %struct.cw1200_common*, %struct.cw1200_common** %8, align 8
  %183 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.cw1200_common*, %struct.cw1200_common** %8, align 8
  %186 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 3
  store i32 %184, i32* %187, align 8
  store i32 0, i32* %11, align 4
  br label %188

188:                                              ; preds = %232, %140
  %189 = load i32, i32* %11, align 4
  %190 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %9, align 8
  %191 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = icmp slt i32 %189, %192
  br i1 %193, label %194, label %235

194:                                              ; preds = %188
  %195 = load %struct.cw1200_common*, %struct.cw1200_common** %8, align 8
  %196 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 2
  %198 = load %struct.wsm_ssid*, %struct.wsm_ssid** %197, align 8
  %199 = load %struct.cw1200_common*, %struct.cw1200_common** %8, align 8
  %200 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = getelementptr inbounds %struct.wsm_ssid, %struct.wsm_ssid* %198, i64 %202
  store %struct.wsm_ssid* %203, %struct.wsm_ssid** %13, align 8
  %204 = load %struct.wsm_ssid*, %struct.wsm_ssid** %13, align 8
  %205 = getelementptr inbounds %struct.wsm_ssid, %struct.wsm_ssid* %204, i32 0, i32 1
  %206 = load i32*, i32** %205, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 0
  %208 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %9, align 8
  %209 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %208, i32 0, i32 2
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** %209, align 8
  %211 = load i32, i32* %11, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @memcpy(i32* %207, i32 %215, i32 8)
  %217 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %9, align 8
  %218 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %217, i32 0, i32 2
  %219 = load %struct.TYPE_5__*, %struct.TYPE_5__** %218, align 8
  %220 = load i32, i32* %11, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.wsm_ssid*, %struct.wsm_ssid** %13, align 8
  %226 = getelementptr inbounds %struct.wsm_ssid, %struct.wsm_ssid* %225, i32 0, i32 0
  store i64 %224, i64* %226, align 8
  %227 = load %struct.cw1200_common*, %struct.cw1200_common** %8, align 8
  %228 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = add i64 %230, 1
  store i64 %231, i64* %229, align 8
  br label %232

232:                                              ; preds = %194
  %233 = load i32, i32* %11, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %11, align 4
  br label %188

235:                                              ; preds = %188
  %236 = getelementptr inbounds %struct.wsm_template_frame, %struct.wsm_template_frame* %10, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %243

239:                                              ; preds = %235
  %240 = getelementptr inbounds %struct.wsm_template_frame, %struct.wsm_template_frame* %10, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = call i32 @dev_kfree_skb(i64 %241)
  br label %243

243:                                              ; preds = %239, %235
  %244 = load %struct.cw1200_common*, %struct.cw1200_common** %8, align 8
  %245 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %244, i32 0, i32 3
  %246 = call i32 @mutex_unlock(i32* %245)
  %247 = load %struct.cw1200_common*, %struct.cw1200_common** %8, align 8
  %248 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.cw1200_common*, %struct.cw1200_common** %8, align 8
  %251 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 1
  %253 = call i32 @queue_work(i32 %249, i32* %252)
  store i32 0, i32* %4, align 4
  br label %254

254:                                              ; preds = %243, %128, %92, %67, %35, %26
  %255 = load i32, i32* %4, align 4
  ret i32 %255
}

declare dso_local i32 @wiphy_dbg(i32, i8*, i32) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @ieee80211_probereq_get(%struct.ieee80211_hw*, i32, i32*, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @skb_put_data(i64, i32, i64) #1

declare dso_local i32 @wsm_set_template_frame(%struct.cw1200_common*, %struct.wsm_template_frame*) #1

declare dso_local i32 @wsm_set_probe_responder(%struct.cw1200_common*, i32) #1

declare dso_local i32 @dev_kfree_skb(i64) #1

declare dso_local i32 @wsm_lock_tx(%struct.cw1200_common*) #1

declare dso_local i32 @BUG_ON(%struct.cfg80211_scan_request*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
