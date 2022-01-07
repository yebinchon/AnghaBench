; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mlme.c_update_network.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mlme.c_update_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlan_bssid_ex = type { i32 }
%struct._adapter = type { %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32, %struct.smooth_rssi_data }
%struct.smooth_rssi_data = type { i32, i32*, i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@_FW_LINKED = common dso_local global i32 0, align 4
@PHY_LINKQUALITY_SLID_WIN_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wlan_bssid_ex*, %struct.wlan_bssid_ex*, %struct._adapter*)* @update_network to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_network(%struct.wlan_bssid_ex* %0, %struct.wlan_bssid_ex* %1, %struct._adapter* %2) #0 {
  %4 = alloca %struct.wlan_bssid_ex*, align 8
  %5 = alloca %struct.wlan_bssid_ex*, align 8
  %6 = alloca %struct._adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.smooth_rssi_data*, align 8
  store %struct.wlan_bssid_ex* %0, %struct.wlan_bssid_ex** %4, align 8
  store %struct.wlan_bssid_ex* %1, %struct.wlan_bssid_ex** %5, align 8
  store %struct._adapter* %2, %struct._adapter** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct._adapter*, %struct._adapter** %6, align 8
  %11 = getelementptr inbounds %struct._adapter, %struct._adapter* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  store %struct.smooth_rssi_data* %12, %struct.smooth_rssi_data** %9, align 8
  %13 = load %struct._adapter*, %struct._adapter** %6, align 8
  %14 = getelementptr inbounds %struct._adapter, %struct._adapter* %13, i32 0, i32 1
  %15 = load i32, i32* @_FW_LINKED, align 4
  %16 = call i64 @check_fwstate(%struct.TYPE_6__* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %113

18:                                               ; preds = %3
  %19 = load %struct._adapter*, %struct._adapter** %6, align 8
  %20 = getelementptr inbounds %struct._adapter, %struct._adapter* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %24 = call i64 @is_same_network(i32* %22, %struct.wlan_bssid_ex* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %113

26:                                               ; preds = %18
  %27 = load %struct._adapter*, %struct._adapter** %6, align 8
  %28 = getelementptr inbounds %struct._adapter, %struct._adapter* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.smooth_rssi_data, %struct.smooth_rssi_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 8
  %33 = sext i32 %31 to i64
  %34 = load i64, i64* @PHY_LINKQUALITY_SLID_WIN_MAX, align 8
  %35 = icmp sge i64 %33, %34
  br i1 %35, label %36, label %58

36:                                               ; preds = %26
  %37 = load i64, i64* @PHY_LINKQUALITY_SLID_WIN_MAX, align 8
  %38 = trunc i64 %37 to i32
  %39 = load %struct._adapter*, %struct._adapter** %6, align 8
  %40 = getelementptr inbounds %struct._adapter, %struct._adapter* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.smooth_rssi_data, %struct.smooth_rssi_data* %41, i32 0, i32 0
  store i32 %38, i32* %42, align 8
  %43 = load %struct.smooth_rssi_data*, %struct.smooth_rssi_data** %9, align 8
  %44 = getelementptr inbounds %struct.smooth_rssi_data, %struct.smooth_rssi_data* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.smooth_rssi_data*, %struct.smooth_rssi_data** %9, align 8
  %47 = getelementptr inbounds %struct.smooth_rssi_data, %struct.smooth_rssi_data* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load %struct._adapter*, %struct._adapter** %6, align 8
  %53 = getelementptr inbounds %struct._adapter, %struct._adapter* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.smooth_rssi_data, %struct.smooth_rssi_data* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = sub nsw i32 %56, %51
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %36, %26
  %59 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %60 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct._adapter*, %struct._adapter** %6, align 8
  %63 = getelementptr inbounds %struct._adapter, %struct._adapter* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.smooth_rssi_data, %struct.smooth_rssi_data* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, %61
  store i32 %67, i32* %65, align 8
  %68 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %69 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.smooth_rssi_data*, %struct.smooth_rssi_data** %9, align 8
  %72 = getelementptr inbounds %struct.smooth_rssi_data, %struct.smooth_rssi_data* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.smooth_rssi_data*, %struct.smooth_rssi_data** %9, align 8
  %75 = getelementptr inbounds %struct.smooth_rssi_data, %struct.smooth_rssi_data* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %75, align 8
  %78 = getelementptr inbounds i32, i32* %73, i64 %76
  store i32 %70, i32* %78, align 4
  %79 = load %struct._adapter*, %struct._adapter** %6, align 8
  %80 = getelementptr inbounds %struct._adapter, %struct._adapter* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.smooth_rssi_data, %struct.smooth_rssi_data* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @PHY_LINKQUALITY_SLID_WIN_MAX, align 8
  %85 = icmp uge i64 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %58
  %87 = load %struct._adapter*, %struct._adapter** %6, align 8
  %88 = getelementptr inbounds %struct._adapter, %struct._adapter* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.smooth_rssi_data, %struct.smooth_rssi_data* %89, i32 0, i32 2
  store i64 0, i64* %90, align 8
  br label %91

91:                                               ; preds = %86, %58
  %92 = load %struct._adapter*, %struct._adapter** %6, align 8
  %93 = getelementptr inbounds %struct._adapter, %struct._adapter* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.smooth_rssi_data, %struct.smooth_rssi_data* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = load %struct._adapter*, %struct._adapter** %6, align 8
  %98 = getelementptr inbounds %struct._adapter, %struct._adapter* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.smooth_rssi_data, %struct.smooth_rssi_data* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sdiv i32 %96, %101
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = load %struct._adapter*, %struct._adapter** %6, align 8
  %105 = getelementptr inbounds %struct._adapter, %struct._adapter* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  store i32 %103, i32* %106, align 8
  %107 = load %struct._adapter*, %struct._adapter** %6, align 8
  %108 = getelementptr inbounds %struct._adapter, %struct._adapter* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %112 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 4
  br label %124

113:                                              ; preds = %18, %3
  %114 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %115 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %4, align 8
  %118 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %116, %119
  %121 = sdiv i32 %120, 2
  %122 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %123 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 4
  br label %124

124:                                              ; preds = %113, %91
  %125 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %4, align 8
  %126 = bitcast %struct.wlan_bssid_ex* %125 to i32*
  %127 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %128 = bitcast %struct.wlan_bssid_ex* %127 to i32*
  %129 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %130 = call i32 @r8712_get_wlan_bssid_ex_sz(%struct.wlan_bssid_ex* %129)
  %131 = call i32 @memcpy(i32* %126, i32* %128, i32 %130)
  ret void
}

declare dso_local i64 @check_fwstate(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @is_same_network(i32*, %struct.wlan_bssid_ex*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @r8712_get_wlan_bssid_ex_sz(%struct.wlan_bssid_ex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
