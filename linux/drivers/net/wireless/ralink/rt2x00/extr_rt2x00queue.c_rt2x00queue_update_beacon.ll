; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00queue.c_rt2x00queue_update_beacon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00queue.c_rt2x00queue_update_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_7__*, %struct.txentry_desc*)* }
%struct.TYPE_7__ = type { i32 }
%struct.txentry_desc = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.rt2x00_intf = type { %struct.TYPE_7__* }
%struct.skb_frame_desc = type { i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt2x00queue_update_beacon(%struct.rt2x00_dev* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rt2x00_dev*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.rt2x00_intf*, align 8
  %7 = alloca %struct.skb_frame_desc*, align 8
  %8 = alloca %struct.txentry_desc, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  %9 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %10 = call %struct.rt2x00_intf* @vif_to_intf(%struct.ieee80211_vif* %9)
  store %struct.rt2x00_intf* %10, %struct.rt2x00_intf** %6, align 8
  %11 = load %struct.rt2x00_intf*, %struct.rt2x00_intf** %6, align 8
  %12 = getelementptr inbounds %struct.rt2x00_intf, %struct.rt2x00_intf* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = icmp ne %struct.TYPE_7__* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOBUFS, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %72

22:                                               ; preds = %2
  %23 = load %struct.rt2x00_intf*, %struct.rt2x00_intf** %6, align 8
  %24 = getelementptr inbounds %struct.rt2x00_intf, %struct.rt2x00_intf* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = call i32 @rt2x00queue_free_skb(%struct.TYPE_7__* %25)
  %27 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %28 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %31 = call i32 @ieee80211_beacon_get(i32 %29, %struct.ieee80211_vif* %30)
  %32 = load %struct.rt2x00_intf*, %struct.rt2x00_intf** %6, align 8
  %33 = getelementptr inbounds %struct.rt2x00_intf, %struct.rt2x00_intf* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  store i32 %31, i32* %35, align 4
  %36 = load %struct.rt2x00_intf*, %struct.rt2x00_intf** %6, align 8
  %37 = getelementptr inbounds %struct.rt2x00_intf, %struct.rt2x00_intf* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %22
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %72

45:                                               ; preds = %22
  %46 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %47 = load %struct.rt2x00_intf*, %struct.rt2x00_intf** %6, align 8
  %48 = getelementptr inbounds %struct.rt2x00_intf, %struct.rt2x00_intf* %47, i32 0, i32 0
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @rt2x00queue_create_tx_descriptor(%struct.rt2x00_dev* %46, i32 %51, %struct.txentry_desc* %8, i32* null)
  %53 = load %struct.rt2x00_intf*, %struct.rt2x00_intf** %6, align 8
  %54 = getelementptr inbounds %struct.rt2x00_intf, %struct.rt2x00_intf* %53, i32 0, i32 0
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call %struct.skb_frame_desc* @get_skb_frame_desc(i32 %57)
  store %struct.skb_frame_desc* %58, %struct.skb_frame_desc** %7, align 8
  %59 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %7, align 8
  %60 = call i32 @memset(%struct.skb_frame_desc* %59, i32 0, i32 4)
  %61 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %62 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32 (%struct.TYPE_7__*, %struct.txentry_desc*)*, i32 (%struct.TYPE_7__*, %struct.txentry_desc*)** %66, align 8
  %68 = load %struct.rt2x00_intf*, %struct.rt2x00_intf** %6, align 8
  %69 = getelementptr inbounds %struct.rt2x00_intf, %struct.rt2x00_intf* %68, i32 0, i32 0
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = call i32 %67(%struct.TYPE_7__* %70, %struct.txentry_desc* %8)
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %45, %42, %19
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.rt2x00_intf* @vif_to_intf(%struct.ieee80211_vif*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rt2x00queue_free_skb(%struct.TYPE_7__*) #1

declare dso_local i32 @ieee80211_beacon_get(i32, %struct.ieee80211_vif*) #1

declare dso_local i32 @rt2x00queue_create_tx_descriptor(%struct.rt2x00_dev*, i32, %struct.txentry_desc*, i32*) #1

declare dso_local %struct.skb_frame_desc* @get_skb_frame_desc(i32) #1

declare dso_local i32 @memset(%struct.skb_frame_desc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
