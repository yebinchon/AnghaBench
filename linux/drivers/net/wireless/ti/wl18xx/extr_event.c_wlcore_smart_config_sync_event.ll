; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_event.c_wlcore_smart_config_sync_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_event.c_wlcore_smart_config_sync_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }

@WLCORE_BAND_5GHZ = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"SMART_CONFIG_SYNC_EVENT_ID, freq: %d (chan: %d band %d)\00", align 1
@WLCORE_VENDOR_EVENT_SC_SYNC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@WLCORE_VENDOR_ATTR_FREQ = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, i32, i32)* @wlcore_smart_config_sync_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlcore_smart_config_sync_event(%struct.wl1271* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wl1271*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @WLCORE_BAND_5GHZ, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  store i32 %15, i32* %9, align 4
  br label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  store i32 %17, i32* %9, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @ieee80211_channel_to_frequency(i32 %19, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* @DEBUG_EVENT, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @wl1271_debug(i32 %22, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24, i32 %25)
  %27 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %28 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @WLCORE_VENDOR_EVENT_SC_SYNC, align 4
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.sk_buff* @cfg80211_vendor_event_alloc(i32 %31, i32* null, i32 20, i32 %32, i32 %33)
  store %struct.sk_buff* %34, %struct.sk_buff** %8, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %36 = load i32, i32* @WLCORE_VENDOR_ATTR_FREQ, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i64 @nla_put_u32(%struct.sk_buff* %35, i32 %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %18
  %41 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %42 = call i32 @kfree_skb(%struct.sk_buff* %41)
  %43 = load i32, i32* @EMSGSIZE, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %49

45:                                               ; preds = %18
  %46 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i32 @cfg80211_vendor_event(%struct.sk_buff* %46, i32 %47)
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %45, %40
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @ieee80211_channel_to_frequency(i32, i32) #1

declare dso_local i32 @wl1271_debug(i32, i8*, i32, i32, i32) #1

declare dso_local %struct.sk_buff* @cfg80211_vendor_event_alloc(i32, i32*, i32, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @cfg80211_vendor_event(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
