; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_dump_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_dump_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_mgmt = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@rtl8xxxu_debug = common dso_local global i32 0, align 4
@RTL8XXXU_DEBUG_ACTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [87 x i8] c"WLAN_ACTION_ADDBA_RESP: timeout %i, tid %02x, buf_size %02x, policy %02x, status %02x\0A\00", align 1
@IEEE80211_ADDBA_PARAM_TID_MASK = common dso_local global i32 0, align 4
@IEEE80211_ADDBA_PARAM_BUF_SIZE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [73 x i8] c"WLAN_ACTION_ADDBA_REQ: timeout %i, tid %02x, buf_size %02x, policy %02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"action frame %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.ieee80211_hdr*)* @rtl8xxxu_dump_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8xxxu_dump_action(%struct.device* %0, %struct.ieee80211_hdr* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.ieee80211_hdr*, align 8
  %5 = alloca %struct.ieee80211_mgmt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.ieee80211_hdr* %1, %struct.ieee80211_hdr** %4, align 8
  %8 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %4, align 8
  %9 = bitcast %struct.ieee80211_hdr* %8 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %9, %struct.ieee80211_mgmt** %5, align 8
  %10 = load i32, i32* @rtl8xxxu_debug, align 4
  %11 = load i32, i32* @RTL8XXXU_DEBUG_ACTION, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %103

15:                                               ; preds = %2
  %16 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %17 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %93 [
    i32 128, label %23
    i32 129, label %62
  ]

23:                                               ; preds = %15
  %24 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %25 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le16_to_cpu(i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %33 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @le16_to_cpu(i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load %struct.device*, %struct.device** %3, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @IEEE80211_ADDBA_PARAM_TID_MASK, align 4
  %44 = and i32 %42, %43
  %45 = ashr i32 %44, 2
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @IEEE80211_ADDBA_PARAM_BUF_SIZE_MASK, align 4
  %48 = and i32 %46, %47
  %49 = ashr i32 %48, 6
  %50 = load i32, i32* %6, align 4
  %51 = ashr i32 %50, 1
  %52 = and i32 %51, 1
  %53 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %54 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @le16_to_cpu(i32 %59)
  %61 = call i32 (%struct.device*, i8*, i32, ...) @dev_info(%struct.device* %40, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %45, i32 %49, i32 %52, i32 %60)
  br label %103

62:                                               ; preds = %15
  %63 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %64 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @le16_to_cpu(i32 %69)
  store i32 %70, i32* %6, align 4
  %71 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %72 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @le16_to_cpu(i32 %77)
  store i32 %78, i32* %7, align 4
  %79 = load %struct.device*, %struct.device** %3, align 8
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @IEEE80211_ADDBA_PARAM_TID_MASK, align 4
  %83 = and i32 %81, %82
  %84 = ashr i32 %83, 2
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @IEEE80211_ADDBA_PARAM_BUF_SIZE_MASK, align 4
  %87 = and i32 %85, %86
  %88 = ashr i32 %87, 6
  %89 = load i32, i32* %6, align 4
  %90 = ashr i32 %89, 1
  %91 = and i32 %90, 1
  %92 = call i32 (%struct.device*, i8*, i32, ...) @dev_info(%struct.device* %79, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 %80, i32 %84, i32 %88, i32 %91)
  br label %103

93:                                               ; preds = %15
  %94 = load %struct.device*, %struct.device** %3, align 8
  %95 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %96 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (%struct.device*, i8*, i32, ...) @dev_info(%struct.device* %94, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %14, %93, %62, %23
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
