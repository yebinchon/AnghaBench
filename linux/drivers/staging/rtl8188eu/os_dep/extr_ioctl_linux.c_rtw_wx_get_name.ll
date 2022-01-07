; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_ioctl_linux.c_rtw_wx_get_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_ioctl_linux.c_rtw_wx_get_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { i32 }
%struct.adapter = type { %struct.mlme_priv }
%struct.mlme_priv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.wlan_bssid_ex }
%struct.wlan_bssid_ex = type { %struct.TYPE_4__, i32, i64, i32* }
%struct.TYPE_4__ = type { i32 }

@_module_rtl871x_mlme_c_ = common dso_local global i32 0, align 4
@_drv_info_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"cmd_code =%x\0A\00", align 1
@_FW_LINKED = common dso_local global i32 0, align 4
@WIFI_ADHOC_MASTER_STATE = common dso_local global i32 0, align 4
@_HT_CAPABILITY_IE_ = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"IEEE 802.11bn\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"IEEE 802.11b\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"IEEE 802.11bgn\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"IEEE 802.11bg\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"IEEE 802.11an\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"IEEE 802.11a\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"IEEE 802.11gn\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"IEEE 802.11g\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"unassociated\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @rtw_wx_get_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw_wx_get_name(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %union.iwreq_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.adapter*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.mlme_priv*, align 8
  %14 = alloca %struct.wlan_bssid_ex*, align 8
  %15 = alloca i32*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %7, align 8
  store i8* %3, i8** %8, align 8
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = call i64 @rtw_netdev_priv(%struct.net_device* %16)
  %18 = inttoptr i64 %17 to %struct.adapter*
  store %struct.adapter* %18, %struct.adapter** %9, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %12, align 4
  %19 = load %struct.adapter*, %struct.adapter** %9, align 8
  %20 = getelementptr inbounds %struct.adapter, %struct.adapter* %19, i32 0, i32 0
  store %struct.mlme_priv* %20, %struct.mlme_priv** %13, align 8
  %21 = load %struct.mlme_priv*, %struct.mlme_priv** %13, align 8
  %22 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store %struct.wlan_bssid_ex* %23, %struct.wlan_bssid_ex** %14, align 8
  store i32* null, i32** %15, align 8
  %24 = load i32, i32* @_module_rtl871x_mlme_c_, align 4
  %25 = load i32, i32* @_drv_info_, align 4
  %26 = load %struct.iw_request_info*, %struct.iw_request_info** %6, align 8
  %27 = getelementptr inbounds %struct.iw_request_info, %struct.iw_request_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i8*
  %31 = call i32 @RT_TRACE(i32 %24, i32 %25, i8* %30)
  %32 = load %struct.mlme_priv*, %struct.mlme_priv** %13, align 8
  %33 = load i32, i32* @_FW_LINKED, align 4
  %34 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %35 = or i32 %33, %34
  %36 = call i64 @check_fwstate(%struct.mlme_priv* %32, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %138

38:                                               ; preds = %4
  %39 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %14, align 8
  %40 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 12
  %43 = load i32, i32* @_HT_CAPABILITY_IE_, align 4
  %44 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %14, align 8
  %45 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %46, 12
  %48 = call i8* @rtw_get_ie(i32* %42, i32 %43, i64* %10, i64 %47)
  store i8* %48, i8** %11, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %38
  %52 = load i64, i64* %10, align 8
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 1, i32* %12, align 4
  br label %55

55:                                               ; preds = %54, %51, %38
  %56 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %14, align 8
  %57 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %56, i32 0, i32 1
  store i32* %57, i32** %15, align 8
  %58 = load i32*, i32** %15, align 8
  %59 = call i64 @rtw_is_cckratesonly_included(i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %55
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %66 = bitcast %union.iwreq_data* %65 to i32*
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @IFNAMSIZ, align 4
  %69 = call i32 @snprintf(i32 %67, i32 %68, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %76

70:                                               ; preds = %61
  %71 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %72 = bitcast %union.iwreq_data* %71 to i32*
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @IFNAMSIZ, align 4
  %75 = call i32 @snprintf(i32 %73, i32 %74, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %76

76:                                               ; preds = %70, %64
  br label %137

77:                                               ; preds = %55
  %78 = load i32*, i32** %15, align 8
  %79 = call i64 @rtw_is_cckrates_included(i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %97

81:                                               ; preds = %77
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %86 = bitcast %union.iwreq_data* %85 to i32*
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @IFNAMSIZ, align 4
  %89 = call i32 @snprintf(i32 %87, i32 %88, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %96

90:                                               ; preds = %81
  %91 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %92 = bitcast %union.iwreq_data* %91 to i32*
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @IFNAMSIZ, align 4
  %95 = call i32 @snprintf(i32 %93, i32 %94, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %96

96:                                               ; preds = %90, %84
  br label %136

97:                                               ; preds = %77
  %98 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %14, align 8
  %99 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp sgt i32 %101, 14
  br i1 %102, label %103, label %119

103:                                              ; preds = %97
  %104 = load i32, i32* %12, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %103
  %107 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %108 = bitcast %union.iwreq_data* %107 to i32*
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @IFNAMSIZ, align 4
  %111 = call i32 @snprintf(i32 %109, i32 %110, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %118

112:                                              ; preds = %103
  %113 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %114 = bitcast %union.iwreq_data* %113 to i32*
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @IFNAMSIZ, align 4
  %117 = call i32 @snprintf(i32 %115, i32 %116, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  br label %118

118:                                              ; preds = %112, %106
  br label %135

119:                                              ; preds = %97
  %120 = load i32, i32* %12, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %119
  %123 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %124 = bitcast %union.iwreq_data* %123 to i32*
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @IFNAMSIZ, align 4
  %127 = call i32 @snprintf(i32 %125, i32 %126, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  br label %134

128:                                              ; preds = %119
  %129 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %130 = bitcast %union.iwreq_data* %129 to i32*
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @IFNAMSIZ, align 4
  %133 = call i32 @snprintf(i32 %131, i32 %132, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  br label %134

134:                                              ; preds = %128, %122
  br label %135

135:                                              ; preds = %134, %118
  br label %136

136:                                              ; preds = %135, %96
  br label %137

137:                                              ; preds = %136, %76
  br label %144

138:                                              ; preds = %4
  %139 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %140 = bitcast %union.iwreq_data* %139 to i32*
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @IFNAMSIZ, align 4
  %143 = call i32 @snprintf(i32 %141, i32 %142, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  br label %144

144:                                              ; preds = %138, %137
  ret i32 0
}

declare dso_local i64 @rtw_netdev_priv(%struct.net_device*) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i64 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i8* @rtw_get_ie(i32*, i32, i64*, i64) #1

declare dso_local i64 @rtw_is_cckratesonly_included(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*) #1

declare dso_local i64 @rtw_is_cckrates_included(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
