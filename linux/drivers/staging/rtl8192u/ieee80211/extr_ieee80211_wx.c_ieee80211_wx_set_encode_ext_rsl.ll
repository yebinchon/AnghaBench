; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_wx.c_ieee80211_wx_set_encode_ext_rsl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_wx.c_ieee80211_wx_set_encode_ext_rsl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32, i64, i64 (%struct.net_device*)*, i64, %struct.net_device*, i32 (%struct.net_device*, %struct.ieee80211_security*)*, %struct.ieee80211_crypt_data** }
%struct.net_device = type { i32 }
%struct.ieee80211_security = type { i32, i32, i64*, i32, i32 }
%struct.ieee80211_crypt_data = type { i32, %struct.ieee80211_crypto_ops* }
%struct.ieee80211_crypto_ops = type { i64 (i32, i64, i32, i32)*, i32 (i32)*, i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.iw_point }
%struct.iw_point = type { i32 }
%struct.iw_encode_ext = type { i32, i32, i64, i32, i32 }

@IW_ENCODE_INDEX = common dso_local global i32 0, align 4
@WEP_KEYS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IW_ENCODE_EXT_GROUP_KEY = common dso_local global i32 0, align 4
@IW_MODE_INFRA = common dso_local global i64 0, align 8
@SEC_ENABLED = common dso_local global i32 0, align 4
@IW_ENCODE_DISABLED = common dso_local global i32 0, align 4
@IW_ENCODE_ALG_NONE = common dso_local global i32 0, align 4
@SEC_LEVEL_0 = common dso_local global i32 0, align 4
@SEC_LEVEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"WEP\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"ieee80211_crypt_wep\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"TKIP\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"ieee80211_crypt_tkip\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"CCMP\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"ieee80211_crypt_ccmp\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"%s: unknown crypto alg %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"alg name:%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"========>unknown crypto alg %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [24 x i8] c"%s: key setting failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"key setting failed\0A\00", align 1
@IW_ENCODE_EXT_SET_TX_KEY = common dso_local global i32 0, align 4
@SEC_ACTIVE_KEY = common dso_local global i32 0, align 4
@SEC_LEVEL_1 = common dso_local global i32 0, align 4
@SEC_LEVEL_2 = common dso_local global i32 0, align 4
@SEC_LEVEL_3 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [23 x i8] c"%s: reset_port failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_wx_set_encode_ext(%struct.ieee80211_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca %struct.iw_point*, align 8
  %13 = alloca %struct.iw_encode_ext*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.ieee80211_crypto_ops*, align 8
  %20 = alloca %struct.ieee80211_crypt_data**, align 8
  %21 = alloca %struct.ieee80211_security, align 8
  %22 = alloca %struct.ieee80211_crypt_data*, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %23 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %24 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %23, i32 0, i32 4
  %25 = load %struct.net_device*, %struct.net_device** %24, align 8
  store %struct.net_device* %25, %struct.net_device** %11, align 8
  %26 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %27 = bitcast %union.iwreq_data* %26 to %struct.iw_point*
  store %struct.iw_point* %27, %struct.iw_point** %12, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = bitcast i8* %28 to %struct.iw_encode_ext*
  store %struct.iw_encode_ext* %29, %struct.iw_encode_ext** %13, align 8
  store i32 0, i32* %16, align 4
  %30 = bitcast %struct.ieee80211_security* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 24, i1 false)
  %31 = load %struct.iw_point*, %struct.iw_point** %12, align 8
  %32 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IW_ENCODE_INDEX, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %4
  %39 = load i32, i32* %15, align 4
  %40 = icmp slt i32 %39, 1
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* @WEP_KEYS, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41, %38
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %429

48:                                               ; preds = %41
  %49 = load i32, i32* %15, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %15, align 4
  br label %55

51:                                               ; preds = %4
  %52 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %53 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %15, align 4
  br label %55

55:                                               ; preds = %51, %48
  %56 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
  %57 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @IW_ENCODE_EXT_GROUP_KEY, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %55
  %63 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %64 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %63, i32 0, i32 6
  %65 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %64, align 8
  %66 = load i32, i32* %15, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %65, i64 %67
  store %struct.ieee80211_crypt_data** %68, %struct.ieee80211_crypt_data*** %20, align 8
  store i32 1, i32* %16, align 4
  br label %97

69:                                               ; preds = %55
  %70 = load i32, i32* %15, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %69
  %73 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
  %74 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 128
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %5, align 4
  br label %429

80:                                               ; preds = %72, %69
  %81 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %82 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @IW_MODE_INFRA, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %80
  %87 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %88 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %87, i32 0, i32 6
  %89 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %88, align 8
  %90 = load i32, i32* %15, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %89, i64 %91
  store %struct.ieee80211_crypt_data** %92, %struct.ieee80211_crypt_data*** %20, align 8
  br label %96

93:                                               ; preds = %80
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %5, align 4
  br label %429

96:                                               ; preds = %86
  br label %97

97:                                               ; preds = %96, %62
  %98 = load i32, i32* @SEC_ENABLED, align 4
  %99 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %21, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %98
  store i32 %101, i32* %99, align 8
  %102 = load %struct.iw_point*, %struct.iw_point** %12, align 8
  %103 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %97
  %109 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
  %110 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @IW_ENCODE_ALG_NONE, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %154

114:                                              ; preds = %108, %97
  %115 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %20, align 8
  %116 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %115, align 8
  %117 = icmp ne %struct.ieee80211_crypt_data* %116, null
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %120 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %20, align 8
  %121 = call i32 @ieee80211_crypt_delayed_deinit(%struct.ieee80211_device* %119, %struct.ieee80211_crypt_data** %120)
  br label %122

122:                                              ; preds = %118, %114
  store i32 0, i32* %14, align 4
  br label %123

123:                                              ; preds = %138, %122
  %124 = load i32, i32* %14, align 4
  %125 = load i32, i32* @WEP_KEYS, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %141

127:                                              ; preds = %123
  %128 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %129 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %128, i32 0, i32 6
  %130 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %129, align 8
  %131 = load i32, i32* %14, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %130, i64 %132
  %134 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %133, align 8
  %135 = icmp ne %struct.ieee80211_crypt_data* %134, null
  br i1 %135, label %136, label %137

136:                                              ; preds = %127
  br label %141

137:                                              ; preds = %127
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %14, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %14, align 4
  br label %123

141:                                              ; preds = %136, %123
  %142 = load i32, i32* %14, align 4
  %143 = load i32, i32* @WEP_KEYS, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %153

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %21, i32 0, i32 0
  store i32 0, i32* %146, align 8
  %147 = load i32, i32* @SEC_LEVEL_0, align 4
  %148 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %21, i32 0, i32 4
  store i32 %147, i32* %148, align 4
  %149 = load i32, i32* @SEC_LEVEL, align 4
  %150 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %21, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = or i32 %151, %149
  store i32 %152, i32* %150, align 8
  br label %153

153:                                              ; preds = %145, %141
  br label %384

154:                                              ; preds = %108
  %155 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %21, i32 0, i32 0
  store i32 1, i32* %155, align 8
  %156 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
  %157 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  switch i32 %158, label %162 [
    i32 128, label %159
    i32 129, label %160
    i32 130, label %161
  ]

159:                                              ; preds = %154
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** %18, align 8
  br label %172

160:                                              ; preds = %154
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %17, align 8
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8** %18, align 8
  br label %172

161:                                              ; preds = %154
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %17, align 8
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8** %18, align 8
  br label %172

162:                                              ; preds = %154
  %163 = load %struct.net_device*, %struct.net_device** %11, align 8
  %164 = getelementptr inbounds %struct.net_device, %struct.net_device* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
  %167 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = call i32 (i8*, i32, ...) @IEEE80211_DEBUG_WX(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %165, i32 %168)
  %170 = load i32, i32* @EINVAL, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %10, align 4
  br label %384

172:                                              ; preds = %161, %160, %159
  %173 = load i8*, i8** %17, align 8
  %174 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* %173)
  %175 = load i8*, i8** %17, align 8
  %176 = call i32 @ieee80211_get_crypto_ops(i8* %175)
  %177 = load i8*, i8** %18, align 8
  %178 = call %struct.ieee80211_crypto_ops* @try_then_request_module(i32 %176, i8* %177)
  store %struct.ieee80211_crypto_ops* %178, %struct.ieee80211_crypto_ops** %19, align 8
  %179 = load %struct.ieee80211_crypto_ops*, %struct.ieee80211_crypto_ops** %19, align 8
  %180 = icmp ne %struct.ieee80211_crypto_ops* %179, null
  br i1 %180, label %195, label %181

181:                                              ; preds = %172
  %182 = load %struct.net_device*, %struct.net_device** %11, align 8
  %183 = getelementptr inbounds %struct.net_device, %struct.net_device* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
  %186 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = call i32 (i8*, i32, ...) @IEEE80211_DEBUG_WX(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %184, i32 %187)
  %189 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
  %190 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %191)
  %193 = load i32, i32* @EINVAL, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %10, align 4
  br label %384

195:                                              ; preds = %172
  %196 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %20, align 8
  %197 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %196, align 8
  %198 = icmp ne %struct.ieee80211_crypt_data* %197, null
  br i1 %198, label %199, label %206

199:                                              ; preds = %195
  %200 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %20, align 8
  %201 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %200, align 8
  %202 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %201, i32 0, i32 1
  %203 = load %struct.ieee80211_crypto_ops*, %struct.ieee80211_crypto_ops** %202, align 8
  %204 = load %struct.ieee80211_crypto_ops*, %struct.ieee80211_crypto_ops** %19, align 8
  %205 = icmp ne %struct.ieee80211_crypto_ops* %203, %204
  br i1 %205, label %206, label %256

206:                                              ; preds = %199, %195
  %207 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %208 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %20, align 8
  %209 = call i32 @ieee80211_crypt_delayed_deinit(%struct.ieee80211_device* %207, %struct.ieee80211_crypt_data** %208)
  %210 = load i32, i32* @GFP_KERNEL, align 4
  %211 = call %struct.ieee80211_crypt_data* @kzalloc(i32 16, i32 %210)
  store %struct.ieee80211_crypt_data* %211, %struct.ieee80211_crypt_data** %22, align 8
  %212 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %22, align 8
  %213 = icmp ne %struct.ieee80211_crypt_data* %212, null
  br i1 %213, label %217, label %214

214:                                              ; preds = %206
  %215 = load i32, i32* @ENOMEM, align 4
  %216 = sub nsw i32 0, %215
  store i32 %216, i32* %10, align 4
  br label %384

217:                                              ; preds = %206
  %218 = load %struct.ieee80211_crypto_ops*, %struct.ieee80211_crypto_ops** %19, align 8
  %219 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %22, align 8
  %220 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %219, i32 0, i32 1
  store %struct.ieee80211_crypto_ops* %218, %struct.ieee80211_crypto_ops** %220, align 8
  %221 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %22, align 8
  %222 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %221, i32 0, i32 1
  %223 = load %struct.ieee80211_crypto_ops*, %struct.ieee80211_crypto_ops** %222, align 8
  %224 = icmp ne %struct.ieee80211_crypto_ops* %223, null
  br i1 %224, label %225, label %243

225:                                              ; preds = %217
  %226 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %22, align 8
  %227 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %226, i32 0, i32 1
  %228 = load %struct.ieee80211_crypto_ops*, %struct.ieee80211_crypto_ops** %227, align 8
  %229 = getelementptr inbounds %struct.ieee80211_crypto_ops, %struct.ieee80211_crypto_ops* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = call i64 @try_module_get(i32 %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %243

233:                                              ; preds = %225
  %234 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %22, align 8
  %235 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %234, i32 0, i32 1
  %236 = load %struct.ieee80211_crypto_ops*, %struct.ieee80211_crypto_ops** %235, align 8
  %237 = getelementptr inbounds %struct.ieee80211_crypto_ops, %struct.ieee80211_crypto_ops* %236, i32 0, i32 1
  %238 = load i32 (i32)*, i32 (i32)** %237, align 8
  %239 = load i32, i32* %15, align 4
  %240 = call i32 %238(i32 %239)
  %241 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %22, align 8
  %242 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %241, i32 0, i32 0
  store i32 %240, i32* %242, align 8
  br label %243

243:                                              ; preds = %233, %225, %217
  %244 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %22, align 8
  %245 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %253, label %248

248:                                              ; preds = %243
  %249 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %22, align 8
  %250 = call i32 @kfree(%struct.ieee80211_crypt_data* %249)
  %251 = load i32, i32* @EINVAL, align 4
  %252 = sub nsw i32 0, %251
  store i32 %252, i32* %10, align 4
  br label %384

253:                                              ; preds = %243
  %254 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %22, align 8
  %255 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %20, align 8
  store %struct.ieee80211_crypt_data* %254, %struct.ieee80211_crypt_data** %255, align 8
  br label %256

256:                                              ; preds = %253, %199
  %257 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
  %258 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %257, i32 0, i32 2
  %259 = load i64, i64* %258, align 8
  %260 = icmp sgt i64 %259, 0
  br i1 %260, label %261, label %299

261:                                              ; preds = %256
  %262 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %20, align 8
  %263 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %262, align 8
  %264 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %263, i32 0, i32 1
  %265 = load %struct.ieee80211_crypto_ops*, %struct.ieee80211_crypto_ops** %264, align 8
  %266 = getelementptr inbounds %struct.ieee80211_crypto_ops, %struct.ieee80211_crypto_ops* %265, i32 0, i32 0
  %267 = load i64 (i32, i64, i32, i32)*, i64 (i32, i64, i32, i32)** %266, align 8
  %268 = icmp ne i64 (i32, i64, i32, i32)* %267, null
  br i1 %268, label %269, label %299

269:                                              ; preds = %261
  %270 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %20, align 8
  %271 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %270, align 8
  %272 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %271, i32 0, i32 1
  %273 = load %struct.ieee80211_crypto_ops*, %struct.ieee80211_crypto_ops** %272, align 8
  %274 = getelementptr inbounds %struct.ieee80211_crypto_ops, %struct.ieee80211_crypto_ops* %273, i32 0, i32 0
  %275 = load i64 (i32, i64, i32, i32)*, i64 (i32, i64, i32, i32)** %274, align 8
  %276 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
  %277 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %276, i32 0, i32 4
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
  %280 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %279, i32 0, i32 2
  %281 = load i64, i64* %280, align 8
  %282 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
  %283 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 8
  %285 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %20, align 8
  %286 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %285, align 8
  %287 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = call i64 %275(i32 %278, i64 %281, i32 %284, i32 %288)
  %290 = icmp slt i64 %289, 0
  br i1 %290, label %291, label %299

291:                                              ; preds = %269
  %292 = load %struct.net_device*, %struct.net_device** %11, align 8
  %293 = getelementptr inbounds %struct.net_device, %struct.net_device* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = call i32 (i8*, i32, ...) @IEEE80211_DEBUG_WX(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 %294)
  %296 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %297 = load i32, i32* @EINVAL, align 4
  %298 = sub nsw i32 0, %297
  store i32 %298, i32* %10, align 4
  br label %384

299:                                              ; preds = %269, %261, %256
  %300 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
  %301 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = load i32, i32* @IW_ENCODE_EXT_SET_TX_KEY, align 4
  %304 = and i32 %302, %303
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %316

306:                                              ; preds = %299
  %307 = load i32, i32* %15, align 4
  %308 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %309 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %308, i32 0, i32 0
  store i32 %307, i32* %309, align 8
  %310 = load i32, i32* %15, align 4
  %311 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %21, i32 0, i32 1
  store i32 %310, i32* %311, align 4
  %312 = load i32, i32* @SEC_ACTIVE_KEY, align 4
  %313 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %21, i32 0, i32 3
  %314 = load i32, i32* %313, align 8
  %315 = or i32 %314, %312
  store i32 %315, i32* %313, align 8
  br label %316

316:                                              ; preds = %306, %299
  %317 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
  %318 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = load i32, i32* @IW_ENCODE_ALG_NONE, align 4
  %321 = icmp ne i32 %319, %320
  br i1 %321, label %322, label %383

322:                                              ; preds = %316
  %323 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
  %324 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %323, i32 0, i32 2
  %325 = load i64, i64* %324, align 8
  %326 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %21, i32 0, i32 2
  %327 = load i64*, i64** %326, align 8
  %328 = load i32, i32* %15, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i64, i64* %327, i64 %329
  store i64 %325, i64* %330, align 8
  %331 = load i32, i32* %15, align 4
  %332 = call i32 @BIT(i32 %331)
  %333 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %21, i32 0, i32 3
  %334 = load i32, i32* %333, align 8
  %335 = or i32 %334, %332
  store i32 %335, i32* %333, align 8
  %336 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
  %337 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %336, i32 0, i32 1
  %338 = load i32, i32* %337, align 4
  %339 = icmp eq i32 %338, 128
  br i1 %339, label %340, label %347

340:                                              ; preds = %322
  %341 = load i32, i32* @SEC_LEVEL, align 4
  %342 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %21, i32 0, i32 3
  %343 = load i32, i32* %342, align 8
  %344 = or i32 %343, %341
  store i32 %344, i32* %342, align 8
  %345 = load i32, i32* @SEC_LEVEL_1, align 4
  %346 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %21, i32 0, i32 4
  store i32 %345, i32* %346, align 4
  br label %373

347:                                              ; preds = %322
  %348 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
  %349 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 4
  %351 = icmp eq i32 %350, 129
  br i1 %351, label %352, label %359

352:                                              ; preds = %347
  %353 = load i32, i32* @SEC_LEVEL, align 4
  %354 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %21, i32 0, i32 3
  %355 = load i32, i32* %354, align 8
  %356 = or i32 %355, %353
  store i32 %356, i32* %354, align 8
  %357 = load i32, i32* @SEC_LEVEL_2, align 4
  %358 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %21, i32 0, i32 4
  store i32 %357, i32* %358, align 4
  br label %372

359:                                              ; preds = %347
  %360 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
  %361 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %360, i32 0, i32 1
  %362 = load i32, i32* %361, align 4
  %363 = icmp eq i32 %362, 130
  br i1 %363, label %364, label %371

364:                                              ; preds = %359
  %365 = load i32, i32* @SEC_LEVEL, align 4
  %366 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %21, i32 0, i32 3
  %367 = load i32, i32* %366, align 8
  %368 = or i32 %367, %365
  store i32 %368, i32* %366, align 8
  %369 = load i32, i32* @SEC_LEVEL_3, align 4
  %370 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %21, i32 0, i32 4
  store i32 %369, i32* %370, align 4
  br label %371

371:                                              ; preds = %364, %359
  br label %372

372:                                              ; preds = %371, %352
  br label %373

373:                                              ; preds = %372, %340
  %374 = load i32, i32* %16, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %382

376:                                              ; preds = %373
  %377 = load i32, i32* @SEC_LEVEL, align 4
  %378 = xor i32 %377, -1
  %379 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %21, i32 0, i32 3
  %380 = load i32, i32* %379, align 8
  %381 = and i32 %380, %378
  store i32 %381, i32* %379, align 8
  br label %382

382:                                              ; preds = %376, %373
  br label %383

383:                                              ; preds = %382, %316
  br label %384

384:                                              ; preds = %383, %291, %248, %214, %181, %162, %153
  %385 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %386 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %385, i32 0, i32 5
  %387 = load i32 (%struct.net_device*, %struct.ieee80211_security*)*, i32 (%struct.net_device*, %struct.ieee80211_security*)** %386, align 8
  %388 = icmp ne i32 (%struct.net_device*, %struct.ieee80211_security*)* %387, null
  br i1 %388, label %389, label %397

389:                                              ; preds = %384
  %390 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %391 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %390, i32 0, i32 5
  %392 = load i32 (%struct.net_device*, %struct.ieee80211_security*)*, i32 (%struct.net_device*, %struct.ieee80211_security*)** %391, align 8
  %393 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %394 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %393, i32 0, i32 4
  %395 = load %struct.net_device*, %struct.net_device** %394, align 8
  %396 = call i32 %392(%struct.net_device* %395, %struct.ieee80211_security* %21)
  br label %397

397:                                              ; preds = %389, %384
  %398 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %399 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %398, i32 0, i32 3
  %400 = load i64, i64* %399, align 8
  %401 = icmp ne i64 %400, 0
  br i1 %401, label %402, label %427

402:                                              ; preds = %397
  %403 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %404 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %403, i32 0, i32 1
  %405 = load i64, i64* %404, align 8
  %406 = load i64, i64* @IW_MODE_INFRA, align 8
  %407 = icmp ne i64 %405, %406
  br i1 %407, label %408, label %427

408:                                              ; preds = %402
  %409 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %410 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %409, i32 0, i32 2
  %411 = load i64 (%struct.net_device*)*, i64 (%struct.net_device*)** %410, align 8
  %412 = icmp ne i64 (%struct.net_device*)* %411, null
  br i1 %412, label %413, label %427

413:                                              ; preds = %408
  %414 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %415 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %414, i32 0, i32 2
  %416 = load i64 (%struct.net_device*)*, i64 (%struct.net_device*)** %415, align 8
  %417 = load %struct.net_device*, %struct.net_device** %11, align 8
  %418 = call i64 %416(%struct.net_device* %417)
  %419 = icmp ne i64 %418, 0
  br i1 %419, label %420, label %427

420:                                              ; preds = %413
  %421 = load %struct.net_device*, %struct.net_device** %11, align 8
  %422 = getelementptr inbounds %struct.net_device, %struct.net_device* %421, i32 0, i32 0
  %423 = load i32, i32* %422, align 4
  %424 = call i32 (i8*, i32, ...) @IEEE80211_DEBUG_WX(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i32 %423)
  %425 = load i32, i32* @EINVAL, align 4
  %426 = sub nsw i32 0, %425
  store i32 %426, i32* %5, align 4
  br label %429

427:                                              ; preds = %413, %408, %402, %397
  %428 = load i32, i32* %10, align 4
  store i32 %428, i32* %5, align 4
  br label %429

429:                                              ; preds = %427, %420, %93, %77, %45
  %430 = load i32, i32* %5, align 4
  ret i32 %430
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ieee80211_crypt_delayed_deinit(%struct.ieee80211_device*, %struct.ieee80211_crypt_data**) #2

declare dso_local i32 @IEEE80211_DEBUG_WX(i8*, i32, ...) #2

declare dso_local i32 @printk(i8*, ...) #2

declare dso_local %struct.ieee80211_crypto_ops* @try_then_request_module(i32, i8*) #2

declare dso_local i32 @ieee80211_get_crypto_ops(i8*) #2

declare dso_local %struct.ieee80211_crypt_data* @kzalloc(i32, i32) #2

declare dso_local i64 @try_module_get(i32) #2

declare dso_local i32 @kfree(%struct.ieee80211_crypt_data*) #2

declare dso_local i32 @BIT(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
