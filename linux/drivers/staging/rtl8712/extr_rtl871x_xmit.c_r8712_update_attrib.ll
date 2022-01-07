; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_xmit.c_r8712_update_attrib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_xmit.c_r8712_update_attrib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.security_priv, %struct.TYPE_4__, %struct.TYPE_3__, %struct.mlme_priv, %struct.sta_priv }
%struct.security_priv = type { i32, i64, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.mlme_priv = type { i32, %struct.qos_priv }
%struct.qos_priv = type { i64 }
%struct.sta_priv = type { i32 }
%struct.pkt_attrib = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.sta_info*, i32*, i32*, i32*, i32* }
%struct.sta_info = type { i32, i64 }
%struct.pkt_file = type { i32 }
%struct.ethhdr = type { i32, i32, i32 }
%struct.tx_cmd = type { i32 }

@ETH_HLEN = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@WIFI_ADHOC_STATE = common dso_local global i32 0, align 4
@WIFI_ADHOC_MASTER_STATE = common dso_local global i32 0, align 4
@WIFI_STATION_STATE = common dso_local global i32 0, align 4
@WIFI_AP_STATE = common dso_local global i32 0, align 4
@WIFI_MP_STATE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TXDESC_SIZE = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WLAN_HDR_A3_LEN = common dso_local global i32 0, align 4
@WIFI_DATA_TYPE = common dso_local global i32 0, align 4
@_FAIL = common dso_local global i32 0, align 4
@QSEL_SHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r8712_update_attrib(%struct._adapter* %0, i32* %1, %struct.pkt_attrib* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._adapter*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.pkt_attrib*, align 8
  %8 = alloca %struct.pkt_file, align 4
  %9 = alloca %struct.sta_info*, align 8
  %10 = alloca %struct.ethhdr, align 4
  %11 = alloca %struct.tx_cmd, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sta_priv*, align 8
  %14 = alloca %struct.security_priv*, align 8
  %15 = alloca %struct.mlme_priv*, align 8
  %16 = alloca %struct.qos_priv*, align 8
  %17 = alloca [24 x i32], align 16
  store %struct._adapter* %0, %struct._adapter** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.pkt_attrib* %2, %struct.pkt_attrib** %7, align 8
  store %struct.sta_info* null, %struct.sta_info** %9, align 8
  %18 = load %struct._adapter*, %struct._adapter** %5, align 8
  %19 = getelementptr inbounds %struct._adapter, %struct._adapter* %18, i32 0, i32 4
  store %struct.sta_priv* %19, %struct.sta_priv** %13, align 8
  %20 = load %struct._adapter*, %struct._adapter** %5, align 8
  %21 = getelementptr inbounds %struct._adapter, %struct._adapter* %20, i32 0, i32 0
  store %struct.security_priv* %21, %struct.security_priv** %14, align 8
  %22 = load %struct._adapter*, %struct._adapter** %5, align 8
  %23 = getelementptr inbounds %struct._adapter, %struct._adapter* %22, i32 0, i32 3
  store %struct.mlme_priv* %23, %struct.mlme_priv** %15, align 8
  %24 = load %struct.mlme_priv*, %struct.mlme_priv** %15, align 8
  %25 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %24, i32 0, i32 1
  store %struct.qos_priv* %25, %struct.qos_priv** %16, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @_r8712_open_pktfile(i32* %26, %struct.pkt_file* %8)
  %28 = bitcast %struct.ethhdr* %10 to i8*
  %29 = load i32, i32* @ETH_HLEN, align 4
  %30 = call i32 (%struct.pkt_file*, ...) @_r8712_pktfile_read(%struct.pkt_file* %8, i8* %28, i32 %29)
  %31 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %10, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ntohs(i32 %32)
  %34 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %35 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %37 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 2054
  br i1 %39, label %40, label %65

40:                                               ; preds = %3
  %41 = load %struct._adapter*, %struct._adapter** %5, align 8
  %42 = getelementptr inbounds %struct._adapter, %struct._adapter* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct._adapter*, %struct._adapter** %5, align 8
  %46 = getelementptr inbounds %struct._adapter, %struct._adapter* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %44, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %40
  %51 = load %struct.mlme_priv*, %struct.mlme_priv** %15, align 8
  %52 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %51, i32 0, i32 0
  %53 = call i32 @del_timer_sync(i32* %52)
  %54 = load %struct._adapter*, %struct._adapter** %5, align 8
  %55 = load %struct._adapter*, %struct._adapter** %5, align 8
  %56 = getelementptr inbounds %struct._adapter, %struct._adapter* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct._adapter*, %struct._adapter** %5, align 8
  %60 = getelementptr inbounds %struct._adapter, %struct._adapter* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @r8712_set_ps_mode(%struct._adapter* %54, i64 %58, i32 %62)
  br label %64

64:                                               ; preds = %50, %40
  br label %65

65:                                               ; preds = %64, %3
  %66 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %67 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %66, i32 0, i32 18
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %10, i32 0, i32 1
  %70 = load i32, i32* @ETH_ALEN, align 4
  %71 = call i32 @memcpy(i32* %68, i32* %69, i32 %70)
  %72 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %73 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %72, i32 0, i32 16
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %10, i32 0, i32 0
  %76 = load i32, i32* @ETH_ALEN, align 4
  %77 = call i32 @memcpy(i32* %74, i32* %75, i32 %76)
  %78 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %79 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %78, i32 0, i32 1
  store i32 0, i32* %79, align 4
  %80 = load %struct.mlme_priv*, %struct.mlme_priv** %15, align 8
  %81 = load i32, i32* @WIFI_ADHOC_STATE, align 4
  %82 = call i64 @check_fwstate(%struct.mlme_priv* %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %65
  %85 = load %struct.mlme_priv*, %struct.mlme_priv** %15, align 8
  %86 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %87 = call i64 @check_fwstate(%struct.mlme_priv* %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %106

89:                                               ; preds = %84, %65
  %90 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %91 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %90, i32 0, i32 15
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %94 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %93, i32 0, i32 18
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* @ETH_ALEN, align 4
  %97 = call i32 @memcpy(i32* %92, i32* %95, i32 %96)
  %98 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %99 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %98, i32 0, i32 17
  %100 = load i32*, i32** %99, align 8
  %101 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %102 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %101, i32 0, i32 16
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* @ETH_ALEN, align 4
  %105 = call i32 @memcpy(i32* %100, i32* %103, i32 %104)
  br label %186

106:                                              ; preds = %84
  %107 = load %struct.mlme_priv*, %struct.mlme_priv** %15, align 8
  %108 = load i32, i32* @WIFI_STATION_STATE, align 4
  %109 = call i64 @check_fwstate(%struct.mlme_priv* %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %127

111:                                              ; preds = %106
  %112 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %113 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %112, i32 0, i32 15
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.mlme_priv*, %struct.mlme_priv** %15, align 8
  %116 = call i32* @get_bssid(%struct.mlme_priv* %115)
  %117 = load i32, i32* @ETH_ALEN, align 4
  %118 = call i32 @memcpy(i32* %114, i32* %116, i32 %117)
  %119 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %120 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %119, i32 0, i32 17
  %121 = load i32*, i32** %120, align 8
  %122 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %123 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %122, i32 0, i32 16
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* @ETH_ALEN, align 4
  %126 = call i32 @memcpy(i32* %121, i32* %124, i32 %125)
  br label %185

127:                                              ; preds = %106
  %128 = load %struct.mlme_priv*, %struct.mlme_priv** %15, align 8
  %129 = load i32, i32* @WIFI_AP_STATE, align 4
  %130 = call i64 @check_fwstate(%struct.mlme_priv* %128, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %148

132:                                              ; preds = %127
  %133 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %134 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %133, i32 0, i32 15
  %135 = load i32*, i32** %134, align 8
  %136 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %137 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %136, i32 0, i32 18
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* @ETH_ALEN, align 4
  %140 = call i32 @memcpy(i32* %135, i32* %138, i32 %139)
  %141 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %142 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %141, i32 0, i32 17
  %143 = load i32*, i32** %142, align 8
  %144 = load %struct.mlme_priv*, %struct.mlme_priv** %15, align 8
  %145 = call i32* @get_bssid(%struct.mlme_priv* %144)
  %146 = load i32, i32* @ETH_ALEN, align 4
  %147 = call i32 @memcpy(i32* %143, i32* %145, i32 %146)
  br label %184

148:                                              ; preds = %127
  %149 = load %struct.mlme_priv*, %struct.mlme_priv** %15, align 8
  %150 = load i32, i32* @WIFI_MP_STATE, align 4
  %151 = call i64 @check_fwstate(%struct.mlme_priv* %149, i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %183

153:                                              ; preds = %148
  %154 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %155 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 34578
  br i1 %157, label %158, label %161

158:                                              ; preds = %153
  %159 = load i32, i32* @EINVAL, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %4, align 4
  br label %415

161:                                              ; preds = %153
  %162 = bitcast %struct.tx_cmd* %11 to i32*
  %163 = load i32, i32* @TXDESC_SIZE, align 4
  %164 = call i32 (%struct.pkt_file*, ...) @_r8712_pktfile_read(%struct.pkt_file* %8, i32* %162, i32 %163)
  %165 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %166 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %165, i32 0, i32 15
  %167 = load i32*, i32** %166, align 8
  %168 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %169 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %168, i32 0, i32 18
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* @ETH_ALEN, align 4
  %172 = call i32 @memcpy(i32* %167, i32* %170, i32 %171)
  %173 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %174 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %173, i32 0, i32 17
  %175 = load i32*, i32** %174, align 8
  %176 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %177 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %176, i32 0, i32 16
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* @ETH_ALEN, align 4
  %180 = call i32 @memcpy(i32* %175, i32* %178, i32 %179)
  %181 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %182 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %181, i32 0, i32 1
  store i32 1, i32* %182, align 4
  br label %183

183:                                              ; preds = %161, %148
  br label %184

184:                                              ; preds = %183, %132
  br label %185

185:                                              ; preds = %184, %111
  br label %186

186:                                              ; preds = %185, %89
  %187 = getelementptr inbounds %struct.pkt_file, %struct.pkt_file* %8, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %190 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %189, i32 0, i32 2
  store i32 %188, i32* %190, align 8
  %191 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %192 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @ETH_P_IP, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %232

196:                                              ; preds = %186
  %197 = getelementptr inbounds [24 x i32], [24 x i32]* %17, i64 0, i64 0
  %198 = call i32 (%struct.pkt_file*, ...) @_r8712_pktfile_read(%struct.pkt_file* %8, i32* %197, i32 24)
  %199 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %200 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %199, i32 0, i32 3
  store i32 0, i32* %200, align 4
  %201 = getelementptr inbounds %struct.pkt_file, %struct.pkt_file* %8, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = icmp sgt i32 %202, 282
  br i1 %203, label %204, label %231

204:                                              ; preds = %196
  %205 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %206 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @ETH_P_IP, align 4
  %209 = icmp eq i32 %207, %208
  br i1 %209, label %210, label %230

210:                                              ; preds = %204
  %211 = getelementptr inbounds [24 x i32], [24 x i32]* %17, i64 0, i64 21
  %212 = load i32, i32* %211, align 4
  %213 = icmp eq i32 %212, 68
  br i1 %213, label %214, label %218

214:                                              ; preds = %210
  %215 = getelementptr inbounds [24 x i32], [24 x i32]* %17, i64 0, i64 23
  %216 = load i32, i32* %215, align 4
  %217 = icmp eq i32 %216, 67
  br i1 %217, label %226, label %218

218:                                              ; preds = %214, %210
  %219 = getelementptr inbounds [24 x i32], [24 x i32]* %17, i64 0, i64 21
  %220 = load i32, i32* %219, align 4
  %221 = icmp eq i32 %220, 67
  br i1 %221, label %222, label %229

222:                                              ; preds = %218
  %223 = getelementptr inbounds [24 x i32], [24 x i32]* %17, i64 0, i64 23
  %224 = load i32, i32* %223, align 4
  %225 = icmp eq i32 %224, 68
  br i1 %225, label %226, label %229

226:                                              ; preds = %222, %214
  %227 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %228 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %227, i32 0, i32 3
  store i32 1, i32* %228, align 4
  br label %229

229:                                              ; preds = %226, %222, %218
  br label %230

230:                                              ; preds = %229, %204
  br label %231

231:                                              ; preds = %230, %196
  br label %232

232:                                              ; preds = %231, %186
  %233 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %234 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %233, i32 0, i32 15
  %235 = load i32*, i32** %234, align 8
  %236 = call i32 @is_multicast_ether_addr(i32* %235)
  store i32 %236, i32* %12, align 4
  %237 = load i32, i32* %12, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %244

239:                                              ; preds = %232
  %240 = load %struct._adapter*, %struct._adapter** %5, align 8
  %241 = call %struct.sta_info* @r8712_get_bcmc_stainfo(%struct._adapter* %240)
  store %struct.sta_info* %241, %struct.sta_info** %9, align 8
  %242 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %243 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %242, i32 0, i32 4
  store i32 4, i32* %243, align 8
  br label %283

244:                                              ; preds = %232
  %245 = load %struct.mlme_priv*, %struct.mlme_priv** %15, align 8
  %246 = load i32, i32* @WIFI_MP_STATE, align 4
  %247 = call i64 @check_fwstate(%struct.mlme_priv* %245, i32 %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %256

249:                                              ; preds = %244
  %250 = load %struct.sta_priv*, %struct.sta_priv** %13, align 8
  %251 = load %struct.mlme_priv*, %struct.mlme_priv** %15, align 8
  %252 = call i32* @get_bssid(%struct.mlme_priv* %251)
  %253 = call %struct.sta_info* @r8712_get_stainfo(%struct.sta_priv* %250, i32* %252)
  store %struct.sta_info* %253, %struct.sta_info** %9, align 8
  %254 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %255 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %254, i32 0, i32 4
  store i32 5, i32* %255, align 8
  br label %282

256:                                              ; preds = %244
  %257 = load %struct.sta_priv*, %struct.sta_priv** %13, align 8
  %258 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %259 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %258, i32 0, i32 15
  %260 = load i32*, i32** %259, align 8
  %261 = call %struct.sta_info* @r8712_get_stainfo(%struct.sta_priv* %257, i32* %260)
  store %struct.sta_info* %261, %struct.sta_info** %9, align 8
  %262 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %263 = icmp eq %struct.sta_info* %262, null
  br i1 %263, label %264, label %267

264:                                              ; preds = %256
  %265 = load i32, i32* @ENOMEM, align 4
  %266 = sub nsw i32 0, %265
  store i32 %266, i32* %4, align 4
  br label %415

267:                                              ; preds = %256
  %268 = load %struct.mlme_priv*, %struct.mlme_priv** %15, align 8
  %269 = load i32, i32* @WIFI_STATION_STATE, align 4
  %270 = call i64 @check_fwstate(%struct.mlme_priv* %268, i32 %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %275

272:                                              ; preds = %267
  %273 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %274 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %273, i32 0, i32 4
  store i32 5, i32* %274, align 8
  br label %281

275:                                              ; preds = %267
  %276 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %277 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %280 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %279, i32 0, i32 4
  store i32 %278, i32* %280, align 8
  br label %281

281:                                              ; preds = %275, %272
  br label %282

282:                                              ; preds = %281, %249
  br label %283

283:                                              ; preds = %282, %239
  %284 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %285 = icmp ne %struct.sta_info* %284, null
  br i1 %285, label %286, label %290

286:                                              ; preds = %283
  %287 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %288 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %289 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %288, i32 0, i32 14
  store %struct.sta_info* %287, %struct.sta_info** %289, align 8
  br label %293

290:                                              ; preds = %283
  %291 = load i32, i32* @ENOMEM, align 4
  %292 = sub nsw i32 0, %291
  store i32 %292, i32* %4, align 4
  br label %415

293:                                              ; preds = %286
  %294 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %295 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %294, i32 0, i32 13
  store i64 0, i64* %295, align 8
  %296 = load i32, i32* @ETH_HLEN, align 4
  %297 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %298 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %297, i32 0, i32 5
  store i32 %296, i32* %298, align 4
  %299 = load %struct.qos_priv*, %struct.qos_priv** %16, align 8
  %300 = getelementptr inbounds %struct.qos_priv, %struct.qos_priv* %299, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %306

303:                                              ; preds = %293
  %304 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %305 = call i32 @r8712_set_qos(%struct.pkt_file* %8, %struct.pkt_attrib* %304)
  br label %315

306:                                              ; preds = %293
  %307 = load i32, i32* @WLAN_HDR_A3_LEN, align 4
  %308 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %309 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %308, i32 0, i32 12
  store i32 %307, i32* %309, align 8
  %310 = load i32, i32* @WIFI_DATA_TYPE, align 4
  %311 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %312 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %311, i32 0, i32 11
  store i32 %310, i32* %312, align 4
  %313 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %314 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %313, i32 0, i32 6
  store i32 0, i32* %314, align 8
  br label %315

315:                                              ; preds = %306, %303
  %316 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %317 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %316, i32 0, i32 1
  %318 = load i64, i64* %317, align 8
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %336

320:                                              ; preds = %315
  %321 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %322 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %321, i32 0, i32 10
  store i32 0, i32* %322, align 8
  %323 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %324 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = icmp ne i32 %325, 34958
  br i1 %326, label %327, label %335

327:                                              ; preds = %320
  %328 = load %struct.mlme_priv*, %struct.mlme_priv** %15, align 8
  %329 = load i32, i32* @WIFI_MP_STATE, align 4
  %330 = call i64 @check_fwstate(%struct.mlme_priv* %328, i32 %329)
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %335, label %332

332:                                              ; preds = %327
  %333 = load i32, i32* @EINVAL, align 4
  %334 = sub nsw i32 0, %333
  store i32 %334, i32* %4, align 4
  br label %415

335:                                              ; preds = %327, %320
  br label %344

336:                                              ; preds = %315
  %337 = load %struct.security_priv*, %struct.security_priv** %14, align 8
  %338 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %339 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %340 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %339, i32 0, i32 10
  %341 = load i32, i32* %340, align 8
  %342 = load i32, i32* %12, align 4
  %343 = call i32 @GET_ENCRY_ALGO(%struct.security_priv* %337, %struct.sta_info* %338, i32 %341, i32 %342)
  br label %344

344:                                              ; preds = %336, %335
  %345 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %346 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %345, i32 0, i32 10
  %347 = load i32, i32* %346, align 8
  switch i32 %347, label %373 [
    i32 128, label %348
    i32 129, label %348
    i32 130, label %353
    i32 131, label %368
  ]

348:                                              ; preds = %344, %344
  %349 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %350 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %349, i32 0, i32 7
  store i32 4, i32* %350, align 4
  %351 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %352 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %351, i32 0, i32 8
  store i32 4, i32* %352, align 8
  br label %378

353:                                              ; preds = %344
  %354 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %355 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %354, i32 0, i32 7
  store i32 8, i32* %355, align 4
  %356 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %357 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %356, i32 0, i32 8
  store i32 4, i32* %357, align 8
  %358 = load %struct._adapter*, %struct._adapter** %5, align 8
  %359 = getelementptr inbounds %struct._adapter, %struct._adapter* %358, i32 0, i32 0
  %360 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %359, i32 0, i32 2
  %361 = load i32, i32* %360, align 8
  %362 = load i32, i32* @_FAIL, align 4
  %363 = icmp eq i32 %361, %362
  br i1 %363, label %364, label %367

364:                                              ; preds = %353
  %365 = load i32, i32* @EINVAL, align 4
  %366 = sub nsw i32 0, %365
  store i32 %366, i32* %4, align 4
  br label %415

367:                                              ; preds = %353
  br label %378

368:                                              ; preds = %344
  %369 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %370 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %369, i32 0, i32 7
  store i32 8, i32* %370, align 4
  %371 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %372 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %371, i32 0, i32 8
  store i32 8, i32* %372, align 8
  br label %378

373:                                              ; preds = %344
  %374 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %375 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %374, i32 0, i32 7
  store i32 0, i32* %375, align 4
  %376 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %377 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %376, i32 0, i32 8
  store i32 0, i32* %377, align 8
  br label %378

378:                                              ; preds = %373, %368, %367, %348
  %379 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %380 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %379, i32 0, i32 10
  %381 = load i32, i32* %380, align 8
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %397

383:                                              ; preds = %378
  %384 = load %struct._adapter*, %struct._adapter** %5, align 8
  %385 = getelementptr inbounds %struct._adapter, %struct._adapter* %384, i32 0, i32 0
  %386 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %385, i32 0, i32 1
  %387 = load i64, i64* %386, align 8
  %388 = icmp ne i64 %387, 0
  br i1 %388, label %394, label %389

389:                                              ; preds = %383
  %390 = load %struct.security_priv*, %struct.security_priv** %14, align 8
  %391 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 8
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %397, label %394

394:                                              ; preds = %389, %383
  %395 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %396 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %395, i32 0, i32 9
  store i32 1, i32* %396, align 4
  br label %400

397:                                              ; preds = %389, %378
  %398 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %399 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %398, i32 0, i32 9
  store i32 0, i32* %399, align 4
  br label %400

400:                                              ; preds = %397, %394
  %401 = load %struct.mlme_priv*, %struct.mlme_priv** %15, align 8
  %402 = load i32, i32* @WIFI_MP_STATE, align 4
  %403 = call i64 @check_fwstate(%struct.mlme_priv* %401, i32 %402)
  %404 = icmp ne i64 %403, 0
  br i1 %404, label %405, label %414

405:                                              ; preds = %400
  %406 = getelementptr inbounds %struct.tx_cmd, %struct.tx_cmd* %11, i32 0, i32 0
  %407 = load i32, i32* %406, align 4
  %408 = call i32 @le32_to_cpu(i32 %407)
  %409 = load i32, i32* @QSEL_SHT, align 4
  %410 = ashr i32 %408, %409
  %411 = and i32 %410, 31
  %412 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %413 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %412, i32 0, i32 6
  store i32 %411, i32* %413, align 8
  br label %414

414:                                              ; preds = %405, %400
  store i32 0, i32* %4, align 4
  br label %415

415:                                              ; preds = %414, %364, %332, %290, %264, %158
  %416 = load i32, i32* %4, align 4
  ret i32 %416
}

declare dso_local i32 @_r8712_open_pktfile(i32*, %struct.pkt_file*) #1

declare dso_local i32 @_r8712_pktfile_read(%struct.pkt_file*, ...) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @r8712_set_ps_mode(%struct._adapter*, i64, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32* @get_bssid(%struct.mlme_priv*) #1

declare dso_local i32 @is_multicast_ether_addr(i32*) #1

declare dso_local %struct.sta_info* @r8712_get_bcmc_stainfo(%struct._adapter*) #1

declare dso_local %struct.sta_info* @r8712_get_stainfo(%struct.sta_priv*, i32*) #1

declare dso_local i32 @r8712_set_qos(%struct.pkt_file*, %struct.pkt_attrib*) #1

declare dso_local i32 @GET_ENCRY_ALGO(%struct.security_priv*, %struct.sta_info*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
