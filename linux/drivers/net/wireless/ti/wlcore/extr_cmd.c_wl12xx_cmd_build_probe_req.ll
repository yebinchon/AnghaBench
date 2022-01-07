; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl12xx_cmd_build_probe_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl12xx_cmd_build_probe_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32, i32, i32, i32, i32, i32 }
%struct.wl12xx_vif = type { i32* }
%struct.ieee80211_vif = type { i32 }
%struct.sk_buff = type { i32, i32 }

@DEBUG_SCAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"build probe request band %d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@WLCORE_QUIRK_DUAL_PROBE_TMPL = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl12xx_cmd_build_probe_req(%struct.wl1271* %0, %struct.wl12xx_vif* %1, i64 %2, i64 %3, i64* %4, i64 %5, i64* %6, i64 %7, i64* %8, i64 %9, i32 %10) #0 {
  %12 = alloca %struct.wl1271*, align 8
  %13 = alloca %struct.wl12xx_vif*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.ieee80211_vif*, align 8
  %24 = alloca %struct.sk_buff*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %12, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %13, align 8
  store i64 %2, i64* %14, align 8
  store i64 %3, i64* %15, align 8
  store i64* %4, i64** %16, align 8
  store i64 %5, i64* %17, align 8
  store i64* %6, i64** %18, align 8
  store i64 %7, i64* %19, align 8
  store i64* %8, i64** %20, align 8
  store i64 %9, i64* %21, align 8
  store i32 %10, i32* %22, align 4
  %29 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %13, align 8
  %30 = call %struct.ieee80211_vif* @wl12xx_wlvif_to_vif(%struct.wl12xx_vif* %29)
  store %struct.ieee80211_vif* %30, %struct.ieee80211_vif** %23, align 8
  %31 = load %struct.wl1271*, %struct.wl1271** %12, align 8
  %32 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %27, align 4
  %34 = load %struct.wl1271*, %struct.wl1271** %12, align 8
  %35 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %28, align 4
  %37 = load i32, i32* @DEBUG_SCAN, align 4
  %38 = load i64, i64* %15, align 8
  %39 = call i32 @wl1271_debug(i32 %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %38)
  %40 = load %struct.wl1271*, %struct.wl1271** %12, align 8
  %41 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %23, align 8
  %44 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i64*, i64** %16, align 8
  %47 = load i64, i64* %17, align 8
  %48 = load i64, i64* %19, align 8
  %49 = load i64, i64* %21, align 8
  %50 = add i64 %48, %49
  %51 = call %struct.sk_buff* @ieee80211_probereq_get(i32 %42, i32 %45, i64* %46, i64 %47, i64 %50)
  store %struct.sk_buff* %51, %struct.sk_buff** %24, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  %53 = icmp ne %struct.sk_buff* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %11
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %25, align 4
  br label %127

57:                                               ; preds = %11
  %58 = load i64, i64* %19, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  %62 = load i64*, i64** %18, align 8
  %63 = load i64, i64* %19, align 8
  %64 = call i32 @skb_put_data(%struct.sk_buff* %61, i64* %62, i64 %63)
  br label %65

65:                                               ; preds = %60, %57
  %66 = load i64, i64* %21, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  %70 = load i64*, i64** %20, align 8
  %71 = load i64, i64* %21, align 8
  %72 = call i32 @skb_put_data(%struct.sk_buff* %69, i64* %70, i64 %71)
  br label %73

73:                                               ; preds = %68, %65
  %74 = load i32, i32* %22, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %73
  %77 = load %struct.wl1271*, %struct.wl1271** %12, align 8
  %78 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @WLCORE_QUIRK_DUAL_PROBE_TMPL, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %76
  %84 = load %struct.wl1271*, %struct.wl1271** %12, align 8
  %85 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %27, align 4
  %87 = load %struct.wl1271*, %struct.wl1271** %12, align 8
  %88 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %28, align 4
  br label %90

90:                                               ; preds = %83, %76, %73
  %91 = load %struct.wl1271*, %struct.wl1271** %12, align 8
  %92 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %13, align 8
  %93 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* %15, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @wl1271_tx_min_rate_get(%struct.wl1271* %91, i32 %97)
  store i32 %98, i32* %26, align 4
  %99 = load i64, i64* %15, align 8
  %100 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %114

102:                                              ; preds = %90
  %103 = load %struct.wl1271*, %struct.wl1271** %12, align 8
  %104 = load i64, i64* %14, align 8
  %105 = load i32, i32* %27, align 4
  %106 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  %107 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  %110 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %26, align 4
  %113 = call i32 @wl1271_cmd_template_set(%struct.wl1271* %103, i64 %104, i32 %105, i32 %108, i32 %111, i32 0, i32 %112)
  store i32 %113, i32* %25, align 4
  br label %126

114:                                              ; preds = %90
  %115 = load %struct.wl1271*, %struct.wl1271** %12, align 8
  %116 = load i64, i64* %14, align 8
  %117 = load i32, i32* %28, align 4
  %118 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  %119 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  %122 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %26, align 4
  %125 = call i32 @wl1271_cmd_template_set(%struct.wl1271* %115, i64 %116, i32 %117, i32 %120, i32 %123, i32 0, i32 %124)
  store i32 %125, i32* %25, align 4
  br label %126

126:                                              ; preds = %114, %102
  br label %127

127:                                              ; preds = %126, %54
  %128 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  %129 = call i32 @dev_kfree_skb(%struct.sk_buff* %128)
  %130 = load i32, i32* %25, align 4
  ret i32 %130
}

declare dso_local %struct.ieee80211_vif* @wl12xx_wlvif_to_vif(%struct.wl12xx_vif*) #1

declare dso_local i32 @wl1271_debug(i32, i8*, i64) #1

declare dso_local %struct.sk_buff* @ieee80211_probereq_get(i32, i32, i64*, i64, i64) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i64*, i64) #1

declare dso_local i32 @wl1271_tx_min_rate_get(%struct.wl1271*, i32) #1

declare dso_local i32 @wl1271_cmd_template_set(%struct.wl1271*, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
