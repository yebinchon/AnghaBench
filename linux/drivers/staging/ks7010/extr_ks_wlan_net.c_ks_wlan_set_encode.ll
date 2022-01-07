; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_wlan_net.c_ks_wlan_set_encode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_wlan_net.c_ks_wlan_set_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.iw_point }
%struct.iw_point = type { i32, i64, i32 }
%struct.ks_wlan_private = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32* }
%struct.wep_key = type { i64, i32* }

@IW_ENCODE_INDEX = common dso_local global i32 0, align 4
@SLP_SLEEP = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@MAX_KEY_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MIN_KEY_SIZE = common dso_local global i64 0, align 8
@SME_WEP_FLAG = common dso_local global i32 0, align 4
@WEP_ON_128BIT = common dso_local global i32 0, align 4
@WEP_ON_64BIT = common dso_local global i32 0, align 4
@wep_on_off = common dso_local global i32 0, align 4
@IW_ENCODE_NOKEY = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@SME_WEP_VAL1 = common dso_local global i32 0, align 4
@SME_WEP_INDEX = common dso_local global i32 0, align 4
@IW_ENCODE_DISABLED = common dso_local global i32 0, align 4
@AUTH_TYPE_SHARED_KEY = common dso_local global i64 0, align 8
@SME_MODE_SET = common dso_local global i32 0, align 4
@AUTH_TYPE_OPEN_SYSTEM = common dso_local global i64 0, align 8
@WEP_OFF = common dso_local global i32 0, align 4
@IW_ENCODE_MODE = common dso_local global i32 0, align 4
@IW_ENCODE_OPEN = common dso_local global i32 0, align 4
@IW_ENCODE_RESTRICTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @ks_wlan_set_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks_wlan_set_encode(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ks_wlan_private*, align 8
  %11 = alloca %struct.iw_point*, align 8
  %12 = alloca %struct.wep_key, align 8
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call %struct.ks_wlan_private* @netdev_priv(%struct.net_device* %14)
  store %struct.ks_wlan_private* %15, %struct.ks_wlan_private** %10, align 8
  %16 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %17 = bitcast %union.iwreq_data* %16 to %struct.iw_point*
  store %struct.iw_point* %17, %struct.iw_point** %11, align 8
  %18 = load %struct.iw_point*, %struct.iw_point** %11, align 8
  %19 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @IW_ENCODE_INDEX, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %13, align 4
  %23 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %24 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SLP_SLEEP, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load i32, i32* @EPERM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %335

31:                                               ; preds = %4
  %32 = load %struct.iw_point*, %struct.iw_point** %11, align 8
  %33 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @MAX_KEY_SIZE, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %335

40:                                               ; preds = %31
  %41 = load i32, i32* %13, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %13, align 4
  %45 = icmp sgt i32 %44, 4
  br i1 %45, label %46, label %49

46:                                               ; preds = %43, %40
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %335

49:                                               ; preds = %43
  %50 = load i32, i32* %13, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %54 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  br label %60

57:                                               ; preds = %49
  %58 = load i32, i32* %13, align 4
  %59 = sub nsw i32 %58, 1
  br label %60

60:                                               ; preds = %57, %52
  %61 = phi i32 [ %56, %52 ], [ %59, %57 ]
  store i32 %61, i32* %13, align 4
  %62 = load %struct.iw_point*, %struct.iw_point** %11, align 8
  %63 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp sgt i64 %64, 0
  br i1 %65, label %66, label %174

66:                                               ; preds = %60
  %67 = load %struct.iw_point*, %struct.iw_point** %11, align 8
  %68 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @MIN_KEY_SIZE, align 8
  %71 = icmp sgt i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load i64, i64* @MAX_KEY_SIZE, align 8
  br label %76

74:                                               ; preds = %66
  %75 = load i64, i64* @MIN_KEY_SIZE, align 8
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i64 [ %73, %72 ], [ %75, %74 ]
  %78 = getelementptr inbounds %struct.wep_key, %struct.wep_key* %12, i32 0, i32 0
  store i64 %77, i64* %78, align 8
  %79 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %80 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  store i32 1, i32* %81, align 4
  %82 = load i32, i32* @SME_WEP_FLAG, align 4
  %83 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %84 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  %87 = load %struct.iw_point*, %struct.iw_point** %11, align 8
  %88 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @MIN_KEY_SIZE, align 8
  %91 = icmp sgt i64 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %76
  %93 = load i32, i32* @WEP_ON_128BIT, align 4
  br label %96

94:                                               ; preds = %76
  %95 = load i32, i32* @WEP_ON_64BIT, align 4
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i32 [ %93, %92 ], [ %95, %94 ]
  store i32 %97, i32* @wep_on_off, align 4
  %98 = load %struct.iw_point*, %struct.iw_point** %11, align 8
  %99 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @IW_ENCODE_NOKEY, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  store i32 0, i32* %5, align 4
  br label %335

105:                                              ; preds = %96
  %106 = getelementptr inbounds %struct.wep_key, %struct.wep_key* %12, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i64, i64* @MAX_KEY_SIZE, align 8
  %109 = call i32 @memset(i32* %107, i32 0, i64 %108)
  %110 = getelementptr inbounds %struct.wep_key, %struct.wep_key* %12, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.iw_point*, %struct.iw_point** %11, align 8
  %113 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.iw_point*, %struct.iw_point** %11, align 8
  %116 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = call i64 @copy_from_user(i32* %111, i32 %114, i64 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %105
  %121 = getelementptr inbounds %struct.wep_key, %struct.wep_key* %12, i32 0, i32 0
  store i64 0, i64* %121, align 8
  %122 = load i32, i32* @EFAULT, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %5, align 4
  br label %335

124:                                              ; preds = %105
  %125 = getelementptr inbounds %struct.wep_key, %struct.wep_key* %12, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %128 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 3
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %129, align 8
  %131 = load i32, i32* %13, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  store i64 %126, i64* %134, align 8
  %135 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %136 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 3
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %137, align 8
  %139 = load i32, i32* %13, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 0
  %145 = getelementptr inbounds %struct.wep_key, %struct.wep_key* %12, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  %148 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %149 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 3
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %150, align 8
  %152 = load i32, i32* %13, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @memcpy(i32* %144, i32* %147, i64 %156)
  %158 = load i32, i32* @SME_WEP_VAL1, align 4
  %159 = load i32, i32* %13, align 4
  %160 = shl i32 %158, %159
  %161 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %162 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = or i32 %163, %160
  store i32 %164, i32* %162, align 8
  %165 = load i32, i32* %13, align 4
  %166 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %167 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  store i32 %165, i32* %168, align 8
  %169 = load i32, i32* @SME_WEP_INDEX, align 4
  %170 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %171 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = or i32 %172, %169
  store i32 %173, i32* %171, align 8
  br label %257

174:                                              ; preds = %60
  %175 = load %struct.iw_point*, %struct.iw_point** %11, align 8
  %176 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %232

181:                                              ; preds = %174
  %182 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %183 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 3
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i64 0
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 0
  store i64 0, i64* %187, align 8
  %188 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %189 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 3
  %191 = load %struct.TYPE_3__*, %struct.TYPE_3__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i64 1
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 0
  store i64 0, i64* %193, align 8
  %194 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %195 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %194, i32 0, i32 2
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 3
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i64 2
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 0
  store i64 0, i64* %199, align 8
  %200 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %201 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 3
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i64 3
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 0
  store i64 0, i64* %205, align 8
  %206 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %207 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %206, i32 0, i32 2
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 1
  store i32 0, i32* %208, align 4
  %209 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %210 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 2
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @AUTH_TYPE_SHARED_KEY, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %215, label %221

215:                                              ; preds = %181
  %216 = load i32, i32* @SME_MODE_SET, align 4
  %217 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %218 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = or i32 %219, %216
  store i32 %220, i32* %218, align 8
  br label %221

221:                                              ; preds = %215, %181
  %222 = load i64, i64* @AUTH_TYPE_OPEN_SYSTEM, align 8
  %223 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %224 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %223, i32 0, i32 2
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 2
  store i64 %222, i64* %225, align 8
  %226 = load i32, i32* @WEP_OFF, align 4
  store i32 %226, i32* @wep_on_off, align 4
  %227 = load i32, i32* @SME_WEP_FLAG, align 4
  %228 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %229 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 8
  %231 = or i32 %230, %227
  store i32 %231, i32* %229, align 8
  br label %256

232:                                              ; preds = %174
  %233 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %234 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %233, i32 0, i32 2
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 3
  %236 = load %struct.TYPE_3__*, %struct.TYPE_3__** %235, align 8
  %237 = load i32, i32* %13, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %236, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = icmp eq i64 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %232
  %244 = load i32, i32* @EINVAL, align 4
  %245 = sub nsw i32 0, %244
  store i32 %245, i32* %5, align 4
  br label %335

246:                                              ; preds = %232
  %247 = load i32, i32* %13, align 4
  %248 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %249 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %248, i32 0, i32 2
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i32 0, i32 0
  store i32 %247, i32* %250, align 8
  %251 = load i32, i32* @SME_WEP_INDEX, align 4
  %252 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %253 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 8
  %255 = or i32 %254, %251
  store i32 %255, i32* %253, align 8
  br label %256

256:                                              ; preds = %246, %221
  br label %257

257:                                              ; preds = %256, %124
  %258 = load %struct.iw_point*, %struct.iw_point** %11, align 8
  %259 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = load i32, i32* @IW_ENCODE_MODE, align 4
  %262 = and i32 %260, %261
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %270

264:                                              ; preds = %257
  %265 = load i32, i32* @SME_WEP_FLAG, align 4
  %266 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %267 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 8
  %269 = or i32 %268, %265
  store i32 %269, i32* %267, align 8
  br label %270

270:                                              ; preds = %264, %257
  %271 = load %struct.iw_point*, %struct.iw_point** %11, align 8
  %272 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = load i32, i32* @IW_ENCODE_OPEN, align 4
  %275 = and i32 %273, %274
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %295

277:                                              ; preds = %270
  %278 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %279 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %278, i32 0, i32 2
  %280 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %279, i32 0, i32 2
  %281 = load i64, i64* %280, align 8
  %282 = load i64, i64* @AUTH_TYPE_SHARED_KEY, align 8
  %283 = icmp eq i64 %281, %282
  br i1 %283, label %284, label %290

284:                                              ; preds = %277
  %285 = load i32, i32* @SME_MODE_SET, align 4
  %286 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %287 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 8
  %289 = or i32 %288, %285
  store i32 %289, i32* %287, align 8
  br label %290

290:                                              ; preds = %284, %277
  %291 = load i64, i64* @AUTH_TYPE_OPEN_SYSTEM, align 8
  %292 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %293 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %292, i32 0, i32 2
  %294 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %293, i32 0, i32 2
  store i64 %291, i64* %294, align 8
  br label %321

295:                                              ; preds = %270
  %296 = load %struct.iw_point*, %struct.iw_point** %11, align 8
  %297 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = load i32, i32* @IW_ENCODE_RESTRICTED, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %320

302:                                              ; preds = %295
  %303 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %304 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %303, i32 0, i32 2
  %305 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %304, i32 0, i32 2
  %306 = load i64, i64* %305, align 8
  %307 = load i64, i64* @AUTH_TYPE_OPEN_SYSTEM, align 8
  %308 = icmp eq i64 %306, %307
  br i1 %308, label %309, label %315

309:                                              ; preds = %302
  %310 = load i32, i32* @SME_MODE_SET, align 4
  %311 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %312 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 8
  %314 = or i32 %313, %310
  store i32 %314, i32* %312, align 8
  br label %315

315:                                              ; preds = %309, %302
  %316 = load i64, i64* @AUTH_TYPE_SHARED_KEY, align 8
  %317 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %318 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %317, i32 0, i32 2
  %319 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %318, i32 0, i32 2
  store i64 %316, i64* %319, align 8
  br label %320

320:                                              ; preds = %315, %295
  br label %321

321:                                              ; preds = %320, %290
  %322 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %323 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 8
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %334

326:                                              ; preds = %321
  %327 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %328 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %329 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 8
  %331 = call i32 @ks_wlan_setup_parameter(%struct.ks_wlan_private* %327, i32 %330)
  %332 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %333 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %332, i32 0, i32 1
  store i32 0, i32* %333, align 8
  br label %334

334:                                              ; preds = %326, %321
  store i32 0, i32* %5, align 4
  br label %335

335:                                              ; preds = %334, %243, %120, %104, %46, %37, %28
  %336 = load i32, i32* %5, align 4
  ret i32 %336
}

declare dso_local %struct.ks_wlan_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i64 @copy_from_user(i32*, i32, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @ks_wlan_setup_parameter(%struct.ks_wlan_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
