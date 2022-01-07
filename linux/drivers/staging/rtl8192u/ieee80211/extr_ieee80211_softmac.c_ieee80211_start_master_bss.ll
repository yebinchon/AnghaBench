; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_softmac.c_ieee80211_start_master_bss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_softmac.c_ieee80211_start_master_bss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32, i32, %struct.TYPE_7__*, i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)*, i32, %struct.TYPE_6__, i32 (%struct.TYPE_7__*, i32)* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64, i32, i32, i32 }

@IEEE80211_DEFAULT_TX_ESSID = common dso_local global i32 0, align 4
@IW_ESSID_MAX_SIZE = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@IEEE80211_LINKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_start_master_bss(%struct.ieee80211_device* %0) #0 {
  %2 = alloca %struct.ieee80211_device*, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %2, align 8
  %3 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %4 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %3, i32 0, i32 0
  store i32 1, i32* %4, align 8
  %5 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %5, i32 0, i32 6
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %1
  %11 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %12 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %11, i32 0, i32 6
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @IEEE80211_DEFAULT_TX_ESSID, align 4
  %16 = load i32, i32* @IW_ESSID_MAX_SIZE, align 4
  %17 = call i32 @strncpy(i32 %14, i32 %15, i32 %16)
  %18 = load i32, i32* @IEEE80211_DEFAULT_TX_ESSID, align 4
  %19 = call i64 @strlen(i32 %18)
  %20 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %21 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %20, i32 0, i32 6
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i64 %19, i64* %22, align 8
  %23 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %24 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %23, i32 0, i32 1
  store i32 1, i32* %24, align 4
  br label %25

25:                                               ; preds = %10, %1
  %26 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %27 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %26, i32 0, i32 6
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %31 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %30, i32 0, i32 2
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @ETH_ALEN, align 4
  %36 = call i32 @memcpy(i32 %29, i32 %34, i32 %35)
  %37 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %38 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %37, i32 0, i32 7
  %39 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %38, align 8
  %40 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %41 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %40, i32 0, i32 2
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %44 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %43, i32 0, i32 6
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 %39(%struct.TYPE_7__* %42, i32 %46)
  %48 = load i32, i32* @IEEE80211_LINKED, align 4
  %49 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %50 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 8
  %51 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %52 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %51, i32 0, i32 4
  %53 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %52, align 8
  %54 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %55 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %54, i32 0, i32 2
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = call i32 %53(%struct.TYPE_7__* %56)
  %58 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %59 = call i32 @notify_wx_assoc_event(%struct.ieee80211_device* %58)
  %60 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %61 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %60, i32 0, i32 3
  %62 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %61, align 8
  %63 = icmp ne i32 (%struct.TYPE_7__*)* %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %25
  %65 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %66 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %65, i32 0, i32 3
  %67 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %66, align 8
  %68 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %69 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %68, i32 0, i32 2
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = call i32 %67(%struct.TYPE_7__* %70)
  br label %72

72:                                               ; preds = %64, %25
  %73 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %74 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %73, i32 0, i32 2
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = call i32 @netif_carrier_on(%struct.TYPE_7__* %75)
  ret void
}

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @notify_wx_assoc_event(%struct.ieee80211_device*) #1

declare dso_local i32 @netif_carrier_on(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
