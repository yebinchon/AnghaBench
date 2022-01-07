; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00mac.c_rt2x00mac_remove_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00mac.c_rt2x00mac_remove_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { i32, i32, i32 }
%struct.ieee80211_vif = type { i64 }
%struct.rt2x00_intf = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DEVICE_STATE_PRESENT = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@ENTRY_BCN_ASSIGNED = common dso_local global i32 0, align 4
@NL80211_IFTYPE_UNSPECIFIED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2x00mac_remove_interface(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.rt2x00_dev*, align 8
  %6 = alloca %struct.rt2x00_intf*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %7, i32 0, i32 0
  %9 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %8, align 8
  store %struct.rt2x00_dev* %9, %struct.rt2x00_dev** %5, align 8
  %10 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %11 = call %struct.rt2x00_intf* @vif_to_intf(%struct.ieee80211_vif* %10)
  store %struct.rt2x00_intf* %11, %struct.rt2x00_intf** %6, align 8
  %12 = load i32, i32* @DEVICE_STATE_PRESENT, align 4
  %13 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %14 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %13, i32 0, i32 2
  %15 = call i32 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %2
  %18 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %19 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %25 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %23, %17
  %29 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %30 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %36 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34, %23, %2
  br label %67

40:                                               ; preds = %34, %28
  %41 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %42 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %48 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %48, align 4
  br label %56

51:                                               ; preds = %40
  %52 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %53 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %51, %46
  %57 = load i32, i32* @ENTRY_BCN_ASSIGNED, align 4
  %58 = load %struct.rt2x00_intf*, %struct.rt2x00_intf** %6, align 8
  %59 = getelementptr inbounds %struct.rt2x00_intf, %struct.rt2x00_intf* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = call i32 @clear_bit(i32 %57, i32* %61)
  %63 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %64 = load %struct.rt2x00_intf*, %struct.rt2x00_intf** %6, align 8
  %65 = load i32, i32* @NL80211_IFTYPE_UNSPECIFIED, align 4
  %66 = call i32 @rt2x00lib_config_intf(%struct.rt2x00_dev* %63, %struct.rt2x00_intf* %64, i32 %65, i32* null, i32* null)
  br label %67

67:                                               ; preds = %56, %39
  ret void
}

declare dso_local %struct.rt2x00_intf* @vif_to_intf(%struct.ieee80211_vif*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @rt2x00lib_config_intf(%struct.rt2x00_dev*, %struct.rt2x00_intf*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
