; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_wlan_net.c_ks_wlan_set_auth_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_wlan_net.c_ks_wlan_set_auth_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.iw_param }
%struct.iw_param = type { i32, i32 }
%struct.ks_wlan_private = type { i64, i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }

@IW_AUTH_INDEX = common dso_local global i32 0, align 4
@SLP_SLEEP = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@SME_RSN = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@SME_WEP_FLAG = common dso_local global i64 0, align 8
@SME_RSN_UNICAST = common dso_local global i64 0, align 8
@SME_RSN_MULTICAST = common dso_local global i64 0, align 8
@SME_RSN_AUTH = common dso_local global i64 0, align 8
@AUTH_TYPE_OPEN_SYSTEM = common dso_local global i32 0, align 4
@AUTH_TYPE_SHARED_KEY = common dso_local global i32 0, align 4
@SME_MODE_SET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @ks_wlan_set_auth_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks_wlan_set_auth_mode(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ks_wlan_private*, align 8
  %11 = alloca %struct.iw_param*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call %struct.ks_wlan_private* @netdev_priv(%struct.net_device* %14)
  store %struct.ks_wlan_private* %15, %struct.ks_wlan_private** %10, align 8
  %16 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %17 = bitcast %union.iwreq_data* %16 to %struct.iw_param*
  store %struct.iw_param* %17, %struct.iw_param** %11, align 8
  %18 = load %struct.iw_param*, %struct.iw_param** %11, align 8
  %19 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IW_AUTH_INDEX, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %12, align 4
  %23 = load %struct.iw_param*, %struct.iw_param** %11, align 8
  %24 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %13, align 4
  %26 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %27 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SLP_SLEEP, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load i32, i32* @EPERM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %275

34:                                               ; preds = %4
  %35 = load i32, i32* %12, align 4
  switch i32 %35, label %260 [
    i32 131, label %36
    i32 144, label %82
    i32 146, label %129
    i32 139, label %176
    i32 151, label %192
    i32 132, label %222
    i32 136, label %227
    i32 134, label %259
    i32 133, label %259
    i32 140, label %259
    i32 135, label %259
  ]

36:                                               ; preds = %34
  %37 = load i32, i32* %13, align 4
  switch i32 %37, label %78 [
    i32 130, label %38
    i32 129, label %58
    i32 128, label %58
  ]

38:                                               ; preds = %36
  %39 = load i32, i32* %13, align 4
  %40 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %41 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  %43 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %44 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %38
  %49 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %50 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  store i32 0, i32* %51, align 4
  br label %52

52:                                               ; preds = %48, %38
  %53 = load i64, i64* @SME_RSN, align 8
  %54 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %55 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = or i64 %56, %53
  store i64 %57, i64* %55, align 8
  br label %81

58:                                               ; preds = %36, %36
  %59 = load i32, i32* %13, align 4
  %60 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %61 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 8
  %63 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %64 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %58
  %69 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %70 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  store i32 1, i32* %71, align 4
  br label %72

72:                                               ; preds = %68, %58
  %73 = load i64, i64* @SME_RSN, align 8
  %74 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %75 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = or i64 %76, %73
  store i64 %77, i64* %75, align 8
  br label %81

78:                                               ; preds = %36
  %79 = load i32, i32* @EOPNOTSUPP, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %5, align 4
  br label %275

81:                                               ; preds = %72, %52
  br label %261

82:                                               ; preds = %34
  %83 = load i32, i32* %13, align 4
  switch i32 %83, label %125 [
    i32 145, label %84
    i32 141, label %100
    i32 143, label %100
    i32 147, label %100
    i32 142, label %100
  ]

84:                                               ; preds = %82
  %85 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %86 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %84
  %91 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %92 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  store i32 0, i32* %93, align 8
  %94 = load i64, i64* @SME_WEP_FLAG, align 8
  %95 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %96 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = or i64 %97, %94
  store i64 %98, i64* %96, align 8
  br label %99

99:                                               ; preds = %90, %84
  br label %128

100:                                              ; preds = %82, %82, %82, %82
  %101 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %102 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %115, label %106

106:                                              ; preds = %100
  %107 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %108 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  store i32 1, i32* %109, align 8
  %110 = load i64, i64* @SME_WEP_FLAG, align 8
  %111 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %112 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = or i64 %113, %110
  store i64 %114, i64* %112, align 8
  br label %115

115:                                              ; preds = %106, %100
  %116 = load i32, i32* %13, align 4
  %117 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %118 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 2
  store i32 %116, i32* %119, align 8
  %120 = load i64, i64* @SME_RSN_UNICAST, align 8
  %121 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %122 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = or i64 %123, %120
  store i64 %124, i64* %122, align 8
  br label %128

125:                                              ; preds = %82
  %126 = load i32, i32* @EOPNOTSUPP, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %5, align 4
  br label %275

128:                                              ; preds = %115, %99
  br label %261

129:                                              ; preds = %34
  %130 = load i32, i32* %13, align 4
  switch i32 %130, label %172 [
    i32 145, label %131
    i32 141, label %147
    i32 143, label %147
    i32 147, label %147
    i32 142, label %147
  ]

131:                                              ; preds = %129
  %132 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %133 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %131
  %138 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %139 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  store i32 0, i32* %140, align 8
  %141 = load i64, i64* @SME_WEP_FLAG, align 8
  %142 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %143 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = or i64 %144, %141
  store i64 %145, i64* %143, align 8
  br label %146

146:                                              ; preds = %137, %131
  br label %175

147:                                              ; preds = %129, %129, %129, %129
  %148 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %149 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %162, label %153

153:                                              ; preds = %147
  %154 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %155 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  store i32 1, i32* %156, align 8
  %157 = load i64, i64* @SME_WEP_FLAG, align 8
  %158 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %159 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = or i64 %160, %157
  store i64 %161, i64* %159, align 8
  br label %162

162:                                              ; preds = %153, %147
  %163 = load i32, i32* %13, align 4
  %164 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %165 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %164, i32 0, i32 3
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 3
  store i32 %163, i32* %166, align 4
  %167 = load i64, i64* @SME_RSN_MULTICAST, align 8
  %168 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %169 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = or i64 %170, %167
  store i64 %171, i64* %169, align 8
  br label %175

172:                                              ; preds = %129
  %173 = load i32, i32* @EOPNOTSUPP, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %5, align 4
  br label %275

175:                                              ; preds = %162, %146
  br label %261

176:                                              ; preds = %34
  %177 = load i32, i32* %13, align 4
  switch i32 %177, label %188 [
    i32 138, label %178
    i32 137, label %178
    i32 0, label %178
    i32 4, label %178
  ]

178:                                              ; preds = %176, %176, %176, %176
  %179 = load i32, i32* %13, align 4
  %180 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %181 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %180, i32 0, i32 3
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 4
  store i32 %179, i32* %182, align 8
  %183 = load i64, i64* @SME_RSN_AUTH, align 8
  %184 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %185 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = or i64 %186, %183
  store i64 %187, i64* %185, align 8
  br label %191

188:                                              ; preds = %176
  %189 = load i32, i32* @EOPNOTSUPP, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %5, align 4
  br label %275

191:                                              ; preds = %178
  br label %261

192:                                              ; preds = %34
  %193 = load i32, i32* %13, align 4
  switch i32 %193, label %213 [
    i32 149, label %194
    i32 148, label %203
    i32 150, label %212
  ]

194:                                              ; preds = %192
  %195 = load i32, i32* %13, align 4
  %196 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %197 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %196, i32 0, i32 3
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 5
  store i32 %195, i32* %198, align 4
  %199 = load i32, i32* @AUTH_TYPE_OPEN_SYSTEM, align 4
  %200 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %201 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 1
  store i32 %199, i32* %202, align 4
  br label %216

203:                                              ; preds = %192
  %204 = load i32, i32* %13, align 4
  %205 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %206 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %205, i32 0, i32 3
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 5
  store i32 %204, i32* %207, align 4
  %208 = load i32, i32* @AUTH_TYPE_SHARED_KEY, align 4
  %209 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %210 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 1
  store i32 %208, i32* %211, align 4
  br label %216

212:                                              ; preds = %192
  br label %213

213:                                              ; preds = %192, %212
  %214 = load i32, i32* @EOPNOTSUPP, align 4
  %215 = sub nsw i32 0, %214
  store i32 %215, i32* %5, align 4
  br label %275

216:                                              ; preds = %203, %194
  %217 = load i64, i64* @SME_MODE_SET, align 8
  %218 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %219 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = or i64 %220, %217
  store i64 %221, i64* %219, align 8
  br label %261

222:                                              ; preds = %34
  %223 = load i32, i32* %13, align 4
  %224 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %225 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %224, i32 0, i32 3
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 6
  store i32 %223, i32* %226, align 8
  br label %261

227:                                              ; preds = %34
  %228 = load i32, i32* %13, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %236

230:                                              ; preds = %227
  %231 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %232 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %231, i32 0, i32 2
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %245

236:                                              ; preds = %230, %227
  %237 = load i32, i32* %13, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %258, label %239

239:                                              ; preds = %236
  %240 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %241 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %240, i32 0, i32 2
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %258

245:                                              ; preds = %239, %230
  %246 = load i32, i32* %13, align 4
  %247 = icmp ne i32 %246, 0
  %248 = zext i1 %247 to i64
  %249 = select i1 %247, i32 1, i32 0
  %250 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %251 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %250, i32 0, i32 2
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 0
  store i32 %249, i32* %252, align 8
  %253 = load i64, i64* @SME_WEP_FLAG, align 8
  %254 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %255 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %254, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = or i64 %256, %253
  store i64 %257, i64* %255, align 8
  br label %258

258:                                              ; preds = %245, %239, %236
  br label %261

259:                                              ; preds = %34, %34, %34, %34
  br label %260

260:                                              ; preds = %34, %259
  br label %261

261:                                              ; preds = %260, %258, %222, %216, %191, %175, %128, %81
  %262 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %263 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %262, i32 0, i32 1
  %264 = load i64, i64* %263, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %274

266:                                              ; preds = %261
  %267 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %268 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %269 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %268, i32 0, i32 1
  %270 = load i64, i64* %269, align 8
  %271 = call i32 @ks_wlan_setup_parameter(%struct.ks_wlan_private* %267, i64 %270)
  %272 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %273 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %272, i32 0, i32 1
  store i64 0, i64* %273, align 8
  br label %274

274:                                              ; preds = %266, %261
  store i32 0, i32* %5, align 4
  br label %275

275:                                              ; preds = %274, %213, %188, %172, %125, %78, %31
  %276 = load i32, i32* %5, align 4
  ret i32 %276
}

declare dso_local %struct.ks_wlan_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ks_wlan_setup_parameter(%struct.ks_wlan_private*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
