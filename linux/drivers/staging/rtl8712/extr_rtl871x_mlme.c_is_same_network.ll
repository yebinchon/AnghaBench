; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mlme.c_is_same_network.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mlme.c_is_same_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlan_bssid_ex = type { %struct.TYPE_4__, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i64 }

@ETH_ALEN = common dso_local global i64 0, align 8
@WLAN_CAPABILITY_IBSS = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_BSS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wlan_bssid_ex*, %struct.wlan_bssid_ex*)* @is_same_network to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_same_network(%struct.wlan_bssid_ex* %0, %struct.wlan_bssid_ex* %1) #0 {
  %3 = alloca %struct.wlan_bssid_ex*, align 8
  %4 = alloca %struct.wlan_bssid_ex*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wlan_bssid_ex* %0, %struct.wlan_bssid_ex** %3, align 8
  store %struct.wlan_bssid_ex* %1, %struct.wlan_bssid_ex** %4, align 8
  %7 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %3, align 8
  %8 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @r8712_get_capability_from_ie(i32 %9)
  %11 = call i32 @memcpy(i32* %5, i32 %10, i32 2)
  %12 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %4, align 8
  %13 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @r8712_get_capability_from_ie(i32 %14)
  %16 = call i32 @memcpy(i32* %6, i32 %15, i32 2)
  %17 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %3, align 8
  %18 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %4, align 8
  %22 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %20, %24
  br i1 %25, label %26, label %77

26:                                               ; preds = %2
  %27 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %3, align 8
  %28 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %4, align 8
  %32 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %30, %34
  br i1 %35, label %36, label %77

36:                                               ; preds = %26
  %37 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %3, align 8
  %38 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %4, align 8
  %41 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i64, i64* @ETH_ALEN, align 8
  %44 = call i32 @memcmp(i32 %39, i32 %42, i64 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %77, label %46

46:                                               ; preds = %36
  %47 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %3, align 8
  %48 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %4, align 8
  %52 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %3, align 8
  %56 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @memcmp(i32 %50, i32 %54, i64 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %77, label %61

61:                                               ; preds = %46
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @WLAN_CAPABILITY_IBSS, align 4
  %64 = and i32 %62, %63
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @WLAN_CAPABILITY_IBSS, align 4
  %67 = and i32 %65, %66
  %68 = icmp eq i32 %64, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %61
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @WLAN_CAPABILITY_BSS, align 4
  %72 = and i32 %70, %71
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @WLAN_CAPABILITY_BSS, align 4
  %75 = and i32 %73, %74
  %76 = icmp eq i32 %72, %75
  br label %77

77:                                               ; preds = %69, %61, %46, %36, %26, %2
  %78 = phi i1 [ false, %61 ], [ false, %46 ], [ false, %36 ], [ false, %26 ], [ false, %2 ], [ %76, %69 ]
  %79 = zext i1 %78 to i32
  ret i32 %79
}

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @r8712_get_capability_from_ie(i32) #1

declare dso_local i32 @memcmp(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
