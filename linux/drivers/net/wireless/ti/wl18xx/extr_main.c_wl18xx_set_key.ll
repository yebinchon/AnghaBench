; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_main.c_wl18xx_set_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_main.c_wl18xx_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.wl18xx_priv* }
%struct.wl18xx_priv = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.ieee80211_key_conf = type { i64 }

@DEBUG_CRYPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"extra spare keys before: %d\00", align 1
@WL1271_CIPHER_SUITE_GEM = common dso_local global i64 0, align 8
@WLAN_CIPHER_SUITE_TKIP = common dso_local global i64 0, align 8
@SET_KEY = common dso_local global i32 0, align 4
@DISABLE_KEY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"extra spare keys after: %d\00", align 1
@WL18XX_TX_HW_EXTRA_BLOCK_SPARE = common dso_local global i32 0, align 4
@WL18XX_TX_HW_BLOCK_SPARE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, i32, %struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.ieee80211_key_conf*)* @wl18xx_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl18xx_set_key(%struct.wl1271* %0, i32 %1, %struct.ieee80211_vif* %2, %struct.ieee80211_sta* %3, %struct.ieee80211_key_conf* %4) #0 {
  %6 = alloca %struct.wl1271*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_vif*, align 8
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca %struct.ieee80211_key_conf*, align 8
  %11 = alloca %struct.wl18xx_priv*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %8, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %9, align 8
  store %struct.ieee80211_key_conf* %4, %struct.ieee80211_key_conf** %10, align 8
  %15 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %16 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %15, i32 0, i32 0
  %17 = load %struct.wl18xx_priv*, %struct.wl18xx_priv** %16, align 8
  store %struct.wl18xx_priv* %17, %struct.wl18xx_priv** %11, align 8
  store i32 0, i32* %12, align 4
  %18 = load i32, i32* @DEBUG_CRYPT, align 4
  %19 = load %struct.wl18xx_priv*, %struct.wl18xx_priv** %11, align 8
  %20 = getelementptr inbounds %struct.wl18xx_priv, %struct.wl18xx_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @wl1271_debug(i32 %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %24 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @WL1271_CIPHER_SUITE_GEM, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %5
  %29 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %30 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @WLAN_CIPHER_SUITE_TKIP, align 8
  %33 = icmp eq i64 %31, %32
  br label %34

34:                                               ; preds = %28, %5
  %35 = phi i1 [ true, %5 ], [ %33, %28 ]
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %13, align 4
  %37 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %40 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %41 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %42 = call i32 @wlcore_set_key(%struct.wl1271* %37, i32 %38, %struct.ieee80211_vif* %39, %struct.ieee80211_sta* %40, %struct.ieee80211_key_conf* %41)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  br label %102

46:                                               ; preds = %34
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %79

49:                                               ; preds = %46
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @SET_KEY, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %49
  %54 = load %struct.wl18xx_priv*, %struct.wl18xx_priv** %11, align 8
  %55 = getelementptr inbounds %struct.wl18xx_priv, %struct.wl18xx_priv* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 0
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %12, align 4
  %59 = load %struct.wl18xx_priv*, %struct.wl18xx_priv** %11, align 8
  %60 = getelementptr inbounds %struct.wl18xx_priv, %struct.wl18xx_priv* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  br label %78

63:                                               ; preds = %49
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @DISABLE_KEY, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %63
  %68 = load %struct.wl18xx_priv*, %struct.wl18xx_priv** %11, align 8
  %69 = getelementptr inbounds %struct.wl18xx_priv, %struct.wl18xx_priv* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 1
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %12, align 4
  %73 = load %struct.wl18xx_priv*, %struct.wl18xx_priv** %11, align 8
  %74 = getelementptr inbounds %struct.wl18xx_priv, %struct.wl18xx_priv* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %67, %63
  br label %78

78:                                               ; preds = %77, %53
  br label %79

79:                                               ; preds = %78, %46
  %80 = load i32, i32* @DEBUG_CRYPT, align 4
  %81 = load %struct.wl18xx_priv*, %struct.wl18xx_priv** %11, align 8
  %82 = getelementptr inbounds %struct.wl18xx_priv, %struct.wl18xx_priv* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @wl1271_debug(i32 %80, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %79
  br label %102

88:                                               ; preds = %79
  %89 = load %struct.wl18xx_priv*, %struct.wl18xx_priv** %11, align 8
  %90 = getelementptr inbounds %struct.wl18xx_priv, %struct.wl18xx_priv* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %95 = load i32, i32* @WL18XX_TX_HW_EXTRA_BLOCK_SPARE, align 4
  %96 = call i32 @wl18xx_set_host_cfg_bitmap(%struct.wl1271* %94, i32 %95)
  store i32 %96, i32* %14, align 4
  br label %101

97:                                               ; preds = %88
  %98 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %99 = load i32, i32* @WL18XX_TX_HW_BLOCK_SPARE, align 4
  %100 = call i32 @wl18xx_set_host_cfg_bitmap(%struct.wl1271* %98, i32 %99)
  store i32 %100, i32* %14, align 4
  br label %101

101:                                              ; preds = %97, %93
  br label %102

102:                                              ; preds = %101, %87, %45
  %103 = load i32, i32* %14, align 4
  ret i32 %103
}

declare dso_local i32 @wl1271_debug(i32, i8*, i32) #1

declare dso_local i32 @wlcore_set_key(%struct.wl1271*, i32, %struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.ieee80211_key_conf*) #1

declare dso_local i32 @wl18xx_set_host_cfg_bitmap(%struct.wl1271*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
