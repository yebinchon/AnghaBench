; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_wx.c__rtl92e_wx_set_enc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_wx.c__rtl92e_wx_set_enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.r8192_priv = type { %struct.rtllib_device*, i32, i32, i64 }
%struct.rtllib_device = type { i32, i32, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i8 }

@__const._rtl92e_wx_set_enc.zero_addr = private unnamed_addr constant [4 x [6 x i8]] [[6 x i8] zeroinitializer, [6 x i8] c"\00\00\00\00\00\01", [6 x i8] c"\00\00\00\00\00\02", [6 x i8] c"\00\00\00\00\00\03"], align 16
@ENETDOWN = common dso_local global i32 0, align 4
@COMP_SEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Setting SW wep key\00", align 1
@IW_ENCODE_DISABLED = common dso_local global i32 0, align 4
@KEY_TYPE_NA = common dso_local global i32 0, align 4
@IW_ENCODE_INDEX = common dso_local global i32 0, align 4
@KEY_TYPE_WEP40 = common dso_local global i32 0, align 4
@KEY_TYPE_WEP104 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"wrong type in WEP, not WEP40 and WEP104\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @_rtl92e_wx_set_enc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl92e_wx_set_enc(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.r8192_priv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.rtllib_device*, align 8
  %13 = alloca [4 x i8], align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca [4 x [6 x i8]], align 16
  %17 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %18 = load %struct.net_device*, %struct.net_device** %6, align 8
  %19 = call %struct.r8192_priv* @rtllib_priv(%struct.net_device* %18)
  store %struct.r8192_priv* %19, %struct.r8192_priv** %10, align 8
  %20 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %21 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %20, i32 0, i32 0
  %22 = load %struct.rtllib_device*, %struct.rtllib_device** %21, align 8
  store %struct.rtllib_device* %22, %struct.rtllib_device** %12, align 8
  %23 = bitcast [4 x i8]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %23, i8 0, i64 4, i1 false)
  store i8 -1, i8* %14, align 1
  store i8 0, i8* %15, align 1
  %24 = bitcast [4 x [6 x i8]]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %24, i8* align 16 getelementptr inbounds ([4 x [6 x i8]], [4 x [6 x i8]]* @__const._rtl92e_wx_set_enc.zero_addr, i32 0, i32 0, i32 0), i64 24, i1 false)
  %25 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %26 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %279

30:                                               ; preds = %4
  %31 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %32 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @ENETDOWN, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %279

38:                                               ; preds = %30
  %39 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %40 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %39, i32 0, i32 0
  %41 = load %struct.rtllib_device*, %struct.rtllib_device** %40, align 8
  %42 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %41, i32 0, i32 0
  store i32 1, i32* %42, align 4
  %43 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %44 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %43, i32 0, i32 0
  %45 = load %struct.rtllib_device*, %struct.rtllib_device** %44, align 8
  %46 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %45, i32 0, i32 5
  %47 = call i32 @mutex_lock(i32* %46)
  %48 = load %struct.net_device*, %struct.net_device** %6, align 8
  %49 = call i32 @rtl92e_ips_leave(%struct.net_device* %48)
  %50 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %51 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %50, i32 0, i32 0
  %52 = load %struct.rtllib_device*, %struct.rtllib_device** %51, align 8
  %53 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %52, i32 0, i32 5
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %56 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %55, i32 0, i32 1
  %57 = call i32 @mutex_lock(i32* %56)
  %58 = load i32, i32* @COMP_SEC, align 4
  %59 = call i32 @RT_TRACE(i32 %58, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %60 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %61 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %60, i32 0, i32 0
  %62 = load %struct.rtllib_device*, %struct.rtllib_device** %61, align 8
  %63 = load %struct.iw_request_info*, %struct.iw_request_info** %7, align 8
  %64 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = call i32 @rtllib_wx_set_encode(%struct.rtllib_device* %62, %struct.iw_request_info* %63, %union.iwreq_data* %64, i8* %65)
  store i32 %66, i32* %11, align 4
  %67 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %68 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %67, i32 0, i32 1
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %71 = bitcast %union.iwreq_data* %70 to %struct.TYPE_4__*
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %38
  %78 = load i32, i32* @KEY_TYPE_NA, align 4
  %79 = load %struct.rtllib_device*, %struct.rtllib_device** %12, align 8
  %80 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 4
  %81 = load %struct.rtllib_device*, %struct.rtllib_device** %12, align 8
  %82 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %81, i32 0, i32 1
  store i32 %78, i32* %82, align 4
  %83 = load %struct.net_device*, %struct.net_device** %6, align 8
  %84 = call i32 @rtl92e_cam_reset(%struct.net_device* %83)
  %85 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %86 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %85, i32 0, i32 0
  %87 = load %struct.rtllib_device*, %struct.rtllib_device** %86, align 8
  %88 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @memset(i32 %89, i32 0, i32 128)
  br label %273

91:                                               ; preds = %38
  %92 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %93 = bitcast %union.iwreq_data* %92 to %struct.TYPE_4__*
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %272

97:                                               ; preds = %91
  store i32 0, i32* %17, align 4
  br label %98

98:                                               ; preds = %203, %97
  %99 = load i32, i32* %17, align 4
  %100 = icmp slt i32 %99, 4
  br i1 %100, label %101, label %206

101:                                              ; preds = %98
  %102 = load i8*, i8** %9, align 8
  %103 = load i32, i32* %17, align 4
  %104 = mul nsw i32 4, %103
  %105 = add nsw i32 %104, 0
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %102, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = load i8, i8* %14, align 1
  %111 = sext i8 %110 to i32
  %112 = and i32 %109, %111
  %113 = load i32, i32* %17, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = or i32 %117, %112
  %119 = trunc i32 %118 to i8
  store i8 %119, i8* %115, align 1
  %120 = load i32, i32* %17, align 4
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %122, label %132

122:                                              ; preds = %101
  %123 = load i32, i32* %17, align 4
  %124 = mul nsw i32 4, %123
  %125 = add nsw i32 %124, 1
  %126 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %127 = bitcast %union.iwreq_data* %126 to %struct.TYPE_4__*
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp eq i32 %125, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %122
  store i8 0, i8* %14, align 1
  br label %132

132:                                              ; preds = %131, %122, %101
  %133 = load i32, i32* %17, align 4
  %134 = icmp eq i32 %133, 3
  br i1 %134, label %135, label %145

135:                                              ; preds = %132
  %136 = load i32, i32* %17, align 4
  %137 = mul nsw i32 4, %136
  %138 = add nsw i32 %137, 1
  %139 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %140 = bitcast %union.iwreq_data* %139 to %struct.TYPE_4__*
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = icmp eq i32 %138, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %135
  store i8 0, i8* %14, align 1
  br label %145

145:                                              ; preds = %144, %135, %132
  %146 = load i8*, i8** %9, align 8
  %147 = load i32, i32* %17, align 4
  %148 = mul nsw i32 4, %147
  %149 = add nsw i32 %148, 1
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %146, i64 %150
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = load i8, i8* %14, align 1
  %155 = sext i8 %154 to i32
  %156 = and i32 %153, %155
  %157 = shl i32 %156, 8
  %158 = load i32, i32* %17, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 %159
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = or i32 %162, %157
  %164 = trunc i32 %163 to i8
  store i8 %164, i8* %160, align 1
  %165 = load i8*, i8** %9, align 8
  %166 = load i32, i32* %17, align 4
  %167 = mul nsw i32 4, %166
  %168 = add nsw i32 %167, 2
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, i8* %165, i64 %169
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i32
  %173 = load i8, i8* %14, align 1
  %174 = sext i8 %173 to i32
  %175 = and i32 %172, %174
  %176 = shl i32 %175, 16
  %177 = load i32, i32* %17, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 %178
  %180 = load i8, i8* %179, align 1
  %181 = sext i8 %180 to i32
  %182 = or i32 %181, %176
  %183 = trunc i32 %182 to i8
  store i8 %183, i8* %179, align 1
  %184 = load i8*, i8** %9, align 8
  %185 = load i32, i32* %17, align 4
  %186 = mul nsw i32 4, %185
  %187 = add nsw i32 %186, 3
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8, i8* %184, i64 %188
  %190 = load i8, i8* %189, align 1
  %191 = sext i8 %190 to i32
  %192 = load i8, i8* %14, align 1
  %193 = sext i8 %192 to i32
  %194 = and i32 %191, %193
  %195 = shl i32 %194, 24
  %196 = load i32, i32* %17, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 %197
  %199 = load i8, i8* %198, align 1
  %200 = sext i8 %199 to i32
  %201 = or i32 %200, %195
  %202 = trunc i32 %201 to i8
  store i8 %202, i8* %198, align 1
  br label %203

203:                                              ; preds = %145
  %204 = load i32, i32* %17, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %17, align 4
  br label %98

206:                                              ; preds = %98
  %207 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %208 = bitcast %union.iwreq_data* %207 to %struct.TYPE_4__*
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @IW_ENCODE_INDEX, align 4
  %212 = and i32 %210, %211
  switch i32 %212, label %222 [
    i32 0, label %213
    i32 1, label %218
    i32 2, label %219
    i32 3, label %220
    i32 4, label %221
  ]

213:                                              ; preds = %206
  %214 = load %struct.rtllib_device*, %struct.rtllib_device** %12, align 8
  %215 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i32 0, i32 0
  %217 = load i8, i8* %216, align 4
  store i8 %217, i8* %15, align 1
  br label %223

218:                                              ; preds = %206
  store i8 0, i8* %15, align 1
  br label %223

219:                                              ; preds = %206
  store i8 1, i8* %15, align 1
  br label %223

220:                                              ; preds = %206
  store i8 2, i8* %15, align 1
  br label %223

221:                                              ; preds = %206
  store i8 3, i8* %15, align 1
  br label %223

222:                                              ; preds = %206
  br label %223

223:                                              ; preds = %222, %221, %220, %219, %218, %213
  %224 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %225 = bitcast %union.iwreq_data* %224 to %struct.TYPE_4__*
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = icmp eq i32 %227, 5
  br i1 %228, label %229, label %235

229:                                              ; preds = %223
  %230 = load i32, i32* @KEY_TYPE_WEP40, align 4
  %231 = load %struct.rtllib_device*, %struct.rtllib_device** %12, align 8
  %232 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %231, i32 0, i32 1
  store i32 %230, i32* %232, align 4
  %233 = load %struct.net_device*, %struct.net_device** %6, align 8
  %234 = call i32 @rtl92e_enable_hw_security_config(%struct.net_device* %233)
  br label %271

235:                                              ; preds = %223
  %236 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %237 = bitcast %union.iwreq_data* %236 to %struct.TYPE_4__*
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = icmp eq i32 %239, 13
  br i1 %240, label %241, label %267

241:                                              ; preds = %235
  %242 = load i32, i32* @KEY_TYPE_WEP104, align 4
  %243 = load %struct.rtllib_device*, %struct.rtllib_device** %12, align 8
  %244 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %243, i32 0, i32 1
  store i32 %242, i32* %244, align 4
  %245 = load %struct.net_device*, %struct.net_device** %6, align 8
  %246 = call i32 @rtl92e_enable_hw_security_config(%struct.net_device* %245)
  %247 = load %struct.net_device*, %struct.net_device** %6, align 8
  %248 = load i8, i8* %15, align 1
  %249 = load i8, i8* %15, align 1
  %250 = load i32, i32* @KEY_TYPE_WEP104, align 4
  %251 = load i8, i8* %15, align 1
  %252 = sext i8 %251 to i64
  %253 = getelementptr inbounds [4 x [6 x i8]], [4 x [6 x i8]]* %16, i64 0, i64 %252
  %254 = getelementptr inbounds [6 x i8], [6 x i8]* %253, i64 0, i64 0
  %255 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 0
  %256 = call i32 @rtl92e_set_key(%struct.net_device* %247, i8 signext %248, i8 signext %249, i32 %250, i8* %254, i32 0, i8* %255)
  %257 = load %struct.net_device*, %struct.net_device** %6, align 8
  %258 = load i8, i8* %15, align 1
  %259 = load i8, i8* %15, align 1
  %260 = load i32, i32* @KEY_TYPE_WEP104, align 4
  %261 = load i8, i8* %15, align 1
  %262 = sext i8 %261 to i64
  %263 = getelementptr inbounds [4 x [6 x i8]], [4 x [6 x i8]]* %16, i64 0, i64 %262
  %264 = getelementptr inbounds [6 x i8], [6 x i8]* %263, i64 0, i64 0
  %265 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 0
  %266 = call i32 @rtl92e_set_swcam(%struct.net_device* %257, i8 signext %258, i8 signext %259, i32 %260, i8* %264, i32 0, i8* %265, i32 0)
  br label %270

267:                                              ; preds = %235
  %268 = load %struct.net_device*, %struct.net_device** %6, align 8
  %269 = call i32 @netdev_info(%struct.net_device* %268, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %270

270:                                              ; preds = %267, %241
  br label %271

271:                                              ; preds = %270, %229
  br label %272

272:                                              ; preds = %271, %91
  br label %273

273:                                              ; preds = %272, %77
  %274 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %275 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %274, i32 0, i32 0
  %276 = load %struct.rtllib_device*, %struct.rtllib_device** %275, align 8
  %277 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %276, i32 0, i32 0
  store i32 0, i32* %277, align 4
  %278 = load i32, i32* %11, align 4
  store i32 %278, i32* %5, align 4
  br label %279

279:                                              ; preds = %273, %35, %29
  %280 = load i32, i32* %5, align 4
  ret i32 %280
}

declare dso_local %struct.r8192_priv* @rtllib_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rtl92e_ips_leave(%struct.net_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @RT_TRACE(i32, i8*) #1

declare dso_local i32 @rtllib_wx_set_encode(%struct.rtllib_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*) #1

declare dso_local i32 @rtl92e_cam_reset(%struct.net_device*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @rtl92e_enable_hw_security_config(%struct.net_device*) #1

declare dso_local i32 @rtl92e_set_key(%struct.net_device*, i8 signext, i8 signext, i32, i8*, i32, i8*) #1

declare dso_local i32 @rtl92e_set_swcam(%struct.net_device*, i8 signext, i8 signext, i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
