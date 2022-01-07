; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_main.c_wl1251_op_add_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_main.c_wl1251_op_add_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.wl1251* }
%struct.wl1251 = type { i32, i32, i32, i32, %struct.ieee80211_vif* }
%struct.ieee80211_vif = type { i32, i32, i32 }

@IEEE80211_VIF_BEACON_FILTER = common dso_local global i32 0, align 4
@IEEE80211_VIF_SUPPORTS_UAPSD = common dso_local global i32 0, align 4
@IEEE80211_VIF_SUPPORTS_CQM_RSSI = common dso_local global i32 0, align 4
@DEBUG_MAC80211 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"mac80211 add interface type %d mac %pM\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@BSS_TYPE_STA_BSS = common dso_local global i32 0, align 4
@BSS_TYPE_IBSS = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @wl1251_op_add_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1251_op_add_interface(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.wl1251*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %7, i32 0, i32 0
  %9 = load %struct.wl1251*, %struct.wl1251** %8, align 8
  store %struct.wl1251* %9, %struct.wl1251** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* @IEEE80211_VIF_BEACON_FILTER, align 4
  %11 = load i32, i32* @IEEE80211_VIF_SUPPORTS_UAPSD, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @IEEE80211_VIF_SUPPORTS_CQM_RSSI, align 4
  %14 = or i32 %12, %13
  %15 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %16 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* @DEBUG_MAC80211, align 4
  %20 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %21 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %24 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @wl1251_debug(i32 %19, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25)
  %27 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %28 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %31 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %30, i32 0, i32 4
  %32 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %31, align 8
  %33 = icmp ne %struct.ieee80211_vif* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %2
  %35 = load i32, i32* @EBUSY, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %87

37:                                               ; preds = %2
  %38 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %39 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %40 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %39, i32 0, i32 4
  store %struct.ieee80211_vif* %38, %struct.ieee80211_vif** %40, align 8
  %41 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %42 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %52 [
    i32 128, label %44
    i32 129, label %48
  ]

44:                                               ; preds = %37
  %45 = load i32, i32* @BSS_TYPE_STA_BSS, align 4
  %46 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %47 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  br label %55

48:                                               ; preds = %37
  %49 = load i32, i32* @BSS_TYPE_IBSS, align 4
  %50 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %51 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  br label %55

52:                                               ; preds = %37
  %53 = load i32, i32* @EOPNOTSUPP, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %6, align 4
  br label %87

55:                                               ; preds = %48, %44
  %56 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %57 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %60 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ether_addr_equal_unaligned(i32 %58, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %86, label %64

64:                                               ; preds = %55
  %65 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %66 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %69 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @ETH_ALEN, align 4
  %72 = call i32 @memcpy(i32 %67, i32 %70, i32 %71)
  %73 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %74 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %77 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @SET_IEEE80211_PERM_ADDR(i32 %75, i32 %78)
  %80 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %81 = call i32 @wl1251_acx_station_id(%struct.wl1251* %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %64
  br label %87

85:                                               ; preds = %64
  br label %86

86:                                               ; preds = %85, %55
  br label %87

87:                                               ; preds = %86, %84, %52, %34
  %88 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %89 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %88, i32 0, i32 0
  %90 = call i32 @mutex_unlock(i32* %89)
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local i32 @wl1251_debug(i32, i8*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ether_addr_equal_unaligned(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @SET_IEEE80211_PERM_ADDR(i32, i32) #1

declare dso_local i32 @wl1251_acx_station_id(%struct.wl1251*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
