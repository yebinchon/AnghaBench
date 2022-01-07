; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_wx.c_rtllib_wx_set_encode_ext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_wx.c_rtllib_wx_set_encode_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { i64, %struct.net_device*, i64 (%struct.net_device*)*, i64, i32 (%struct.net_device*, %struct.rtllib_security*)*, %struct.TYPE_2__ }
%struct.net_device = type { i32 }
%struct.rtllib_security = type { i32, i32, i32, i64*, i32 }
%struct.TYPE_2__ = type { i32, %struct.lib80211_crypt_data** }
%struct.lib80211_crypt_data = type { i32*, %struct.lib80211_crypto_ops* }
%struct.lib80211_crypto_ops = type { i64 (i32, i64, i32, i32*)*, i32* (i32)*, i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.iw_point }
%struct.iw_point = type { i32 }
%struct.iw_encode_ext = type { i32, i32, i64, i32, i32 }

@IW_ENCODE_INDEX = common dso_local global i32 0, align 4
@NUM_WEP_KEYS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IW_ENCODE_EXT_GROUP_KEY = common dso_local global i32 0, align 4
@IW_MODE_INFRA = common dso_local global i64 0, align 8
@SEC_ENABLED = common dso_local global i32 0, align 4
@IW_ENCODE_DISABLED = common dso_local global i32 0, align 4
@IW_ENCODE_ALG_NONE = common dso_local global i32 0, align 4
@SEC_LEVEL_0 = common dso_local global i32 0, align 4
@SEC_LEVEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"R-WEP\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"rtllib_crypt_wep\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"R-TKIP\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"rtllib_crypt_tkip\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"R-CCMP\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"rtllib_crypt_ccmp\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Unknown crypto alg %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"alg name:%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"========>unknown crypto alg %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [20 x i8] c"key setting failed\0A\00", align 1
@IW_ENCODE_EXT_SET_TX_KEY = common dso_local global i32 0, align 4
@SEC_ACTIVE_KEY = common dso_local global i32 0, align 4
@SEC_LEVEL_1 = common dso_local global i32 0, align 4
@SEC_LEVEL_2 = common dso_local global i32 0, align 4
@SEC_LEVEL_3 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [19 x i8] c"Port reset failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtllib_wx_set_encode_ext(%struct.rtllib_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtllib_device*, align 8
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
  %19 = alloca %struct.lib80211_crypto_ops*, align 8
  %20 = alloca %struct.lib80211_crypt_data**, align 8
  %21 = alloca %struct.rtllib_security, align 8
  %22 = alloca [100 x i8], align 16
  %23 = alloca %struct.lib80211_crypt_data*, align 8
  store %struct.rtllib_device* %0, %struct.rtllib_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %24 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %25 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %24, i32 0, i32 1
  %26 = load %struct.net_device*, %struct.net_device** %25, align 8
  store %struct.net_device* %26, %struct.net_device** %11, align 8
  %27 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %28 = bitcast %union.iwreq_data* %27 to %struct.iw_point*
  store %struct.iw_point* %28, %struct.iw_point** %12, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = bitcast i8* %29 to %struct.iw_encode_ext*
  store %struct.iw_encode_ext* %30, %struct.iw_encode_ext** %13, align 8
  store i32 0, i32* %16, align 4
  %31 = bitcast %struct.rtllib_security* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %31, i8 0, i64 32, i1 false)
  %32 = load %struct.iw_point*, %struct.iw_point** %12, align 8
  %33 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @IW_ENCODE_INDEX, align 4
  %36 = and i32 %34, %35
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %15, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %4
  %40 = load i32, i32* %15, align 4
  %41 = icmp slt i32 %40, 1
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* @NUM_WEP_KEYS, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42, %39
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %440

49:                                               ; preds = %42
  %50 = load i32, i32* %15, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %15, align 4
  br label %57

52:                                               ; preds = %4
  %53 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %54 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %53, i32 0, i32 5
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %15, align 4
  br label %57

57:                                               ; preds = %52, %49
  %58 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
  %59 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @IW_ENCODE_EXT_GROUP_KEY, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %57
  %65 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %66 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %65, i32 0, i32 5
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %67, align 8
  %69 = load i32, i32* %15, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %68, i64 %70
  store %struct.lib80211_crypt_data** %71, %struct.lib80211_crypt_data*** %20, align 8
  store i32 1, i32* %16, align 4
  br label %101

72:                                               ; preds = %57
  %73 = load i32, i32* %15, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %72
  %76 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
  %77 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 128
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %5, align 4
  br label %440

83:                                               ; preds = %75, %72
  %84 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %85 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @IW_MODE_INFRA, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %83
  %90 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %91 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %90, i32 0, i32 5
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %92, align 8
  %94 = load i32, i32* %15, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %93, i64 %95
  store %struct.lib80211_crypt_data** %96, %struct.lib80211_crypt_data*** %20, align 8
  br label %100

97:                                               ; preds = %83
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %5, align 4
  br label %440

100:                                              ; preds = %89
  br label %101

101:                                              ; preds = %100, %64
  %102 = load i32, i32* @SEC_ENABLED, align 4
  %103 = getelementptr inbounds %struct.rtllib_security, %struct.rtllib_security* %21, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %102
  store i32 %105, i32* %103, align 8
  %106 = load %struct.iw_point*, %struct.iw_point** %12, align 8
  %107 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %118, label %112

112:                                              ; preds = %101
  %113 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
  %114 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @IW_ENCODE_ALG_NONE, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %160

118:                                              ; preds = %112, %101
  %119 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %20, align 8
  %120 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %119, align 8
  %121 = icmp ne %struct.lib80211_crypt_data* %120, null
  br i1 %121, label %122, label %127

122:                                              ; preds = %118
  %123 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %124 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %123, i32 0, i32 5
  %125 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %20, align 8
  %126 = call i32 @lib80211_crypt_delayed_deinit(%struct.TYPE_2__* %124, %struct.lib80211_crypt_data** %125)
  br label %127

127:                                              ; preds = %122, %118
  store i32 0, i32* %14, align 4
  br label %128

128:                                              ; preds = %144, %127
  %129 = load i32, i32* %14, align 4
  %130 = load i32, i32* @NUM_WEP_KEYS, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %147

132:                                              ; preds = %128
  %133 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %134 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %133, i32 0, i32 5
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 1
  %136 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %135, align 8
  %137 = load i32, i32* %14, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %136, i64 %138
  %140 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %139, align 8
  %141 = icmp ne %struct.lib80211_crypt_data* %140, null
  br i1 %141, label %142, label %143

142:                                              ; preds = %132
  br label %147

143:                                              ; preds = %132
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %14, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %14, align 4
  br label %128

147:                                              ; preds = %142, %128
  %148 = load i32, i32* %14, align 4
  %149 = load i32, i32* @NUM_WEP_KEYS, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %159

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.rtllib_security, %struct.rtllib_security* %21, i32 0, i32 1
  store i32 0, i32* %152, align 4
  %153 = load i32, i32* @SEC_LEVEL_0, align 4
  %154 = getelementptr inbounds %struct.rtllib_security, %struct.rtllib_security* %21, i32 0, i32 4
  store i32 %153, i32* %154, align 8
  %155 = load i32, i32* @SEC_LEVEL, align 4
  %156 = getelementptr inbounds %struct.rtllib_security, %struct.rtllib_security* %21, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = or i32 %157, %155
  store i32 %158, i32* %156, align 8
  br label %159

159:                                              ; preds = %151, %147
  br label %395

160:                                              ; preds = %112
  %161 = getelementptr inbounds %struct.rtllib_security, %struct.rtllib_security* %21, i32 0, i32 1
  store i32 1, i32* %161, align 4
  %162 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
  %163 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  switch i32 %164, label %168 [
    i32 128, label %165
    i32 129, label %166
    i32 130, label %167
  ]

165:                                              ; preds = %160
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %18, align 8
  br label %178

166:                                              ; preds = %160
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %17, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8** %18, align 8
  br label %178

167:                                              ; preds = %160
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %17, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8** %18, align 8
  br label %178

168:                                              ; preds = %160
  %169 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %170 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %169, i32 0, i32 1
  %171 = load %struct.net_device*, %struct.net_device** %170, align 8
  %172 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
  %173 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %171, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %174)
  %176 = load i32, i32* @EINVAL, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %10, align 4
  br label %395

178:                                              ; preds = %167, %166, %165
  %179 = load %struct.net_device*, %struct.net_device** %11, align 8
  %180 = load i8*, i8** %17, align 8
  %181 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %179, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* %180)
  %182 = load i8*, i8** %17, align 8
  %183 = call %struct.lib80211_crypto_ops* @lib80211_get_crypto_ops(i8* %182)
  store %struct.lib80211_crypto_ops* %183, %struct.lib80211_crypto_ops** %19, align 8
  %184 = load %struct.lib80211_crypto_ops*, %struct.lib80211_crypto_ops** %19, align 8
  %185 = icmp eq %struct.lib80211_crypto_ops* %184, null
  br i1 %185, label %186, label %196

186:                                              ; preds = %178
  %187 = getelementptr inbounds [100 x i8], [100 x i8]* %22, i64 0, i64 0
  %188 = call i32 @memset(i8* %187, i32 0, i32 100)
  %189 = getelementptr inbounds [100 x i8], [100 x i8]* %22, i64 0, i64 0
  %190 = load i8*, i8** %18, align 8
  %191 = call i32 @sprintf(i8* %189, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %190)
  %192 = getelementptr inbounds [100 x i8], [100 x i8]* %22, i64 0, i64 0
  %193 = call i32 @request_module(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %192)
  %194 = load i8*, i8** %17, align 8
  %195 = call %struct.lib80211_crypto_ops* @lib80211_get_crypto_ops(i8* %194)
  store %struct.lib80211_crypto_ops* %195, %struct.lib80211_crypto_ops** %19, align 8
  br label %196

196:                                              ; preds = %186, %178
  %197 = load %struct.lib80211_crypto_ops*, %struct.lib80211_crypto_ops** %19, align 8
  %198 = icmp eq %struct.lib80211_crypto_ops* %197, null
  br i1 %198, label %199, label %207

199:                                              ; preds = %196
  %200 = load %struct.net_device*, %struct.net_device** %11, align 8
  %201 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
  %202 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %200, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32 %203)
  %205 = load i32, i32* @EINVAL, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %10, align 4
  br label %395

207:                                              ; preds = %196
  %208 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %20, align 8
  %209 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %208, align 8
  %210 = icmp eq %struct.lib80211_crypt_data* %209, null
  br i1 %210, label %218, label %211

211:                                              ; preds = %207
  %212 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %20, align 8
  %213 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %212, align 8
  %214 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %213, i32 0, i32 1
  %215 = load %struct.lib80211_crypto_ops*, %struct.lib80211_crypto_ops** %214, align 8
  %216 = load %struct.lib80211_crypto_ops*, %struct.lib80211_crypto_ops** %19, align 8
  %217 = icmp ne %struct.lib80211_crypto_ops* %215, %216
  br i1 %217, label %218, label %269

218:                                              ; preds = %211, %207
  %219 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %220 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %219, i32 0, i32 5
  %221 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %20, align 8
  %222 = call i32 @lib80211_crypt_delayed_deinit(%struct.TYPE_2__* %220, %struct.lib80211_crypt_data** %221)
  %223 = load i32, i32* @GFP_KERNEL, align 4
  %224 = call %struct.lib80211_crypt_data* @kzalloc(i32 16, i32 %223)
  store %struct.lib80211_crypt_data* %224, %struct.lib80211_crypt_data** %23, align 8
  %225 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %23, align 8
  %226 = icmp eq %struct.lib80211_crypt_data* %225, null
  br i1 %226, label %227, label %230

227:                                              ; preds = %218
  %228 = load i32, i32* @ENOMEM, align 4
  %229 = sub nsw i32 0, %228
  store i32 %229, i32* %10, align 4
  br label %395

230:                                              ; preds = %218
  %231 = load %struct.lib80211_crypto_ops*, %struct.lib80211_crypto_ops** %19, align 8
  %232 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %23, align 8
  %233 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %232, i32 0, i32 1
  store %struct.lib80211_crypto_ops* %231, %struct.lib80211_crypto_ops** %233, align 8
  %234 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %23, align 8
  %235 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %234, i32 0, i32 1
  %236 = load %struct.lib80211_crypto_ops*, %struct.lib80211_crypto_ops** %235, align 8
  %237 = icmp ne %struct.lib80211_crypto_ops* %236, null
  br i1 %237, label %238, label %256

238:                                              ; preds = %230
  %239 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %23, align 8
  %240 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %239, i32 0, i32 1
  %241 = load %struct.lib80211_crypto_ops*, %struct.lib80211_crypto_ops** %240, align 8
  %242 = getelementptr inbounds %struct.lib80211_crypto_ops, %struct.lib80211_crypto_ops* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = call i64 @try_module_get(i32 %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %256

246:                                              ; preds = %238
  %247 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %23, align 8
  %248 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %247, i32 0, i32 1
  %249 = load %struct.lib80211_crypto_ops*, %struct.lib80211_crypto_ops** %248, align 8
  %250 = getelementptr inbounds %struct.lib80211_crypto_ops, %struct.lib80211_crypto_ops* %249, i32 0, i32 1
  %251 = load i32* (i32)*, i32* (i32)** %250, align 8
  %252 = load i32, i32* %15, align 4
  %253 = call i32* %251(i32 %252)
  %254 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %23, align 8
  %255 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %254, i32 0, i32 0
  store i32* %253, i32** %255, align 8
  br label %256

256:                                              ; preds = %246, %238, %230
  %257 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %23, align 8
  %258 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %257, i32 0, i32 0
  %259 = load i32*, i32** %258, align 8
  %260 = icmp eq i32* %259, null
  br i1 %260, label %261, label %266

261:                                              ; preds = %256
  %262 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %23, align 8
  %263 = call i32 @kfree(%struct.lib80211_crypt_data* %262)
  %264 = load i32, i32* @EINVAL, align 4
  %265 = sub nsw i32 0, %264
  store i32 %265, i32* %10, align 4
  br label %395

266:                                              ; preds = %256
  %267 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %23, align 8
  %268 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %20, align 8
  store %struct.lib80211_crypt_data* %267, %struct.lib80211_crypt_data** %268, align 8
  br label %269

269:                                              ; preds = %266, %211
  %270 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
  %271 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %270, i32 0, i32 2
  %272 = load i64, i64* %271, align 8
  %273 = icmp sgt i64 %272, 0
  br i1 %273, label %274, label %309

274:                                              ; preds = %269
  %275 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %20, align 8
  %276 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %275, align 8
  %277 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %276, i32 0, i32 1
  %278 = load %struct.lib80211_crypto_ops*, %struct.lib80211_crypto_ops** %277, align 8
  %279 = getelementptr inbounds %struct.lib80211_crypto_ops, %struct.lib80211_crypto_ops* %278, i32 0, i32 0
  %280 = load i64 (i32, i64, i32, i32*)*, i64 (i32, i64, i32, i32*)** %279, align 8
  %281 = icmp ne i64 (i32, i64, i32, i32*)* %280, null
  br i1 %281, label %282, label %309

282:                                              ; preds = %274
  %283 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %20, align 8
  %284 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %283, align 8
  %285 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %284, i32 0, i32 1
  %286 = load %struct.lib80211_crypto_ops*, %struct.lib80211_crypto_ops** %285, align 8
  %287 = getelementptr inbounds %struct.lib80211_crypto_ops, %struct.lib80211_crypto_ops* %286, i32 0, i32 0
  %288 = load i64 (i32, i64, i32, i32*)*, i64 (i32, i64, i32, i32*)** %287, align 8
  %289 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
  %290 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %289, i32 0, i32 4
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
  %293 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %292, i32 0, i32 2
  %294 = load i64, i64* %293, align 8
  %295 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
  %296 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %295, i32 0, i32 3
  %297 = load i32, i32* %296, align 8
  %298 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %20, align 8
  %299 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %298, align 8
  %300 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %299, i32 0, i32 0
  %301 = load i32*, i32** %300, align 8
  %302 = call i64 %288(i32 %291, i64 %294, i32 %297, i32* %301)
  %303 = icmp slt i64 %302, 0
  br i1 %303, label %304, label %309

304:                                              ; preds = %282
  %305 = load %struct.net_device*, %struct.net_device** %11, align 8
  %306 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %305, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %307 = load i32, i32* @EINVAL, align 4
  %308 = sub nsw i32 0, %307
  store i32 %308, i32* %10, align 4
  br label %395

309:                                              ; preds = %282, %274, %269
  %310 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
  %311 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = load i32, i32* @IW_ENCODE_EXT_SET_TX_KEY, align 4
  %314 = and i32 %312, %313
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %327

316:                                              ; preds = %309
  %317 = load i32, i32* %15, align 4
  %318 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %319 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %318, i32 0, i32 5
  %320 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %319, i32 0, i32 0
  store i32 %317, i32* %320, align 8
  %321 = load i32, i32* %15, align 4
  %322 = getelementptr inbounds %struct.rtllib_security, %struct.rtllib_security* %21, i32 0, i32 2
  store i32 %321, i32* %322, align 8
  %323 = load i32, i32* @SEC_ACTIVE_KEY, align 4
  %324 = getelementptr inbounds %struct.rtllib_security, %struct.rtllib_security* %21, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = or i32 %325, %323
  store i32 %326, i32* %324, align 8
  br label %327

327:                                              ; preds = %316, %309
  %328 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
  %329 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 4
  %331 = load i32, i32* @IW_ENCODE_ALG_NONE, align 4
  %332 = icmp ne i32 %330, %331
  br i1 %332, label %333, label %394

333:                                              ; preds = %327
  %334 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
  %335 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %334, i32 0, i32 2
  %336 = load i64, i64* %335, align 8
  %337 = getelementptr inbounds %struct.rtllib_security, %struct.rtllib_security* %21, i32 0, i32 3
  %338 = load i64*, i64** %337, align 8
  %339 = load i32, i32* %15, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i64, i64* %338, i64 %340
  store i64 %336, i64* %341, align 8
  %342 = load i32, i32* %15, align 4
  %343 = shl i32 1, %342
  %344 = getelementptr inbounds %struct.rtllib_security, %struct.rtllib_security* %21, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = or i32 %345, %343
  store i32 %346, i32* %344, align 8
  %347 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
  %348 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 4
  %350 = icmp eq i32 %349, 128
  br i1 %350, label %351, label %358

351:                                              ; preds = %333
  %352 = load i32, i32* @SEC_LEVEL, align 4
  %353 = getelementptr inbounds %struct.rtllib_security, %struct.rtllib_security* %21, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = or i32 %354, %352
  store i32 %355, i32* %353, align 8
  %356 = load i32, i32* @SEC_LEVEL_1, align 4
  %357 = getelementptr inbounds %struct.rtllib_security, %struct.rtllib_security* %21, i32 0, i32 4
  store i32 %356, i32* %357, align 8
  br label %384

358:                                              ; preds = %333
  %359 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
  %360 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  %362 = icmp eq i32 %361, 129
  br i1 %362, label %363, label %370

363:                                              ; preds = %358
  %364 = load i32, i32* @SEC_LEVEL, align 4
  %365 = getelementptr inbounds %struct.rtllib_security, %struct.rtllib_security* %21, i32 0, i32 0
  %366 = load i32, i32* %365, align 8
  %367 = or i32 %366, %364
  store i32 %367, i32* %365, align 8
  %368 = load i32, i32* @SEC_LEVEL_2, align 4
  %369 = getelementptr inbounds %struct.rtllib_security, %struct.rtllib_security* %21, i32 0, i32 4
  store i32 %368, i32* %369, align 8
  br label %383

370:                                              ; preds = %358
  %371 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
  %372 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %371, i32 0, i32 1
  %373 = load i32, i32* %372, align 4
  %374 = icmp eq i32 %373, 130
  br i1 %374, label %375, label %382

375:                                              ; preds = %370
  %376 = load i32, i32* @SEC_LEVEL, align 4
  %377 = getelementptr inbounds %struct.rtllib_security, %struct.rtllib_security* %21, i32 0, i32 0
  %378 = load i32, i32* %377, align 8
  %379 = or i32 %378, %376
  store i32 %379, i32* %377, align 8
  %380 = load i32, i32* @SEC_LEVEL_3, align 4
  %381 = getelementptr inbounds %struct.rtllib_security, %struct.rtllib_security* %21, i32 0, i32 4
  store i32 %380, i32* %381, align 8
  br label %382

382:                                              ; preds = %375, %370
  br label %383

383:                                              ; preds = %382, %363
  br label %384

384:                                              ; preds = %383, %351
  %385 = load i32, i32* %16, align 4
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %393

387:                                              ; preds = %384
  %388 = load i32, i32* @SEC_LEVEL, align 4
  %389 = xor i32 %388, -1
  %390 = getelementptr inbounds %struct.rtllib_security, %struct.rtllib_security* %21, i32 0, i32 0
  %391 = load i32, i32* %390, align 8
  %392 = and i32 %391, %389
  store i32 %392, i32* %390, align 8
  br label %393

393:                                              ; preds = %387, %384
  br label %394

394:                                              ; preds = %393, %327
  br label %395

395:                                              ; preds = %394, %304, %261, %227, %199, %168, %159
  %396 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %397 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %396, i32 0, i32 4
  %398 = load i32 (%struct.net_device*, %struct.rtllib_security*)*, i32 (%struct.net_device*, %struct.rtllib_security*)** %397, align 8
  %399 = icmp ne i32 (%struct.net_device*, %struct.rtllib_security*)* %398, null
  br i1 %399, label %400, label %408

400:                                              ; preds = %395
  %401 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %402 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %401, i32 0, i32 4
  %403 = load i32 (%struct.net_device*, %struct.rtllib_security*)*, i32 (%struct.net_device*, %struct.rtllib_security*)** %402, align 8
  %404 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %405 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %404, i32 0, i32 1
  %406 = load %struct.net_device*, %struct.net_device** %405, align 8
  %407 = call i32 %403(%struct.net_device* %406, %struct.rtllib_security* %21)
  br label %408

408:                                              ; preds = %400, %395
  %409 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %410 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %409, i32 0, i32 3
  %411 = load i64, i64* %410, align 8
  %412 = icmp ne i64 %411, 0
  br i1 %412, label %413, label %438

413:                                              ; preds = %408
  %414 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %415 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %414, i32 0, i32 0
  %416 = load i64, i64* %415, align 8
  %417 = load i64, i64* @IW_MODE_INFRA, align 8
  %418 = icmp ne i64 %416, %417
  br i1 %418, label %419, label %438

419:                                              ; preds = %413
  %420 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %421 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %420, i32 0, i32 2
  %422 = load i64 (%struct.net_device*)*, i64 (%struct.net_device*)** %421, align 8
  %423 = icmp ne i64 (%struct.net_device*)* %422, null
  br i1 %423, label %424, label %438

424:                                              ; preds = %419
  %425 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %426 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %425, i32 0, i32 2
  %427 = load i64 (%struct.net_device*)*, i64 (%struct.net_device*)** %426, align 8
  %428 = load %struct.net_device*, %struct.net_device** %11, align 8
  %429 = call i64 %427(%struct.net_device* %428)
  %430 = icmp ne i64 %429, 0
  br i1 %430, label %431, label %438

431:                                              ; preds = %424
  %432 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %433 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %432, i32 0, i32 1
  %434 = load %struct.net_device*, %struct.net_device** %433, align 8
  %435 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %434, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  %436 = load i32, i32* @EINVAL, align 4
  %437 = sub nsw i32 0, %436
  store i32 %437, i32* %5, align 4
  br label %440

438:                                              ; preds = %424, %419, %413, %408
  %439 = load i32, i32* %10, align 4
  store i32 %439, i32* %5, align 4
  br label %440

440:                                              ; preds = %438, %431, %97, %80, %46
  %441 = load i32, i32* %5, align 4
  ret i32 %441
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @lib80211_crypt_delayed_deinit(%struct.TYPE_2__*, %struct.lib80211_crypt_data**) #2

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, ...) #2

declare dso_local %struct.lib80211_crypto_ops* @lib80211_get_crypto_ops(i8*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*) #2

declare dso_local i32 @request_module(i8*, i8*) #2

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, ...) #2

declare dso_local %struct.lib80211_crypt_data* @kzalloc(i32, i32) #2

declare dso_local i64 @try_module_get(i32) #2

declare dso_local i32 @kfree(%struct.lib80211_crypt_data*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
