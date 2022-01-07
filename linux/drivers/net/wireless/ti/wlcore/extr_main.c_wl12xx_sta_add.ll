; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl12xx_sta_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl12xx_sta_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { i32 }
%struct.ieee80211_sta = type { i64, i64 }
%struct.wl1271_station = type { i32 }

@DEBUG_MAC80211 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"mac80211 add sta %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, %struct.wl12xx_vif*, %struct.ieee80211_sta*)* @wl12xx_sta_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl12xx_sta_add(%struct.wl1271* %0, %struct.wl12xx_vif* %1, %struct.ieee80211_sta* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wl1271*, align 8
  %6 = alloca %struct.wl12xx_vif*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.wl1271_station*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %5, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* @DEBUG_MAC80211, align 4
  %12 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %13 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = call i32 @wl1271_debug(i32 %11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %18 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %19 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %20 = call i32 @wl1271_allocate_sta(%struct.wl1271* %17, %struct.wl12xx_vif* %18, %struct.ieee80211_sta* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %4, align 4
  br label %47

25:                                               ; preds = %3
  %26 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %27 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.wl1271_station*
  store %struct.wl1271_station* %29, %struct.wl1271_station** %8, align 8
  %30 = load %struct.wl1271_station*, %struct.wl1271_station** %8, align 8
  %31 = getelementptr inbounds %struct.wl1271_station, %struct.wl1271_station* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %10, align 4
  %33 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %34 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %35 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @wl12xx_cmd_add_peer(%struct.wl1271* %33, %struct.wl12xx_vif* %34, %struct.ieee80211_sta* %35, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %25
  %41 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %42 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @wl1271_free_sta(%struct.wl1271* %41, %struct.wl12xx_vif* %42, i32 %43)
  br label %45

45:                                               ; preds = %40, %25
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %45, %23
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @wl1271_debug(i32, i8*, i32) #1

declare dso_local i32 @wl1271_allocate_sta(%struct.wl1271*, %struct.wl12xx_vif*, %struct.ieee80211_sta*) #1

declare dso_local i32 @wl12xx_cmd_add_peer(%struct.wl1271*, %struct.wl12xx_vif*, %struct.ieee80211_sta*, i32) #1

declare dso_local i32 @wl1271_free_sta(%struct.wl1271*, %struct.wl12xx_vif*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
