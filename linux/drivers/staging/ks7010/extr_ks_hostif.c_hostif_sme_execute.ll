; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_hostif_sme_execute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_hostif_sme_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_wlan_private = type { i32, i32, i32, %struct.TYPE_10__, %struct.TYPE_9__, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, i32, i32, i32, i32* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }

@DEVICE_STATE_BOOT = common dso_local global i32 0, align 4
@DOT11_MAC_ADDRESS = common dso_local global i32 0, align 4
@LOCAL_CURRENTADDRESS = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"SME_MIC_FAILURE_REQUEST: failure count=%u error?\0A\00", align 1
@DOT11_PRODUCT_VERSION = common dso_local global i32 0, align 4
@DEVICE_STATE_PREINIT = common dso_local global i32 0, align 4
@DOT11_RTS_THRESHOLD = common dso_local global i32 0, align 4
@DOT11_FRAGMENTATION_THRESHOLD = common dso_local global i32 0, align 4
@LOCAL_WPS_ENABLE = common dso_local global i32 0, align 4
@LOCAL_WPS_PROBE_REQ = common dso_local global i32 0, align 4
@LOCAL_GAIN = common dso_local global i32 0, align 4
@EEPROM_FW_NOT_SUPPORT = common dso_local global i32 0, align 4
@LOCAL_EEPROM_SUM = common dso_local global i32 0, align 4
@DEVICE_STATE_INIT = common dso_local global i32 0, align 4
@LOCAL_REGION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ks_wlan_private*, i32)* @hostif_sme_execute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostif_sme_execute(%struct.ks_wlan_private* %0, i32 %1) #0 {
  %3 = alloca %struct.ks_wlan_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ks_wlan_private* %0, %struct.ks_wlan_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %249 [
    i32 147, label %7
    i32 177, label %18
    i32 183, label %21
    i32 190, label %30
    i32 173, label %43
    i32 175, label %46
    i32 181, label %49
    i32 182, label %82
    i32 185, label %113
    i32 184, label %124
    i32 143, label %135
    i32 161, label %138
    i32 188, label %146
    i32 138, label %154
    i32 136, label %154
    i32 134, label %154
    i32 132, label %154
    i32 130, label %154
    i32 140, label %154
    i32 163, label %158
    i32 167, label %158
    i32 171, label %158
    i32 169, label %158
    i32 165, label %158
    i32 160, label %162
    i32 149, label %162
    i32 156, label %162
    i32 155, label %162
    i32 154, label %162
    i32 153, label %162
    i32 151, label %162
    i32 158, label %162
    i32 157, label %162
    i32 152, label %166
    i32 129, label %169
    i32 128, label %177
    i32 179, label %189
    i32 159, label %192
    i32 186, label %198
    i32 187, label %202
    i32 145, label %209
    i32 146, label %216
    i32 148, label %238
    i32 150, label %241
    i32 178, label %248
    i32 191, label %248
    i32 174, label %248
    i32 176, label %248
    i32 144, label %248
    i32 162, label %248
    i32 189, label %248
    i32 139, label %248
    i32 137, label %248
    i32 135, label %248
    i32 133, label %248
    i32 131, label %248
    i32 141, label %248
    i32 164, label %248
    i32 168, label %248
    i32 172, label %248
    i32 170, label %248
    i32 166, label %248
    i32 180, label %248
    i32 142, label %248
  ]

7:                                                ; preds = %2
  %8 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %9 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @DEVICE_STATE_BOOT, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %15 = load i32, i32* @DOT11_MAC_ADDRESS, align 4
  %16 = call i32 @hostif_mib_get_request(%struct.ks_wlan_private* %14, i32 %15)
  br label %17

17:                                               ; preds = %13, %7
  br label %250

18:                                               ; preds = %2
  %19 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %20 = call i32 @hostif_sme_multicast_set(%struct.ks_wlan_private* %19)
  br label %250

21:                                               ; preds = %2
  %22 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %23 = load i32, i32* @LOCAL_CURRENTADDRESS, align 4
  %24 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %25 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %24, i32 0, i32 12
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* @ETH_ALEN, align 4
  %29 = call i32 @hostif_mib_set_request_ostring(%struct.ks_wlan_private* %22, i32 %23, i32* %27, i32 %28)
  br label %250

30:                                               ; preds = %2
  %31 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %32 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %33 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %37 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %36, i32 0, i32 11
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %40 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %39, i32 0, i32 10
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @hostif_bss_scan_request(%struct.ks_wlan_private* %31, i32 %35, i32 %38, i32 %41)
  br label %250

43:                                               ; preds = %2
  %44 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %45 = call i32 @hostif_sme_power_mgmt_set(%struct.ks_wlan_private* %44)
  br label %250

46:                                               ; preds = %2
  %47 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %48 = call i32 @hostif_phy_information_request(%struct.ks_wlan_private* %47)
  br label %250

49:                                               ; preds = %2
  %50 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %51 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %50, i32 0, i32 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 1
  br i1 %56, label %57, label %66

57:                                               ; preds = %49
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 2
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %62 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %61, i32 0, i32 9
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @netdev_err(i32 %63, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %64)
  br label %250

66:                                               ; preds = %57, %49
  %67 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sub nsw i32 %68, 1
  %70 = load i32, i32* %5, align 4
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %79

73:                                               ; preds = %66
  %74 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %75 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %74, i32 0, i32 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  br label %79

79:                                               ; preds = %73, %72
  %80 = phi i32 [ 0, %72 ], [ %78, %73 ]
  %81 = call i32 @hostif_mic_failure_request(%struct.ks_wlan_private* %67, i32 %69, i32 %80)
  br label %250

82:                                               ; preds = %2
  %83 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %84 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %83, i32 0, i32 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %87, 2
  br i1 %88, label %89, label %112

89:                                               ; preds = %82
  %90 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %91 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %90, i32 0, i32 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %89
  %97 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %98 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %97, i32 0, i32 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  store i32 0, i32* %100, align 4
  br label %101

101:                                              ; preds = %96, %89
  %102 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %103 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %102, i32 0, i32 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  store i32 0, i32* %105, align 8
  %106 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %107 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %108 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %107, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @hostif_start_request(%struct.ks_wlan_private* %106, i32 %110)
  br label %112

112:                                              ; preds = %101, %82
  br label %250

113:                                              ; preds = %2
  %114 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %115 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @DEVICE_STATE_BOOT, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %113
  %120 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %121 = load i32, i32* @DOT11_PRODUCT_VERSION, align 4
  %122 = call i32 @hostif_mib_get_request(%struct.ks_wlan_private* %120, i32 %121)
  br label %123

123:                                              ; preds = %119, %113
  br label %250

124:                                              ; preds = %2
  %125 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %126 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @DEVICE_STATE_BOOT, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %124
  %131 = load i32, i32* @DEVICE_STATE_PREINIT, align 4
  %132 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %133 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 8
  br label %134

134:                                              ; preds = %130, %124
  br label %250

135:                                              ; preds = %2
  %136 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %137 = call i32 @hostif_stop_request(%struct.ks_wlan_private* %136)
  br label %250

138:                                              ; preds = %2
  %139 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %140 = load i32, i32* @DOT11_RTS_THRESHOLD, align 4
  %141 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %142 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %141, i32 0, i32 4
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @hostif_mib_set_request_int(%struct.ks_wlan_private* %139, i32 %140, i32 %144)
  br label %250

146:                                              ; preds = %2
  %147 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %148 = load i32, i32* @DOT11_FRAGMENTATION_THRESHOLD, align 4
  %149 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %150 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %149, i32 0, i32 4
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @hostif_mib_set_request_int(%struct.ks_wlan_private* %147, i32 %148, i32 %152)
  br label %250

154:                                              ; preds = %2, %2, %2, %2, %2, %2
  %155 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %156 = load i32, i32* %4, align 4
  %157 = call i32 @hostif_sme_set_wep(%struct.ks_wlan_private* %155, i32 %156)
  br label %250

158:                                              ; preds = %2, %2, %2, %2, %2
  %159 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %160 = load i32, i32* %4, align 4
  %161 = call i32 @hostif_sme_set_rsn(%struct.ks_wlan_private* %159, i32 %160)
  br label %250

162:                                              ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2
  %163 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %164 = load i32, i32* %4, align 4
  %165 = call i32 @hostif_sme_set_key(%struct.ks_wlan_private* %163, i32 %164)
  br label %250

166:                                              ; preds = %2
  %167 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %168 = call i32 @hostif_sme_set_pmksa(%struct.ks_wlan_private* %167)
  br label %250

169:                                              ; preds = %2
  %170 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %171 = load i32, i32* @LOCAL_WPS_ENABLE, align 4
  %172 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %173 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %172, i32 0, i32 7
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @hostif_mib_set_request_int(%struct.ks_wlan_private* %170, i32 %171, i32 %175)
  br label %250

177:                                              ; preds = %2
  %178 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %179 = load i32, i32* @LOCAL_WPS_PROBE_REQ, align 4
  %180 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %181 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %180, i32 0, i32 7
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 1
  %183 = load i32*, i32** %182, align 8
  %184 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %185 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %184, i32 0, i32 7
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @hostif_mib_set_request_ostring(%struct.ks_wlan_private* %178, i32 %179, i32* %183, i32 %187)
  br label %250

189:                                              ; preds = %2
  %190 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %191 = call i32 @hostif_sme_mode_setup(%struct.ks_wlan_private* %190)
  br label %250

192:                                              ; preds = %2
  %193 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %194 = load i32, i32* @LOCAL_GAIN, align 4
  %195 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %196 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %195, i32 0, i32 6
  %197 = call i32 @hostif_mib_set_request_ostring(%struct.ks_wlan_private* %193, i32 %194, i32* %196, i32 4)
  br label %250

198:                                              ; preds = %2
  %199 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %200 = load i32, i32* @LOCAL_GAIN, align 4
  %201 = call i32 @hostif_mib_get_request(%struct.ks_wlan_private* %199, i32 %200)
  br label %250

202:                                              ; preds = %2
  %203 = load i32, i32* @EEPROM_FW_NOT_SUPPORT, align 4
  %204 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %205 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %204, i32 0, i32 5
  store i32 %203, i32* %205, align 4
  %206 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %207 = load i32, i32* @LOCAL_EEPROM_SUM, align 4
  %208 = call i32 @hostif_mib_get_request(%struct.ks_wlan_private* %206, i32 %207)
  br label %250

209:                                              ; preds = %2
  %210 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %211 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %212 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %211, i32 0, i32 4
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @hostif_start_request(%struct.ks_wlan_private* %210, i32 %214)
  br label %250

216:                                              ; preds = %2
  %217 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %218 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %217, i32 0, i32 3
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 1
  %220 = call i32 @atomic_set(i32* %219, i32 0)
  %221 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %222 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %221, i32 0, i32 3
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 0
  %224 = call i32 @atomic_set(i32* %223, i32 0)
  %225 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %226 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* @DEVICE_STATE_PREINIT, align 4
  %229 = icmp eq i32 %227, %228
  br i1 %229, label %230, label %234

230:                                              ; preds = %216
  %231 = load i32, i32* @DEVICE_STATE_INIT, align 4
  %232 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %233 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %232, i32 0, i32 2
  store i32 %231, i32* %233, align 8
  br label %234

234:                                              ; preds = %230, %216
  %235 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %236 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %235, i32 0, i32 1
  %237 = call i32 @complete(i32* %236)
  br label %250

238:                                              ; preds = %2
  %239 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %240 = call i32 @hostif_sme_sleep_set(%struct.ks_wlan_private* %239)
  br label %250

241:                                              ; preds = %2
  %242 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %243 = load i32, i32* @LOCAL_REGION, align 4
  %244 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %245 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = call i32 @hostif_mib_set_request_int(%struct.ks_wlan_private* %242, i32 %243, i32 %246)
  br label %250

248:                                              ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  br label %249

249:                                              ; preds = %2, %248
  br label %250

250:                                              ; preds = %60, %249, %241, %238, %234, %209, %202, %198, %192, %189, %177, %169, %166, %162, %158, %154, %146, %138, %135, %134, %123, %112, %79, %46, %43, %30, %21, %18, %17
  ret void
}

declare dso_local i32 @hostif_mib_get_request(%struct.ks_wlan_private*, i32) #1

declare dso_local i32 @hostif_sme_multicast_set(%struct.ks_wlan_private*) #1

declare dso_local i32 @hostif_mib_set_request_ostring(%struct.ks_wlan_private*, i32, i32*, i32) #1

declare dso_local i32 @hostif_bss_scan_request(%struct.ks_wlan_private*, i32, i32, i32) #1

declare dso_local i32 @hostif_sme_power_mgmt_set(%struct.ks_wlan_private*) #1

declare dso_local i32 @hostif_phy_information_request(%struct.ks_wlan_private*) #1

declare dso_local i32 @netdev_err(i32, i8*, i32) #1

declare dso_local i32 @hostif_mic_failure_request(%struct.ks_wlan_private*, i32, i32) #1

declare dso_local i32 @hostif_start_request(%struct.ks_wlan_private*, i32) #1

declare dso_local i32 @hostif_stop_request(%struct.ks_wlan_private*) #1

declare dso_local i32 @hostif_mib_set_request_int(%struct.ks_wlan_private*, i32, i32) #1

declare dso_local i32 @hostif_sme_set_wep(%struct.ks_wlan_private*, i32) #1

declare dso_local i32 @hostif_sme_set_rsn(%struct.ks_wlan_private*, i32) #1

declare dso_local i32 @hostif_sme_set_key(%struct.ks_wlan_private*, i32) #1

declare dso_local i32 @hostif_sme_set_pmksa(%struct.ks_wlan_private*) #1

declare dso_local i32 @hostif_sme_mode_setup(%struct.ks_wlan_private*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @hostif_sme_sleep_set(%struct.ks_wlan_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
