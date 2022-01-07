; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c_cw1200_add_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c_cw1200_add_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.cw1200_common* }
%struct.cw1200_common = type { i64, i32, i32, %struct.ieee80211_vif* }
%struct.ieee80211_vif = type { i32, i32, i32 }

@IEEE80211_VIF_BEACON_FILTER = common dso_local global i32 0, align 4
@IEEE80211_VIF_SUPPORTS_UAPSD = common dso_local global i32 0, align 4
@IEEE80211_VIF_SUPPORTS_CQM_RSSI = common dso_local global i32 0, align 4
@NL80211_IFTYPE_MONITOR = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cw1200_add_interface(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cw1200_common*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %9 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %8, i32 0, i32 0
  %10 = load %struct.cw1200_common*, %struct.cw1200_common** %9, align 8
  store %struct.cw1200_common* %10, %struct.cw1200_common** %7, align 8
  %11 = load i32, i32* @IEEE80211_VIF_BEACON_FILTER, align 4
  %12 = load i32, i32* @IEEE80211_VIF_SUPPORTS_UAPSD, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @IEEE80211_VIF_SUPPORTS_CQM_RSSI, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %17 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load %struct.cw1200_common*, %struct.cw1200_common** %7, align 8
  %21 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %20, i32 0, i32 1
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.cw1200_common*, %struct.cw1200_common** %7, align 8
  %24 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @NL80211_IFTYPE_MONITOR, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %2
  %29 = load %struct.cw1200_common*, %struct.cw1200_common** %7, align 8
  %30 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %29, i32 0, i32 1
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load i32, i32* @EOPNOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %69

34:                                               ; preds = %2
  %35 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %36 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %45 [
    i32 128, label %38
    i32 131, label %38
    i32 129, label %38
    i32 130, label %38
  ]

38:                                               ; preds = %34, %34, %34, %34
  %39 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %40 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = load %struct.cw1200_common*, %struct.cw1200_common** %7, align 8
  %44 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  br label %51

45:                                               ; preds = %34
  %46 = load %struct.cw1200_common*, %struct.cw1200_common** %7, align 8
  %47 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %46, i32 0, i32 1
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load i32, i32* @EOPNOTSUPP, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %69

51:                                               ; preds = %38
  %52 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %53 = load %struct.cw1200_common*, %struct.cw1200_common** %7, align 8
  %54 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %53, i32 0, i32 3
  store %struct.ieee80211_vif* %52, %struct.ieee80211_vif** %54, align 8
  %55 = load %struct.cw1200_common*, %struct.cw1200_common** %7, align 8
  %56 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %59 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @ETH_ALEN, align 4
  %62 = call i32 @memcpy(i32 %57, i32 %60, i32 %61)
  %63 = load %struct.cw1200_common*, %struct.cw1200_common** %7, align 8
  %64 = call i32 @cw1200_setup_mac(%struct.cw1200_common* %63)
  store i32 %64, i32* %6, align 4
  %65 = load %struct.cw1200_common*, %struct.cw1200_common** %7, align 8
  %66 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %65, i32 0, i32 1
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %51, %45, %28
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @cw1200_setup_mac(%struct.cw1200_common*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
