; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_core.c_rtl8192_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_core.c_rtl8192_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.r8192_priv = type { i32, %struct.ieee80211_device* }
%struct.ieee80211_device = type { i32, i8*, i64, i8* }
%struct.iwreq = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.iw_point }
%struct.iw_point = type { i32, i32 }
%struct.ieee_param = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@__const.rtl8192_ioctl.broadcast_addr = private unnamed_addr constant [6 x i32] [i32 255, i32 255, i32 255, i32 255, i32 255, i32 255], align 16
@EINVAL = common dso_local global i32 0, align 4
@IEEE_CMD_SET_ENCRYPTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"CCMP\00", align 1
@KEY_TYPE_CCMP = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"TKIP\00", align 1
@KEY_TYPE_TKIP = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"WEP\00", align 1
@KEY_TYPE_WEP104 = common dso_local global i8* null, align 8
@KEY_TYPE_WEP40 = common dso_local global i8* null, align 8
@KEY_TYPE_NA = common dso_local global i8* null, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @rtl8192_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8192_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ifreq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.r8192_priv*, align 8
  %8 = alloca %struct.iwreq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_device*, align 8
  %11 = alloca [4 x i32], align 16
  %12 = alloca [6 x i32], align 16
  %13 = alloca %struct.iw_point*, align 8
  %14 = alloca %struct.ieee_param*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ifreq* %1, %struct.ifreq** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call i64 @ieee80211_priv(%struct.net_device* %15)
  %17 = inttoptr i64 %16 to %struct.r8192_priv*
  store %struct.r8192_priv* %17, %struct.r8192_priv** %7, align 8
  %18 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %19 = bitcast %struct.ifreq* %18 to %struct.iwreq*
  store %struct.iwreq* %19, %struct.iwreq** %8, align 8
  store i32 -1, i32* %9, align 4
  %20 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %21 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %20, i32 0, i32 1
  %22 = load %struct.ieee80211_device*, %struct.ieee80211_device** %21, align 8
  store %struct.ieee80211_device* %22, %struct.ieee80211_device** %10, align 8
  %23 = bitcast [6 x i32]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %23, i8* align 16 bitcast ([6 x i32]* @__const.rtl8192_ioctl.broadcast_addr to i8*), i64 24, i1 false)
  %24 = load %struct.iwreq*, %struct.iwreq** %8, align 8
  %25 = getelementptr inbounds %struct.iwreq, %struct.iwreq* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store %struct.iw_point* %26, %struct.iw_point** %13, align 8
  store %struct.ieee_param* null, %struct.ieee_param** %14, align 8
  %27 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %28 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.iw_point*, %struct.iw_point** %13, align 8
  %31 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = icmp ult i64 %33, 24
  br i1 %34, label %40, label %35

35:                                               ; preds = %3
  %36 = load %struct.iw_point*, %struct.iw_point** %13, align 8
  %37 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %35, %3
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %9, align 4
  br label %299

43:                                               ; preds = %35
  %44 = load %struct.iw_point*, %struct.iw_point** %13, align 8
  %45 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.iw_point*, %struct.iw_point** %13, align 8
  %48 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.ieee_param* @memdup_user(i32 %46, i32 %49)
  store %struct.ieee_param* %50, %struct.ieee_param** %14, align 8
  %51 = load %struct.ieee_param*, %struct.ieee_param** %14, align 8
  %52 = call i64 @IS_ERR(%struct.ieee_param* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %43
  %55 = load %struct.ieee_param*, %struct.ieee_param** %14, align 8
  %56 = call i32 @PTR_ERR(%struct.ieee_param* %55)
  store i32 %56, i32* %9, align 4
  br label %299

57:                                               ; preds = %43
  %58 = load i32, i32* %6, align 4
  switch i32 %58, label %293 [
    i32 128, label %59
  ]

59:                                               ; preds = %57
  %60 = load %struct.ieee_param*, %struct.ieee_param** %14, align 8
  %61 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @IEEE_CMD_SET_ENCRYPTION, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %285

65:                                               ; preds = %59
  %66 = load %struct.ieee_param*, %struct.ieee_param** %14, align 8
  %67 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %191

72:                                               ; preds = %65
  %73 = load %struct.ieee_param*, %struct.ieee_param** %14, align 8
  %74 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @strcmp(i32 %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %72
  %81 = load i8*, i8** @KEY_TYPE_CCMP, align 8
  %82 = load %struct.ieee80211_device*, %struct.ieee80211_device** %10, align 8
  %83 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %82, i32 0, i32 3
  store i8* %81, i8** %83, align 8
  br label %134

84:                                               ; preds = %72
  %85 = load %struct.ieee_param*, %struct.ieee_param** %14, align 8
  %86 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @strcmp(i32 %89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %84
  %93 = load i8*, i8** @KEY_TYPE_TKIP, align 8
  %94 = load %struct.ieee80211_device*, %struct.ieee80211_device** %10, align 8
  %95 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %94, i32 0, i32 3
  store i8* %93, i8** %95, align 8
  br label %133

96:                                               ; preds = %84
  %97 = load %struct.ieee_param*, %struct.ieee_param** %14, align 8
  %98 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @strcmp(i32 %101, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %128

104:                                              ; preds = %96
  %105 = load %struct.ieee_param*, %struct.ieee_param** %14, align 8
  %106 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %109, 13
  br i1 %110, label %111, label %115

111:                                              ; preds = %104
  %112 = load i8*, i8** @KEY_TYPE_WEP104, align 8
  %113 = load %struct.ieee80211_device*, %struct.ieee80211_device** %10, align 8
  %114 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %113, i32 0, i32 3
  store i8* %112, i8** %114, align 8
  br label %127

115:                                              ; preds = %104
  %116 = load %struct.ieee_param*, %struct.ieee_param** %14, align 8
  %117 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 5
  br i1 %121, label %122, label %126

122:                                              ; preds = %115
  %123 = load i8*, i8** @KEY_TYPE_WEP40, align 8
  %124 = load %struct.ieee80211_device*, %struct.ieee80211_device** %10, align 8
  %125 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %124, i32 0, i32 3
  store i8* %123, i8** %125, align 8
  br label %126

126:                                              ; preds = %122, %115
  br label %127

127:                                              ; preds = %126, %111
  br label %132

128:                                              ; preds = %96
  %129 = load i8*, i8** @KEY_TYPE_NA, align 8
  %130 = load %struct.ieee80211_device*, %struct.ieee80211_device** %10, align 8
  %131 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %130, i32 0, i32 3
  store i8* %129, i8** %131, align 8
  br label %132

132:                                              ; preds = %128, %127
  br label %133

133:                                              ; preds = %132, %92
  br label %134

134:                                              ; preds = %133, %80
  %135 = load %struct.ieee80211_device*, %struct.ieee80211_device** %10, align 8
  %136 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %135, i32 0, i32 3
  %137 = load i8*, i8** %136, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %139, label %190

139:                                              ; preds = %134
  %140 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %141 = load %struct.ieee_param*, %struct.ieee_param** %14, align 8
  %142 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @memcpy(i32* %140, i32 %145, i32 16)
  %147 = load %struct.net_device*, %struct.net_device** %4, align 8
  %148 = call i32 @EnableHWSecurityConfig8192(%struct.net_device* %147)
  %149 = load %struct.net_device*, %struct.net_device** %4, align 8
  %150 = load %struct.ieee_param*, %struct.ieee_param** %14, align 8
  %151 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.ieee80211_device*, %struct.ieee80211_device** %10, align 8
  %156 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %155, i32 0, i32 3
  %157 = load i8*, i8** %156, align 8
  %158 = load %struct.ieee80211_device*, %struct.ieee80211_device** %10, align 8
  %159 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = inttoptr i64 %160 to i32*
  %162 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %163 = call i32 @setKey(%struct.net_device* %149, i32 4, i32 %154, i8* %157, i32* %161, i32 0, i32* %162)
  %164 = load %struct.ieee80211_device*, %struct.ieee80211_device** %10, align 8
  %165 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp ne i32 %166, 2
  br i1 %167, label %168, label %189

168:                                              ; preds = %139
  %169 = load %struct.net_device*, %struct.net_device** %4, align 8
  %170 = load %struct.ieee_param*, %struct.ieee_param** %14, align 8
  %171 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.ieee_param*, %struct.ieee_param** %14, align 8
  %176 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.ieee80211_device*, %struct.ieee80211_device** %10, align 8
  %181 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %180, i32 0, i32 3
  %182 = load i8*, i8** %181, align 8
  %183 = load %struct.ieee80211_device*, %struct.ieee80211_device** %10, align 8
  %184 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = inttoptr i64 %185 to i32*
  %187 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %188 = call i32 @setKey(%struct.net_device* %169, i32 %174, i32 %179, i8* %182, i32* %186, i32 0, i32* %187)
  br label %189

189:                                              ; preds = %168, %139
  br label %190

190:                                              ; preds = %189, %134
  br label %284

191:                                              ; preds = %65
  %192 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %193 = load %struct.ieee_param*, %struct.ieee_param** %14, align 8
  %194 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @memcpy(i32* %192, i32 %197, i32 16)
  %199 = load %struct.ieee_param*, %struct.ieee_param** %14, align 8
  %200 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @strcmp(i32 %203, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %191
  %207 = load i8*, i8** @KEY_TYPE_CCMP, align 8
  %208 = load %struct.ieee80211_device*, %struct.ieee80211_device** %10, align 8
  %209 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %208, i32 0, i32 1
  store i8* %207, i8** %209, align 8
  br label %260

210:                                              ; preds = %191
  %211 = load %struct.ieee_param*, %struct.ieee_param** %14, align 8
  %212 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @strcmp(i32 %215, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %210
  %219 = load i8*, i8** @KEY_TYPE_TKIP, align 8
  %220 = load %struct.ieee80211_device*, %struct.ieee80211_device** %10, align 8
  %221 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %220, i32 0, i32 1
  store i8* %219, i8** %221, align 8
  br label %259

222:                                              ; preds = %210
  %223 = load %struct.ieee_param*, %struct.ieee_param** %14, align 8
  %224 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @strcmp(i32 %227, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %254

230:                                              ; preds = %222
  %231 = load %struct.ieee_param*, %struct.ieee_param** %14, align 8
  %232 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = icmp eq i32 %235, 13
  br i1 %236, label %237, label %241

237:                                              ; preds = %230
  %238 = load i8*, i8** @KEY_TYPE_WEP104, align 8
  %239 = load %struct.ieee80211_device*, %struct.ieee80211_device** %10, align 8
  %240 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %239, i32 0, i32 1
  store i8* %238, i8** %240, align 8
  br label %253

241:                                              ; preds = %230
  %242 = load %struct.ieee_param*, %struct.ieee_param** %14, align 8
  %243 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = icmp eq i32 %246, 5
  br i1 %247, label %248, label %252

248:                                              ; preds = %241
  %249 = load i8*, i8** @KEY_TYPE_WEP40, align 8
  %250 = load %struct.ieee80211_device*, %struct.ieee80211_device** %10, align 8
  %251 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %250, i32 0, i32 1
  store i8* %249, i8** %251, align 8
  br label %252

252:                                              ; preds = %248, %241
  br label %253

253:                                              ; preds = %252, %237
  br label %258

254:                                              ; preds = %222
  %255 = load i8*, i8** @KEY_TYPE_NA, align 8
  %256 = load %struct.ieee80211_device*, %struct.ieee80211_device** %10, align 8
  %257 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %256, i32 0, i32 1
  store i8* %255, i8** %257, align 8
  br label %258

258:                                              ; preds = %254, %253
  br label %259

259:                                              ; preds = %258, %218
  br label %260

260:                                              ; preds = %259, %206
  %261 = load %struct.ieee80211_device*, %struct.ieee80211_device** %10, align 8
  %262 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %261, i32 0, i32 1
  %263 = load i8*, i8** %262, align 8
  %264 = icmp ne i8* %263, null
  br i1 %264, label %265, label %283

265:                                              ; preds = %260
  %266 = load %struct.net_device*, %struct.net_device** %4, align 8
  %267 = load %struct.ieee_param*, %struct.ieee_param** %14, align 8
  %268 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.ieee_param*, %struct.ieee_param** %14, align 8
  %273 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.ieee80211_device*, %struct.ieee80211_device** %10, align 8
  %278 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %277, i32 0, i32 1
  %279 = load i8*, i8** %278, align 8
  %280 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 0
  %281 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %282 = call i32 @setKey(%struct.net_device* %266, i32 %271, i32 %276, i8* %279, i32* %280, i32 0, i32* %281)
  br label %283

283:                                              ; preds = %265, %260
  br label %284

284:                                              ; preds = %283, %190
  br label %285

285:                                              ; preds = %284, %59
  %286 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %287 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %286, i32 0, i32 1
  %288 = load %struct.ieee80211_device*, %struct.ieee80211_device** %287, align 8
  %289 = load %struct.iwreq*, %struct.iwreq** %8, align 8
  %290 = getelementptr inbounds %struct.iwreq, %struct.iwreq* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i32 0, i32 0
  %292 = call i32 @ieee80211_wpa_supplicant_ioctl(%struct.ieee80211_device* %288, %struct.iw_point* %291)
  store i32 %292, i32* %9, align 4
  br label %296

293:                                              ; preds = %57
  %294 = load i32, i32* @EOPNOTSUPP, align 4
  %295 = sub nsw i32 0, %294
  store i32 %295, i32* %9, align 4
  br label %296

296:                                              ; preds = %293, %285
  %297 = load %struct.ieee_param*, %struct.ieee_param** %14, align 8
  %298 = call i32 @kfree(%struct.ieee_param* %297)
  store %struct.ieee_param* null, %struct.ieee_param** %14, align 8
  br label %299

299:                                              ; preds = %296, %54, %40
  %300 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %301 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %300, i32 0, i32 0
  %302 = call i32 @mutex_unlock(i32* %301)
  %303 = load i32, i32* %9, align 4
  ret i32 %303
}

declare dso_local i64 @ieee80211_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.ieee_param* @memdup_user(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ieee_param*) #1

declare dso_local i32 @PTR_ERR(%struct.ieee_param*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @EnableHWSecurityConfig8192(%struct.net_device*) #1

declare dso_local i32 @setKey(%struct.net_device*, i32, i32, i8*, i32*, i32, i32*) #1

declare dso_local i32 @ieee80211_wpa_supplicant_ioctl(%struct.ieee80211_device*, %struct.iw_point*) #1

declare dso_local i32 @kfree(%struct.ieee_param*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
