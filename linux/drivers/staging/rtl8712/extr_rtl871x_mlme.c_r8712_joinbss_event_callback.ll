; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mlme.c_r8712_joinbss_event_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mlme.c_r8712_joinbss_event_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.TYPE_13__, %struct.mlme_priv, %struct.sta_priv }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32 }
%struct.mlme_priv = type { i32, i32, i32, i32, %struct.wlan_network }
%struct.wlan_network = type { i64, i64, i32, i64, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i64, i64, i64, i64, i64, i64, i32, %struct.TYPE_12__, %struct.TYPE_14__ }
%struct.TYPE_12__ = type { i64, i64, i64, i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i64, i64, i64 }
%struct.TYPE_14__ = type { i64 }
%struct.sta_priv = type { i32 }
%struct.sta_info = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@_FW_UNDER_LINKING = common dso_local global i32 0, align 4
@_FW_LINKED = common dso_local global i32 0, align 4
@WIFI_STATION_STATE = common dso_local global i32 0, align 4
@WIFI_ADHOC_STATE = common dso_local global i32 0, align 4
@WIFI_NULL_STATE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_joinbss_event_callback(%struct._adapter* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sta_info*, align 8
  %8 = alloca %struct.sta_info*, align 8
  %9 = alloca %struct.sta_priv*, align 8
  %10 = alloca %struct.mlme_priv*, align 8
  %11 = alloca %struct.wlan_network*, align 8
  %12 = alloca %struct.wlan_network*, align 8
  %13 = alloca %struct.wlan_network*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.wlan_network*, align 8
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  store i64 0, i64* %5, align 8
  store %struct.sta_info* null, %struct.sta_info** %7, align 8
  store %struct.sta_info* null, %struct.sta_info** %8, align 8
  %16 = load %struct._adapter*, %struct._adapter** %3, align 8
  %17 = getelementptr inbounds %struct._adapter, %struct._adapter* %16, i32 0, i32 2
  store %struct.sta_priv* %17, %struct.sta_priv** %9, align 8
  %18 = load %struct._adapter*, %struct._adapter** %3, align 8
  %19 = getelementptr inbounds %struct._adapter, %struct._adapter* %18, i32 0, i32 1
  store %struct.mlme_priv* %19, %struct.mlme_priv** %10, align 8
  %20 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %21 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %20, i32 0, i32 4
  store %struct.wlan_network* %21, %struct.wlan_network** %11, align 8
  store %struct.wlan_network* null, %struct.wlan_network** %12, align 8
  store %struct.wlan_network* null, %struct.wlan_network** %13, align 8
  store i32 0, i32* %14, align 4
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %23 = bitcast %struct.TYPE_15__* %22 to %struct.wlan_network*
  store %struct.wlan_network* %23, %struct.wlan_network** %15, align 8
  %24 = load %struct.wlan_network*, %struct.wlan_network** %15, align 8
  %25 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.wlan_network*, %struct.wlan_network** %11, align 8
  %29 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @ETH_ALEN, align 4
  %33 = call i32 @memcmp(i32 %27, i32 %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %14, align 4
  %37 = load %struct.wlan_network*, %struct.wlan_network** %15, align 8
  %38 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %37, i32 0, i32 4
  %39 = call i32 @r8712_get_wlan_bssid_ex_sz(%struct.TYPE_15__* %38)
  %40 = load %struct.wlan_network*, %struct.wlan_network** %15, align 8
  %41 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  %43 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %44 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %43, i32 0, i32 0
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @spin_lock_irqsave(i32* %44, i64 %45)
  %47 = load %struct.wlan_network*, %struct.wlan_network** %15, align 8
  %48 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = icmp ugt i64 %51, 4
  br i1 %52, label %53, label %54

53:                                               ; preds = %2
  br label %335

54:                                               ; preds = %2
  %55 = load %struct.wlan_network*, %struct.wlan_network** %15, align 8
  %56 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %318

59:                                               ; preds = %54
  %60 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %61 = load i32, i32* @_FW_UNDER_LINKING, align 4
  %62 = call i64 @check_fwstate(%struct.mlme_priv* %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %316

64:                                               ; preds = %59
  %65 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %66 = load i32, i32* @_FW_LINKED, align 4
  %67 = call i64 @check_fwstate(%struct.mlme_priv* %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %121

69:                                               ; preds = %64
  %70 = load i32, i32* %14, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %69
  %73 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %74 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %73, i32 0, i32 3
  %75 = load %struct.wlan_network*, %struct.wlan_network** %11, align 8
  %76 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 7
  %78 = load i32, i32* %77, align 8
  %79 = call %struct.wlan_network* @r8712_find_network(i32* %74, i32 %78)
  store %struct.wlan_network* %79, %struct.wlan_network** %13, align 8
  br label %120

80:                                               ; preds = %69
  %81 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %82 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %81, i32 0, i32 3
  %83 = load %struct.wlan_network*, %struct.wlan_network** %11, align 8
  %84 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 8
  %87 = call %struct.wlan_network* @r8712_find_network(i32* %82, i32 %86)
  store %struct.wlan_network* %87, %struct.wlan_network** %12, align 8
  %88 = load %struct.wlan_network*, %struct.wlan_network** %12, align 8
  %89 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %88, i32 0, i32 2
  store i32 0, i32* %89, align 8
  %90 = load %struct.sta_priv*, %struct.sta_priv** %9, align 8
  %91 = load %struct.wlan_network*, %struct.wlan_network** %11, align 8
  %92 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 7
  %94 = load i32, i32* %93, align 8
  %95 = call %struct.sta_info* @r8712_get_stainfo(%struct.sta_priv* %90, i32 %94)
  store %struct.sta_info* %95, %struct.sta_info** %8, align 8
  %96 = load %struct.sta_priv*, %struct.sta_priv** %9, align 8
  %97 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %96, i32 0, i32 0
  %98 = load i64, i64* %6, align 8
  %99 = call i32 @spin_lock_irqsave(i32* %97, i64 %98)
  %100 = load %struct._adapter*, %struct._adapter** %3, align 8
  %101 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %102 = call i32 @r8712_free_stainfo(%struct._adapter* %100, %struct.sta_info* %101)
  %103 = load %struct.sta_priv*, %struct.sta_priv** %9, align 8
  %104 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %103, i32 0, i32 0
  %105 = load i64, i64* %6, align 8
  %106 = call i32 @spin_unlock_irqrestore(i32* %104, i64 %105)
  %107 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %108 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %107, i32 0, i32 3
  %109 = load %struct.wlan_network*, %struct.wlan_network** %15, align 8
  %110 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 7
  %112 = load i32, i32* %111, align 8
  %113 = call %struct.wlan_network* @r8712_find_network(i32* %108, i32 %112)
  store %struct.wlan_network* %113, %struct.wlan_network** %13, align 8
  %114 = load %struct.wlan_network*, %struct.wlan_network** %13, align 8
  %115 = icmp ne %struct.wlan_network* %114, null
  br i1 %115, label %116, label %119

116:                                              ; preds = %80
  %117 = load %struct.wlan_network*, %struct.wlan_network** %13, align 8
  %118 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %117, i32 0, i32 2
  store i32 1, i32* %118, align 8
  br label %119

119:                                              ; preds = %116, %80
  br label %120

120:                                              ; preds = %119, %72
  br label %135

121:                                              ; preds = %64
  %122 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %123 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %122, i32 0, i32 3
  %124 = load %struct.wlan_network*, %struct.wlan_network** %15, align 8
  %125 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 7
  %127 = load i32, i32* %126, align 8
  %128 = call %struct.wlan_network* @r8712_find_network(i32* %123, i32 %127)
  store %struct.wlan_network* %128, %struct.wlan_network** %13, align 8
  %129 = load %struct.wlan_network*, %struct.wlan_network** %13, align 8
  %130 = icmp ne %struct.wlan_network* %129, null
  br i1 %130, label %131, label %134

131:                                              ; preds = %121
  %132 = load %struct.wlan_network*, %struct.wlan_network** %13, align 8
  %133 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %132, i32 0, i32 2
  store i32 1, i32* %133, align 8
  br label %134

134:                                              ; preds = %131, %121
  br label %135

135:                                              ; preds = %134, %120
  %136 = load %struct.wlan_network*, %struct.wlan_network** %13, align 8
  %137 = icmp eq %struct.wlan_network* %136, null
  br i1 %137, label %138, label %150

138:                                              ; preds = %135
  %139 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %140 = load i32, i32* @_FW_UNDER_LINKING, align 4
  %141 = call i64 @check_fwstate(%struct.mlme_priv* %139, i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %138
  %144 = load i32, i32* @_FW_UNDER_LINKING, align 4
  %145 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %146 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = xor i32 %147, %144
  store i32 %148, i32* %146, align 8
  br label %149

149:                                              ; preds = %143, %138
  br label %335

150:                                              ; preds = %135
  %151 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %152 = load i32, i32* @WIFI_STATION_STATE, align 4
  %153 = call i64 @check_fwstate(%struct.mlme_priv* %151, i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %252

155:                                              ; preds = %150
  %156 = load i32, i32* %14, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %175

158:                                              ; preds = %155
  %159 = load %struct.sta_priv*, %struct.sta_priv** %9, align 8
  %160 = load %struct.wlan_network*, %struct.wlan_network** %15, align 8
  %161 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %160, i32 0, i32 4
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 7
  %163 = load i32, i32* %162, align 8
  %164 = call %struct.sta_info* @r8712_get_stainfo(%struct.sta_priv* %159, i32 %163)
  store %struct.sta_info* %164, %struct.sta_info** %7, align 8
  %165 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %166 = icmp eq %struct.sta_info* %165, null
  br i1 %166, label %167, label %174

167:                                              ; preds = %158
  %168 = load %struct.sta_priv*, %struct.sta_priv** %9, align 8
  %169 = load %struct.wlan_network*, %struct.wlan_network** %15, align 8
  %170 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %169, i32 0, i32 4
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 7
  %172 = load i32, i32* %171, align 8
  %173 = call %struct.sta_info* @r8712_alloc_stainfo(%struct.sta_priv* %168, i32 %172)
  store %struct.sta_info* %173, %struct.sta_info** %7, align 8
  br label %174

174:                                              ; preds = %167, %158
  br label %182

175:                                              ; preds = %155
  %176 = load %struct.sta_priv*, %struct.sta_priv** %9, align 8
  %177 = load %struct.wlan_network*, %struct.wlan_network** %15, align 8
  %178 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %177, i32 0, i32 4
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 7
  %180 = load i32, i32* %179, align 8
  %181 = call %struct.sta_info* @r8712_alloc_stainfo(%struct.sta_priv* %176, i32 %180)
  store %struct.sta_info* %181, %struct.sta_info** %7, align 8
  br label %182

182:                                              ; preds = %175, %174
  %183 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %184 = icmp ne %struct.sta_info* %183, null
  br i1 %184, label %185, label %239

185:                                              ; preds = %182
  %186 = load %struct.wlan_network*, %struct.wlan_network** %15, align 8
  %187 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %190 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %189, i32 0, i32 0
  store i64 %188, i64* %190, align 8
  %191 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %192 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %191, i32 0, i32 1
  store i32 1, i32* %192, align 8
  %193 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %194 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %193, i32 0, i32 2
  store i32 5, i32* %194, align 4
  %195 = load %struct._adapter*, %struct._adapter** %3, align 8
  %196 = getelementptr inbounds %struct._adapter, %struct._adapter* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = icmp eq i32 %198, 2
  br i1 %199, label %200, label %238

200:                                              ; preds = %185
  %201 = load %struct._adapter*, %struct._adapter** %3, align 8
  %202 = getelementptr inbounds %struct._adapter, %struct._adapter* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 1
  store i32 0, i32* %203, align 4
  %204 = load %struct._adapter*, %struct._adapter** %3, align 8
  %205 = getelementptr inbounds %struct._adapter, %struct._adapter* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 2
  store i32 0, i32* %206, align 8
  %207 = load %struct._adapter*, %struct._adapter** %3, align 8
  %208 = getelementptr inbounds %struct._adapter, %struct._adapter* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 3
  store i32 0, i32* %209, align 4
  %210 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %211 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %210, i32 0, i32 3
  store i32 1, i32* %211, align 8
  %212 = load %struct._adapter*, %struct._adapter** %3, align 8
  %213 = getelementptr inbounds %struct._adapter, %struct._adapter* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %217 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %216, i32 0, i32 9
  store i32 %215, i32* %217, align 8
  %218 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %219 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %218, i32 0, i32 8
  %220 = bitcast i32* %219 to %struct.TYPE_15__*
  %221 = call i32 @memset(%struct.TYPE_15__* %220, i32 0, i32 4)
  %222 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %223 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %222, i32 0, i32 7
  %224 = bitcast i32* %223 to %struct.TYPE_15__*
  %225 = call i32 @memset(%struct.TYPE_15__* %224, i32 0, i32 4)
  %226 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %227 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %226, i32 0, i32 6
  %228 = bitcast i32* %227 to %struct.TYPE_15__*
  %229 = call i32 @memset(%struct.TYPE_15__* %228, i32 0, i32 4)
  %230 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %231 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %230, i32 0, i32 5
  %232 = bitcast i32* %231 to %struct.TYPE_15__*
  %233 = call i32 @memset(%struct.TYPE_15__* %232, i32 0, i32 4)
  %234 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %235 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %234, i32 0, i32 4
  %236 = bitcast i32* %235 to %struct.TYPE_15__*
  %237 = call i32 @memset(%struct.TYPE_15__* %236, i32 0, i32 4)
  br label %238

238:                                              ; preds = %200, %185
  br label %251

239:                                              ; preds = %182
  %240 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %241 = load i32, i32* @_FW_UNDER_LINKING, align 4
  %242 = call i64 @check_fwstate(%struct.mlme_priv* %240, i32 %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %250

244:                                              ; preds = %239
  %245 = load i32, i32* @_FW_UNDER_LINKING, align 4
  %246 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %247 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = xor i32 %248, %245
  store i32 %249, i32* %247, align 8
  br label %250

250:                                              ; preds = %244, %239
  br label %335

251:                                              ; preds = %238
  br label %252

252:                                              ; preds = %251, %150
  %253 = load %struct.wlan_network*, %struct.wlan_network** %11, align 8
  %254 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %253, i32 0, i32 4
  %255 = load %struct.wlan_network*, %struct.wlan_network** %15, align 8
  %256 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %255, i32 0, i32 4
  %257 = load %struct.wlan_network*, %struct.wlan_network** %15, align 8
  %258 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %257, i32 0, i32 4
  %259 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = call i32 @memcpy(%struct.TYPE_15__* %254, %struct.TYPE_15__* %256, i32 %260)
  %262 = load %struct.wlan_network*, %struct.wlan_network** %15, align 8
  %263 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = load %struct.wlan_network*, %struct.wlan_network** %11, align 8
  %266 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %265, i32 0, i32 3
  store i64 %264, i64* %266, align 8
  %267 = load %struct.wlan_network*, %struct.wlan_network** %15, align 8
  %268 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %267, i32 0, i32 4
  %269 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %268, i32 0, i32 4
  %270 = load i64, i64* %269, align 8
  switch i64 %270, label %279 [
    i64 128, label %271
    i64 129, label %275
  ]

271:                                              ; preds = %252
  %272 = load i32, i32* @WIFI_STATION_STATE, align 4
  %273 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %274 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %273, i32 0, i32 2
  store i32 %272, i32* %274, align 8
  br label %283

275:                                              ; preds = %252
  %276 = load i32, i32* @WIFI_ADHOC_STATE, align 4
  %277 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %278 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %277, i32 0, i32 2
  store i32 %276, i32* %278, align 8
  br label %283

279:                                              ; preds = %252
  %280 = load i32, i32* @WIFI_NULL_STATE, align 4
  %281 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %282 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %281, i32 0, i32 2
  store i32 %280, i32* %282, align 8
  br label %283

283:                                              ; preds = %279, %275, %271
  %284 = load %struct._adapter*, %struct._adapter** %3, align 8
  %285 = load %struct.wlan_network*, %struct.wlan_network** %11, align 8
  %286 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %285, i32 0, i32 4
  %287 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %286, i32 0, i32 6
  %288 = load i64, i64* %287, align 8
  %289 = add i64 %288, 4
  %290 = load %struct.wlan_network*, %struct.wlan_network** %11, align 8
  %291 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %290, i32 0, i32 4
  %292 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %291, i32 0, i32 5
  %293 = load i64, i64* %292, align 8
  %294 = call i32 @r8712_update_protection(%struct._adapter* %284, i64 %289, i64 %293)
  %295 = load %struct._adapter*, %struct._adapter** %3, align 8
  %296 = load %struct.wlan_network*, %struct.wlan_network** %11, align 8
  %297 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %296, i32 0, i32 4
  %298 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %297, i32 0, i32 6
  %299 = load i64, i64* %298, align 8
  %300 = load %struct.wlan_network*, %struct.wlan_network** %11, align 8
  %301 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %300, i32 0, i32 4
  %302 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %301, i32 0, i32 5
  %303 = load i64, i64* %302, align 8
  %304 = call i32 @update_ht_cap(%struct._adapter* %295, i64 %299, i64 %303)
  %305 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %306 = load i32, i32* @WIFI_STATION_STATE, align 4
  %307 = call i64 @check_fwstate(%struct.mlme_priv* %305, i32 %306)
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %312

309:                                              ; preds = %283
  %310 = load %struct._adapter*, %struct._adapter** %3, align 8
  %311 = call i32 @r8712_indicate_connect(%struct._adapter* %310)
  br label %312

312:                                              ; preds = %309, %283
  %313 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %314 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %313, i32 0, i32 1
  %315 = call i32 @del_timer(i32* %314)
  br label %317

316:                                              ; preds = %59
  br label %335

317:                                              ; preds = %312
  br label %334

318:                                              ; preds = %54
  %319 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %320 = load i32, i32* @_FW_UNDER_LINKING, align 4
  %321 = call i64 @check_fwstate(%struct.mlme_priv* %319, i32 %320)
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %333

323:                                              ; preds = %318
  %324 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %325 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %324, i32 0, i32 1
  %326 = load i64, i64* @jiffies, align 8
  %327 = call i64 @msecs_to_jiffies(i32 1)
  %328 = add nsw i64 %326, %327
  %329 = call i32 @mod_timer(i32* %325, i64 %328)
  %330 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %331 = load i32, i32* @_FW_UNDER_LINKING, align 4
  %332 = call i32 @_clr_fwstate_(%struct.mlme_priv* %330, i32 %331)
  br label %333

333:                                              ; preds = %323, %318
  br label %334

334:                                              ; preds = %333, %317
  br label %335

335:                                              ; preds = %334, %316, %250, %149, %53
  %336 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %337 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %336, i32 0, i32 0
  %338 = load i64, i64* %5, align 8
  %339 = call i32 @spin_unlock_irqrestore(i32* %337, i64 %338)
  ret void
}

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i32 @r8712_get_wlan_bssid_ex_sz(%struct.TYPE_15__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local %struct.wlan_network* @r8712_find_network(i32*, i32) #1

declare dso_local %struct.sta_info* @r8712_get_stainfo(%struct.sta_priv*, i32) #1

declare dso_local i32 @r8712_free_stainfo(%struct._adapter*, %struct.sta_info*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.sta_info* @r8712_alloc_stainfo(%struct.sta_priv*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_15__*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @r8712_update_protection(%struct._adapter*, i64, i64) #1

declare dso_local i32 @update_ht_cap(%struct._adapter*, i64, i64) #1

declare dso_local i32 @r8712_indicate_connect(%struct._adapter*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @_clr_fwstate_(%struct.mlme_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
