; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme.c_is_same_ess.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme.c_is_same_ess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlan_bssid_ex = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wlan_bssid_ex*, %struct.wlan_bssid_ex*)* @is_same_ess to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_same_ess(%struct.wlan_bssid_ex* %0, %struct.wlan_bssid_ex* %1) #0 {
  %3 = alloca %struct.wlan_bssid_ex*, align 8
  %4 = alloca %struct.wlan_bssid_ex*, align 8
  store %struct.wlan_bssid_ex* %0, %struct.wlan_bssid_ex** %3, align 8
  store %struct.wlan_bssid_ex* %1, %struct.wlan_bssid_ex** %4, align 8
  %5 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %3, align 8
  %6 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %4, align 8
  %10 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %8, %12
  br i1 %13, label %14, label %30

14:                                               ; preds = %2
  %15 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %3, align 8
  %16 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %4, align 8
  %20 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %3, align 8
  %24 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @memcmp(i32 %18, i32 %22, i64 %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  br label %30

30:                                               ; preds = %14, %2
  %31 = phi i1 [ false, %2 ], [ %29, %14 ]
  %32 = zext i1 %31 to i32
  ret i32 %32
}

declare dso_local i32 @memcmp(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
