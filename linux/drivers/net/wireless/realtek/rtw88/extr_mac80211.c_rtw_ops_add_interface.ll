; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac80211.c_rtw_ops_add_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac80211.c_rtw_ops_add_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtw_dev* }
%struct.rtw_dev = type { i32 }
%struct.ieee80211_vif = type { i32, i32, i64 }
%struct.rtw_vif = type { i64, i32, i32, i64, i32, i32*, %struct.TYPE_2__, %struct.ieee80211_vif* }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }

@rtw_vif_port = common dso_local global i32* null, align 8
@RTW_NET_AP_MODE = common dso_local global i32 0, align 4
@BIT_EN_BCN_FUNCTION = common dso_local global i64 0, align 8
@BIT_DIS_TSF_UDT = common dso_local global i64 0, align 8
@RTW_NET_AD_HOC = common dso_local global i32 0, align 4
@RTW_NET_NO_LINK = common dso_local global i32 0, align 4
@PORT_SET_MAC_ADDR = common dso_local global i32 0, align 4
@PORT_SET_NET_TYPE = common dso_local global i32 0, align 4
@PORT_SET_BCN_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"start vif %pM on port %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @rtw_ops_add_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw_ops_add_interface(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.rtw_dev*, align 8
  %6 = alloca %struct.rtw_vif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  %13 = load %struct.rtw_dev*, %struct.rtw_dev** %12, align 8
  store %struct.rtw_dev* %13, %struct.rtw_dev** %5, align 8
  %14 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.rtw_vif*
  store %struct.rtw_vif* %17, %struct.rtw_vif** %6, align 8
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load %struct.rtw_vif*, %struct.rtw_vif** %6, align 8
  %20 = getelementptr inbounds %struct.rtw_vif, %struct.rtw_vif* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %22 = load %struct.rtw_vif*, %struct.rtw_vif** %6, align 8
  %23 = getelementptr inbounds %struct.rtw_vif, %struct.rtw_vif* %22, i32 0, i32 7
  store %struct.ieee80211_vif* %21, %struct.ieee80211_vif** %23, align 8
  %24 = load %struct.rtw_vif*, %struct.rtw_vif** %6, align 8
  %25 = getelementptr inbounds %struct.rtw_vif, %struct.rtw_vif* %24, i32 0, i32 6
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = load %struct.rtw_vif*, %struct.rtw_vif** %6, align 8
  %28 = getelementptr inbounds %struct.rtw_vif, %struct.rtw_vif* %27, i32 0, i32 6
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = load %struct.rtw_vif*, %struct.rtw_vif** %6, align 8
  %31 = getelementptr inbounds %struct.rtw_vif, %struct.rtw_vif* %30, i32 0, i32 6
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.rtw_vif*, %struct.rtw_vif** %6, align 8
  %34 = getelementptr inbounds %struct.rtw_vif, %struct.rtw_vif* %33, i32 0, i32 6
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load %struct.rtw_vif*, %struct.rtw_vif** %6, align 8
  %37 = getelementptr inbounds %struct.rtw_vif, %struct.rtw_vif* %36, i32 0, i32 1
  store i32 0, i32* %37, align 8
  %38 = load i32*, i32** @rtw_vif_port, align 8
  %39 = load i64, i64* %9, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load %struct.rtw_vif*, %struct.rtw_vif** %6, align 8
  %42 = getelementptr inbounds %struct.rtw_vif, %struct.rtw_vif* %41, i32 0, i32 5
  store i32* %40, i32** %42, align 8
  %43 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %44 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %43, i32 0, i32 0
  %45 = call i32 @mutex_lock(i32* %44)
  %46 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %47 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  switch i32 %48, label %60 [
    i32 130, label %49
    i32 129, label %49
    i32 131, label %54
    i32 128, label %59
  ]

49:                                               ; preds = %2, %2
  %50 = load i32, i32* @RTW_NET_AP_MODE, align 4
  store i32 %50, i32* %7, align 4
  %51 = load i64, i64* @BIT_EN_BCN_FUNCTION, align 8
  %52 = load i64, i64* @BIT_DIS_TSF_UDT, align 8
  %53 = or i64 %51, %52
  store i64 %53, i64* %10, align 8
  br label %63

54:                                               ; preds = %2
  %55 = load i32, i32* @RTW_NET_AD_HOC, align 4
  store i32 %55, i32* %7, align 4
  %56 = load i64, i64* @BIT_EN_BCN_FUNCTION, align 8
  %57 = load i64, i64* @BIT_DIS_TSF_UDT, align 8
  %58 = or i64 %56, %57
  store i64 %58, i64* %10, align 8
  br label %63

59:                                               ; preds = %2
  br label %60

60:                                               ; preds = %2, %59
  %61 = load i32, i32* @RTW_NET_NO_LINK, align 4
  store i32 %61, i32* %7, align 4
  %62 = load i64, i64* @BIT_EN_BCN_FUNCTION, align 8
  store i64 %62, i64* %10, align 8
  br label %63

63:                                               ; preds = %60, %54, %49
  %64 = load %struct.rtw_vif*, %struct.rtw_vif** %6, align 8
  %65 = getelementptr inbounds %struct.rtw_vif, %struct.rtw_vif* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %68 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @ether_addr_copy(i32 %66, i32 %69)
  %71 = load i32, i32* @PORT_SET_MAC_ADDR, align 4
  %72 = load i32, i32* %8, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.rtw_vif*, %struct.rtw_vif** %6, align 8
  %76 = getelementptr inbounds %struct.rtw_vif, %struct.rtw_vif* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* @PORT_SET_NET_TYPE, align 4
  %78 = load i32, i32* %8, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %8, align 4
  %80 = load i64, i64* %10, align 8
  %81 = load %struct.rtw_vif*, %struct.rtw_vif** %6, align 8
  %82 = getelementptr inbounds %struct.rtw_vif, %struct.rtw_vif* %81, i32 0, i32 3
  store i64 %80, i64* %82, align 8
  %83 = load i32, i32* @PORT_SET_BCN_CTRL, align 4
  %84 = load i32, i32* %8, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %8, align 4
  %86 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %87 = load %struct.rtw_vif*, %struct.rtw_vif** %6, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @rtw_vif_port_config(%struct.rtw_dev* %86, %struct.rtw_vif* %87, i32 %88)
  %90 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %91 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %90, i32 0, i32 0
  %92 = call i32 @mutex_unlock(i32* %91)
  %93 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %94 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %95 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.rtw_vif*, %struct.rtw_vif** %6, align 8
  %98 = getelementptr inbounds %struct.rtw_vif, %struct.rtw_vif* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @rtw_info(%struct.rtw_dev* %93, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %96, i64 %99)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @rtw_vif_port_config(%struct.rtw_dev*, %struct.rtw_vif*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @rtw_info(%struct.rtw_dev*, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
