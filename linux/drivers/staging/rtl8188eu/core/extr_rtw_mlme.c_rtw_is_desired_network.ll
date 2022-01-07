; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme.c_rtw_is_desired_network.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme.c_rtw_is_desired_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_5__, %struct.mlme_priv, %struct.security_priv }
%struct.TYPE_5__ = type { i32 }
%struct.mlme_priv = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.security_priv = type { i64 }
%struct.wlan_network = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i64, i64 }

@WIFI_UNDER_WPS = common dso_local global i32 0, align 4
@_FIXED_IE_LENGTH_ = common dso_local global i64 0, align 8
@Ndis802_11EncryptionDisabled = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"desired_encmode: %d, privacy: %d\0A\00", align 1
@WIFI_ADHOC_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.wlan_network*)* @rtw_is_desired_network to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw_is_desired_network(%struct.adapter* %0, %struct.wlan_network* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.wlan_network*, align 8
  %6 = alloca %struct.security_priv*, align 8
  %7 = alloca %struct.mlme_priv*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.wlan_network* %1, %struct.wlan_network** %5, align 8
  %12 = load %struct.adapter*, %struct.adapter** %4, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 2
  store %struct.security_priv* %13, %struct.security_priv** %6, align 8
  %14 = load %struct.adapter*, %struct.adapter** %4, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 1
  store %struct.mlme_priv* %15, %struct.mlme_priv** %7, align 8
  store i32 1, i32* %11, align 4
  %16 = load %struct.security_priv*, %struct.security_priv** %6, align 8
  %17 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %8, align 8
  %19 = load %struct.wlan_network*, %struct.wlan_network** %5, align 8
  %20 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %9, align 8
  %23 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %24 = load i32, i32* @WIFI_UNDER_WPS, align 4
  %25 = call i64 @check_fwstate(%struct.mlme_priv* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %2
  %28 = load %struct.wlan_network*, %struct.wlan_network** %5, align 8
  %29 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @_FIXED_IE_LENGTH_, align 8
  %33 = add nsw i64 %31, %32
  %34 = load %struct.wlan_network*, %struct.wlan_network** %5, align 8
  %35 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @_FIXED_IE_LENGTH_, align 8
  %39 = sub nsw i64 %37, %38
  %40 = call i64 @rtw_get_wps_ie(i64 %33, i64 %39, i32* null, i32* %10)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %27
  store i32 1, i32* %3, align 4
  br label %90

43:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %90

44:                                               ; preds = %2
  %45 = load %struct.adapter*, %struct.adapter** %4, align 8
  %46 = getelementptr inbounds %struct.adapter, %struct.adapter* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %59

50:                                               ; preds = %44
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* @Ndis802_11EncryptionDisabled, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i64, i64* %9, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 0, i32* %11, align 4
  br label %58

58:                                               ; preds = %57, %54, %50
  br label %59

59:                                               ; preds = %58, %44
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* @Ndis802_11EncryptionDisabled, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %59
  %64 = load i64, i64* %9, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* %9, align 8
  %69 = call i32 @DBG_88E(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %67, i64 %68)
  store i32 0, i32* %11, align 4
  br label %70

70:                                               ; preds = %66, %63, %59
  %71 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %72 = load i32, i32* @WIFI_ADHOC_STATE, align 4
  %73 = call i64 @check_fwstate(%struct.mlme_priv* %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %70
  %76 = load %struct.wlan_network*, %struct.wlan_network** %5, align 8
  %77 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %81 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %79, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %75
  store i32 0, i32* %11, align 4
  br label %87

87:                                               ; preds = %86, %75
  br label %88

88:                                               ; preds = %87, %70
  %89 = load i32, i32* %11, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %88, %43, %42
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i64 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i64 @rtw_get_wps_ie(i64, i64, i32*, i32*) #1

declare dso_local i32 @DBG_88E(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
