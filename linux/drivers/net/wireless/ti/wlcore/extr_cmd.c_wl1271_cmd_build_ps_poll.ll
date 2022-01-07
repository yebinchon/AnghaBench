; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl1271_cmd_build_ps_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl1271_cmd_build_ps_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { i32, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.sk_buff = type { i32, i32 }

@CMD_TEMPL_PS_POLL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1271_cmd_build_ps_poll(%struct.wl1271* %0, %struct.wl12xx_vif* %1, i32 %2) #0 {
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca %struct.wl12xx_vif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %11 = call %struct.ieee80211_vif* @wl12xx_wlvif_to_vif(%struct.wl12xx_vif* %10)
  store %struct.ieee80211_vif* %11, %struct.ieee80211_vif** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %13 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %16 = call %struct.sk_buff* @ieee80211_pspoll_get(i32 %14, %struct.ieee80211_vif* %15)
  store %struct.sk_buff* %16, %struct.sk_buff** %8, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %18 = icmp ne %struct.sk_buff* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  br label %36

20:                                               ; preds = %3
  %21 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %22 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %23 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @CMD_TEMPL_PS_POLL, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %33 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @wl1271_cmd_template_set(%struct.wl1271* %21, i32 %24, i32 %25, i32 %28, i32 %31, i32 0, i32 %34)
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %20, %19
  %37 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %38 = call i32 @dev_kfree_skb(%struct.sk_buff* %37)
  %39 = load i32, i32* %9, align 4
  ret i32 %39
}

declare dso_local %struct.ieee80211_vif* @wl12xx_wlvif_to_vif(%struct.wl12xx_vif*) #1

declare dso_local %struct.sk_buff* @ieee80211_pspoll_get(i32, %struct.ieee80211_vif*) #1

declare dso_local i32 @wl1271_cmd_template_set(%struct.wl1271*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
