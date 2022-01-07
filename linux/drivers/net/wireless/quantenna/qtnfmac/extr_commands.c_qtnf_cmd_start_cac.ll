; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_start_cac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_start_cac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_vif = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.qtnf_bus* }
%struct.qtnf_bus = type { i32 }
%struct.cfg80211_chan_def = type { i32 }
%struct.sk_buff = type { i64 }
%struct.qlink_cmd_start_cac = type { i32, i32 }

@QLINK_CMD_START_CAC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qtnf_cmd_start_cac(%struct.qtnf_vif* %0, %struct.cfg80211_chan_def* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qtnf_vif*, align 8
  %6 = alloca %struct.cfg80211_chan_def*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qtnf_bus*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.qlink_cmd_start_cac*, align 8
  %11 = alloca i32, align 4
  store %struct.qtnf_vif* %0, %struct.qtnf_vif** %5, align 8
  store %struct.cfg80211_chan_def* %1, %struct.cfg80211_chan_def** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.qtnf_vif*, %struct.qtnf_vif** %5, align 8
  %13 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load %struct.qtnf_bus*, %struct.qtnf_bus** %15, align 8
  store %struct.qtnf_bus* %16, %struct.qtnf_bus** %8, align 8
  %17 = load %struct.qtnf_vif*, %struct.qtnf_vif** %5, align 8
  %18 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.qtnf_vif*, %struct.qtnf_vif** %5, align 8
  %23 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @QLINK_CMD_START_CAC, align 4
  %26 = call %struct.sk_buff* @qtnf_cmd_alloc_new_cmdskb(i32 %21, i32 %24, i32 %25, i32 8)
  store %struct.sk_buff* %26, %struct.sk_buff** %9, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %28 = icmp ne %struct.sk_buff* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %3
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %58

32:                                               ; preds = %3
  %33 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.qlink_cmd_start_cac*
  store %struct.qlink_cmd_start_cac* %36, %struct.qlink_cmd_start_cac** %10, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @cpu_to_le32(i32 %37)
  %39 = load %struct.qlink_cmd_start_cac*, %struct.qlink_cmd_start_cac** %10, align 8
  %40 = getelementptr inbounds %struct.qlink_cmd_start_cac, %struct.qlink_cmd_start_cac* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %42 = load %struct.qlink_cmd_start_cac*, %struct.qlink_cmd_start_cac** %10, align 8
  %43 = getelementptr inbounds %struct.qlink_cmd_start_cac, %struct.qlink_cmd_start_cac* %42, i32 0, i32 0
  %44 = call i32 @qlink_chandef_cfg2q(%struct.cfg80211_chan_def* %41, i32* %43)
  %45 = load %struct.qtnf_bus*, %struct.qtnf_bus** %8, align 8
  %46 = call i32 @qtnf_bus_lock(%struct.qtnf_bus* %45)
  %47 = load %struct.qtnf_bus*, %struct.qtnf_bus** %8, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %49 = call i32 @qtnf_cmd_send(%struct.qtnf_bus* %47, %struct.sk_buff* %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %32
  br label %54

53:                                               ; preds = %32
  br label %54

54:                                               ; preds = %53, %52
  %55 = load %struct.qtnf_bus*, %struct.qtnf_bus** %8, align 8
  %56 = call i32 @qtnf_bus_unlock(%struct.qtnf_bus* %55)
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %54, %29
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.sk_buff* @qtnf_cmd_alloc_new_cmdskb(i32, i32, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @qlink_chandef_cfg2q(%struct.cfg80211_chan_def*, i32*) #1

declare dso_local i32 @qtnf_bus_lock(%struct.qtnf_bus*) #1

declare dso_local i32 @qtnf_cmd_send(%struct.qtnf_bus*, %struct.sk_buff*) #1

declare dso_local i32 @qtnf_bus_unlock(%struct.qtnf_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
