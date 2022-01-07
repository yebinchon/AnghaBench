; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_ieee80211.c_rtw_get_bcn_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_ieee80211.c_rtw_get_bcn_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlan_network = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i8*, i32 }
%struct.TYPE_5__ = type { i32, i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.HT_info_element = type { i64* }
%struct.ieee80211_ht_cap = type { i32 }

@WLAN_CAPABILITY_PRIVACY = common dso_local global i16 0, align 2
@ENCRYP_PROTOCOL_OPENSYS = common dso_local global i32 0, align 4
@_module_rtl871x_mlme_c_ = common dso_local global i32 0, align 4
@_drv_info_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"rtw_get_bcn_info: ssid =%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"rtw_get_bcn_info: wpa_len =%d rsn_len =%d\0A\00", align 1
@ENCRYP_PROTOCOL_WPA2 = common dso_local global i32 0, align 4
@ENCRYP_PROTOCOL_WPA = common dso_local global i32 0, align 4
@ENCRYP_PROTOCOL_WEP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"rtw_get_bcn_info: pnetwork->encryp_protocol is %x\0A\00", align 1
@_FIXED_IE_LENGTH_ = common dso_local global i64 0, align 8
@_HT_CAPABILITY_IE_ = common dso_local global i32 0, align 4
@_HT_ADD_INFO_IE_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_get_bcn_info(%struct.wlan_network* %0) #0 {
  %2 = alloca %struct.wlan_network*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.HT_info_element*, align 8
  %8 = alloca %struct.ieee80211_ht_cap*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.wlan_network* %0, %struct.wlan_network** %2, align 8
  store i16 0, i16* %3, align 2
  store i32 0, i32* %4, align 4
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store %struct.HT_info_element* null, %struct.HT_info_element** %7, align 8
  store %struct.ieee80211_ht_cap* null, %struct.ieee80211_ht_cap** %8, align 8
  %12 = load %struct.wlan_network*, %struct.wlan_network** %2, align 8
  %13 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @rtw_get_capability_from_ie(i64 %15)
  %17 = call i32 @memcpy(i32* %11, i32 %16, i32 2)
  %18 = load i32, i32* %11, align 4
  %19 = call i8* @le16_to_cpu(i32 %18)
  %20 = ptrtoint i8* %19 to i16
  store i16 %20, i16* %3, align 2
  %21 = load i16, i16* %3, align 2
  %22 = zext i16 %21 to i32
  %23 = load i16, i16* @WLAN_CAPABILITY_PRIVACY, align 2
  %24 = zext i16 %23 to i32
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  %28 = load %struct.wlan_network*, %struct.wlan_network** %2, align 8
  %29 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  br label %36

31:                                               ; preds = %1
  %32 = load i32, i32* @ENCRYP_PROTOCOL_OPENSYS, align 4
  %33 = load %struct.wlan_network*, %struct.wlan_network** %2, align 8
  %34 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  store i32 %32, i32* %35, align 8
  br label %36

36:                                               ; preds = %31, %27
  %37 = load %struct.wlan_network*, %struct.wlan_network** %2, align 8
  %38 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.wlan_network*, %struct.wlan_network** %2, align 8
  %42 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @rtw_get_sec_ie(i64 %40, i64 %44, i32* null, i64* %6, i32* null, i64* %5)
  %46 = load i32, i32* @_module_rtl871x_mlme_c_, align 4
  %47 = load i32, i32* @_drv_info_, align 4
  %48 = load %struct.wlan_network*, %struct.wlan_network** %2, align 8
  %49 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i8*
  %55 = call i32 @RT_TRACE(i32 %46, i32 %47, i8* %54)
  %56 = load i32, i32* @_module_rtl871x_mlme_c_, align 4
  %57 = load i32, i32* @_drv_info_, align 4
  %58 = load i64, i64* %5, align 8
  %59 = load i64, i64* %6, align 8
  %60 = inttoptr i64 %59 to i8*
  %61 = call i32 @RT_TRACE(i32 %56, i32 %57, i8* %60)
  %62 = load i32, i32* @_module_rtl871x_mlme_c_, align 4
  %63 = load i32, i32* @_drv_info_, align 4
  %64 = load %struct.wlan_network*, %struct.wlan_network** %2, align 8
  %65 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = inttoptr i64 %69 to i8*
  %71 = call i32 @RT_TRACE(i32 %62, i32 %63, i8* %70)
  %72 = load i32, i32* @_module_rtl871x_mlme_c_, align 4
  %73 = load i32, i32* @_drv_info_, align 4
  %74 = load i64, i64* %5, align 8
  %75 = load i64, i64* %6, align 8
  %76 = inttoptr i64 %75 to i8*
  %77 = call i32 @RT_TRACE(i32 %72, i32 %73, i8* %76)
  %78 = load i64, i64* %6, align 8
  %79 = icmp sgt i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %36
  %81 = load i32, i32* @ENCRYP_PROTOCOL_WPA2, align 4
  %82 = load %struct.wlan_network*, %struct.wlan_network** %2, align 8
  %83 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  store i32 %81, i32* %84, align 8
  br label %103

85:                                               ; preds = %36
  %86 = load i64, i64* %5, align 8
  %87 = icmp sgt i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load i32, i32* @ENCRYP_PROTOCOL_WPA, align 4
  %90 = load %struct.wlan_network*, %struct.wlan_network** %2, align 8
  %91 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  store i32 %89, i32* %92, align 8
  br label %102

93:                                               ; preds = %85
  %94 = load i32, i32* %4, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = load i32, i32* @ENCRYP_PROTOCOL_WEP, align 4
  %98 = load %struct.wlan_network*, %struct.wlan_network** %2, align 8
  %99 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 2
  store i32 %97, i32* %100, align 8
  br label %101

101:                                              ; preds = %96, %93
  br label %102

102:                                              ; preds = %101, %88
  br label %103

103:                                              ; preds = %102, %80
  %104 = load i32, i32* @_module_rtl871x_mlme_c_, align 4
  %105 = load i32, i32* @_drv_info_, align 4
  %106 = load %struct.wlan_network*, %struct.wlan_network** %2, align 8
  %107 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = sext i32 %109 to i64
  %111 = inttoptr i64 %110 to i8*
  %112 = call i32 @RT_TRACE(i32 %104, i32 %105, i8* %111)
  %113 = load i32, i32* @_module_rtl871x_mlme_c_, align 4
  %114 = load i32, i32* @_drv_info_, align 4
  %115 = load %struct.wlan_network*, %struct.wlan_network** %2, align 8
  %116 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = inttoptr i64 %119 to i8*
  %121 = call i32 @RT_TRACE(i32 %113, i32 %114, i8* %120)
  %122 = load %struct.wlan_network*, %struct.wlan_network** %2, align 8
  %123 = call i32 @rtw_get_cipher_info(%struct.wlan_network* %122)
  %124 = load %struct.wlan_network*, %struct.wlan_network** %2, align 8
  %125 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @_FIXED_IE_LENGTH_, align 8
  %129 = add nsw i64 %127, %128
  %130 = load i32, i32* @_HT_CAPABILITY_IE_, align 4
  %131 = load %struct.wlan_network*, %struct.wlan_network** %2, align 8
  %132 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @_FIXED_IE_LENGTH_, align 8
  %136 = sub nsw i64 %134, %135
  %137 = call i8* @rtw_get_ie(i64 %129, i32 %130, i32* %9, i64 %136)
  store i8* %137, i8** %10, align 8
  %138 = load i8*, i8** %10, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %154

140:                                              ; preds = %103
  %141 = load i32, i32* %9, align 4
  %142 = icmp ugt i32 %141, 0
  br i1 %142, label %143, label %154

143:                                              ; preds = %140
  %144 = load i8*, i8** %10, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 2
  %146 = bitcast i8* %145 to %struct.ieee80211_ht_cap*
  store %struct.ieee80211_ht_cap* %146, %struct.ieee80211_ht_cap** %8, align 8
  %147 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %8, align 8
  %148 = getelementptr inbounds %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i8* @le16_to_cpu(i32 %149)
  %151 = load %struct.wlan_network*, %struct.wlan_network** %2, align 8
  %152 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 1
  store i8* %150, i8** %153, align 8
  br label %158

154:                                              ; preds = %140, %103
  %155 = load %struct.wlan_network*, %struct.wlan_network** %2, align 8
  %156 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 1
  store i8* null, i8** %157, align 8
  br label %158

158:                                              ; preds = %154, %143
  %159 = load %struct.wlan_network*, %struct.wlan_network** %2, align 8
  %160 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @_FIXED_IE_LENGTH_, align 8
  %164 = add nsw i64 %162, %163
  %165 = load i32, i32* @_HT_ADD_INFO_IE_, align 4
  %166 = load %struct.wlan_network*, %struct.wlan_network** %2, align 8
  %167 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @_FIXED_IE_LENGTH_, align 8
  %171 = sub nsw i64 %169, %170
  %172 = call i8* @rtw_get_ie(i64 %164, i32 %165, i32* %9, i64 %171)
  store i8* %172, i8** %10, align 8
  %173 = load i8*, i8** %10, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %175, label %190

175:                                              ; preds = %158
  %176 = load i32, i32* %9, align 4
  %177 = icmp ugt i32 %176, 0
  br i1 %177, label %178, label %190

178:                                              ; preds = %175
  %179 = load i8*, i8** %10, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 2
  %181 = bitcast i8* %180 to %struct.HT_info_element*
  store %struct.HT_info_element* %181, %struct.HT_info_element** %7, align 8
  %182 = load %struct.HT_info_element*, %struct.HT_info_element** %7, align 8
  %183 = getelementptr inbounds %struct.HT_info_element, %struct.HT_info_element* %182, i32 0, i32 0
  %184 = load i64*, i64** %183, align 8
  %185 = getelementptr inbounds i64, i64* %184, i64 0
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.wlan_network*, %struct.wlan_network** %2, align 8
  %188 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 0
  store i64 %186, i64* %189, align 8
  br label %194

190:                                              ; preds = %175, %158
  %191 = load %struct.wlan_network*, %struct.wlan_network** %2, align 8
  %192 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 0
  store i64 0, i64* %193, align 8
  br label %194

194:                                              ; preds = %190, %178
  ret void
}

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @rtw_get_capability_from_ie(i64) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @rtw_get_sec_ie(i64, i64, i32*, i64*, i32*, i64*) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @rtw_get_cipher_info(%struct.wlan_network*) #1

declare dso_local i8* @rtw_get_ie(i64, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
