; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_wlan_net.c_ks_wlan_set_encode_ext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_wlan_net.c_ks_wlan_set_encode_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ks_wlan_private = type { i64, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32, %struct.wpa_key* }
%struct.wpa_key = type { i32, i32, i32, i32*, i32*, i32*, %struct.TYPE_7__, i32* }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_9__ = type { i32 }
%struct.iw_encode_ext = type { i32, i32, i32, i32*, %struct.TYPE_8__, i32* }
%struct.TYPE_8__ = type { i32* }

@IW_ENCODE_INDEX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SLP_SLEEP = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@IW_ENCODE_DISABLED = common dso_local global i32 0, align 4
@IW_ENCODE_EXT_SET_TX_KEY = common dso_local global i32 0, align 4
@SME_WEP_INDEX = common dso_local global i32 0, align 4
@IW_ENCODE_EXT_RX_SEQ_VALID = common dso_local global i32 0, align 4
@IW_ENCODE_SEQ_MAX_SIZE = common dso_local global i32 0, align 4
@SME_WEP_FLAG = common dso_local global i32 0, align 4
@SME_WEP_VAL1 = common dso_local global i32 0, align 4
@SME_SET_TXKEY = common dso_local global i64 0, align 8
@SME_WEP_VAL_MASK = common dso_local global i32 0, align 4
@SME_SET_KEY1 = common dso_local global i64 0, align 8
@SME_WEP_FLAG_REQUEST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @ks_wlan_set_encode_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks_wlan_set_encode_ext(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ks_wlan_private*, align 8
  %11 = alloca %struct.iw_encode_ext*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.wpa_key*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = call %struct.ks_wlan_private* @netdev_priv(%struct.net_device* %15)
  store %struct.ks_wlan_private* %16, %struct.ks_wlan_private** %10, align 8
  %17 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %18 = bitcast %union.iwreq_data* %17 to %struct.TYPE_6__*
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IW_ENCODE_INDEX, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %23 = load i8*, i8** %9, align 8
  %24 = bitcast i8* %23 to %struct.iw_encode_ext*
  store %struct.iw_encode_ext* %24, %struct.iw_encode_ext** %11, align 8
  %25 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %26 = icmp ne %struct.iw_encode_ext* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %311

30:                                               ; preds = %4
  %31 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %32 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SLP_SLEEP, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @EPERM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %311

39:                                               ; preds = %30
  %40 = load i32, i32* %12, align 4
  %41 = icmp slt i32 %40, 1
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %12, align 4
  %44 = icmp sgt i32 %43, 4
  br i1 %44, label %45, label %48

45:                                               ; preds = %42, %39
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %311

48:                                               ; preds = %42
  %49 = load i32, i32* %12, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %12, align 4
  %51 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %52 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 2
  %54 = load %struct.wpa_key*, %struct.wpa_key** %53, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.wpa_key, %struct.wpa_key* %54, i64 %56
  store %struct.wpa_key* %57, %struct.wpa_key** %14, align 8
  %58 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %59 = bitcast %union.iwreq_data* %58 to %struct.TYPE_6__*
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %48
  %66 = load %struct.wpa_key*, %struct.wpa_key** %14, align 8
  %67 = getelementptr inbounds %struct.wpa_key, %struct.wpa_key* %66, i32 0, i32 0
  store i32 0, i32* %67, align 8
  br label %68

68:                                               ; preds = %65, %48
  %69 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %70 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.wpa_key*, %struct.wpa_key** %14, align 8
  %73 = getelementptr inbounds %struct.wpa_key, %struct.wpa_key* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %75 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @IW_ENCODE_EXT_SET_TX_KEY, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %68
  %81 = load i32, i32* %12, align 4
  %82 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %83 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 8
  %85 = load i32, i32* @SME_WEP_INDEX, align 4
  %86 = load i32, i32* %13, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %13, align 4
  br label %107

88:                                               ; preds = %68
  %89 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %90 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @IW_ENCODE_EXT_RX_SEQ_VALID, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %106

95:                                               ; preds = %88
  %96 = load %struct.wpa_key*, %struct.wpa_key** %14, align 8
  %97 = getelementptr inbounds %struct.wpa_key, %struct.wpa_key* %96, i32 0, i32 7
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %101 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %100, i32 0, i32 5
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32, i32* @IW_ENCODE_SEQ_MAX_SIZE, align 4
  %105 = call i32 @memcpy(i32* %99, i32* %103, i32 %104)
  br label %106

106:                                              ; preds = %95, %88
  br label %107

107:                                              ; preds = %106, %80
  %108 = load %struct.wpa_key*, %struct.wpa_key** %14, align 8
  %109 = getelementptr inbounds %struct.wpa_key, %struct.wpa_key* %108, i32 0, i32 6
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  %113 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %114 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  %118 = call i32 @ether_addr_copy(i32* %112, i32* %117)
  %119 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %120 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  switch i32 %121, label %268 [
    i32 130, label %122
    i32 128, label %138
    i32 131, label %138
    i32 129, label %180
  ]

122:                                              ; preds = %107
  %123 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %124 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %122
  %129 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %130 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  store i32 0, i32* %131, align 8
  %132 = load i32, i32* @SME_WEP_FLAG, align 4
  %133 = load i32, i32* %13, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %13, align 4
  br label %135

135:                                              ; preds = %128, %122
  %136 = load %struct.wpa_key*, %struct.wpa_key** %14, align 8
  %137 = getelementptr inbounds %struct.wpa_key, %struct.wpa_key* %136, i32 0, i32 0
  store i32 0, i32* %137, align 8
  br label %271

138:                                              ; preds = %107, %107
  %139 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %140 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %151, label %144

144:                                              ; preds = %138
  %145 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %146 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  store i32 1, i32* %147, align 8
  %148 = load i32, i32* @SME_WEP_FLAG, align 4
  %149 = load i32, i32* %13, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %13, align 4
  br label %151

151:                                              ; preds = %144, %138
  %152 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %153 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %179

156:                                              ; preds = %151
  %157 = load %struct.wpa_key*, %struct.wpa_key** %14, align 8
  %158 = getelementptr inbounds %struct.wpa_key, %struct.wpa_key* %157, i32 0, i32 5
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 0
  %161 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %162 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %161, i32 0, i32 3
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 0
  %165 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %166 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @memcpy(i32* %160, i32* %164, i32 %167)
  %169 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %170 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.wpa_key*, %struct.wpa_key** %14, align 8
  %173 = getelementptr inbounds %struct.wpa_key, %struct.wpa_key* %172, i32 0, i32 0
  store i32 %171, i32* %173, align 8
  %174 = load i32, i32* @SME_WEP_VAL1, align 4
  %175 = load i32, i32* %12, align 4
  %176 = shl i32 %174, %175
  %177 = load i32, i32* %13, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %13, align 4
  br label %179

179:                                              ; preds = %156, %151
  br label %271

180:                                              ; preds = %107
  %181 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %182 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %193, label %186

186:                                              ; preds = %180
  %187 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %188 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 0
  store i32 1, i32* %189, align 8
  %190 = load i32, i32* @SME_WEP_FLAG, align 4
  %191 = load i32, i32* %13, align 4
  %192 = or i32 %191, %190
  store i32 %192, i32* %13, align 4
  br label %193

193:                                              ; preds = %186, %180
  %194 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %195 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = icmp eq i32 %196, 32
  br i1 %197, label %198, label %267

198:                                              ; preds = %193
  %199 = load %struct.wpa_key*, %struct.wpa_key** %14, align 8
  %200 = getelementptr inbounds %struct.wpa_key, %struct.wpa_key* %199, i32 0, i32 5
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 0
  %203 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %204 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %203, i32 0, i32 3
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 0
  %207 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %208 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = sub nsw i32 %209, 16
  %211 = call i32 @memcpy(i32* %202, i32* %206, i32 %210)
  %212 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %213 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = sub nsw i32 %214, 16
  %216 = load %struct.wpa_key*, %struct.wpa_key** %14, align 8
  %217 = getelementptr inbounds %struct.wpa_key, %struct.wpa_key* %216, i32 0, i32 0
  store i32 %215, i32* %217, align 8
  %218 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %219 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = icmp eq i32 %221, 4
  br i1 %222, label %223, label %242

223:                                              ; preds = %198
  %224 = load %struct.wpa_key*, %struct.wpa_key** %14, align 8
  %225 = getelementptr inbounds %struct.wpa_key, %struct.wpa_key* %224, i32 0, i32 4
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 0
  %228 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %229 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %228, i32 0, i32 3
  %230 = load i32*, i32** %229, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 16
  %232 = call i32 @memcpy(i32* %227, i32* %231, i32 8)
  %233 = load %struct.wpa_key*, %struct.wpa_key** %14, align 8
  %234 = getelementptr inbounds %struct.wpa_key, %struct.wpa_key* %233, i32 0, i32 3
  %235 = load i32*, i32** %234, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 0
  %237 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %238 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %237, i32 0, i32 3
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 16
  %241 = call i32 @memcpy(i32* %236, i32* %240, i32 8)
  br label %261

242:                                              ; preds = %198
  %243 = load %struct.wpa_key*, %struct.wpa_key** %14, align 8
  %244 = getelementptr inbounds %struct.wpa_key, %struct.wpa_key* %243, i32 0, i32 4
  %245 = load i32*, i32** %244, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 0
  %247 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %248 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %247, i32 0, i32 3
  %249 = load i32*, i32** %248, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 16
  %251 = call i32 @memcpy(i32* %246, i32* %250, i32 8)
  %252 = load %struct.wpa_key*, %struct.wpa_key** %14, align 8
  %253 = getelementptr inbounds %struct.wpa_key, %struct.wpa_key* %252, i32 0, i32 3
  %254 = load i32*, i32** %253, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 0
  %256 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %257 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %256, i32 0, i32 3
  %258 = load i32*, i32** %257, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 24
  %260 = call i32 @memcpy(i32* %255, i32* %259, i32 8)
  br label %261

261:                                              ; preds = %242, %223
  %262 = load i32, i32* @SME_WEP_VAL1, align 4
  %263 = load i32, i32* %12, align 4
  %264 = shl i32 %262, %263
  %265 = load i32, i32* %13, align 4
  %266 = or i32 %265, %264
  store i32 %266, i32* %13, align 4
  br label %267

267:                                              ; preds = %261, %193
  br label %271

268:                                              ; preds = %107
  %269 = load i32, i32* @EINVAL, align 4
  %270 = sub nsw i32 0, %269
  store i32 %270, i32* %5, align 4
  br label %311

271:                                              ; preds = %267, %179, %135
  %272 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %273 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.wpa_key*, %struct.wpa_key** %14, align 8
  %276 = getelementptr inbounds %struct.wpa_key, %struct.wpa_key* %275, i32 0, i32 2
  store i32 %274, i32* %276, align 8
  %277 = load i32, i32* %13, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %310

279:                                              ; preds = %271
  %280 = load i32, i32* %13, align 4
  %281 = load i32, i32* @SME_WEP_INDEX, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %288

284:                                              ; preds = %279
  %285 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %286 = load i64, i64* @SME_SET_TXKEY, align 8
  %287 = call i32 @hostif_sme_enqueue(%struct.ks_wlan_private* %285, i64 %286)
  br label %288

288:                                              ; preds = %284, %279
  %289 = load i32, i32* %13, align 4
  %290 = load i32, i32* @SME_WEP_VAL_MASK, align 4
  %291 = and i32 %289, %290
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %300

293:                                              ; preds = %288
  %294 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %295 = load i64, i64* @SME_SET_KEY1, align 8
  %296 = load i32, i32* %12, align 4
  %297 = sext i32 %296 to i64
  %298 = add nsw i64 %295, %297
  %299 = call i32 @hostif_sme_enqueue(%struct.ks_wlan_private* %294, i64 %298)
  br label %300

300:                                              ; preds = %293, %288
  %301 = load i32, i32* %13, align 4
  %302 = load i32, i32* @SME_WEP_FLAG, align 4
  %303 = and i32 %301, %302
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %309

305:                                              ; preds = %300
  %306 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %307 = load i64, i64* @SME_WEP_FLAG_REQUEST, align 8
  %308 = call i32 @hostif_sme_enqueue(%struct.ks_wlan_private* %306, i64 %307)
  br label %309

309:                                              ; preds = %305, %300
  br label %310

310:                                              ; preds = %309, %271
  store i32 0, i32* %5, align 4
  br label %311

311:                                              ; preds = %310, %268, %45, %36, %27
  %312 = load i32, i32* %5, align 4
  ret i32 %312
}

declare dso_local %struct.ks_wlan_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ether_addr_copy(i32*, i32*) #1

declare dso_local i32 @hostif_sme_enqueue(%struct.ks_wlan_private*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
