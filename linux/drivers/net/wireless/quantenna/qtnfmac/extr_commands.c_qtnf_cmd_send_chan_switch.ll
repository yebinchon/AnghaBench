; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_send_chan_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_send_chan_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_vif = type { i32, %struct.qtnf_wmac* }
%struct.qtnf_wmac = type { i32, i32 }
%struct.cfg80211_csa_settings = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.qlink_cmd_chan_switch = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i64 }

@QLINK_CMD_CHAN_SWITCH = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qtnf_cmd_send_chan_switch(%struct.qtnf_vif* %0, %struct.cfg80211_csa_settings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qtnf_vif*, align 8
  %5 = alloca %struct.cfg80211_csa_settings*, align 8
  %6 = alloca %struct.qtnf_wmac*, align 8
  %7 = alloca %struct.qlink_cmd_chan_switch*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  store %struct.qtnf_vif* %0, %struct.qtnf_vif** %4, align 8
  store %struct.cfg80211_csa_settings* %1, %struct.cfg80211_csa_settings** %5, align 8
  %10 = load %struct.qtnf_vif*, %struct.qtnf_vif** %4, align 8
  %11 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %10, i32 0, i32 1
  %12 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %11, align 8
  store %struct.qtnf_wmac* %12, %struct.qtnf_wmac** %6, align 8
  %13 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %6, align 8
  %14 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.qtnf_vif*, %struct.qtnf_vif** %4, align 8
  %17 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @QLINK_CMD_CHAN_SWITCH, align 4
  %20 = call %struct.sk_buff* @qtnf_cmd_alloc_new_cmdskb(i32 %15, i32 %18, i32 %19, i32 16)
  store %struct.sk_buff* %20, %struct.sk_buff** %8, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %74

26:                                               ; preds = %2
  %27 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %6, align 8
  %28 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @qtnf_bus_lock(i32 %29)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.qlink_cmd_chan_switch*
  store %struct.qlink_cmd_chan_switch* %34, %struct.qlink_cmd_chan_switch** %7, align 8
  %35 = load %struct.cfg80211_csa_settings*, %struct.cfg80211_csa_settings** %5, align 8
  %36 = getelementptr inbounds %struct.cfg80211_csa_settings, %struct.cfg80211_csa_settings* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @cpu_to_le16(i32 %40)
  %42 = load %struct.qlink_cmd_chan_switch*, %struct.qlink_cmd_chan_switch** %7, align 8
  %43 = getelementptr inbounds %struct.qlink_cmd_chan_switch, %struct.qlink_cmd_chan_switch* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load %struct.cfg80211_csa_settings*, %struct.cfg80211_csa_settings** %5, align 8
  %45 = getelementptr inbounds %struct.cfg80211_csa_settings, %struct.cfg80211_csa_settings* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.qlink_cmd_chan_switch*, %struct.qlink_cmd_chan_switch** %7, align 8
  %48 = getelementptr inbounds %struct.qlink_cmd_chan_switch, %struct.qlink_cmd_chan_switch* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load %struct.cfg80211_csa_settings*, %struct.cfg80211_csa_settings** %5, align 8
  %50 = getelementptr inbounds %struct.cfg80211_csa_settings, %struct.cfg80211_csa_settings* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.qlink_cmd_chan_switch*, %struct.qlink_cmd_chan_switch** %7, align 8
  %53 = getelementptr inbounds %struct.qlink_cmd_chan_switch, %struct.qlink_cmd_chan_switch* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.cfg80211_csa_settings*, %struct.cfg80211_csa_settings** %5, align 8
  %55 = getelementptr inbounds %struct.cfg80211_csa_settings, %struct.cfg80211_csa_settings* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.qlink_cmd_chan_switch*, %struct.qlink_cmd_chan_switch** %7, align 8
  %58 = getelementptr inbounds %struct.qlink_cmd_chan_switch, %struct.qlink_cmd_chan_switch* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %6, align 8
  %60 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %63 = call i32 @qtnf_cmd_send(i32 %61, %struct.sk_buff* %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %26
  br label %68

67:                                               ; preds = %26
  br label %68

68:                                               ; preds = %67, %66
  %69 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %6, align 8
  %70 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @qtnf_bus_unlock(i32 %71)
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %68, %23
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.sk_buff* @qtnf_cmd_alloc_new_cmdskb(i32, i32, i32, i32) #1

declare dso_local i32 @qtnf_bus_lock(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @qtnf_cmd_send(i32, %struct.sk_buff*) #1

declare dso_local i32 @qtnf_bus_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
