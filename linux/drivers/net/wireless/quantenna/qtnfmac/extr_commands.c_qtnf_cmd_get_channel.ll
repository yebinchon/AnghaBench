; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_get_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_get_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_vif = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, %struct.qtnf_bus* }
%struct.qtnf_bus = type { i32 }
%struct.cfg80211_chan_def = type { i32 }
%struct.qlink_resp_channel_get = type { i32 }
%struct.sk_buff = type { i64 }

@QLINK_CMD_CHAN_GET = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qtnf_cmd_get_channel(%struct.qtnf_vif* %0, %struct.cfg80211_chan_def* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qtnf_vif*, align 8
  %5 = alloca %struct.cfg80211_chan_def*, align 8
  %6 = alloca %struct.qtnf_bus*, align 8
  %7 = alloca %struct.qlink_resp_channel_get*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  store %struct.qtnf_vif* %0, %struct.qtnf_vif** %4, align 8
  store %struct.cfg80211_chan_def* %1, %struct.cfg80211_chan_def** %5, align 8
  %11 = load %struct.qtnf_vif*, %struct.qtnf_vif** %4, align 8
  %12 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load %struct.qtnf_bus*, %struct.qtnf_bus** %14, align 8
  store %struct.qtnf_bus* %15, %struct.qtnf_bus** %6, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %9, align 8
  %16 = load %struct.qtnf_vif*, %struct.qtnf_vif** %4, align 8
  %17 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.qtnf_vif*, %struct.qtnf_vif** %4, align 8
  %22 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @QLINK_CMD_CHAN_GET, align 4
  %25 = call %struct.sk_buff* @qtnf_cmd_alloc_new_cmdskb(i32 %20, i32 %23, i32 %24, i32 4)
  store %struct.sk_buff* %25, %struct.sk_buff** %8, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %27 = icmp ne %struct.sk_buff* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %59

31:                                               ; preds = %2
  %32 = load %struct.qtnf_bus*, %struct.qtnf_bus** %6, align 8
  %33 = call i32 @qtnf_bus_lock(%struct.qtnf_bus* %32)
  %34 = load %struct.qtnf_bus*, %struct.qtnf_bus** %6, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %36 = call i32 @qtnf_cmd_send_with_reply(%struct.qtnf_bus* %34, %struct.sk_buff* %35, %struct.sk_buff** %9, i32 4, i32* null)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %53

40:                                               ; preds = %31
  %41 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to %struct.qlink_resp_channel_get*
  store %struct.qlink_resp_channel_get* %44, %struct.qlink_resp_channel_get** %7, align 8
  %45 = load %struct.qtnf_vif*, %struct.qtnf_vif** %4, align 8
  %46 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = call i32 @priv_to_wiphy(%struct.TYPE_2__* %47)
  %49 = load %struct.qlink_resp_channel_get*, %struct.qlink_resp_channel_get** %7, align 8
  %50 = getelementptr inbounds %struct.qlink_resp_channel_get, %struct.qlink_resp_channel_get* %49, i32 0, i32 0
  %51 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %52 = call i32 @qlink_chandef_q2cfg(i32 %48, i32* %50, %struct.cfg80211_chan_def* %51)
  br label %53

53:                                               ; preds = %40, %39
  %54 = load %struct.qtnf_bus*, %struct.qtnf_bus** %6, align 8
  %55 = call i32 @qtnf_bus_unlock(%struct.qtnf_bus* %54)
  %56 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %57 = call i32 @consume_skb(%struct.sk_buff* %56)
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %53, %28
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.sk_buff* @qtnf_cmd_alloc_new_cmdskb(i32, i32, i32, i32) #1

declare dso_local i32 @qtnf_bus_lock(%struct.qtnf_bus*) #1

declare dso_local i32 @qtnf_cmd_send_with_reply(%struct.qtnf_bus*, %struct.sk_buff*, %struct.sk_buff**, i32, i32*) #1

declare dso_local i32 @qlink_chandef_q2cfg(i32, i32*, %struct.cfg80211_chan_def*) #1

declare dso_local i32 @priv_to_wiphy(%struct.TYPE_2__*) #1

declare dso_local i32 @qtnf_bus_unlock(%struct.qtnf_bus*) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
