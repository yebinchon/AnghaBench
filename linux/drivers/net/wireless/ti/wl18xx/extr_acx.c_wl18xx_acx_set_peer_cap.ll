; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_acx.c_wl18xx_acx_set_peer_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_acx.c_wl18xx_acx_set_peer_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.ieee80211_sta_ht_cap = type { i32, i32, i32, i64 }
%struct.wlcore_acx_peer_cap = type { i8*, i8*, i32, i32, i32 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"acx set cap ht_supp: %d ht_cap: %d rates: 0x%x\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WL12XX_HT_CAP_HT_OPERATION = common dso_local global i32 0, align 4
@ACX_PEER_CAP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"acx ht capabilities setting failed: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl18xx_acx_set_peer_cap(%struct.wl1271* %0, %struct.ieee80211_sta_ht_cap* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.wl1271*, align 8
  %7 = alloca %struct.ieee80211_sta_ht_cap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.wlcore_acx_peer_cap*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %6, align 8
  store %struct.ieee80211_sta_ht_cap* %1, %struct.ieee80211_sta_ht_cap** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* @DEBUG_ACX, align 4
  %15 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %7, align 8
  %16 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %7, align 8
  %19 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @wl1271_debug(i32 %14, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %17, i32 %20, i32 %21)
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.wlcore_acx_peer_cap* @kzalloc(i32 32, i32 %23)
  store %struct.wlcore_acx_peer_cap* %24, %struct.wlcore_acx_peer_cap** %11, align 8
  %25 = load %struct.wlcore_acx_peer_cap*, %struct.wlcore_acx_peer_cap** %11, align 8
  %26 = icmp ne %struct.wlcore_acx_peer_cap* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %5
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %12, align 4
  br label %77

30:                                               ; preds = %5
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %55

33:                                               ; preds = %30
  %34 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %7, align 8
  %35 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %33
  %39 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %7, align 8
  %40 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* @WL12XX_HT_CAP_HT_OPERATION, align 4
  %43 = load i32, i32* %13, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %13, align 4
  %45 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %7, align 8
  %46 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.wlcore_acx_peer_cap*, %struct.wlcore_acx_peer_cap** %11, align 8
  %49 = getelementptr inbounds %struct.wlcore_acx_peer_cap, %struct.wlcore_acx_peer_cap* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 8
  %50 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %7, align 8
  %51 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.wlcore_acx_peer_cap*, %struct.wlcore_acx_peer_cap** %11, align 8
  %54 = getelementptr inbounds %struct.wlcore_acx_peer_cap, %struct.wlcore_acx_peer_cap* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %38, %33, %30
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.wlcore_acx_peer_cap*, %struct.wlcore_acx_peer_cap** %11, align 8
  %58 = getelementptr inbounds %struct.wlcore_acx_peer_cap, %struct.wlcore_acx_peer_cap* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* %13, align 4
  %60 = call i8* @cpu_to_le32(i32 %59)
  %61 = load %struct.wlcore_acx_peer_cap*, %struct.wlcore_acx_peer_cap** %11, align 8
  %62 = getelementptr inbounds %struct.wlcore_acx_peer_cap, %struct.wlcore_acx_peer_cap* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i8* @cpu_to_le32(i32 %63)
  %65 = load %struct.wlcore_acx_peer_cap*, %struct.wlcore_acx_peer_cap** %11, align 8
  %66 = getelementptr inbounds %struct.wlcore_acx_peer_cap, %struct.wlcore_acx_peer_cap* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  %67 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %68 = load i32, i32* @ACX_PEER_CAP, align 4
  %69 = load %struct.wlcore_acx_peer_cap*, %struct.wlcore_acx_peer_cap** %11, align 8
  %70 = call i32 @wl1271_cmd_configure(%struct.wl1271* %67, i32 %68, %struct.wlcore_acx_peer_cap* %69, i32 32)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %55
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @wl1271_warning(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  br label %77

76:                                               ; preds = %55
  br label %77

77:                                               ; preds = %76, %73, %27
  %78 = load %struct.wlcore_acx_peer_cap*, %struct.wlcore_acx_peer_cap** %11, align 8
  %79 = call i32 @kfree(%struct.wlcore_acx_peer_cap* %78)
  %80 = load i32, i32* %12, align 4
  ret i32 %80
}

declare dso_local i32 @wl1271_debug(i32, i8*, i64, i32, i32) #1

declare dso_local %struct.wlcore_acx_peer_cap* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @wl1271_cmd_configure(%struct.wl1271*, i32, %struct.wlcore_acx_peer_cap*, i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.wlcore_acx_peer_cap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
