; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme.c_rtw_is_desired_network.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme.c_rtw_is_desired_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_5__, %struct.mlme_priv, %struct.security_priv }
%struct.TYPE_5__ = type { i32 }
%struct.mlme_priv = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.security_priv = type { i64, i64 }
%struct.wlan_network = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i64, i64 }

@WIFI_UNDER_WPS = common dso_local global i32 0, align 4
@_FIXED_IE_LENGTH_ = common dso_local global i64 0, align 8
@Ndis802_11EncryptionDisabled = common dso_local global i64 0, align 8
@Ndis802_11AuthModeWPA2PSK = common dso_local global i64 0, align 8
@_BEACON_IE_OFFSET_ = common dso_local global i64 0, align 8
@_RSN_IE_2_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"desired_encmode: %d, privacy: %d\0A\00", align 1
@WIFI_ADHOC_STATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_is_desired_network(%struct.adapter* %0, %struct.wlan_network* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.wlan_network*, align 8
  %6 = alloca %struct.security_priv*, align 8
  %7 = alloca %struct.mlme_priv*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.wlan_network* %1, %struct.wlan_network** %5, align 8
  %14 = load %struct.adapter*, %struct.adapter** %4, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 2
  store %struct.security_priv* %15, %struct.security_priv** %6, align 8
  %16 = load %struct.adapter*, %struct.adapter** %4, align 8
  %17 = getelementptr inbounds %struct.adapter, %struct.adapter* %16, i32 0, i32 1
  store %struct.mlme_priv* %17, %struct.mlme_priv** %7, align 8
  store i32 1, i32* %11, align 4
  %18 = load %struct.security_priv*, %struct.security_priv** %6, align 8
  %19 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %8, align 8
  %21 = load %struct.wlan_network*, %struct.wlan_network** %5, align 8
  %22 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %9, align 8
  %25 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %26 = load i32, i32* @WIFI_UNDER_WPS, align 4
  %27 = call i32 @check_fwstate(%struct.mlme_priv* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %2
  %30 = load %struct.wlan_network*, %struct.wlan_network** %5, align 8
  %31 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @_FIXED_IE_LENGTH_, align 8
  %35 = add nsw i64 %33, %34
  %36 = load %struct.wlan_network*, %struct.wlan_network** %5, align 8
  %37 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @_FIXED_IE_LENGTH_, align 8
  %41 = sub nsw i64 %39, %40
  %42 = call i32* @rtw_get_wps_ie(i64 %35, i64 %41, i32* null, i64* %10)
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %121

45:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %121

46:                                               ; preds = %2
  %47 = load %struct.adapter*, %struct.adapter** %4, align 8
  %48 = getelementptr inbounds %struct.adapter, %struct.adapter* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %90

52:                                               ; preds = %46
  store i32* null, i32** %12, align 8
  store i64 0, i64* %13, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* @Ndis802_11EncryptionDisabled, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i64, i64* %9, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 0, i32* %11, align 4
  br label %60

60:                                               ; preds = %59, %56, %52
  %61 = load %struct.security_priv*, %struct.security_priv** %6, align 8
  %62 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @Ndis802_11AuthModeWPA2PSK, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %89

66:                                               ; preds = %60
  %67 = load %struct.wlan_network*, %struct.wlan_network** %5, align 8
  %68 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @_BEACON_IE_OFFSET_, align 8
  %72 = add nsw i64 %70, %71
  %73 = load i32, i32* @_RSN_IE_2_, align 4
  %74 = load %struct.wlan_network*, %struct.wlan_network** %5, align 8
  %75 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @_BEACON_IE_OFFSET_, align 8
  %79 = sub nsw i64 %77, %78
  %80 = call i32* @rtw_get_ie(i64 %72, i32 %73, i64* %13, i64 %79)
  store i32* %80, i32** %12, align 8
  %81 = load i32*, i32** %12, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %66
  %84 = load i64, i64* %13, align 8
  %85 = icmp sgt i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  store i32 1, i32* %11, align 4
  br label %88

87:                                               ; preds = %83, %66
  store i32 0, i32* %11, align 4
  br label %88

88:                                               ; preds = %87, %86
  br label %89

89:                                               ; preds = %88, %60
  br label %90

90:                                               ; preds = %89, %46
  %91 = load i64, i64* %8, align 8
  %92 = load i64, i64* @Ndis802_11EncryptionDisabled, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %90
  %95 = load i64, i64* %9, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load i64, i64* %8, align 8
  %99 = load i64, i64* %9, align 8
  %100 = call i32 @DBG_871X(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %98, i64 %99)
  store i32 0, i32* %11, align 4
  br label %101

101:                                              ; preds = %97, %94, %90
  %102 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %103 = load i32, i32* @WIFI_ADHOC_STATE, align 4
  %104 = call i32 @check_fwstate(%struct.mlme_priv* %102, i32 %103)
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %106, label %119

106:                                              ; preds = %101
  %107 = load %struct.wlan_network*, %struct.wlan_network** %5, align 8
  %108 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %112 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %110, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %106
  store i32 0, i32* %11, align 4
  br label %118

118:                                              ; preds = %117, %106
  br label %119

119:                                              ; preds = %118, %101
  %120 = load i32, i32* %11, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %119, %45, %44
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32* @rtw_get_wps_ie(i64, i64, i32*, i64*) #1

declare dso_local i32* @rtw_get_ie(i64, i32, i64*, i64) #1

declare dso_local i32 @DBG_871X(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
