; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac80211.c_rtw_ops_remove_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac80211.c_rtw_ops_remove_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtw_dev* }
%struct.rtw_dev = type { i32 }
%struct.ieee80211_vif = type { i32, i64 }
%struct.rtw_vif = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"stop vif %pM on port %d\0A\00", align 1
@PORT_SET_MAC_ADDR = common dso_local global i32 0, align 4
@RTW_NET_NO_LINK = common dso_local global i32 0, align 4
@PORT_SET_NET_TYPE = common dso_local global i32 0, align 4
@PORT_SET_BCN_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @rtw_ops_remove_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_ops_remove_interface(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.rtw_dev*, align 8
  %6 = alloca %struct.rtw_vif*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %8, i32 0, i32 0
  %10 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  store %struct.rtw_dev* %10, %struct.rtw_dev** %5, align 8
  %11 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.rtw_vif*
  store %struct.rtw_vif* %14, %struct.rtw_vif** %6, align 8
  store i32 0, i32* %7, align 4
  %15 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %16 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %17 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.rtw_vif*, %struct.rtw_vif** %6, align 8
  %20 = getelementptr inbounds %struct.rtw_vif, %struct.rtw_vif* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @rtw_info(%struct.rtw_dev* %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21)
  %23 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %24 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.rtw_vif*, %struct.rtw_vif** %6, align 8
  %27 = getelementptr inbounds %struct.rtw_vif, %struct.rtw_vif* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @eth_zero_addr(i32 %28)
  %30 = load i32, i32* @PORT_SET_MAC_ADDR, align 4
  %31 = load i32, i32* %7, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* @RTW_NET_NO_LINK, align 4
  %34 = load %struct.rtw_vif*, %struct.rtw_vif** %6, align 8
  %35 = getelementptr inbounds %struct.rtw_vif, %struct.rtw_vif* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @PORT_SET_NET_TYPE, align 4
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = load %struct.rtw_vif*, %struct.rtw_vif** %6, align 8
  %40 = getelementptr inbounds %struct.rtw_vif, %struct.rtw_vif* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* @PORT_SET_BCN_CTRL, align 4
  %42 = load i32, i32* %7, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %7, align 4
  %44 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %45 = load %struct.rtw_vif*, %struct.rtw_vif** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @rtw_vif_port_config(%struct.rtw_dev* %44, %struct.rtw_vif* %45, i32 %46)
  %48 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %49 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %48, i32 0, i32 0
  %50 = call i32 @mutex_unlock(i32* %49)
  ret void
}

declare dso_local i32 @rtw_info(%struct.rtw_dev*, i8*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @eth_zero_addr(i32) #1

declare dso_local i32 @rtw_vif_port_config(%struct.rtw_dev*, %struct.rtw_vif*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
