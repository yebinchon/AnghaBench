; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_ioctl_linux.c_rtw_wx_get_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_ioctl_linux.c_rtw_wx_get_name.c"
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
@.str.5 = private unnamed_addr constant [14 x i8] c"IEEE 802.11AC\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"IEEE 802.11an\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"IEEE 802.11a\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"IEEE 802.11gn\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"IEEE 802.11g\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"unassociated\00", align 1
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
  %13 = alloca i32, align 4
  %14 = alloca %struct.mlme_priv*, align 8
  %15 = alloca %struct.wlan_bssid_ex*, align 8
  %16 = alloca i32*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %7, align 8
  store i8* %3, i8** %8, align 8
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = call i64 @rtw_netdev_priv(%struct.net_device* %17)
  %19 = inttoptr i64 %18 to %struct.adapter*
  store %struct.adapter* %19, %struct.adapter** %9, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %20 = load %struct.adapter*, %struct.adapter** %9, align 8
  %21 = getelementptr inbounds %struct.adapter, %struct.adapter* %20, i32 0, i32 0
  store %struct.mlme_priv* %21, %struct.mlme_priv** %14, align 8
  %22 = load %struct.mlme_priv*, %struct.mlme_priv** %14, align 8
  %23 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store %struct.wlan_bssid_ex* %24, %struct.wlan_bssid_ex** %15, align 8
  store i32* null, i32** %16, align 8
  %25 = load i32, i32* @_module_rtl871x_mlme_c_, align 4
  %26 = load i32, i32* @_drv_info_, align 4
  %27 = load %struct.iw_request_info*, %struct.iw_request_info** %6, align 8
  %28 = getelementptr inbounds %struct.iw_request_info, %struct.iw_request_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  %32 = call i32 @RT_TRACE(i32 %25, i32 %26, i8* %31)
  %33 = load %struct.mlme_priv*, %struct.mlme_priv** %14, align 8
  %34 = load i32, i32* @_FW_LINKED, align 4
  %35 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @check_fwstate(%struct.mlme_priv* %33, i32 %36)
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %149

39:                                               ; preds = %4
  %40 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %15, align 8
  %41 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 12
  %44 = load i32, i32* @_HT_CAPABILITY_IE_, align 4
  %45 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %15, align 8
  %46 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %47, 12
  %49 = call i8* @rtw_get_ie(i32* %43, i32 %44, i64* %10, i64 %48)
  store i8* %49, i8** %11, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %39
  %53 = load i64, i64* %10, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 1, i32* %12, align 4
  br label %56

56:                                               ; preds = %55, %52, %39
  %57 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %15, align 8
  %58 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %57, i32 0, i32 1
  store i32* %58, i32** %16, align 8
  %59 = load i32*, i32** %16, align 8
  %60 = call i64 @rtw_is_cckratesonly_included(i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %56
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %67 = bitcast %union.iwreq_data* %66 to i32*
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @IFNAMSIZ, align 4
  %70 = call i32 @snprintf(i32 %68, i32 %69, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %77

71:                                               ; preds = %62
  %72 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %73 = bitcast %union.iwreq_data* %72 to i32*
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @IFNAMSIZ, align 4
  %76 = call i32 @snprintf(i32 %74, i32 %75, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %77

77:                                               ; preds = %71, %65
  br label %148

78:                                               ; preds = %56
  %79 = load i32*, i32** %16, align 8
  %80 = call i64 @rtw_is_cckrates_included(i32* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %98

82:                                               ; preds = %78
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %87 = bitcast %union.iwreq_data* %86 to i32*
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @IFNAMSIZ, align 4
  %90 = call i32 @snprintf(i32 %88, i32 %89, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %97

91:                                               ; preds = %82
  %92 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %93 = bitcast %union.iwreq_data* %92 to i32*
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @IFNAMSIZ, align 4
  %96 = call i32 @snprintf(i32 %94, i32 %95, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %97

97:                                               ; preds = %91, %85
  br label %147

98:                                               ; preds = %78
  %99 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %15, align 8
  %100 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp sgt i32 %102, 14
  br i1 %103, label %104, label %130

104:                                              ; preds = %98
  %105 = load i32, i32* %13, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %104
  %108 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %109 = bitcast %union.iwreq_data* %108 to i32*
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @IFNAMSIZ, align 4
  %112 = call i32 @snprintf(i32 %110, i32 %111, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %129

113:                                              ; preds = %104
  %114 = load i32, i32* %12, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %113
  %117 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %118 = bitcast %union.iwreq_data* %117 to i32*
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @IFNAMSIZ, align 4
  %121 = call i32 @snprintf(i32 %119, i32 %120, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %128

122:                                              ; preds = %113
  %123 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %124 = bitcast %union.iwreq_data* %123 to i32*
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @IFNAMSIZ, align 4
  %127 = call i32 @snprintf(i32 %125, i32 %126, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  br label %128

128:                                              ; preds = %122, %116
  br label %129

129:                                              ; preds = %128, %107
  br label %146

130:                                              ; preds = %98
  %131 = load i32, i32* %12, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %130
  %134 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %135 = bitcast %union.iwreq_data* %134 to i32*
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @IFNAMSIZ, align 4
  %138 = call i32 @snprintf(i32 %136, i32 %137, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  br label %145

139:                                              ; preds = %130
  %140 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %141 = bitcast %union.iwreq_data* %140 to i32*
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @IFNAMSIZ, align 4
  %144 = call i32 @snprintf(i32 %142, i32 %143, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  br label %145

145:                                              ; preds = %139, %133
  br label %146

146:                                              ; preds = %145, %129
  br label %147

147:                                              ; preds = %146, %97
  br label %148

148:                                              ; preds = %147, %77
  br label %155

149:                                              ; preds = %4
  %150 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %151 = bitcast %union.iwreq_data* %150 to i32*
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @IFNAMSIZ, align 4
  %154 = call i32 @snprintf(i32 %152, i32 %153, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  br label %155

155:                                              ; preds = %149, %148
  ret i32 0
}

declare dso_local i64 @rtw_netdev_priv(%struct.net_device*) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @check_fwstate(%struct.mlme_priv*, i32) #1

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
