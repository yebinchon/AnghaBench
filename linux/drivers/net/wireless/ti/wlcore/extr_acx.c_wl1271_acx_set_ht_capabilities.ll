; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_set_ht_capabilities.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_set_ht_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.ieee80211_sta_ht_cap = type { i32, i32, i32, i64 }
%struct.wl1271_acx_ht_capabilities = type { i32, i32, i32, i32 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"acx ht capabilities setting sta supp: %d sta cap: %d\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WL12XX_HT_CAP_HT_OPERATION = common dso_local global i32 0, align 4
@ACX_PEER_HT_CAP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"acx ht capabilities setting failed: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1271_acx_set_ht_capabilities(%struct.wl1271* %0, %struct.ieee80211_sta_ht_cap* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.wl1271*, align 8
  %6 = alloca %struct.ieee80211_sta_ht_cap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.wl1271_acx_ht_capabilities*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %5, align 8
  store %struct.ieee80211_sta_ht_cap* %1, %struct.ieee80211_sta_ht_cap** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* @DEBUG_ACX, align 4
  %13 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %6, align 8
  %14 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %6, align 8
  %17 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @wl1271_debug(i32 %12, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %15, i32 %18)
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.wl1271_acx_ht_capabilities* @kzalloc(i32 16, i32 %20)
  store %struct.wl1271_acx_ht_capabilities* %21, %struct.wl1271_acx_ht_capabilities** %9, align 8
  %22 = load %struct.wl1271_acx_ht_capabilities*, %struct.wl1271_acx_ht_capabilities** %9, align 8
  %23 = icmp ne %struct.wl1271_acx_ht_capabilities* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %10, align 4
  br label %70

27:                                               ; preds = %4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %52

30:                                               ; preds = %27
  %31 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %6, align 8
  %32 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %30
  %36 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %6, align 8
  %37 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* @WL12XX_HT_CAP_HT_OPERATION, align 4
  %40 = load i32, i32* %11, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %11, align 4
  %42 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %6, align 8
  %43 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.wl1271_acx_ht_capabilities*, %struct.wl1271_acx_ht_capabilities** %9, align 8
  %46 = getelementptr inbounds %struct.wl1271_acx_ht_capabilities, %struct.wl1271_acx_ht_capabilities* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %6, align 8
  %48 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.wl1271_acx_ht_capabilities*, %struct.wl1271_acx_ht_capabilities** %9, align 8
  %51 = getelementptr inbounds %struct.wl1271_acx_ht_capabilities, %struct.wl1271_acx_ht_capabilities* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %35, %30, %27
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.wl1271_acx_ht_capabilities*, %struct.wl1271_acx_ht_capabilities** %9, align 8
  %55 = getelementptr inbounds %struct.wl1271_acx_ht_capabilities, %struct.wl1271_acx_ht_capabilities* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @cpu_to_le32(i32 %56)
  %58 = load %struct.wl1271_acx_ht_capabilities*, %struct.wl1271_acx_ht_capabilities** %9, align 8
  %59 = getelementptr inbounds %struct.wl1271_acx_ht_capabilities, %struct.wl1271_acx_ht_capabilities* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %61 = load i32, i32* @ACX_PEER_HT_CAP, align 4
  %62 = load %struct.wl1271_acx_ht_capabilities*, %struct.wl1271_acx_ht_capabilities** %9, align 8
  %63 = call i32 @wl1271_cmd_configure(%struct.wl1271* %60, i32 %61, %struct.wl1271_acx_ht_capabilities* %62, i32 16)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %52
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @wl1271_warning(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  br label %70

69:                                               ; preds = %52
  br label %70

70:                                               ; preds = %69, %66, %24
  %71 = load %struct.wl1271_acx_ht_capabilities*, %struct.wl1271_acx_ht_capabilities** %9, align 8
  %72 = call i32 @kfree(%struct.wl1271_acx_ht_capabilities* %71)
  %73 = load i32, i32* %10, align 4
  ret i32 %73
}

declare dso_local i32 @wl1271_debug(i32, i8*, i64, i32) #1

declare dso_local %struct.wl1271_acx_ht_capabilities* @kzalloc(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @wl1271_cmd_configure(%struct.wl1271*, i32, %struct.wl1271_acx_ht_capabilities*, i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.wl1271_acx_ht_capabilities*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
