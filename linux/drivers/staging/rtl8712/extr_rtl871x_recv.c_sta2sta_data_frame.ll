; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_recv.c_sta2sta_data_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_recv.c_sta2sta_data_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.TYPE_6__, i32, %struct.mlme_priv, %struct.sta_priv }
%struct.TYPE_6__ = type { i32 }
%struct.mlme_priv = type { i32 }
%struct.sta_priv = type { i32 }
%union.recv_frame = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.rx_pkt_attrib, i32* }
%struct.rx_pkt_attrib = type { i32*, i32*, i32*, i32*, i32* }
%struct.sta_info = type { i32 }

@_SUCCESS = common dso_local global i32 0, align 4
@WIFI_ADHOC_STATE = common dso_local global i32 0, align 4
@WIFI_ADHOC_MASTER_STATE = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@_FAIL = common dso_local global i32 0, align 4
@WIFI_STATION_STATE = common dso_local global i32 0, align 4
@WIFI_AP_STATE = common dso_local global i32 0, align 4
@WIFI_MP_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._adapter*, %union.recv_frame*, %struct.sta_info**)* @sta2sta_data_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sta2sta_data_frame(%struct._adapter* %0, %union.recv_frame* %1, %struct.sta_info** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._adapter*, align 8
  %6 = alloca %union.recv_frame*, align 8
  %7 = alloca %struct.sta_info**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rx_pkt_attrib*, align 8
  %11 = alloca %struct.sta_priv*, align 8
  %12 = alloca %struct.mlme_priv*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct._adapter* %0, %struct._adapter** %5, align 8
  store %union.recv_frame* %1, %union.recv_frame** %6, align 8
  store %struct.sta_info** %2, %struct.sta_info*** %7, align 8
  %17 = load %union.recv_frame*, %union.recv_frame** %6, align 8
  %18 = bitcast %union.recv_frame* %17 to %struct.TYPE_5__*
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %8, align 8
  %22 = load i32, i32* @_SUCCESS, align 4
  store i32 %22, i32* %9, align 4
  %23 = load %union.recv_frame*, %union.recv_frame** %6, align 8
  %24 = bitcast %union.recv_frame* %23 to %struct.TYPE_5__*
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store %struct.rx_pkt_attrib* %26, %struct.rx_pkt_attrib** %10, align 8
  %27 = load %struct._adapter*, %struct._adapter** %5, align 8
  %28 = getelementptr inbounds %struct._adapter, %struct._adapter* %27, i32 0, i32 3
  store %struct.sta_priv* %28, %struct.sta_priv** %11, align 8
  %29 = load %struct._adapter*, %struct._adapter** %5, align 8
  %30 = getelementptr inbounds %struct._adapter, %struct._adapter* %29, i32 0, i32 2
  store %struct.mlme_priv* %30, %struct.mlme_priv** %12, align 8
  %31 = load %struct.mlme_priv*, %struct.mlme_priv** %12, align 8
  %32 = call i32* @get_bssid(%struct.mlme_priv* %31)
  store i32* %32, i32** %13, align 8
  %33 = load %struct._adapter*, %struct._adapter** %5, align 8
  %34 = getelementptr inbounds %struct._adapter, %struct._adapter* %33, i32 0, i32 1
  %35 = call i32* @myid(i32* %34)
  store i32* %35, i32** %14, align 8
  store i32* null, i32** %15, align 8
  %36 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %10, align 8
  %37 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @is_multicast_ether_addr(i32* %38)
  store i32 %39, i32* %16, align 4
  %40 = load %struct.mlme_priv*, %struct.mlme_priv** %12, align 8
  %41 = load i32, i32* @WIFI_ADHOC_STATE, align 4
  %42 = call i64 @check_fwstate(%struct.mlme_priv* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %3
  %45 = load %struct.mlme_priv*, %struct.mlme_priv** %12, align 8
  %46 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %47 = call i64 @check_fwstate(%struct.mlme_priv* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %96

49:                                               ; preds = %44, %3
  %50 = load i32*, i32** %14, align 8
  %51 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %10, align 8
  %52 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* @ETH_ALEN, align 4
  %55 = call i64 @memcmp(i32* %50, i32* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %49
  %58 = load i32, i32* @_FAIL, align 4
  store i32 %58, i32* %4, align 4
  br label %231

59:                                               ; preds = %49
  %60 = load i32*, i32** %14, align 8
  %61 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %10, align 8
  %62 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* @ETH_ALEN, align 4
  %65 = call i64 @memcmp(i32* %60, i32* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %59
  %68 = load i32, i32* %16, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* @_FAIL, align 4
  store i32 %71, i32* %4, align 4
  br label %231

72:                                               ; preds = %67, %59
  %73 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %10, align 8
  %74 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %73, i32 0, i32 4
  %75 = load i32*, i32** %74, align 8
  %76 = call i64 @is_zero_ether_addr(i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %90, label %78

78:                                               ; preds = %72
  %79 = load i32*, i32** %13, align 8
  %80 = call i64 @is_zero_ether_addr(i32* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %90, label %82

82:                                               ; preds = %78
  %83 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %10, align 8
  %84 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %83, i32 0, i32 4
  %85 = load i32*, i32** %84, align 8
  %86 = load i32*, i32** %13, align 8
  %87 = load i32, i32* @ETH_ALEN, align 4
  %88 = call i64 @memcmp(i32* %85, i32* %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %82, %78, %72
  %91 = load i32, i32* @_FAIL, align 4
  store i32 %91, i32* %4, align 4
  br label %231

92:                                               ; preds = %82
  %93 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %10, align 8
  %94 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  store i32* %95, i32** %15, align 8
  br label %200

96:                                               ; preds = %44
  %97 = load %struct.mlme_priv*, %struct.mlme_priv** %12, align 8
  %98 = load i32, i32* @WIFI_STATION_STATE, align 4
  %99 = call i64 @check_fwstate(%struct.mlme_priv* %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %117

101:                                              ; preds = %96
  %102 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %10, align 8
  %103 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %102, i32 0, i32 4
  %104 = load i32*, i32** %103, align 8
  %105 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %10, align 8
  %106 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* @ETH_ALEN, align 4
  %109 = call i64 @memcmp(i32* %104, i32* %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %101
  %112 = load i32, i32* @_FAIL, align 4
  store i32 %112, i32* %4, align 4
  br label %231

113:                                              ; preds = %101
  %114 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %10, align 8
  %115 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %114, i32 0, i32 4
  %116 = load i32*, i32** %115, align 8
  store i32* %116, i32** %15, align 8
  br label %199

117:                                              ; preds = %96
  %118 = load %struct.mlme_priv*, %struct.mlme_priv** %12, align 8
  %119 = load i32, i32* @WIFI_AP_STATE, align 4
  %120 = call i64 @check_fwstate(%struct.mlme_priv* %118, i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %151

122:                                              ; preds = %117
  %123 = load i32, i32* %16, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %122
  %126 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %10, align 8
  %127 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %126, i32 0, i32 4
  %128 = load i32*, i32** %127, align 8
  %129 = call i32 @is_multicast_ether_addr(i32* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %125
  %132 = load i32, i32* @_FAIL, align 4
  store i32 %132, i32* %4, align 4
  br label %231

133:                                              ; preds = %125
  br label %150

134:                                              ; preds = %122
  %135 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %10, align 8
  %136 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %135, i32 0, i32 4
  %137 = load i32*, i32** %136, align 8
  %138 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %10, align 8
  %139 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %138, i32 0, i32 2
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* @ETH_ALEN, align 4
  %142 = call i64 @memcmp(i32* %137, i32* %140, i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %134
  %145 = load i32, i32* @_FAIL, align 4
  store i32 %145, i32* %4, align 4
  br label %231

146:                                              ; preds = %134
  %147 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %10, align 8
  %148 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  store i32* %149, i32** %15, align 8
  br label %150

150:                                              ; preds = %146, %133
  br label %198

151:                                              ; preds = %117
  %152 = load %struct.mlme_priv*, %struct.mlme_priv** %12, align 8
  %153 = load i32, i32* @WIFI_MP_STATE, align 4
  %154 = call i64 @check_fwstate(%struct.mlme_priv* %152, i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %195

156:                                              ; preds = %151
  %157 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %10, align 8
  %158 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %157, i32 0, i32 2
  %159 = load i32*, i32** %158, align 8
  %160 = load i32*, i32** %8, align 8
  %161 = call i32* @GetAddr1Ptr(i32* %160)
  %162 = load i32, i32* @ETH_ALEN, align 4
  %163 = call i32 @memcpy(i32* %159, i32* %161, i32 %162)
  %164 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %10, align 8
  %165 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = load i32*, i32** %8, align 8
  %168 = call i32* @GetAddr2Ptr(i32* %167)
  %169 = load i32, i32* @ETH_ALEN, align 4
  %170 = call i32 @memcpy(i32* %166, i32* %168, i32 %169)
  %171 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %10, align 8
  %172 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %171, i32 0, i32 4
  %173 = load i32*, i32** %172, align 8
  %174 = load i32*, i32** %8, align 8
  %175 = call i32* @GetAddr3Ptr(i32* %174)
  %176 = load i32, i32* @ETH_ALEN, align 4
  %177 = call i32 @memcpy(i32* %173, i32* %175, i32 %176)
  %178 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %10, align 8
  %179 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %178, i32 0, i32 3
  %180 = load i32*, i32** %179, align 8
  %181 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %10, align 8
  %182 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %181, i32 0, i32 2
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* @ETH_ALEN, align 4
  %185 = call i32 @memcpy(i32* %180, i32* %183, i32 %184)
  %186 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %10, align 8
  %187 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %186, i32 0, i32 1
  %188 = load i32*, i32** %187, align 8
  %189 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %10, align 8
  %190 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %189, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* @ETH_ALEN, align 4
  %193 = call i32 @memcpy(i32* %188, i32* %191, i32 %192)
  %194 = load i32*, i32** %13, align 8
  store i32* %194, i32** %15, align 8
  br label %197

195:                                              ; preds = %151
  %196 = load i32, i32* @_FAIL, align 4
  store i32 %196, i32* %9, align 4
  br label %197

197:                                              ; preds = %195, %156
  br label %198

198:                                              ; preds = %197, %150
  br label %199

199:                                              ; preds = %198, %113
  br label %200

200:                                              ; preds = %199, %92
  %201 = load i32, i32* %16, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %200
  %204 = load %struct._adapter*, %struct._adapter** %5, align 8
  %205 = call %struct.sta_info* @r8712_get_bcmc_stainfo(%struct._adapter* %204)
  %206 = load %struct.sta_info**, %struct.sta_info*** %7, align 8
  store %struct.sta_info* %205, %struct.sta_info** %206, align 8
  br label %212

207:                                              ; preds = %200
  %208 = load %struct.sta_priv*, %struct.sta_priv** %11, align 8
  %209 = load i32*, i32** %15, align 8
  %210 = call %struct.sta_info* @r8712_get_stainfo(%struct.sta_priv* %208, i32* %209)
  %211 = load %struct.sta_info**, %struct.sta_info*** %7, align 8
  store %struct.sta_info* %210, %struct.sta_info** %211, align 8
  br label %212

212:                                              ; preds = %207, %203
  %213 = load %struct.sta_info**, %struct.sta_info*** %7, align 8
  %214 = load %struct.sta_info*, %struct.sta_info** %213, align 8
  %215 = icmp eq %struct.sta_info* %214, null
  br i1 %215, label %216, label %229

216:                                              ; preds = %212
  %217 = load %struct.mlme_priv*, %struct.mlme_priv** %12, align 8
  %218 = load i32, i32* @WIFI_MP_STATE, align 4
  %219 = call i64 @check_fwstate(%struct.mlme_priv* %217, i32 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %227

221:                                              ; preds = %216
  %222 = load %struct._adapter*, %struct._adapter** %5, align 8
  %223 = getelementptr inbounds %struct._adapter, %struct._adapter* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %224, align 4
  br label %227

227:                                              ; preds = %221, %216
  %228 = load i32, i32* @_FAIL, align 4
  store i32 %228, i32* %4, align 4
  br label %231

229:                                              ; preds = %212
  %230 = load i32, i32* %9, align 4
  store i32 %230, i32* %4, align 4
  br label %231

231:                                              ; preds = %229, %227, %144, %131, %111, %90, %70, %57
  %232 = load i32, i32* %4, align 4
  ret i32 %232
}

declare dso_local i32* @get_bssid(%struct.mlme_priv*) #1

declare dso_local i32* @myid(i32*) #1

declare dso_local i32 @is_multicast_ether_addr(i32*) #1

declare dso_local i64 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i64 @is_zero_ether_addr(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32* @GetAddr1Ptr(i32*) #1

declare dso_local i32* @GetAddr2Ptr(i32*) #1

declare dso_local i32* @GetAddr3Ptr(i32*) #1

declare dso_local %struct.sta_info* @r8712_get_bcmc_stainfo(%struct._adapter*) #1

declare dso_local %struct.sta_info* @r8712_get_stainfo(%struct.sta_priv*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
