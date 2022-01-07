; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_event.c_wlcore_smart_config_decode_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_event.c_wlcore_smart_config_decode_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }

@DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"SMART_CONFIG_DECODE_EVENT_ID\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"SSID:\00", align 1
@WLCORE_VENDOR_EVENT_SC_DECODE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@WLCORE_VENDOR_ATTR_SSID = common dso_local global i32 0, align 4
@WLCORE_VENDOR_ATTR_PSK = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, i64, i64*, i64, i64*)* @wlcore_smart_config_decode_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlcore_smart_config_decode_event(%struct.wl1271* %0, i64 %1, i64* %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wl1271*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  store %struct.wl1271* %0, %struct.wl1271** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %13 = load i32, i32* @DEBUG_EVENT, align 4
  %14 = call i32 @wl1271_debug(i32 %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @DEBUG_EVENT, align 4
  %16 = load i64*, i64** %9, align 8
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @wl1271_dump_ascii(i32 %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64* %16, i64 %17)
  %19 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %20 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* %10, align 8
  %26 = add nsw i64 %24, %25
  %27 = add nsw i64 %26, 20
  %28 = load i32, i32* @WLCORE_VENDOR_EVENT_SC_DECODE, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.sk_buff* @cfg80211_vendor_event_alloc(i32 %23, i32* null, i64 %27, i32 %28, i32 %29)
  store %struct.sk_buff* %30, %struct.sk_buff** %12, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %32 = load i32, i32* @WLCORE_VENDOR_ATTR_SSID, align 4
  %33 = load i64, i64* %8, align 8
  %34 = load i64*, i64** %9, align 8
  %35 = call i64 @nla_put(%struct.sk_buff* %31, i32 %32, i64 %33, i64* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %5
  %38 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %39 = load i32, i32* @WLCORE_VENDOR_ATTR_PSK, align 4
  %40 = load i64, i64* %10, align 8
  %41 = load i64*, i64** %11, align 8
  %42 = call i64 @nla_put(%struct.sk_buff* %38, i32 %39, i64 %40, i64* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %37, %5
  %45 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %46 = call i32 @kfree_skb(%struct.sk_buff* %45)
  %47 = load i32, i32* @EMSGSIZE, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %53

49:                                               ; preds = %37
  %50 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i32 @cfg80211_vendor_event(%struct.sk_buff* %50, i32 %51)
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %49, %44
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local i32 @wl1271_dump_ascii(i32, i8*, i64*, i64) #1

declare dso_local %struct.sk_buff* @cfg80211_vendor_event_alloc(i32, i32*, i64, i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i64, i64*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @cfg80211_vendor_event(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
