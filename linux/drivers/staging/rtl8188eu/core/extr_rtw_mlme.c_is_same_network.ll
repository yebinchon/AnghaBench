; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme.c_is_same_network.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme.c_is_same_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlan_bssid_ex = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@ETH_ALEN = common dso_local global i64 0, align 8
@WLAN_CAPABILITY_IBSS = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_ESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_same_network(%struct.wlan_bssid_ex* %0, %struct.wlan_bssid_ex* %1) #0 {
  %3 = alloca %struct.wlan_bssid_ex*, align 8
  %4 = alloca %struct.wlan_bssid_ex*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.wlan_bssid_ex* %0, %struct.wlan_bssid_ex** %3, align 8
  store %struct.wlan_bssid_ex* %1, %struct.wlan_bssid_ex** %4, align 8
  %9 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %3, align 8
  %10 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @rtw_get_capability_from_ie(i32 %11)
  %13 = call i32 @memcpy(i32* %7, i32 %12, i32 2)
  %14 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %4, align 8
  %15 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @rtw_get_capability_from_ie(i32 %16)
  %18 = call i32 @memcpy(i32* %8, i32 %17, i32 2)
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @le16_to_cpu(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @le16_to_cpu(i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %3, align 8
  %24 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %4, align 8
  %28 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %26, %30
  br i1 %31, label %32, label %73

32:                                               ; preds = %2
  %33 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %3, align 8
  %34 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %4, align 8
  %37 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i64, i64* @ETH_ALEN, align 8
  %40 = call i32 @memcmp(i32 %35, i32 %38, i64 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %73, label %42

42:                                               ; preds = %32
  %43 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %3, align 8
  %44 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %4, align 8
  %48 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %3, align 8
  %52 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @memcmp(i32 %46, i32 %50, i64 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %73, label %57

57:                                               ; preds = %42
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @WLAN_CAPABILITY_IBSS, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @WLAN_CAPABILITY_IBSS, align 4
  %63 = and i32 %61, %62
  %64 = icmp eq i32 %60, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %57
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @WLAN_CAPABILITY_ESS, align 4
  %68 = and i32 %66, %67
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @WLAN_CAPABILITY_ESS, align 4
  %71 = and i32 %69, %70
  %72 = icmp eq i32 %68, %71
  br label %73

73:                                               ; preds = %65, %57, %42, %32, %2
  %74 = phi i1 [ false, %57 ], [ false, %42 ], [ false, %32 ], [ false, %2 ], [ %72, %65 ]
  %75 = zext i1 %74 to i32
  ret i32 %75
}

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @rtw_get_capability_from_ie(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @memcmp(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
