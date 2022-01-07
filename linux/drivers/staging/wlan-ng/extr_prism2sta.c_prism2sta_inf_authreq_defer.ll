; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2sta.c_prism2sta_inf_authreq_defer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2sta.c_prism2sta_inf_authreq_defer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlandevice = type { i32, %struct.hfa384x* }
%struct.hfa384x = type { i32, %struct.TYPE_10__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32, i32** }
%struct.TYPE_7__ = type { i32, i32, i32**, i32**, i32 }
%struct.TYPE_6__ = type { i32, i32, i32**, i32**, i32 }
%struct.hfa384x_inf_frame = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32* }
%struct.hfa384x_authenticate_station_data = type { i64, i32, i32* }

@P80211ENUM_status_unspec_failure = common dso_local global i32 0, align 4
@P80211ENUM_status_successful = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@WLAN_AUTH_MAX = common dso_local global i32 0, align 4
@P80211ENUM_status_ap_full = common dso_local global i32 0, align 4
@HFA384x_RID_AUTHENTICATESTA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"setconfig(authenticatestation) failed, result=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wlandevice*, %struct.hfa384x_inf_frame*)* @prism2sta_inf_authreq_defer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prism2sta_inf_authreq_defer(%struct.wlandevice* %0, %struct.hfa384x_inf_frame* %1) #0 {
  %3 = alloca %struct.wlandevice*, align 8
  %4 = alloca %struct.hfa384x_inf_frame*, align 8
  %5 = alloca %struct.hfa384x*, align 8
  %6 = alloca %struct.hfa384x_authenticate_station_data, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.wlandevice* %0, %struct.wlandevice** %3, align 8
  store %struct.hfa384x_inf_frame* %1, %struct.hfa384x_inf_frame** %4, align 8
  %12 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %13 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %12, i32 0, i32 1
  %14 = load %struct.hfa384x*, %struct.hfa384x** %13, align 8
  store %struct.hfa384x* %14, %struct.hfa384x** %5, align 8
  %15 = getelementptr inbounds %struct.hfa384x_authenticate_station_data, %struct.hfa384x_authenticate_station_data* %6, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.hfa384x_inf_frame*, %struct.hfa384x_inf_frame** %4, align 8
  %18 = getelementptr inbounds %struct.hfa384x_inf_frame, %struct.hfa384x_inf_frame* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @ether_addr_copy(i32* %16, i32* %21)
  %23 = load i32, i32* @P80211ENUM_status_unspec_failure, align 4
  %24 = call i64 @cpu_to_le16(i32 %23)
  %25 = getelementptr inbounds %struct.hfa384x_authenticate_station_data, %struct.hfa384x_authenticate_station_data* %6, i32 0, i32 0
  store i64 %24, i64* %25, align 8
  %26 = load %struct.hfa384x*, %struct.hfa384x** %5, align 8
  %27 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %170 [
    i32 128, label %29
    i32 131, label %59
    i32 130, label %63
    i32 129, label %115
  ]

29:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %55, %29
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.hfa384x*, %struct.hfa384x** %5, align 8
  %33 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %31, %35
  br i1 %36, label %37, label %58

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.hfa384x_authenticate_station_data, %struct.hfa384x_authenticate_station_data* %6, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.hfa384x*, %struct.hfa384x** %5, align 8
  %41 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load i32**, i32*** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = call i64 @ether_addr_equal(i32* %39, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %37
  %51 = load i32, i32* @P80211ENUM_status_successful, align 4
  %52 = call i64 @cpu_to_le16(i32 %51)
  %53 = getelementptr inbounds %struct.hfa384x_authenticate_station_data, %struct.hfa384x_authenticate_station_data* %6, i32 0, i32 0
  store i64 %52, i64* %53, align 8
  br label %58

54:                                               ; preds = %37
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %30

58:                                               ; preds = %50, %30
  br label %170

59:                                               ; preds = %2
  %60 = load i32, i32* @P80211ENUM_status_successful, align 4
  %61 = call i64 @cpu_to_le16(i32 %60)
  %62 = getelementptr inbounds %struct.hfa384x_authenticate_station_data, %struct.hfa384x_authenticate_station_data* %6, i32 0, i32 0
  store i64 %61, i64* %62, align 8
  br label %170

63:                                               ; preds = %2
  %64 = load %struct.hfa384x*, %struct.hfa384x** %5, align 8
  %65 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %63
  %70 = load %struct.hfa384x*, %struct.hfa384x** %5, align 8
  %71 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %10, align 4
  %74 = load %struct.hfa384x*, %struct.hfa384x** %5, align 8
  %75 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 3
  %77 = load i32**, i32*** %76, align 8
  %78 = getelementptr inbounds i32*, i32** %77, i64 0
  %79 = load i32*, i32** %78, align 8
  store i32* %79, i32** %11, align 8
  br label %91

80:                                               ; preds = %63
  %81 = load %struct.hfa384x*, %struct.hfa384x** %5, align 8
  %82 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %10, align 4
  %85 = load %struct.hfa384x*, %struct.hfa384x** %5, align 8
  %86 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 2
  %88 = load i32**, i32*** %87, align 8
  %89 = getelementptr inbounds i32*, i32** %88, i64 0
  %90 = load i32*, i32** %89, align 8
  store i32* %90, i32** %11, align 8
  br label %91

91:                                               ; preds = %80, %69
  store i32 0, i32* %7, align 4
  br label %92

92:                                               ; preds = %107, %91
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %114

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.hfa384x_authenticate_station_data, %struct.hfa384x_authenticate_station_data* %6, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = load i32*, i32** %11, align 8
  %100 = call i64 @ether_addr_equal(i32* %98, i32* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %96
  %103 = load i32, i32* @P80211ENUM_status_successful, align 4
  %104 = call i64 @cpu_to_le16(i32 %103)
  %105 = getelementptr inbounds %struct.hfa384x_authenticate_station_data, %struct.hfa384x_authenticate_station_data* %6, i32 0, i32 0
  store i64 %104, i64* %105, align 8
  br label %114

106:                                              ; preds = %96
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* @ETH_ALEN, align 4
  %111 = load i32*, i32** %11, align 8
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  store i32* %113, i32** %11, align 8
  br label %92

114:                                              ; preds = %102, %92
  br label %170

115:                                              ; preds = %2
  %116 = load %struct.hfa384x*, %struct.hfa384x** %5, align 8
  %117 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %115
  %122 = load %struct.hfa384x*, %struct.hfa384x** %5, align 8
  %123 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  store i32 %125, i32* %10, align 4
  %126 = load %struct.hfa384x*, %struct.hfa384x** %5, align 8
  %127 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 3
  %129 = load i32**, i32*** %128, align 8
  %130 = getelementptr inbounds i32*, i32** %129, i64 0
  %131 = load i32*, i32** %130, align 8
  store i32* %131, i32** %11, align 8
  br label %143

132:                                              ; preds = %115
  %133 = load %struct.hfa384x*, %struct.hfa384x** %5, align 8
  %134 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* %10, align 4
  %137 = load %struct.hfa384x*, %struct.hfa384x** %5, align 8
  %138 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 2
  %140 = load i32**, i32*** %139, align 8
  %141 = getelementptr inbounds i32*, i32** %140, i64 0
  %142 = load i32*, i32** %141, align 8
  store i32* %142, i32** %11, align 8
  br label %143

143:                                              ; preds = %132, %121
  %144 = load i32, i32* @P80211ENUM_status_successful, align 4
  %145 = call i64 @cpu_to_le16(i32 %144)
  %146 = getelementptr inbounds %struct.hfa384x_authenticate_station_data, %struct.hfa384x_authenticate_station_data* %6, i32 0, i32 0
  store i64 %145, i64* %146, align 8
  store i32 0, i32* %7, align 4
  br label %147

147:                                              ; preds = %162, %143
  %148 = load i32, i32* %7, align 4
  %149 = load i32, i32* %10, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %169

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.hfa384x_authenticate_station_data, %struct.hfa384x_authenticate_station_data* %6, i32 0, i32 2
  %153 = load i32*, i32** %152, align 8
  %154 = load i32*, i32** %11, align 8
  %155 = call i64 @ether_addr_equal(i32* %153, i32* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %151
  %158 = load i32, i32* @P80211ENUM_status_unspec_failure, align 4
  %159 = call i64 @cpu_to_le16(i32 %158)
  %160 = getelementptr inbounds %struct.hfa384x_authenticate_station_data, %struct.hfa384x_authenticate_station_data* %6, i32 0, i32 0
  store i64 %159, i64* %160, align 8
  br label %169

161:                                              ; preds = %151
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %7, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %7, align 4
  %165 = load i32, i32* @ETH_ALEN, align 4
  %166 = load i32*, i32** %11, align 8
  %167 = sext i32 %165 to i64
  %168 = getelementptr inbounds i32, i32* %166, i64 %167
  store i32* %168, i32** %11, align 8
  br label %147

169:                                              ; preds = %157, %147
  br label %170

170:                                              ; preds = %2, %169, %114, %59, %58
  store i32 0, i32* %8, align 4
  %171 = getelementptr inbounds %struct.hfa384x_authenticate_station_data, %struct.hfa384x_authenticate_station_data* %6, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i32, i32* @P80211ENUM_status_successful, align 4
  %174 = call i64 @cpu_to_le16(i32 %173)
  %175 = icmp eq i64 %172, %174
  br i1 %175, label %176, label %242

176:                                              ; preds = %170
  store i32 0, i32* %7, align 4
  br label %177

177:                                              ; preds = %199, %176
  %178 = load i32, i32* %7, align 4
  %179 = load %struct.hfa384x*, %struct.hfa384x** %5, align 8
  %180 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = icmp slt i32 %178, %182
  br i1 %183, label %184, label %202

184:                                              ; preds = %177
  %185 = getelementptr inbounds %struct.hfa384x_authenticate_station_data, %struct.hfa384x_authenticate_station_data* %6, i32 0, i32 2
  %186 = load i32*, i32** %185, align 8
  %187 = load %struct.hfa384x*, %struct.hfa384x** %5, align 8
  %188 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 1
  %190 = load i32**, i32*** %189, align 8
  %191 = load i32, i32* %7, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32*, i32** %190, i64 %192
  %194 = load i32*, i32** %193, align 8
  %195 = call i64 @ether_addr_equal(i32* %186, i32* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %184
  br label %202

198:                                              ; preds = %184
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* %7, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %7, align 4
  br label %177

202:                                              ; preds = %197, %177
  %203 = load i32, i32* %7, align 4
  %204 = load %struct.hfa384x*, %struct.hfa384x** %5, align 8
  %205 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = icmp sge i32 %203, %207
  br i1 %208, label %209, label %241

209:                                              ; preds = %202
  %210 = load %struct.hfa384x*, %struct.hfa384x** %5, align 8
  %211 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @WLAN_AUTH_MAX, align 4
  %215 = icmp sge i32 %213, %214
  br i1 %215, label %216, label %220

216:                                              ; preds = %209
  %217 = load i32, i32* @P80211ENUM_status_ap_full, align 4
  %218 = call i64 @cpu_to_le16(i32 %217)
  %219 = getelementptr inbounds %struct.hfa384x_authenticate_station_data, %struct.hfa384x_authenticate_station_data* %6, i32 0, i32 0
  store i64 %218, i64* %219, align 8
  br label %240

220:                                              ; preds = %209
  %221 = load %struct.hfa384x*, %struct.hfa384x** %5, align 8
  %222 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 1
  %224 = load i32**, i32*** %223, align 8
  %225 = load %struct.hfa384x*, %struct.hfa384x** %5, align 8
  %226 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32*, i32** %224, i64 %229
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds %struct.hfa384x_authenticate_station_data, %struct.hfa384x_authenticate_station_data* %6, i32 0, i32 2
  %233 = load i32*, i32** %232, align 8
  %234 = call i32 @ether_addr_copy(i32* %231, i32* %233)
  %235 = load %struct.hfa384x*, %struct.hfa384x** %5, align 8
  %236 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %237, align 8
  store i32 1, i32* %8, align 4
  br label %240

240:                                              ; preds = %220, %216
  br label %241

241:                                              ; preds = %240, %202
  br label %242

242:                                              ; preds = %241, %170
  %243 = load %struct.hfa384x_inf_frame*, %struct.hfa384x_inf_frame** %4, align 8
  %244 = getelementptr inbounds %struct.hfa384x_inf_frame, %struct.hfa384x_inf_frame* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = getelementptr inbounds %struct.hfa384x_authenticate_station_data, %struct.hfa384x_authenticate_station_data* %6, i32 0, i32 1
  store i32 %247, i32* %248, align 8
  %249 = load %struct.hfa384x*, %struct.hfa384x** %5, align 8
  %250 = load i32, i32* @HFA384x_RID_AUTHENTICATESTA, align 4
  %251 = call i32 @hfa384x_drvr_setconfig(%struct.hfa384x* %249, i32 %250, %struct.hfa384x_authenticate_station_data* %6, i32 24)
  store i32 %251, i32* %9, align 4
  %252 = load i32, i32* %9, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %269

254:                                              ; preds = %242
  %255 = load i32, i32* %8, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %263

257:                                              ; preds = %254
  %258 = load %struct.hfa384x*, %struct.hfa384x** %5, align 8
  %259 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = add nsw i32 %261, -1
  store i32 %262, i32* %260, align 8
  br label %263

263:                                              ; preds = %257, %254
  %264 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %265 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = load i32, i32* %9, align 4
  %268 = call i32 @netdev_err(i32 %266, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %267)
  br label %269

269:                                              ; preds = %263, %242
  ret void
}

declare dso_local i32 @ether_addr_copy(i32*, i32*) #1

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local i64 @ether_addr_equal(i32*, i32*) #1

declare dso_local i32 @hfa384x_drvr_setconfig(%struct.hfa384x*, i32, %struct.hfa384x_authenticate_station_data*, i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
