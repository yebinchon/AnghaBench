; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_linux.c_r8711_wx_get_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_linux.c_r8711_wx_get_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { i32 }
%struct._adapter = type { %struct.mlme_priv }
%struct.mlme_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.wlan_bssid_ex }
%struct.wlan_bssid_ex = type { i32*, i64, i32* }

@_FW_LINKED = common dso_local global i32 0, align 4
@WIFI_ADHOC_MASTER_STATE = common dso_local global i32 0, align 4
@_HT_CAPABILITY_IE_ = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"IEEE 802.11bn\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"IEEE 802.11b\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"IEEE 802.11bgn\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"IEEE 802.11bg\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"IEEE 802.11gn\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"IEEE 802.11g\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"unassociated\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @r8711_wx_get_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r8711_wx_get_name(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %union.iwreq_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct._adapter*, align 8
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
  %17 = call %struct._adapter* @netdev_priv(%struct.net_device* %16)
  store %struct._adapter* %17, %struct._adapter** %9, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %12, align 4
  %18 = load %struct._adapter*, %struct._adapter** %9, align 8
  %19 = getelementptr inbounds %struct._adapter, %struct._adapter* %18, i32 0, i32 0
  store %struct.mlme_priv* %19, %struct.mlme_priv** %13, align 8
  %20 = load %struct.mlme_priv*, %struct.mlme_priv** %13, align 8
  %21 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store %struct.wlan_bssid_ex* %22, %struct.wlan_bssid_ex** %14, align 8
  %23 = load %struct.mlme_priv*, %struct.mlme_priv** %13, align 8
  %24 = load i32, i32* @_FW_LINKED, align 4
  %25 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @check_fwstate(%struct.mlme_priv* %23, i32 %26)
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %107

29:                                               ; preds = %4
  %30 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %14, align 8
  %31 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 12
  %34 = load i32, i32* @_HT_CAPABILITY_IE_, align 4
  %35 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %14, align 8
  %36 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %37, 12
  %39 = call i8* @r8712_get_ie(i32* %33, i32 %34, i64* %10, i64 %38)
  store i8* %39, i8** %11, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %29
  %43 = load i64, i64* %10, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 1, i32* %12, align 4
  br label %46

46:                                               ; preds = %45, %42, %29
  %47 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %14, align 8
  %48 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** %15, align 8
  %50 = load i32*, i32** %15, align 8
  %51 = call i64 @r8712_is_cckratesonly_included(i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %46
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %58 = bitcast %union.iwreq_data* %57 to i32*
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @IFNAMSIZ, align 4
  %61 = call i32 @snprintf(i32 %59, i32 %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %68

62:                                               ; preds = %53
  %63 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %64 = bitcast %union.iwreq_data* %63 to i32*
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @IFNAMSIZ, align 4
  %67 = call i32 @snprintf(i32 %65, i32 %66, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %68

68:                                               ; preds = %62, %56
  br label %106

69:                                               ; preds = %46
  %70 = load i32*, i32** %15, align 8
  %71 = call i64 @r8712_is_cckrates_included(i32* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %89

73:                                               ; preds = %69
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %78 = bitcast %union.iwreq_data* %77 to i32*
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @IFNAMSIZ, align 4
  %81 = call i32 @snprintf(i32 %79, i32 %80, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %88

82:                                               ; preds = %73
  %83 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %84 = bitcast %union.iwreq_data* %83 to i32*
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @IFNAMSIZ, align 4
  %87 = call i32 @snprintf(i32 %85, i32 %86, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %88

88:                                               ; preds = %82, %76
  br label %105

89:                                               ; preds = %69
  %90 = load i32, i32* %12, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %89
  %93 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %94 = bitcast %union.iwreq_data* %93 to i32*
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @IFNAMSIZ, align 4
  %97 = call i32 @snprintf(i32 %95, i32 %96, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %104

98:                                               ; preds = %89
  %99 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %100 = bitcast %union.iwreq_data* %99 to i32*
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @IFNAMSIZ, align 4
  %103 = call i32 @snprintf(i32 %101, i32 %102, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %104

104:                                              ; preds = %98, %92
  br label %105

105:                                              ; preds = %104, %88
  br label %106

106:                                              ; preds = %105, %68
  br label %113

107:                                              ; preds = %4
  %108 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %109 = bitcast %union.iwreq_data* %108 to i32*
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @IFNAMSIZ, align 4
  %112 = call i32 @snprintf(i32 %110, i32 %111, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  br label %113

113:                                              ; preds = %107, %106
  ret i32 0
}

declare dso_local %struct._adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i8* @r8712_get_ie(i32*, i32, i64*, i64) #1

declare dso_local i64 @r8712_is_cckratesonly_included(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*) #1

declare dso_local i64 @r8712_is_cckrates_included(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
