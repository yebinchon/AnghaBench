; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_btcoex.c_halbtcoutsrc_Get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_btcoex.c_halbtcoutsrc_Get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.adapter* }
%struct.adapter = type { %struct.TYPE_12__*, %struct.mlme_ext_priv, %struct.TYPE_15__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.mlme_ext_priv = type { i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.hal_com_data = type { i32, i32, i32, i32, i32 }

@WIFI_ASOC_STATE = common dso_local global i32 0, align 4
@GLBtcWiFiInScanState = common dso_local global i32 0, align 4
@WIFI_UNDER_LINKING = common dso_local global i32 0, align 4
@WIFI_AP_STATE = common dso_local global i32 0, align 4
@WIRELESS_11B = common dso_local global i32 0, align 4
@BTC_WIFI_BW_LEGACY = common dso_local global i32 0, align 4
@CHANNEL_WIDTH_20 = common dso_local global i32 0, align 4
@BTC_WIFI_BW_HT20 = common dso_local global i32 0, align 4
@BTC_WIFI_BW_HT40 = common dso_local global i32 0, align 4
@BTC_WIFI_TRAFFIC_TX = common dso_local global i32 0, align 4
@BTC_WIFI_TRAFFIC_RX = common dso_local global i32 0, align 4
@BTC_SMSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*)* @halbtcoutsrc_Get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @halbtcoutsrc_Get(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.adapter*, align 8
  %10 = alloca %struct.hal_com_data*, align 8
  %11 = alloca %struct.mlme_ext_priv*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_13__*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %18, %struct.TYPE_14__** %8, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %20 = call i32 @halbtcoutsrc_IsBtCoexistAvailable(%struct.TYPE_14__* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %204

23:                                               ; preds = %3
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load %struct.adapter*, %struct.adapter** %25, align 8
  store %struct.adapter* %26, %struct.adapter** %9, align 8
  %27 = load %struct.adapter*, %struct.adapter** %9, align 8
  %28 = call %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter* %27)
  store %struct.hal_com_data* %28, %struct.hal_com_data** %10, align 8
  %29 = load %struct.adapter*, %struct.adapter** %9, align 8
  %30 = getelementptr inbounds %struct.adapter, %struct.adapter* %29, i32 0, i32 1
  store %struct.mlme_ext_priv* %30, %struct.mlme_ext_priv** %11, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = bitcast i8* %31 to i32*
  store i32* %32, i32** %12, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = bitcast i8* %33 to i32*
  store i32* %34, i32** %13, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = bitcast i8* %35 to i32*
  store i32* %36, i32** %14, align 8
  store i32 1, i32* %15, align 4
  %37 = load i32, i32* %6, align 4
  switch i32 %37, label %201 [
    i32 152, label %38
    i32 153, label %40
    i32 148, label %42
    i32 149, label %48
    i32 143, label %52
    i32 145, label %55
    i32 144, label %61
    i32 151, label %67
    i32 142, label %69
    i32 150, label %76
    i32 147, label %82
    i32 141, label %91
    i32 146, label %102
    i32 154, label %104
    i32 139, label %106
    i32 140, label %110
    i32 131, label %112
    i32 128, label %135
    i32 130, label %153
    i32 129, label %165
    i32 132, label %169
    i32 134, label %173
    i32 135, label %179
    i32 133, label %184
    i32 136, label %186
    i32 138, label %189
    i32 137, label %193
  ]

38:                                               ; preds = %23
  %39 = load i32*, i32** %12, align 8
  store i32 0, i32* %39, align 4
  store i32 0, i32* %15, align 4
  br label %202

40:                                               ; preds = %23
  %41 = load i32*, i32** %12, align 8
  store i32 0, i32* %41, align 4
  store i32 0, i32* %15, align 4
  br label %202

42:                                               ; preds = %23
  %43 = load %struct.adapter*, %struct.adapter** %9, align 8
  %44 = getelementptr inbounds %struct.adapter, %struct.adapter* %43, i32 0, i32 2
  %45 = load i32, i32* @WIFI_ASOC_STATE, align 4
  %46 = call i32 @check_fwstate(%struct.TYPE_15__* %44, i32 %45)
  %47 = load i32*, i32** %12, align 8
  store i32 %46, i32* %47, align 4
  br label %202

48:                                               ; preds = %23
  %49 = load %struct.adapter*, %struct.adapter** %9, align 8
  %50 = call i32 @halbtcoutsrc_IsWifiBusy(%struct.adapter* %49)
  %51 = load i32*, i32** %12, align 8
  store i32 %50, i32* %51, align 4
  br label %202

52:                                               ; preds = %23
  %53 = load i32, i32* @GLBtcWiFiInScanState, align 4
  %54 = load i32*, i32** %12, align 8
  store i32 %53, i32* %54, align 4
  br label %202

55:                                               ; preds = %23
  %56 = load %struct.adapter*, %struct.adapter** %9, align 8
  %57 = getelementptr inbounds %struct.adapter, %struct.adapter* %56, i32 0, i32 2
  %58 = load i32, i32* @WIFI_UNDER_LINKING, align 4
  %59 = call i32 @check_fwstate(%struct.TYPE_15__* %57, i32 %58)
  %60 = load i32*, i32** %12, align 8
  store i32 %59, i32* %60, align 4
  br label %202

61:                                               ; preds = %23
  %62 = load %struct.adapter*, %struct.adapter** %9, align 8
  %63 = getelementptr inbounds %struct.adapter, %struct.adapter* %62, i32 0, i32 2
  %64 = load i32, i32* @WIFI_UNDER_LINKING, align 4
  %65 = call i32 @check_fwstate(%struct.TYPE_15__* %63, i32 %64)
  %66 = load i32*, i32** %12, align 8
  store i32 %65, i32* %66, align 4
  br label %202

67:                                               ; preds = %23
  %68 = load i32*, i32** %12, align 8
  store i32 0, i32* %68, align 4
  br label %202

69:                                               ; preds = %23
  %70 = load %struct.hal_com_data*, %struct.hal_com_data** %10, align 8
  %71 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 1
  %74 = zext i1 %73 to i32
  %75 = load i32*, i32** %12, align 8
  store i32 %74, i32* %75, align 4
  br label %202

76:                                               ; preds = %23
  %77 = load %struct.adapter*, %struct.adapter** %9, align 8
  %78 = getelementptr inbounds %struct.adapter, %struct.adapter* %77, i32 0, i32 2
  %79 = load i32, i32* @WIFI_AP_STATE, align 4
  %80 = call i32 @check_fwstate(%struct.TYPE_15__* %78, i32 %79)
  %81 = load i32*, i32** %12, align 8
  store i32 %80, i32* %81, align 4
  br label %202

82:                                               ; preds = %23
  %83 = load %struct.adapter*, %struct.adapter** %9, align 8
  %84 = getelementptr inbounds %struct.adapter, %struct.adapter* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp eq i32 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i32 0, i32 1
  %90 = load i32*, i32** %12, align 8
  store i32 %89, i32* %90, align 4
  br label %202

91:                                               ; preds = %23
  %92 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %11, align 8
  %93 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @WIRELESS_11B, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = load i32*, i32** %12, align 8
  store i32 1, i32* %98, align 4
  br label %101

99:                                               ; preds = %91
  %100 = load i32*, i32** %12, align 8
  store i32 0, i32* %100, align 4
  br label %101

101:                                              ; preds = %99, %97
  br label %202

102:                                              ; preds = %23
  %103 = load i32*, i32** %12, align 8
  store i32 0, i32* %103, align 4
  br label %202

104:                                              ; preds = %23
  %105 = load i32*, i32** %12, align 8
  store i32 0, i32* %105, align 4
  br label %202

106:                                              ; preds = %23
  %107 = load %struct.adapter*, %struct.adapter** %9, align 8
  %108 = call i32 @halbtcoutsrc_GetWifiRssi(%struct.adapter* %107)
  %109 = load i32*, i32** %13, align 8
  store i32 %108, i32* %109, align 4
  br label %202

110:                                              ; preds = %23
  %111 = load i32*, i32** %13, align 8
  store i32 0, i32* %111, align 4
  store i32 0, i32* %15, align 4
  br label %202

112:                                              ; preds = %23
  %113 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %11, align 8
  %114 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @IsLegacyOnly(i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %112
  %119 = load i32, i32* @BTC_WIFI_BW_LEGACY, align 4
  %120 = load i32*, i32** %14, align 8
  store i32 %119, i32* %120, align 4
  br label %134

121:                                              ; preds = %112
  %122 = load %struct.hal_com_data*, %struct.hal_com_data** %10, align 8
  %123 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @CHANNEL_WIDTH_20, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %121
  %128 = load i32, i32* @BTC_WIFI_BW_HT20, align 4
  %129 = load i32*, i32** %14, align 8
  store i32 %128, i32* %129, align 4
  br label %133

130:                                              ; preds = %121
  %131 = load i32, i32* @BTC_WIFI_BW_HT40, align 4
  %132 = load i32*, i32** %14, align 8
  store i32 %131, i32* %132, align 4
  br label %133

133:                                              ; preds = %130, %127
  br label %134

134:                                              ; preds = %133, %118
  br label %202

135:                                              ; preds = %23
  %136 = load %struct.adapter*, %struct.adapter** %9, align 8
  %137 = getelementptr inbounds %struct.adapter, %struct.adapter* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 0
  store %struct.TYPE_13__* %138, %struct.TYPE_13__** %16, align 8
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = icmp sgt i32 %141, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %135
  %147 = load i32, i32* @BTC_WIFI_TRAFFIC_TX, align 4
  %148 = load i32*, i32** %14, align 8
  store i32 %147, i32* %148, align 4
  br label %152

149:                                              ; preds = %135
  %150 = load i32, i32* @BTC_WIFI_TRAFFIC_RX, align 4
  %151 = load i32*, i32** %14, align 8
  store i32 %150, i32* %151, align 4
  br label %152

152:                                              ; preds = %149, %146
  br label %202

153:                                              ; preds = %23
  %154 = load %struct.hal_com_data*, %struct.hal_com_data** %10, align 8
  %155 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = shl i32 %156, 16
  %158 = load i32*, i32** %14, align 8
  store i32 %157, i32* %158, align 4
  %159 = load %struct.hal_com_data*, %struct.hal_com_data** %10, align 8
  %160 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = load i32*, i32** %14, align 8
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %163, %161
  store i32 %164, i32* %162, align 4
  br label %202

165:                                              ; preds = %23
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %167 = call i32 @halbtcoutsrc_GetWifiLinkStatus(%struct.TYPE_14__* %166)
  %168 = load i32*, i32** %14, align 8
  store i32 %167, i32* %168, align 4
  br label %202

169:                                              ; preds = %23
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %171 = call i32 @halbtcoutsrc_GetBtPatchVer(%struct.TYPE_14__* %170)
  %172 = load i32*, i32** %14, align 8
  store i32 %171, i32* %172, align 4
  br label %202

173:                                              ; preds = %23
  %174 = load %struct.adapter*, %struct.adapter** %9, align 8
  %175 = getelementptr inbounds %struct.adapter, %struct.adapter* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32*, i32** %12, align 8
  store i32 %177, i32* %178, align 4
  br label %202

179:                                              ; preds = %23
  %180 = load %struct.hal_com_data*, %struct.hal_com_data** %10, align 8
  %181 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = load i32*, i32** %12, align 8
  store i32 %182, i32* %183, align 4
  br label %202

184:                                              ; preds = %23
  %185 = load i32*, i32** %12, align 8
  store i32 0, i32* %185, align 4
  store i32 0, i32* %15, align 4
  br label %202

186:                                              ; preds = %23
  %187 = load i32, i32* @BTC_SMSP, align 4
  %188 = load i32*, i32** %12, align 8
  store i32 %187, i32* %188, align 4
  br label %202

189:                                              ; preds = %23
  %190 = load %struct.adapter*, %struct.adapter** %9, align 8
  %191 = call i32 @halbtcoutsrc_GetWifiScanAPNum(%struct.adapter* %190)
  %192 = load i32*, i32** %12, align 8
  store i32 %191, i32* %192, align 4
  br label %202

193:                                              ; preds = %23
  %194 = load %struct.adapter*, %struct.adapter** %9, align 8
  %195 = getelementptr inbounds %struct.adapter, %struct.adapter* %194, i32 0, i32 0
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load i32*, i32** %12, align 8
  store i32 %199, i32* %200, align 4
  br label %202

201:                                              ; preds = %23
  store i32 0, i32* %15, align 4
  br label %202

202:                                              ; preds = %201, %193, %189, %186, %184, %179, %173, %169, %165, %153, %152, %134, %110, %106, %104, %102, %101, %82, %76, %69, %67, %61, %55, %52, %48, %42, %40, %38
  %203 = load i32, i32* %15, align 4
  store i32 %203, i32* %4, align 4
  br label %204

204:                                              ; preds = %202, %22
  %205 = load i32, i32* %4, align 4
  ret i32 %205
}

declare dso_local i32 @halbtcoutsrc_IsBtCoexistAvailable(%struct.TYPE_14__*) #1

declare dso_local %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter*) #1

declare dso_local i32 @check_fwstate(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @halbtcoutsrc_IsWifiBusy(%struct.adapter*) #1

declare dso_local i32 @halbtcoutsrc_GetWifiRssi(%struct.adapter*) #1

declare dso_local i32 @IsLegacyOnly(i32) #1

declare dso_local i32 @halbtcoutsrc_GetWifiLinkStatus(%struct.TYPE_14__*) #1

declare dso_local i32 @halbtcoutsrc_GetBtPatchVer(%struct.TYPE_14__*) #1

declare dso_local i32 @halbtcoutsrc_GetWifiScanAPNum(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
