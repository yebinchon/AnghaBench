; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_softmac.c_ieee80211_wpa_set_auth_algs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_softmac.c_ieee80211_wpa_set_auth_algs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32, i32, i32, i32 (i32, %struct.ieee80211_security*)* }
%struct.ieee80211_security = type { i32, i32 }

@SEC_AUTH_MODE = common dso_local global i32 0, align 4
@AUTH_ALG_SHARED_KEY = common dso_local global i32 0, align 4
@WLAN_AUTH_SHARED_KEY = common dso_local global i32 0, align 4
@AUTH_ALG_OPEN_SYSTEM = common dso_local global i32 0, align 4
@WLAN_AUTH_OPEN = common dso_local global i32 0, align 4
@IW_AUTH_ALG_LEAP = common dso_local global i32 0, align 4
@WLAN_AUTH_LEAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_device*, i32)* @ieee80211_wpa_set_auth_algs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_wpa_set_auth_algs(%struct.ieee80211_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_security, align 4
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %5, i32 0, i32 0
  store i32 0, i32* %6, align 4
  %7 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %5, i32 0, i32 1
  %8 = load i32, i32* @SEC_AUTH_MODE, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @AUTH_ALG_SHARED_KEY, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load i32, i32* @WLAN_AUTH_SHARED_KEY, align 4
  %15 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %5, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %17 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %19 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %18, i32 0, i32 1
  store i32 1, i32* %19, align 4
  br label %46

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @AUTH_ALG_OPEN_SYSTEM, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load i32, i32* @WLAN_AUTH_OPEN, align 4
  %27 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %5, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %29 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %31 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %30, i32 0, i32 1
  store i32 0, i32* %31, align 4
  br label %45

32:                                               ; preds = %20
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @IW_AUTH_ALG_LEAP, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load i32, i32* @WLAN_AUTH_LEAP, align 4
  %39 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %5, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %41 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %43 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %42, i32 0, i32 1
  store i32 2, i32* %43, align 4
  br label %44

44:                                               ; preds = %37, %32
  br label %45

45:                                               ; preds = %44, %25
  br label %46

46:                                               ; preds = %45, %13
  %47 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %48 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %47, i32 0, i32 3
  %49 = load i32 (i32, %struct.ieee80211_security*)*, i32 (i32, %struct.ieee80211_security*)** %48, align 8
  %50 = icmp ne i32 (i32, %struct.ieee80211_security*)* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %53 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %52, i32 0, i32 3
  %54 = load i32 (i32, %struct.ieee80211_security*)*, i32 (i32, %struct.ieee80211_security*)** %53, align 8
  %55 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %56 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 %54(i32 %57, %struct.ieee80211_security* %5)
  br label %59

59:                                               ; preds = %51, %46
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
