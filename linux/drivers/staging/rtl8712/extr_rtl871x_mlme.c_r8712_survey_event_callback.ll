; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mlme.c_r8712_survey_event_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mlme.c_r8712_survey_event_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.mlme_priv }
%struct.mlme_priv = type { i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64*, i32 }
%struct.wlan_bssid_ex = type { i32, i32, i32, i32, i32, i32, i8*, %struct.TYPE_12__, i32, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i32, i64* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.wlan_network = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64* }

@WIFI_ADHOC_MASTER_STATE = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@_FW_UNDER_LINKING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"<hidden>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_survey_event_callback(%struct._adapter* %0, i32* %1) #0 {
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wlan_bssid_ex*, align 8
  %8 = alloca %struct.mlme_priv*, align 8
  %9 = alloca %struct.wlan_network*, align 8
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct._adapter*, %struct._adapter** %3, align 8
  %11 = getelementptr inbounds %struct._adapter, %struct._adapter* %10, i32 0, i32 0
  store %struct.mlme_priv* %11, %struct.mlme_priv** %8, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = bitcast i32* %12 to %struct.wlan_bssid_ex*
  store %struct.wlan_bssid_ex* %13, %struct.wlan_bssid_ex** %7, align 8
  %14 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %7, align 8
  %15 = call i32 @r8712_get_wlan_bssid_ex_sz(%struct.wlan_bssid_ex* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ugt i64 %17, 88
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %105

20:                                               ; preds = %2
  %21 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %22 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %21, i32 0, i32 0
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %26 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %27 = call i64 @check_fwstate(%struct.mlme_priv* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %69

29:                                               ; preds = %20
  %30 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %31 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %7, align 8
  %35 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %34, i32 0, i32 8
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @ETH_ALEN, align 4
  %38 = call i32 @memcmp(i32* %33, i32 %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %68, label %40

40:                                               ; preds = %29
  store %struct.wlan_network* null, %struct.wlan_network** %9, align 8
  %41 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %42 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %7, align 8
  %47 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %46, i32 0, i32 6
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @memcpy(i64* %45, i8* %48, i32 8)
  %50 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %51 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %50, i32 0, i32 1
  %52 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %7, align 8
  %53 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %52, i32 0, i32 8
  %54 = load i32, i32* %53, align 8
  %55 = call %struct.wlan_network* @r8712_find_network(i32* %51, i32 %54)
  store %struct.wlan_network* %55, %struct.wlan_network** %9, align 8
  %56 = load %struct.wlan_network*, %struct.wlan_network** %9, align 8
  %57 = icmp ne %struct.wlan_network* %56, null
  br i1 %57, label %58, label %67

58:                                               ; preds = %40
  %59 = load %struct.wlan_network*, %struct.wlan_network** %9, align 8
  %60 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %7, align 8
  %64 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %63, i32 0, i32 6
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @memcpy(i64* %62, i8* %65, i32 8)
  br label %100

67:                                               ; preds = %40
  br label %68

68:                                               ; preds = %67, %29
  br label %69

69:                                               ; preds = %68, %20
  %70 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %71 = load i32, i32* @_FW_UNDER_LINKING, align 4
  %72 = call i64 @check_fwstate(%struct.mlme_priv* %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %99, label %74

74:                                               ; preds = %69
  %75 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %7, align 8
  %76 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %75, i32 0, i32 7
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 1
  %78 = load i64*, i64** %77, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %74
  %83 = load %struct._adapter*, %struct._adapter** %3, align 8
  %84 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %7, align 8
  %85 = call i32 @rtl8711_add_network(%struct._adapter* %83, %struct.wlan_bssid_ex* %84)
  br label %98

86:                                               ; preds = %74
  %87 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %7, align 8
  %88 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %87, i32 0, i32 7
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  store i32 8, i32* %89, align 8
  %90 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %7, align 8
  %91 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %90, i32 0, i32 7
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 1
  %93 = load i64*, i64** %92, align 8
  %94 = call i32 @memcpy(i64* %93, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %95 = load %struct._adapter*, %struct._adapter** %3, align 8
  %96 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %7, align 8
  %97 = call i32 @rtl8711_add_network(%struct._adapter* %95, %struct.wlan_bssid_ex* %96)
  br label %98

98:                                               ; preds = %86, %82
  br label %99

99:                                               ; preds = %98, %69
  br label %100

100:                                              ; preds = %99, %58
  %101 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %102 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %101, i32 0, i32 0
  %103 = load i64, i64* %5, align 8
  %104 = call i32 @spin_unlock_irqrestore(i32* %102, i64 %103)
  br label %105

105:                                              ; preds = %100, %19
  ret void
}

declare dso_local i32 @r8712_get_wlan_bssid_ex_sz(%struct.wlan_bssid_ex*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i64*, i8*, i32) #1

declare dso_local %struct.wlan_network* @r8712_find_network(i32*, i32) #1

declare dso_local i32 @rtl8711_add_network(%struct._adapter*, %struct.wlan_bssid_ex*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
