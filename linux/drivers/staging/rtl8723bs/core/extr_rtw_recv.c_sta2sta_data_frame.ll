; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_recv.c_sta2sta_data_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_recv.c_sta2sta_data_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.mlme_priv, %struct.sta_priv }
%struct.mlme_priv = type { i32 }
%struct.sta_priv = type { i32 }
%union.recv_frame = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, %struct.rx_pkt_attrib }
%struct.rx_pkt_attrib = type { i8*, i8*, i8*, i8*, i8* }
%struct.sta_info = type { i32 }

@_SUCCESS = common dso_local global i64 0, align 8
@WIFI_ADHOC_STATE = common dso_local global i32 0, align 4
@WIFI_ADHOC_MASTER_STATE = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@_module_rtl871x_recv_c_ = common dso_local global i32 0, align 4
@_drv_err_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c" SA ==myself\0A\00", align 1
@_FAIL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] zeroinitializer, align 1
@WIFI_STATION_STATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"bssid != TA under STATION_MODE; drop pkt\0A\00", align 1
@WIFI_AP_STATE = common dso_local global i32 0, align 4
@WIFI_MP_STATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"can't get psta under sta2sta_data_frame ; drop pkt\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sta2sta_data_frame(%struct.adapter* %0, %union.recv_frame* %1, %struct.sta_info** %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %union.recv_frame*, align 8
  %6 = alloca %struct.sta_info**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.rx_pkt_attrib*, align 8
  %10 = alloca %struct.sta_priv*, align 8
  %11 = alloca %struct.mlme_priv*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %union.recv_frame* %1, %union.recv_frame** %5, align 8
  store %struct.sta_info** %2, %struct.sta_info*** %6, align 8
  %16 = load %union.recv_frame*, %union.recv_frame** %5, align 8
  %17 = bitcast %union.recv_frame* %16 to %struct.TYPE_4__*
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %7, align 8
  %21 = load i64, i64* @_SUCCESS, align 8
  store i64 %21, i64* %8, align 8
  %22 = load %union.recv_frame*, %union.recv_frame** %5, align 8
  %23 = bitcast %union.recv_frame* %22 to %struct.TYPE_4__*
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store %struct.rx_pkt_attrib* %25, %struct.rx_pkt_attrib** %9, align 8
  %26 = load %struct.adapter*, %struct.adapter** %4, align 8
  %27 = getelementptr inbounds %struct.adapter, %struct.adapter* %26, i32 0, i32 2
  store %struct.sta_priv* %27, %struct.sta_priv** %10, align 8
  %28 = load %struct.adapter*, %struct.adapter** %4, align 8
  %29 = getelementptr inbounds %struct.adapter, %struct.adapter* %28, i32 0, i32 1
  store %struct.mlme_priv* %29, %struct.mlme_priv** %11, align 8
  %30 = load %struct.mlme_priv*, %struct.mlme_priv** %11, align 8
  %31 = call i8* @get_bssid(%struct.mlme_priv* %30)
  store i8* %31, i8** %12, align 8
  %32 = load %struct.adapter*, %struct.adapter** %4, align 8
  %33 = getelementptr inbounds %struct.adapter, %struct.adapter* %32, i32 0, i32 0
  %34 = call i8* @myid(i32* %33)
  store i8* %34, i8** %13, align 8
  store i8* null, i8** %14, align 8
  %35 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %9, align 8
  %36 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i64 @IS_MCAST(i8* %37)
  store i64 %38, i64* %15, align 8
  %39 = load %struct.mlme_priv*, %struct.mlme_priv** %11, align 8
  %40 = load i32, i32* @WIFI_ADHOC_STATE, align 4
  %41 = call i32 @check_fwstate(%struct.mlme_priv* %39, i32 %40)
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %48, label %43

43:                                               ; preds = %3
  %44 = load %struct.mlme_priv*, %struct.mlme_priv** %11, align 8
  %45 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %46 = call i32 @check_fwstate(%struct.mlme_priv* %44, i32 %45)
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %100

48:                                               ; preds = %43, %3
  %49 = load i8*, i8** %13, align 8
  %50 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %9, align 8
  %51 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = load i32, i32* @ETH_ALEN, align 4
  %54 = call i64 @memcmp(i8* %49, i8* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %48
  %57 = load i32, i32* @_module_rtl871x_recv_c_, align 4
  %58 = load i32, i32* @_drv_err_, align 4
  %59 = call i32 @RT_TRACE(i32 %57, i32 %58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %60 = load i64, i64* @_FAIL, align 8
  store i64 %60, i64* %8, align 8
  br label %229

61:                                               ; preds = %48
  %62 = load i8*, i8** %13, align 8
  %63 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %9, align 8
  %64 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = load i32, i32* @ETH_ALEN, align 4
  %67 = call i64 @memcmp(i8* %62, i8* %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %61
  %70 = load i64, i64* %15, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %69
  %73 = load i64, i64* @_FAIL, align 8
  store i64 %73, i64* %8, align 8
  br label %229

74:                                               ; preds = %69, %61
  %75 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %9, align 8
  %76 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %75, i32 0, i32 2
  %77 = load i8*, i8** %76, align 8
  %78 = load i32, i32* @ETH_ALEN, align 4
  %79 = call i64 @memcmp(i8* %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %74
  %82 = load i8*, i8** %12, align 8
  %83 = load i32, i32* @ETH_ALEN, align 4
  %84 = call i64 @memcmp(i8* %82, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %81
  %87 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %9, align 8
  %88 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %87, i32 0, i32 2
  %89 = load i8*, i8** %88, align 8
  %90 = load i8*, i8** %12, align 8
  %91 = load i32, i32* @ETH_ALEN, align 4
  %92 = call i64 @memcmp(i8* %89, i8* %90, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %86, %81, %74
  %95 = load i64, i64* @_FAIL, align 8
  store i64 %95, i64* %8, align 8
  br label %229

96:                                               ; preds = %86
  %97 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %9, align 8
  %98 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  store i8* %99, i8** %14, align 8
  br label %207

100:                                              ; preds = %43
  %101 = load %struct.mlme_priv*, %struct.mlme_priv** %11, align 8
  %102 = load i32, i32* @WIFI_STATION_STATE, align 4
  %103 = call i32 @check_fwstate(%struct.mlme_priv* %101, i32 %102)
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %105, label %124

105:                                              ; preds = %100
  %106 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %9, align 8
  %107 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %106, i32 0, i32 2
  %108 = load i8*, i8** %107, align 8
  %109 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %9, align 8
  %110 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = load i32, i32* @ETH_ALEN, align 4
  %113 = call i64 @memcmp(i8* %108, i8* %111, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %105
  %116 = load i32, i32* @_module_rtl871x_recv_c_, align 4
  %117 = load i32, i32* @_drv_err_, align 4
  %118 = call i32 @RT_TRACE(i32 %116, i32 %117, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %119 = load i64, i64* @_FAIL, align 8
  store i64 %119, i64* %8, align 8
  br label %229

120:                                              ; preds = %105
  %121 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %9, align 8
  %122 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %121, i32 0, i32 2
  %123 = load i8*, i8** %122, align 8
  store i8* %123, i8** %14, align 8
  br label %206

124:                                              ; preds = %100
  %125 = load %struct.mlme_priv*, %struct.mlme_priv** %11, align 8
  %126 = load i32, i32* @WIFI_AP_STATE, align 4
  %127 = call i32 @check_fwstate(%struct.mlme_priv* %125, i32 %126)
  %128 = icmp eq i32 %127, 1
  br i1 %128, label %129, label %158

129:                                              ; preds = %124
  %130 = load i64, i64* %15, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %129
  %133 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %9, align 8
  %134 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %133, i32 0, i32 2
  %135 = load i8*, i8** %134, align 8
  %136 = call i64 @IS_MCAST(i8* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %132
  %139 = load i64, i64* @_FAIL, align 8
  store i64 %139, i64* %8, align 8
  br label %229

140:                                              ; preds = %132
  br label %157

141:                                              ; preds = %129
  %142 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %9, align 8
  %143 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %142, i32 0, i32 2
  %144 = load i8*, i8** %143, align 8
  %145 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %9, align 8
  %146 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = load i32, i32* @ETH_ALEN, align 4
  %149 = call i64 @memcmp(i8* %144, i8* %147, i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %141
  %152 = load i64, i64* @_FAIL, align 8
  store i64 %152, i64* %8, align 8
  br label %229

153:                                              ; preds = %141
  %154 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %9, align 8
  %155 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %154, i32 0, i32 1
  %156 = load i8*, i8** %155, align 8
  store i8* %156, i8** %14, align 8
  br label %157

157:                                              ; preds = %153, %140
  br label %205

158:                                              ; preds = %124
  %159 = load %struct.mlme_priv*, %struct.mlme_priv** %11, align 8
  %160 = load i32, i32* @WIFI_MP_STATE, align 4
  %161 = call i32 @check_fwstate(%struct.mlme_priv* %159, i32 %160)
  %162 = icmp eq i32 %161, 1
  br i1 %162, label %163, label %202

163:                                              ; preds = %158
  %164 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %9, align 8
  %165 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %164, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = load i8*, i8** %7, align 8
  %168 = call i8* @GetAddr1Ptr(i8* %167)
  %169 = load i32, i32* @ETH_ALEN, align 4
  %170 = call i32 @memcpy(i8* %166, i8* %168, i32 %169)
  %171 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %9, align 8
  %172 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %171, i32 0, i32 1
  %173 = load i8*, i8** %172, align 8
  %174 = load i8*, i8** %7, align 8
  %175 = call i8* @GetAddr2Ptr(i8* %174)
  %176 = load i32, i32* @ETH_ALEN, align 4
  %177 = call i32 @memcpy(i8* %173, i8* %175, i32 %176)
  %178 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %9, align 8
  %179 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %178, i32 0, i32 2
  %180 = load i8*, i8** %179, align 8
  %181 = load i8*, i8** %7, align 8
  %182 = call i8* @GetAddr3Ptr(i8* %181)
  %183 = load i32, i32* @ETH_ALEN, align 4
  %184 = call i32 @memcpy(i8* %180, i8* %182, i32 %183)
  %185 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %9, align 8
  %186 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %185, i32 0, i32 3
  %187 = load i8*, i8** %186, align 8
  %188 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %9, align 8
  %189 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %188, i32 0, i32 0
  %190 = load i8*, i8** %189, align 8
  %191 = load i32, i32* @ETH_ALEN, align 4
  %192 = call i32 @memcpy(i8* %187, i8* %190, i32 %191)
  %193 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %9, align 8
  %194 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %193, i32 0, i32 4
  %195 = load i8*, i8** %194, align 8
  %196 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %9, align 8
  %197 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %196, i32 0, i32 1
  %198 = load i8*, i8** %197, align 8
  %199 = load i32, i32* @ETH_ALEN, align 4
  %200 = call i32 @memcpy(i8* %195, i8* %198, i32 %199)
  %201 = load i8*, i8** %12, align 8
  store i8* %201, i8** %14, align 8
  br label %204

202:                                              ; preds = %158
  %203 = load i64, i64* @_FAIL, align 8
  store i64 %203, i64* %8, align 8
  br label %204

204:                                              ; preds = %202, %163
  br label %205

205:                                              ; preds = %204, %157
  br label %206

206:                                              ; preds = %205, %120
  br label %207

207:                                              ; preds = %206, %96
  %208 = load i64, i64* %15, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %207
  %211 = load %struct.adapter*, %struct.adapter** %4, align 8
  %212 = call %struct.sta_info* @rtw_get_bcmc_stainfo(%struct.adapter* %211)
  %213 = load %struct.sta_info**, %struct.sta_info*** %6, align 8
  store %struct.sta_info* %212, %struct.sta_info** %213, align 8
  br label %219

214:                                              ; preds = %207
  %215 = load %struct.sta_priv*, %struct.sta_priv** %10, align 8
  %216 = load i8*, i8** %14, align 8
  %217 = call %struct.sta_info* @rtw_get_stainfo(%struct.sta_priv* %215, i8* %216)
  %218 = load %struct.sta_info**, %struct.sta_info*** %6, align 8
  store %struct.sta_info* %217, %struct.sta_info** %218, align 8
  br label %219

219:                                              ; preds = %214, %210
  %220 = load %struct.sta_info**, %struct.sta_info*** %6, align 8
  %221 = load %struct.sta_info*, %struct.sta_info** %220, align 8
  %222 = icmp ne %struct.sta_info* %221, null
  br i1 %222, label %228, label %223

223:                                              ; preds = %219
  %224 = load i32, i32* @_module_rtl871x_recv_c_, align 4
  %225 = load i32, i32* @_drv_err_, align 4
  %226 = call i32 @RT_TRACE(i32 %224, i32 %225, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  %227 = load i64, i64* @_FAIL, align 8
  store i64 %227, i64* %8, align 8
  br label %229

228:                                              ; preds = %219
  br label %229

229:                                              ; preds = %228, %223, %151, %138, %115, %94, %72, %56
  %230 = load i64, i64* %8, align 8
  ret i64 %230
}

declare dso_local i8* @get_bssid(%struct.mlme_priv*) #1

declare dso_local i8* @myid(i32*) #1

declare dso_local i64 @IS_MCAST(i8*) #1

declare dso_local i32 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i8* @GetAddr1Ptr(i8*) #1

declare dso_local i8* @GetAddr2Ptr(i8*) #1

declare dso_local i8* @GetAddr3Ptr(i8*) #1

declare dso_local %struct.sta_info* @rtw_get_bcmc_stainfo(%struct.adapter*) #1

declare dso_local %struct.sta_info* @rtw_get_stainfo(%struct.sta_priv*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
