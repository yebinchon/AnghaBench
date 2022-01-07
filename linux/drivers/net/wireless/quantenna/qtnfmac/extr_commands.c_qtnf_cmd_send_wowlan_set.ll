; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_send_wowlan_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_send_wowlan_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_vif = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.qtnf_bus* }
%struct.qtnf_bus = type { i32 }
%struct.cfg80211_wowlan = type { i32, %struct.TYPE_4__*, i64, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sk_buff = type { i64 }
%struct.qlink_cmd_wowlan_set = type { i32 }

@QLINK_CMD_WOWLAN_SET = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QLINK_WOWLAN_TRIG_DISCONNECT = common dso_local global i32 0, align 4
@QLINK_WOWLAN_TRIG_MAGIC_PKT = common dso_local global i32 0, align 4
@QLINK_WOWLAN_TRIG_PATTERN_PKT = common dso_local global i32 0, align 4
@QTN_TLV_ID_WOWLAN_PATTERN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qtnf_cmd_send_wowlan_set(%struct.qtnf_vif* %0, %struct.cfg80211_wowlan* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qtnf_vif*, align 8
  %5 = alloca %struct.cfg80211_wowlan*, align 8
  %6 = alloca %struct.qtnf_bus*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.qlink_cmd_wowlan_set*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.qtnf_vif* %0, %struct.qtnf_vif** %4, align 8
  store %struct.cfg80211_wowlan* %1, %struct.cfg80211_wowlan** %5, align 8
  %12 = load %struct.qtnf_vif*, %struct.qtnf_vif** %4, align 8
  %13 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load %struct.qtnf_bus*, %struct.qtnf_bus** %15, align 8
  store %struct.qtnf_bus* %16, %struct.qtnf_bus** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %17 = load %struct.qtnf_vif*, %struct.qtnf_vif** %4, align 8
  %18 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.qtnf_vif*, %struct.qtnf_vif** %4, align 8
  %23 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @QLINK_CMD_WOWLAN_SET, align 4
  %26 = call %struct.sk_buff* @qtnf_cmd_alloc_new_cmdskb(i32 %21, i32 %24, i32 %25, i32 4)
  store %struct.sk_buff* %26, %struct.sk_buff** %7, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %28 = icmp ne %struct.sk_buff* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %119

32:                                               ; preds = %2
  %33 = load %struct.qtnf_bus*, %struct.qtnf_bus** %6, align 8
  %34 = call i32 @qtnf_bus_lock(%struct.qtnf_bus* %33)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.qlink_cmd_wowlan_set*
  store %struct.qlink_cmd_wowlan_set* %38, %struct.qlink_cmd_wowlan_set** %8, align 8
  %39 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %5, align 8
  %40 = icmp ne %struct.cfg80211_wowlan* %39, null
  br i1 %40, label %41, label %103

41:                                               ; preds = %32
  %42 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %5, align 8
  %43 = getelementptr inbounds %struct.cfg80211_wowlan, %struct.cfg80211_wowlan* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32, i32* @QLINK_WOWLAN_TRIG_DISCONNECT, align 4
  %48 = load i32, i32* %9, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %46, %41
  %51 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %5, align 8
  %52 = getelementptr inbounds %struct.cfg80211_wowlan, %struct.cfg80211_wowlan* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i32, i32* @QLINK_WOWLAN_TRIG_MAGIC_PKT, align 4
  %57 = load i32, i32* %9, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %55, %50
  %60 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %5, align 8
  %61 = getelementptr inbounds %struct.cfg80211_wowlan, %struct.cfg80211_wowlan* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %102

64:                                               ; preds = %59
  %65 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %5, align 8
  %66 = getelementptr inbounds %struct.cfg80211_wowlan, %struct.cfg80211_wowlan* %65, i32 0, i32 1
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = icmp ne %struct.TYPE_4__* %67, null
  br i1 %68, label %69, label %102

69:                                               ; preds = %64
  %70 = load i32, i32* @QLINK_WOWLAN_TRIG_PATTERN_PKT, align 4
  %71 = load i32, i32* %9, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %79, %69
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %5, align 8
  %76 = getelementptr inbounds %struct.cfg80211_wowlan, %struct.cfg80211_wowlan* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %101

79:                                               ; preds = %73
  %80 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %81 = load i32, i32* @QTN_TLV_ID_WOWLAN_PATTERN, align 4
  %82 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %5, align 8
  %83 = getelementptr inbounds %struct.cfg80211_wowlan, %struct.cfg80211_wowlan* %82, i32 0, i32 1
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %5, align 8
  %91 = getelementptr inbounds %struct.cfg80211_wowlan, %struct.cfg80211_wowlan* %90, i32 0, i32 1
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @qtnf_cmd_skb_put_tlv_arr(%struct.sk_buff* %80, i32 %81, i32 %89, i32 %97)
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %10, align 4
  br label %73

101:                                              ; preds = %73
  br label %102

102:                                              ; preds = %101, %64, %59
  br label %103

103:                                              ; preds = %102, %32
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @cpu_to_le32(i32 %104)
  %106 = load %struct.qlink_cmd_wowlan_set*, %struct.qlink_cmd_wowlan_set** %8, align 8
  %107 = getelementptr inbounds %struct.qlink_cmd_wowlan_set, %struct.qlink_cmd_wowlan_set* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  %108 = load %struct.qtnf_bus*, %struct.qtnf_bus** %6, align 8
  %109 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %110 = call i32 @qtnf_cmd_send(%struct.qtnf_bus* %108, %struct.sk_buff* %109)
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* %11, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %103
  br label %115

114:                                              ; preds = %103
  br label %115

115:                                              ; preds = %114, %113
  %116 = load %struct.qtnf_bus*, %struct.qtnf_bus** %6, align 8
  %117 = call i32 @qtnf_bus_unlock(%struct.qtnf_bus* %116)
  %118 = load i32, i32* %11, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %115, %29
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local %struct.sk_buff* @qtnf_cmd_alloc_new_cmdskb(i32, i32, i32, i32) #1

declare dso_local i32 @qtnf_bus_lock(%struct.qtnf_bus*) #1

declare dso_local i32 @qtnf_cmd_skb_put_tlv_arr(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @qtnf_cmd_send(%struct.qtnf_bus*, %struct.sk_buff*) #1

declare dso_local i32 @qtnf_bus_unlock(%struct.qtnf_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
