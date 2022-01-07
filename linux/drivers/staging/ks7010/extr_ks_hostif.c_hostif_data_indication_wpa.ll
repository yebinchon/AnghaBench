; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_hostif_data_indication_wpa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_hostif_data_indication_wpa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_wlan_private = type { i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i64, %struct.mic_failure, %struct.wpa_key* }
%struct.mic_failure = type { i64, i32, i32 }
%struct.wpa_key = type { i32, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.ether_hdr = type { i64, i64, i32*, i32, i32 }
%union.iwreq_data = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@MICHAEL_MIC_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"invalid data format\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TYPE_PMK1 = common dso_local global i16 0, align 2
@IW_AUTH_CIPHER_TKIP = common dso_local global i64 0, align 8
@TYPE_GMK1 = common dso_local global i16 0, align 2
@TYPE_GMK2 = common dso_local global i16 0, align 2
@.str.1 = private unnamed_addr constant [30 x i8] c"TKIP: protocol=%04X: size=%u\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"MIC FAILURE\0A\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"MLME-MICHAELMICFAILURE.indication(keyid=%d %scast addr=%pM)\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"broad\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"uni\00", align 1
@IWEVCUSTOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ks_wlan_private*, i16)* @hostif_data_indication_wpa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostif_data_indication_wpa(%struct.ks_wlan_private* %0, i16 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ks_wlan_private*, align 8
  %5 = alloca i16, align 2
  %6 = alloca %struct.ether_hdr*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [128 x i8], align 16
  %11 = alloca i64, align 8
  %12 = alloca %struct.mic_failure*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %union.iwreq_data, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.wpa_key*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ks_wlan_private* %0, %struct.ks_wlan_private** %4, align 8
  store i16 %1, i16* %5, align 2
  %19 = load i32, i32* @MICHAEL_MIC_LEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %8, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %9, align 8
  %23 = load i32, i32* @MICHAEL_MIC_LEN, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %13, align 8
  %26 = load i16, i16* %5, align 2
  %27 = zext i16 %26 to i32
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %15, align 4
  %29 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %30 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 3
  %32 = load %struct.wpa_key*, %struct.wpa_key** %31, align 8
  %33 = load i32, i32* %15, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.wpa_key, %struct.wpa_key* %32, i64 %34
  store %struct.wpa_key* %35, %struct.wpa_key** %16, align 8
  %36 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %37 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to %struct.ether_hdr*
  store %struct.ether_hdr* %40, %struct.ether_hdr** %6, align 8
  %41 = load %struct.ether_hdr*, %struct.ether_hdr** %6, align 8
  %42 = getelementptr inbounds %struct.ether_hdr, %struct.ether_hdr* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = call zeroext i16 @ntohs(i32 %43)
  store i16 %44, i16* %7, align 2
  %45 = load %struct.ether_hdr*, %struct.ether_hdr** %6, align 8
  %46 = getelementptr inbounds %struct.ether_hdr, %struct.ether_hdr* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.ether_hdr*, %struct.ether_hdr** %6, align 8
  %49 = getelementptr inbounds %struct.ether_hdr, %struct.ether_hdr* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %47, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %2
  %53 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %54 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @netdev_err(i32 %55, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %57 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %58 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %256

64:                                               ; preds = %2
  %65 = load i16, i16* %5, align 2
  %66 = zext i16 %65 to i32
  %67 = load i16, i16* @TYPE_PMK1, align 2
  %68 = zext i16 %67 to i32
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %64
  %71 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %72 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @IW_AUTH_CIPHER_TKIP, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %103, label %77

77:                                               ; preds = %70, %64
  %78 = load i16, i16* %5, align 2
  %79 = zext i16 %78 to i32
  %80 = load i16, i16* @TYPE_GMK1, align 2
  %81 = zext i16 %80 to i32
  %82 = icmp eq i32 %79, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %77
  %84 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %85 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @IW_AUTH_CIPHER_TKIP, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %103, label %90

90:                                               ; preds = %83, %77
  %91 = load i16, i16* %5, align 2
  %92 = zext i16 %91 to i32
  %93 = load i16, i16* @TYPE_GMK2, align 2
  %94 = zext i16 %93 to i32
  %95 = icmp eq i32 %92, %94
  br i1 %95, label %96, label %255

96:                                               ; preds = %90
  %97 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %98 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @IW_AUTH_CIPHER_TKIP, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %255

103:                                              ; preds = %96, %83, %70
  %104 = load %struct.wpa_key*, %struct.wpa_key** %16, align 8
  %105 = getelementptr inbounds %struct.wpa_key, %struct.wpa_key* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %255

108:                                              ; preds = %103
  %109 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %110 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load i16, i16* %7, align 2
  %113 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %114 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @netdev_dbg(i32 %111, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i16 zeroext %112, i32 %115)
  %117 = getelementptr inbounds i8, i8* %22, i64 0
  %118 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %119 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = sext i32 %120 to i64
  %122 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %123 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = sext i32 %124 to i64
  %126 = sub i64 %125, %20
  %127 = add i64 %121, %126
  %128 = trunc i64 %127 to i32
  %129 = trunc i64 %20 to i32
  %130 = call i32 @memcpy(i8* %117, i32 %128, i32 %129)
  %131 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %132 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = sext i32 %133 to i64
  %135 = sub i64 %134, %20
  %136 = trunc i64 %135 to i32
  %137 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %138 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  %139 = load %struct.wpa_key*, %struct.wpa_key** %16, align 8
  %140 = getelementptr inbounds %struct.wpa_key, %struct.wpa_key* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %143 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %146 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @michael_mic(i32 %141, i32 %144, i32 %147, i32 0, i32* %25)
  store i32 %148, i32* %18, align 4
  %149 = load i32, i32* %18, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %108
  %152 = load i32, i32* %18, align 4
  store i32 %152, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %256

153:                                              ; preds = %108
  %154 = mul nuw i64 4, %24
  %155 = trunc i64 %154 to i32
  %156 = call i64 @memcmp(i32* %25, i8* %22, i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %254

158:                                              ; preds = %153
  %159 = load i64, i64* @jiffies, align 8
  store i64 %159, i64* %11, align 8
  %160 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %161 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 2
  store %struct.mic_failure* %162, %struct.mic_failure** %12, align 8
  %163 = load %struct.mic_failure*, %struct.mic_failure** %12, align 8
  %164 = getelementptr inbounds %struct.mic_failure, %struct.mic_failure* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %179

167:                                              ; preds = %158
  %168 = load i64, i64* %11, align 8
  %169 = load %struct.mic_failure*, %struct.mic_failure** %12, align 8
  %170 = getelementptr inbounds %struct.mic_failure, %struct.mic_failure* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = sub i64 %168, %171
  %173 = load i64, i64* @HZ, align 8
  %174 = udiv i64 %172, %173
  %175 = icmp uge i64 %174, 60
  br i1 %175, label %176, label %179

176:                                              ; preds = %167
  %177 = load %struct.mic_failure*, %struct.mic_failure** %12, align 8
  %178 = getelementptr inbounds %struct.mic_failure, %struct.mic_failure* %177, i32 0, i32 1
  store i32 0, i32* %178, align 8
  br label %179

179:                                              ; preds = %176, %167, %158
  %180 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %181 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @netdev_err(i32 %182, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %184 = load %struct.mic_failure*, %struct.mic_failure** %12, align 8
  %185 = getelementptr inbounds %struct.mic_failure, %struct.mic_failure* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %179
  %189 = load %struct.mic_failure*, %struct.mic_failure** %12, align 8
  %190 = getelementptr inbounds %struct.mic_failure, %struct.mic_failure* %189, i32 0, i32 1
  store i32 1, i32* %190, align 8
  %191 = load %struct.mic_failure*, %struct.mic_failure** %12, align 8
  %192 = getelementptr inbounds %struct.mic_failure, %struct.mic_failure* %191, i32 0, i32 2
  store i32 0, i32* %192, align 4
  br label %220

193:                                              ; preds = %179
  %194 = load %struct.mic_failure*, %struct.mic_failure** %12, align 8
  %195 = getelementptr inbounds %struct.mic_failure, %struct.mic_failure* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = icmp eq i32 %196, 1
  br i1 %197, label %198, label %219

198:                                              ; preds = %193
  %199 = load %struct.mic_failure*, %struct.mic_failure** %12, align 8
  %200 = getelementptr inbounds %struct.mic_failure, %struct.mic_failure* %199, i32 0, i32 1
  store i32 2, i32* %200, align 8
  %201 = load i64, i64* %11, align 8
  %202 = load %struct.mic_failure*, %struct.mic_failure** %12, align 8
  %203 = getelementptr inbounds %struct.mic_failure, %struct.mic_failure* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = sub i64 %201, %204
  %206 = load i64, i64* @HZ, align 8
  %207 = udiv i64 %205, %206
  %208 = trunc i64 %207 to i32
  %209 = load %struct.mic_failure*, %struct.mic_failure** %12, align 8
  %210 = getelementptr inbounds %struct.mic_failure, %struct.mic_failure* %209, i32 0, i32 2
  store i32 %208, i32* %210, align 4
  %211 = load %struct.mic_failure*, %struct.mic_failure** %12, align 8
  %212 = getelementptr inbounds %struct.mic_failure, %struct.mic_failure* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %218, label %215

215:                                              ; preds = %198
  %216 = load %struct.mic_failure*, %struct.mic_failure** %12, align 8
  %217 = getelementptr inbounds %struct.mic_failure, %struct.mic_failure* %216, i32 0, i32 2
  store i32 1, i32* %217, align 4
  br label %218

218:                                              ; preds = %215, %198
  br label %219

219:                                              ; preds = %218, %193
  br label %220

220:                                              ; preds = %219, %188
  %221 = load i64, i64* %11, align 8
  %222 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %223 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %222, i32 0, i32 3
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 2
  %225 = getelementptr inbounds %struct.mic_failure, %struct.mic_failure* %224, i32 0, i32 0
  store i64 %221, i64* %225, align 8
  %226 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %227 = load i32, i32* %15, align 4
  %228 = load %struct.ether_hdr*, %struct.ether_hdr** %6, align 8
  %229 = getelementptr inbounds %struct.ether_hdr, %struct.ether_hdr* %228, i32 0, i32 2
  %230 = load i32*, i32** %229, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 0
  %232 = load i32, i32* %231, align 4
  %233 = and i32 %232, 1
  %234 = icmp ne i32 %233, 0
  %235 = zext i1 %234 to i64
  %236 = select i1 %234, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  %237 = load %struct.ether_hdr*, %struct.ether_hdr** %6, align 8
  %238 = getelementptr inbounds %struct.ether_hdr, %struct.ether_hdr* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 8
  %240 = call i32 @sprintf(i8* %226, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 %227, i8* %236, i32 %239)
  %241 = call i32 @memset(%union.iwreq_data* %14, i32 0, i32 4)
  %242 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %243 = call i32 @strlen(i8* %242)
  %244 = bitcast %union.iwreq_data* %14 to %struct.TYPE_6__*
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 0
  store i32 %243, i32* %245, align 4
  %246 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %247 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* @IWEVCUSTOM, align 4
  %250 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %251 = call i32 @wireless_send_event(i32 %248, i32 %249, %union.iwreq_data* %14, i8* %250)
  %252 = load i32, i32* @EINVAL, align 4
  %253 = sub nsw i32 0, %252
  store i32 %253, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %256

254:                                              ; preds = %153
  br label %255

255:                                              ; preds = %254, %103, %96, %90
  store i32 0, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %256

256:                                              ; preds = %255, %220, %151, %52
  %257 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %257)
  %258 = load i32, i32* %3, align 4
  ret i32 %258
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local zeroext i16 @ntohs(i32) #2

declare dso_local i32 @netdev_err(i32, i8*) #2

declare dso_local i32 @netdev_dbg(i32, i8*, i16 zeroext, i32) #2

declare dso_local i32 @memcpy(i8*, i32, i32) #2

declare dso_local i32 @michael_mic(i32, i32, i32, i32, i32*) #2

declare dso_local i64 @memcmp(i32*, i8*, i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i32, i8*, i32) #2

declare dso_local i32 @memset(%union.iwreq_data*, i32, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @wireless_send_event(i32, i32, %union.iwreq_data*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
