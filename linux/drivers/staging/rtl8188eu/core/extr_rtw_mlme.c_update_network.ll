; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme.c_update_network.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme.c_update_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlan_bssid_ex = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.adapter = type { %struct.TYPE_6__, %struct.TYPE_8__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@_FW_LINKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_network(%struct.wlan_bssid_ex* %0, %struct.wlan_bssid_ex* %1, %struct.adapter* %2, i32 %3) #0 {
  %5 = alloca %struct.wlan_bssid_ex*, align 8
  %6 = alloca %struct.wlan_bssid_ex*, align 8
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.wlan_bssid_ex* %0, %struct.wlan_bssid_ex** %5, align 8
  store %struct.wlan_bssid_ex* %1, %struct.wlan_bssid_ex** %6, align 8
  store %struct.adapter* %2, %struct.adapter** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %15 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %9, align 8
  %17 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %18 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %10, align 4
  %21 = load %struct.adapter*, %struct.adapter** %7, align 8
  %22 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %23 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %24 = call i32 @rtw_hal_antdiv_rssi_compared(%struct.adapter* %21, %struct.wlan_bssid_ex* %22, %struct.wlan_bssid_ex* %23)
  %25 = load %struct.adapter*, %struct.adapter** %7, align 8
  %26 = getelementptr inbounds %struct.adapter, %struct.adapter* %25, i32 0, i32 1
  %27 = load i32, i32* @_FW_LINKED, align 4
  %28 = call i64 @check_fwstate(%struct.TYPE_8__* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %62

30:                                               ; preds = %4
  %31 = load %struct.adapter*, %struct.adapter** %7, align 8
  %32 = getelementptr inbounds %struct.adapter, %struct.adapter* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %36 = call i64 @is_same_network(i32* %34, %struct.wlan_bssid_ex* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %62

38:                                               ; preds = %30
  %39 = load %struct.adapter*, %struct.adapter** %7, align 8
  %40 = getelementptr inbounds %struct.adapter, %struct.adapter* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %11, align 4
  %43 = load %struct.adapter*, %struct.adapter** %7, align 8
  %44 = getelementptr inbounds %struct.adapter, %struct.adapter* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 101
  br i1 %48, label %49, label %59

49:                                               ; preds = %38
  %50 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %51 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %54 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = mul nsw i64 %55, 4
  %57 = add nsw i64 %52, %56
  %58 = sdiv i64 %57, 5
  store i64 %58, i64* %13, align 8
  br label %61

59:                                               ; preds = %38
  %60 = load i64, i64* %9, align 8
  store i64 %60, i64* %13, align 8
  br label %61

61:                                               ; preds = %59, %49
  br label %110

62:                                               ; preds = %30, %4
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 101
  br i1 %64, label %65, label %97

65:                                               ; preds = %62
  %66 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %67 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %71 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = mul nsw i32 %73, 4
  %75 = add nsw i32 %69, %74
  %76 = sdiv i32 %75, 5
  store i32 %76, i32* %11, align 4
  %77 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %78 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %82 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = mul nsw i32 %84, 4
  %86 = add nsw i32 %80, %85
  %87 = sdiv i32 %86, 5
  store i32 %87, i32* %12, align 4
  %88 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %89 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %92 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = mul nsw i64 %93, 4
  %95 = add nsw i64 %90, %94
  %96 = sdiv i64 %95, 5
  store i64 %96, i64* %13, align 8
  br label %109

97:                                               ; preds = %62
  %98 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %99 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %11, align 4
  %102 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %103 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  store i32 %105, i32* %12, align 4
  %106 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %107 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %13, align 8
  br label %109

109:                                              ; preds = %97, %65
  br label %110

110:                                              ; preds = %109, %61
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %110
  %114 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %115 = bitcast %struct.wlan_bssid_ex* %114 to i32*
  %116 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %117 = bitcast %struct.wlan_bssid_ex* %116 to i32*
  %118 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %119 = call i32 @get_wlan_bssid_ex_sz(%struct.wlan_bssid_ex* %118)
  %120 = call i32 @memcpy(i32* %115, i32* %117, i32 %119)
  br label %121

121:                                              ; preds = %113, %110
  %122 = load i32, i32* %11, align 4
  %123 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %124 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 1
  store i32 %122, i32* %125, align 4
  %126 = load i32, i32* %12, align 4
  %127 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %128 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  store i32 %126, i32* %129, align 8
  %130 = load i64, i64* %13, align 8
  %131 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %132 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %131, i32 0, i32 0
  store i64 %130, i64* %132, align 8
  ret void
}

declare dso_local i32 @rtw_hal_antdiv_rssi_compared(%struct.adapter*, %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex*) #1

declare dso_local i64 @check_fwstate(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @is_same_network(i32*, %struct.wlan_bssid_ex*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @get_wlan_bssid_ex_sz(%struct.wlan_bssid_ex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
