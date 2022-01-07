; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_ssid_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_ssid_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl12xx_vif = type { i32, i64 }
%struct.sk_buff = type { i64, i64 }

@WLAN_EID_SSID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"No SSID in IEs!\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@IEEE80211_MAX_SSID_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"SSID is too long!\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl12xx_vif*, %struct.sk_buff*, i32)* @wl1271_ssid_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1271_ssid_set(%struct.wl12xx_vif* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wl12xx_vif*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  store %struct.wl12xx_vif* %0, %struct.wl12xx_vif** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @WLAN_EID_SSID, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %13, %15
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = sub nsw i64 %19, %21
  %23 = call i64* @cfg80211_find_ie(i32 %10, i64 %16, i64 %22)
  store i64* %23, i64** %9, align 8
  %24 = load i64*, i64** %9, align 8
  %25 = icmp ne i64* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %3
  %27 = call i32 @wl1271_error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENOENT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %52

30:                                               ; preds = %3
  %31 = load i64*, i64** %9, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 1
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* @IEEE80211_MAX_SSID_LEN, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = call i32 @wl1271_error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %52

41:                                               ; preds = %30
  %42 = load i64, i64* %8, align 8
  %43 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %44 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  %45 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %46 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i64*, i64** %9, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 2
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @memcpy(i32 %47, i64* %49, i64 %50)
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %41, %37, %26
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i64* @cfg80211_find_ie(i32, i64, i64) #1

declare dso_local i32 @wl1271_error(i8*) #1

declare dso_local i32 @memcpy(i32, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
