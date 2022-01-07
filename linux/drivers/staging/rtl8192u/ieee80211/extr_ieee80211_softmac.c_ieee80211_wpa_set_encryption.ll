; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_softmac.c_ieee80211_wpa_set_encryption.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_softmac.c_ieee80211_wpa_set_encryption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i64, i64, i32, i64 (i32)*, i64, i32 (i32, %struct.ieee80211_security*)*, i64, i64, %struct.ieee80211_crypt_data** }
%struct.ieee80211_security = type { i32, i32, i64, i32, i32*, i32* }
%struct.ieee80211_crypt_data = type { i32, %struct.ieee80211_crypto_ops* }
%struct.ieee80211_crypto_ops = type { i64 (i64, i32, i32, i32)*, i32 (i64)*, i32 }
%struct.ieee_param = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i32, i64, i32, i64, i64, i32 }

@IEEE_CRYPT_ALG_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Len mismatch %d, %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WEP_KEYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@SEC_LEVEL_0 = common dso_local global i32 0, align 4
@SEC_ENABLED = common dso_local global i32 0, align 4
@SEC_LEVEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"TKIP\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"WEP\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"ieee80211_crypt_wep\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"ieee80211_crypt_tkip\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"CCMP\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"ieee80211_crypt_ccmp\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"unknown crypto alg '%s'\0A\00", align 1
@IEEE_CRYPT_ERR_UNKNOWN_ALG = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IEEE_CRYPT_ERR_CRYPT_INIT_FAILED = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [20 x i8] c"key setting failed\0A\00", align 1
@IEEE_CRYPT_ERR_KEY_SET_FAILED = common dso_local global i64 0, align 8
@SEC_ACTIVE_KEY = common dso_local global i32 0, align 4
@SEC_LEVEL_1 = common dso_local global i32 0, align 4
@SEC_LEVEL_2 = common dso_local global i32 0, align 4
@SEC_LEVEL_3 = common dso_local global i32 0, align 4
@IW_MODE_INFRA = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [19 x i8] c"reset_port failed\0A\00", align 1
@IEEE_CRYPT_ERR_CARD_CONF_FAILED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_device*, %struct.ieee_param*, i32)* @ieee80211_wpa_set_encryption to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_wpa_set_encryption(%struct.ieee80211_device* %0, %struct.ieee_param* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_device*, align 8
  %6 = alloca %struct.ieee_param*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ieee80211_crypto_ops*, align 8
  %11 = alloca %struct.ieee80211_crypt_data**, align 8
  %12 = alloca %struct.ieee80211_security, align 8
  %13 = alloca %struct.ieee80211_crypt_data*, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %5, align 8
  store %struct.ieee_param* %1, %struct.ieee_param** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i8* null, i8** %9, align 8
  store %struct.ieee80211_crypto_ops* null, %struct.ieee80211_crypto_ops** %10, align 8
  %14 = bitcast %struct.ieee80211_security* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 40, i1 false)
  %15 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %16 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  store i64 0, i64* %18, align 8
  %19 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %20 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load i32, i32* @IEEE_CRYPT_ALG_NAME_LEN, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  store i8 0, i8* %27, align 1
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %30 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %36 = bitcast %struct.ieee_param* %35 to i8*
  %37 = ptrtoint i8* %34 to i64
  %38 = ptrtoint i8* %36 to i64
  %39 = sub i64 %37, %38
  %40 = trunc i64 %39 to i32
  %41 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %42 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %40, %45
  %47 = icmp ne i32 %28, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %3
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %51 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %54)
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %494

58:                                               ; preds = %3
  %59 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %60 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @is_broadcast_ether_addr(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %86

64:                                               ; preds = %58
  %65 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %66 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @WEP_KEYS, align 4
  %71 = icmp sge i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %64
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %494

75:                                               ; preds = %64
  %76 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %77 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %76, i32 0, i32 8
  %78 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %77, align 8
  %79 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %80 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %78, i64 %84
  store %struct.ieee80211_crypt_data** %85, %struct.ieee80211_crypt_data*** %11, align 8
  br label %89

86:                                               ; preds = %58
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %494

89:                                               ; preds = %75
  %90 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %91 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = call i64 @strcmp(i8* %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %114

97:                                               ; preds = %89
  %98 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %11, align 8
  %99 = icmp ne %struct.ieee80211_crypt_data** %98, null
  br i1 %99, label %100, label %113

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %12, i32 0, i32 1
  store i32 0, i32* %101, align 4
  %102 = load i32, i32* @SEC_LEVEL_0, align 4
  %103 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %12, i32 0, i32 3
  store i32 %102, i32* %103, align 8
  %104 = load i32, i32* @SEC_ENABLED, align 4
  %105 = load i32, i32* @SEC_LEVEL, align 4
  %106 = or i32 %104, %105
  %107 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %12, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %106
  store i32 %109, i32* %107, align 8
  %110 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %111 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %11, align 8
  %112 = call i32 @ieee80211_crypt_delayed_deinit(%struct.ieee80211_device* %110, %struct.ieee80211_crypt_data** %111)
  br label %113

113:                                              ; preds = %100, %97
  br label %445

114:                                              ; preds = %89
  %115 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %12, i32 0, i32 1
  store i32 1, i32* %115, align 4
  %116 = load i32, i32* @SEC_ENABLED, align 4
  %117 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %12, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = or i32 %118, %116
  store i32 %119, i32* %117, align 8
  %120 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %121 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %120, i32 0, i32 7
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %138, label %124

124:                                              ; preds = %114
  %125 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %126 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %125, i32 0, i32 6
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %138, label %129

129:                                              ; preds = %124
  %130 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %131 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = call i64 @strcmp(i8* %134, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %129
  br label %320

138:                                              ; preds = %129, %124, %114
  %139 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %140 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = call i64 @strcmp(i8* %143, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %138
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  br label %167

147:                                              ; preds = %138
  %148 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %149 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = call i64 @strcmp(i8* %152, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %147
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %166

156:                                              ; preds = %147
  %157 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %158 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = call i64 @strcmp(i8* %161, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %156
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8** %9, align 8
  br label %165

165:                                              ; preds = %164, %156
  br label %166

166:                                              ; preds = %165, %155
  br label %167

167:                                              ; preds = %166, %146
  %168 = load i8*, i8** %9, align 8
  %169 = icmp ne i8* %168, null
  br i1 %169, label %170, label %179

170:                                              ; preds = %167
  %171 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %172 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = load i8*, i8** %174, align 8
  %176 = call i32 @ieee80211_get_crypto_ops(i8* %175)
  %177 = load i8*, i8** %9, align 8
  %178 = call %struct.ieee80211_crypto_ops* @try_then_request_module(i32 %176, i8* %177)
  store %struct.ieee80211_crypto_ops* %178, %struct.ieee80211_crypto_ops** %10, align 8
  br label %179

179:                                              ; preds = %170, %167
  %180 = load %struct.ieee80211_crypto_ops*, %struct.ieee80211_crypto_ops** %10, align 8
  %181 = icmp ne %struct.ieee80211_crypto_ops* %180, null
  br i1 %181, label %196, label %182

182:                                              ; preds = %179
  %183 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %184 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = load i8*, i8** %186, align 8
  %188 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8* %187)
  %189 = load i64, i64* @IEEE_CRYPT_ERR_UNKNOWN_ALG, align 8
  %190 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %191 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 2
  store i64 %189, i64* %193, align 8
  %194 = load i32, i32* @EINVAL, align 4
  %195 = sub nsw i32 0, %194
  store i32 %195, i32* %8, align 4
  br label %445

196:                                              ; preds = %179
  %197 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %11, align 8
  %198 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %197, align 8
  %199 = icmp ne %struct.ieee80211_crypt_data* %198, null
  br i1 %199, label %200, label %207

200:                                              ; preds = %196
  %201 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %11, align 8
  %202 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %201, align 8
  %203 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %202, i32 0, i32 1
  %204 = load %struct.ieee80211_crypto_ops*, %struct.ieee80211_crypto_ops** %203, align 8
  %205 = load %struct.ieee80211_crypto_ops*, %struct.ieee80211_crypto_ops** %10, align 8
  %206 = icmp ne %struct.ieee80211_crypto_ops* %204, %205
  br i1 %206, label %207, label %267

207:                                              ; preds = %200, %196
  %208 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %209 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %11, align 8
  %210 = call i32 @ieee80211_crypt_delayed_deinit(%struct.ieee80211_device* %208, %struct.ieee80211_crypt_data** %209)
  %211 = load i32, i32* @GFP_KERNEL, align 4
  %212 = call %struct.ieee80211_crypt_data* @kzalloc(i32 16, i32 %211)
  store %struct.ieee80211_crypt_data* %212, %struct.ieee80211_crypt_data** %13, align 8
  %213 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %13, align 8
  %214 = icmp ne %struct.ieee80211_crypt_data* %213, null
  br i1 %214, label %218, label %215

215:                                              ; preds = %207
  %216 = load i32, i32* @ENOMEM, align 4
  %217 = sub nsw i32 0, %216
  store i32 %217, i32* %8, align 4
  br label %445

218:                                              ; preds = %207
  %219 = load %struct.ieee80211_crypto_ops*, %struct.ieee80211_crypto_ops** %10, align 8
  %220 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %13, align 8
  %221 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %220, i32 0, i32 1
  store %struct.ieee80211_crypto_ops* %219, %struct.ieee80211_crypto_ops** %221, align 8
  %222 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %13, align 8
  %223 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %222, i32 0, i32 1
  %224 = load %struct.ieee80211_crypto_ops*, %struct.ieee80211_crypto_ops** %223, align 8
  %225 = icmp ne %struct.ieee80211_crypto_ops* %224, null
  br i1 %225, label %226, label %249

226:                                              ; preds = %218
  %227 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %13, align 8
  %228 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %227, i32 0, i32 1
  %229 = load %struct.ieee80211_crypto_ops*, %struct.ieee80211_crypto_ops** %228, align 8
  %230 = getelementptr inbounds %struct.ieee80211_crypto_ops, %struct.ieee80211_crypto_ops* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = call i64 @try_module_get(i32 %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %249

234:                                              ; preds = %226
  %235 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %13, align 8
  %236 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %235, i32 0, i32 1
  %237 = load %struct.ieee80211_crypto_ops*, %struct.ieee80211_crypto_ops** %236, align 8
  %238 = getelementptr inbounds %struct.ieee80211_crypto_ops, %struct.ieee80211_crypto_ops* %237, i32 0, i32 1
  %239 = load i32 (i64)*, i32 (i64)** %238, align 8
  %240 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %241 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  %245 = sext i32 %244 to i64
  %246 = call i32 %239(i64 %245)
  %247 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %13, align 8
  %248 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %247, i32 0, i32 0
  store i32 %246, i32* %248, align 8
  br label %249

249:                                              ; preds = %234, %226, %218
  %250 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %13, align 8
  %251 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %264, label %254

254:                                              ; preds = %249
  %255 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %13, align 8
  %256 = call i32 @kfree(%struct.ieee80211_crypt_data* %255)
  %257 = load i64, i64* @IEEE_CRYPT_ERR_CRYPT_INIT_FAILED, align 8
  %258 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %259 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 2
  store i64 %257, i64* %261, align 8
  %262 = load i32, i32* @EINVAL, align 4
  %263 = sub nsw i32 0, %262
  store i32 %263, i32* %8, align 4
  br label %445

264:                                              ; preds = %249
  %265 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %13, align 8
  %266 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %11, align 8
  store %struct.ieee80211_crypt_data* %265, %struct.ieee80211_crypt_data** %266, align 8
  br label %267

267:                                              ; preds = %264, %200
  %268 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %269 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i32 0, i32 3
  %272 = load i32, i32* %271, align 8
  %273 = icmp sgt i32 %272, 0
  br i1 %273, label %274, label %319

274:                                              ; preds = %267
  %275 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %11, align 8
  %276 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %275, align 8
  %277 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %276, i32 0, i32 1
  %278 = load %struct.ieee80211_crypto_ops*, %struct.ieee80211_crypto_ops** %277, align 8
  %279 = getelementptr inbounds %struct.ieee80211_crypto_ops, %struct.ieee80211_crypto_ops* %278, i32 0, i32 0
  %280 = load i64 (i64, i32, i32, i32)*, i64 (i64, i32, i32, i32)** %279, align 8
  %281 = icmp ne i64 (i64, i32, i32, i32)* %280, null
  br i1 %281, label %282, label %319

282:                                              ; preds = %274
  %283 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %11, align 8
  %284 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %283, align 8
  %285 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %284, i32 0, i32 1
  %286 = load %struct.ieee80211_crypto_ops*, %struct.ieee80211_crypto_ops** %285, align 8
  %287 = getelementptr inbounds %struct.ieee80211_crypto_ops, %struct.ieee80211_crypto_ops* %286, i32 0, i32 0
  %288 = load i64 (i64, i32, i32, i32)*, i64 (i64, i32, i32, i32)** %287, align 8
  %289 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %290 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %291, i32 0, i32 4
  %293 = load i64, i64* %292, align 8
  %294 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %295 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %296, i32 0, i32 3
  %298 = load i32, i32* %297, align 8
  %299 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %300 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %301, i32 0, i32 6
  %303 = load i32, i32* %302, align 8
  %304 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %11, align 8
  %305 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %304, align 8
  %306 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = call i64 %288(i64 %293, i32 %298, i32 %303, i32 %307)
  %309 = icmp slt i64 %308, 0
  br i1 %309, label %310, label %319

310:                                              ; preds = %282
  %311 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  %312 = load i64, i64* @IEEE_CRYPT_ERR_KEY_SET_FAILED, align 8
  %313 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %314 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %315, i32 0, i32 2
  store i64 %312, i64* %316, align 8
  %317 = load i32, i32* @EINVAL, align 4
  %318 = sub nsw i32 0, %317
  store i32 %318, i32* %8, align 4
  br label %445

319:                                              ; preds = %282, %274, %267
  br label %320

320:                                              ; preds = %319, %137
  %321 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %322 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %323, i32 0, i32 5
  %325 = load i64, i64* %324, align 8
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %347

327:                                              ; preds = %320
  %328 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %329 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 8
  %333 = sext i32 %332 to i64
  %334 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %335 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %334, i32 0, i32 0
  store i64 %333, i64* %335, align 8
  %336 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %337 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 8
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %12, i32 0, i32 2
  store i64 %341, i64* %342, align 8
  %343 = load i32, i32* @SEC_ACTIVE_KEY, align 4
  %344 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %12, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = or i32 %345, %343
  store i32 %346, i32* %344, align 8
  br label %353

347:                                              ; preds = %320
  %348 = load i32, i32* @SEC_ACTIVE_KEY, align 4
  %349 = xor i32 %348, -1
  %350 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %12, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = and i32 %351, %349
  store i32 %352, i32* %350, align 8
  br label %353

353:                                              ; preds = %347, %327
  %354 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %12, i32 0, i32 5
  %355 = load i32*, i32** %354, align 8
  %356 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %357 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 8
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i32, i32* %355, i64 %361
  %363 = load i32, i32* %362, align 4
  %364 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %365 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %366, i32 0, i32 4
  %368 = load i64, i64* %367, align 8
  %369 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %370 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %369, i32 0, i32 0
  %371 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %371, i32 0, i32 3
  %373 = load i32, i32* %372, align 8
  %374 = call i32 @memcpy(i32 %363, i64 %368, i32 %373)
  %375 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %376 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %376, i32 0, i32 0
  %378 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %377, i32 0, i32 3
  %379 = load i32, i32* %378, align 8
  %380 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %12, i32 0, i32 4
  %381 = load i32*, i32** %380, align 8
  %382 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %383 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %383, i32 0, i32 0
  %385 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %384, i32 0, i32 1
  %386 = load i32, i32* %385, align 8
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i32, i32* %381, i64 %387
  store i32 %379, i32* %388, align 4
  %389 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %390 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %389, i32 0, i32 0
  %391 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %390, i32 0, i32 0
  %392 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %391, i32 0, i32 1
  %393 = load i32, i32* %392, align 8
  %394 = shl i32 1, %393
  %395 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %12, i32 0, i32 0
  %396 = load i32, i32* %395, align 8
  %397 = or i32 %396, %394
  store i32 %397, i32* %395, align 8
  %398 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %399 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %398, i32 0, i32 0
  %400 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %399, i32 0, i32 0
  %401 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %400, i32 0, i32 0
  %402 = load i8*, i8** %401, align 8
  %403 = call i64 @strcmp(i8* %402, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %404 = icmp eq i64 %403, 0
  br i1 %404, label %405, label %412

405:                                              ; preds = %353
  %406 = load i32, i32* @SEC_LEVEL, align 4
  %407 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %12, i32 0, i32 0
  %408 = load i32, i32* %407, align 8
  %409 = or i32 %408, %406
  store i32 %409, i32* %407, align 8
  %410 = load i32, i32* @SEC_LEVEL_1, align 4
  %411 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %12, i32 0, i32 3
  store i32 %410, i32* %411, align 8
  br label %444

412:                                              ; preds = %353
  %413 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %414 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %413, i32 0, i32 0
  %415 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %414, i32 0, i32 0
  %416 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %415, i32 0, i32 0
  %417 = load i8*, i8** %416, align 8
  %418 = call i64 @strcmp(i8* %417, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %419 = icmp eq i64 %418, 0
  br i1 %419, label %420, label %427

420:                                              ; preds = %412
  %421 = load i32, i32* @SEC_LEVEL, align 4
  %422 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %12, i32 0, i32 0
  %423 = load i32, i32* %422, align 8
  %424 = or i32 %423, %421
  store i32 %424, i32* %422, align 8
  %425 = load i32, i32* @SEC_LEVEL_2, align 4
  %426 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %12, i32 0, i32 3
  store i32 %425, i32* %426, align 8
  br label %443

427:                                              ; preds = %412
  %428 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %429 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %428, i32 0, i32 0
  %430 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %429, i32 0, i32 0
  %431 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %430, i32 0, i32 0
  %432 = load i8*, i8** %431, align 8
  %433 = call i64 @strcmp(i8* %432, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %434 = icmp eq i64 %433, 0
  br i1 %434, label %435, label %442

435:                                              ; preds = %427
  %436 = load i32, i32* @SEC_LEVEL, align 4
  %437 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %12, i32 0, i32 0
  %438 = load i32, i32* %437, align 8
  %439 = or i32 %438, %436
  store i32 %439, i32* %437, align 8
  %440 = load i32, i32* @SEC_LEVEL_3, align 4
  %441 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %12, i32 0, i32 3
  store i32 %440, i32* %441, align 8
  br label %442

442:                                              ; preds = %435, %427
  br label %443

443:                                              ; preds = %442, %420
  br label %444

444:                                              ; preds = %443, %405
  br label %445

445:                                              ; preds = %444, %310, %254, %215, %182, %113
  %446 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %447 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %446, i32 0, i32 5
  %448 = load i32 (i32, %struct.ieee80211_security*)*, i32 (i32, %struct.ieee80211_security*)** %447, align 8
  %449 = icmp ne i32 (i32, %struct.ieee80211_security*)* %448, null
  br i1 %449, label %450, label %458

450:                                              ; preds = %445
  %451 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %452 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %451, i32 0, i32 5
  %453 = load i32 (i32, %struct.ieee80211_security*)*, i32 (i32, %struct.ieee80211_security*)** %452, align 8
  %454 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %455 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %454, i32 0, i32 2
  %456 = load i32, i32* %455, align 8
  %457 = call i32 %453(i32 %456, %struct.ieee80211_security* %12)
  br label %458

458:                                              ; preds = %450, %445
  %459 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %460 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %459, i32 0, i32 4
  %461 = load i64, i64* %460, align 8
  %462 = icmp ne i64 %461, 0
  br i1 %462, label %463, label %492

463:                                              ; preds = %458
  %464 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %465 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %464, i32 0, i32 1
  %466 = load i64, i64* %465, align 8
  %467 = load i64, i64* @IW_MODE_INFRA, align 8
  %468 = icmp ne i64 %466, %467
  br i1 %468, label %469, label %492

469:                                              ; preds = %463
  %470 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %471 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %470, i32 0, i32 3
  %472 = load i64 (i32)*, i64 (i32)** %471, align 8
  %473 = icmp ne i64 (i32)* %472, null
  br i1 %473, label %474, label %492

474:                                              ; preds = %469
  %475 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %476 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %475, i32 0, i32 3
  %477 = load i64 (i32)*, i64 (i32)** %476, align 8
  %478 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %479 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %478, i32 0, i32 2
  %480 = load i32, i32* %479, align 8
  %481 = call i64 %477(i32 %480)
  %482 = icmp ne i64 %481, 0
  br i1 %482, label %483, label %492

483:                                              ; preds = %474
  %484 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  %485 = load i64, i64* @IEEE_CRYPT_ERR_CARD_CONF_FAILED, align 8
  %486 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %487 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %486, i32 0, i32 0
  %488 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %487, i32 0, i32 0
  %489 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %488, i32 0, i32 2
  store i64 %485, i64* %489, align 8
  %490 = load i32, i32* @EINVAL, align 4
  %491 = sub nsw i32 0, %490
  store i32 %491, i32* %4, align 4
  br label %494

492:                                              ; preds = %474, %469, %463, %458
  %493 = load i32, i32* %8, align 4
  store i32 %493, i32* %4, align 4
  br label %494

494:                                              ; preds = %492, %483, %86, %72, %48
  %495 = load i32, i32* %4, align 4
  ret i32 %495
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @printk(i8*, ...) #2

declare dso_local i64 @is_broadcast_ether_addr(i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @ieee80211_crypt_delayed_deinit(%struct.ieee80211_device*, %struct.ieee80211_crypt_data**) #2

declare dso_local %struct.ieee80211_crypto_ops* @try_then_request_module(i32, i8*) #2

declare dso_local i32 @ieee80211_get_crypto_ops(i8*) #2

declare dso_local %struct.ieee80211_crypt_data* @kzalloc(i32, i32) #2

declare dso_local i64 @try_module_get(i32) #2

declare dso_local i32 @kfree(%struct.ieee80211_crypt_data*) #2

declare dso_local i32 @memcpy(i32, i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
