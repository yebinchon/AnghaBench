; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_set.c_do_join.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_set.c_do_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.TYPE_5__, %struct.mlme_priv }
%struct.TYPE_5__ = type { %struct.wlan_bssid_ex }
%struct.wlan_bssid_ex = type { i32*, i32 }
%struct.mlme_priv = type { i32, i32, i32, %struct.TYPE_6__, i32, %struct.list_head*, %struct.TYPE_4__, %struct.__queue }
%struct.TYPE_6__ = type { i32 }
%struct.list_head = type { %struct.list_head* }
%struct.TYPE_4__ = type { i32 }
%struct.__queue = type { %struct.list_head }

@_FW_UNDER_LINKING = common dso_local global i32 0, align 4
@WIFI_ADHOC_STATE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@MAX_JOIN_TIMEOUT = common dso_local global i32 0, align 4
@WIFI_ADHOC_MASTER_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._adapter*)* @do_join to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_join(%struct._adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mlme_priv*, align 8
  %8 = alloca %struct.__queue*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.wlan_bssid_ex*, align 8
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store i32* null, i32** %6, align 8
  %11 = load %struct._adapter*, %struct._adapter** %3, align 8
  %12 = getelementptr inbounds %struct._adapter, %struct._adapter* %11, i32 0, i32 1
  store %struct.mlme_priv* %12, %struct.mlme_priv** %7, align 8
  %13 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %14 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %13, i32 0, i32 7
  store %struct.__queue* %14, %struct.__queue** %8, align 8
  %15 = load %struct.__queue*, %struct.__queue** %8, align 8
  %16 = getelementptr inbounds %struct.__queue, %struct.__queue* %15, i32 0, i32 0
  store %struct.list_head* %16, %struct.list_head** %5, align 8
  %17 = load %struct.list_head*, %struct.list_head** %5, align 8
  %18 = getelementptr inbounds %struct.list_head, %struct.list_head* %17, i32 0, i32 0
  %19 = load %struct.list_head*, %struct.list_head** %18, align 8
  store %struct.list_head* %19, %struct.list_head** %4, align 8
  %20 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %21 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %20, i32 0, i32 6
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32 -2, i32* %22, align 8
  %23 = load i32, i32* @_FW_UNDER_LINKING, align 4
  %24 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %25 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load %struct.list_head*, %struct.list_head** %4, align 8
  %29 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %30 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %29, i32 0, i32 5
  store %struct.list_head* %28, %struct.list_head** %30, align 8
  %31 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %32 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %31, i32 0, i32 1
  store i32 1, i32* %32, align 4
  %33 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %34 = load i32, i32* @WIFI_ADHOC_STATE, align 4
  %35 = call i64 @check_fwstate(%struct.mlme_priv* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %67, label %37

37:                                               ; preds = %1
  %38 = load %struct.__queue*, %struct.__queue** %8, align 8
  %39 = getelementptr inbounds %struct.__queue, %struct.__queue* %38, i32 0, i32 0
  %40 = call i64 @list_empty(%struct.list_head* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %67

42:                                               ; preds = %37
  %43 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %44 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @_FW_UNDER_LINKING, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %42
  %50 = load i32, i32* @_FW_UNDER_LINKING, align 4
  %51 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %52 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = xor i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %49, %42
  %56 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %57 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %55
  %62 = load %struct._adapter*, %struct._adapter** %3, align 8
  %63 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %64 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %63, i32 0, i32 2
  %65 = call i32 @r8712_sitesurvey_cmd(%struct._adapter* %62, i32* %64)
  br label %66

66:                                               ; preds = %61, %55
  store i32 1, i32* %2, align 4
  br label %140

67:                                               ; preds = %37, %1
  %68 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %69 = call i32 @r8712_select_and_join_from_scan(%struct.mlme_priv* %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %67
  %73 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %74 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %73, i32 0, i32 4
  %75 = load i64, i64* @jiffies, align 8
  %76 = load i32, i32* @MAX_JOIN_TIMEOUT, align 4
  %77 = call i64 @msecs_to_jiffies(i32 %76)
  %78 = add nsw i64 %75, %77
  %79 = call i32 @mod_timer(i32* %74, i64 %78)
  br label %139

80:                                               ; preds = %67
  %81 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %82 = load i32, i32* @WIFI_ADHOC_STATE, align 4
  %83 = call i64 @check_fwstate(%struct.mlme_priv* %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %113

85:                                               ; preds = %80
  %86 = load %struct._adapter*, %struct._adapter** %3, align 8
  %87 = getelementptr inbounds %struct._adapter, %struct._adapter* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  store %struct.wlan_bssid_ex* %88, %struct.wlan_bssid_ex** %10, align 8
  %89 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %90 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %91 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct._adapter*, %struct._adapter** %3, align 8
  %93 = getelementptr inbounds %struct._adapter, %struct._adapter* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  store i32* %96, i32** %6, align 8
  %97 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %10, align 8
  %98 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %97, i32 0, i32 1
  %99 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %100 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %99, i32 0, i32 2
  %101 = call i32 @memcpy(i32* %98, i32* %100, i32 4)
  %102 = load %struct._adapter*, %struct._adapter** %3, align 8
  %103 = call i32 @r8712_update_registrypriv_dev_network(%struct._adapter* %102)
  %104 = load i32*, i32** %6, align 8
  %105 = call i32 @r8712_generate_random_ibss(i32* %104)
  %106 = load %struct._adapter*, %struct._adapter** %3, align 8
  %107 = call i64 @r8712_createbss_cmd(%struct._adapter* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %85
  store i32 0, i32* %2, align 4
  br label %140

110:                                              ; preds = %85
  %111 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %112 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %111, i32 0, i32 1
  store i32 0, i32* %112, align 4
  br label %138

113:                                              ; preds = %80
  %114 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %115 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @_FW_UNDER_LINKING, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %113
  %121 = load i32, i32* @_FW_UNDER_LINKING, align 4
  %122 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %123 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = xor i32 %124, %121
  store i32 %125, i32* %123, align 8
  br label %126

126:                                              ; preds = %120, %113
  %127 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %128 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %137, label %132

132:                                              ; preds = %126
  %133 = load %struct._adapter*, %struct._adapter** %3, align 8
  %134 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %135 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %134, i32 0, i32 2
  %136 = call i32 @r8712_sitesurvey_cmd(%struct._adapter* %133, i32* %135)
  br label %137

137:                                              ; preds = %132, %126
  br label %138

138:                                              ; preds = %137, %110
  br label %139

139:                                              ; preds = %138, %72
  store i32 1, i32* %2, align 4
  br label %140

140:                                              ; preds = %139, %109, %66
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local i64 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i64 @list_empty(%struct.list_head*) #1

declare dso_local i32 @r8712_sitesurvey_cmd(%struct._adapter*, i32*) #1

declare dso_local i32 @r8712_select_and_join_from_scan(%struct.mlme_priv*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @r8712_update_registrypriv_dev_network(%struct._adapter*) #1

declare dso_local i32 @r8712_generate_random_ibss(i32*) #1

declare dso_local i64 @r8712_createbss_cmd(%struct._adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
