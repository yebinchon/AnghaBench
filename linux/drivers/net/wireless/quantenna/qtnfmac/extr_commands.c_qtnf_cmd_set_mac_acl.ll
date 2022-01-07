; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_set_mac_acl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_set_mac_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_vif = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.qtnf_bus* }
%struct.qtnf_bus = type { i32 }
%struct.cfg80211_acl_data = type { i32 }
%struct.sk_buff = type { i32 }
%struct.qlink_tlv_hdr = type { i64, i8*, i8* }
%struct.qlink_acl_data = type { i32 }

@mac_addrs = common dso_local global i32 0, align 4
@QLINK_CMD_SET_MAC_ACL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QTN_TLV_ID_ACL_DATA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qtnf_cmd_set_mac_acl(%struct.qtnf_vif* %0, %struct.cfg80211_acl_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qtnf_vif*, align 8
  %5 = alloca %struct.cfg80211_acl_data*, align 8
  %6 = alloca %struct.qtnf_bus*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.qlink_tlv_hdr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.qtnf_vif* %0, %struct.qtnf_vif** %4, align 8
  store %struct.cfg80211_acl_data* %1, %struct.cfg80211_acl_data** %5, align 8
  %11 = load %struct.qtnf_vif*, %struct.qtnf_vif** %4, align 8
  %12 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load %struct.qtnf_bus*, %struct.qtnf_bus** %14, align 8
  store %struct.qtnf_bus* %15, %struct.qtnf_bus** %6, align 8
  %16 = load %struct.cfg80211_acl_data*, %struct.cfg80211_acl_data** %5, align 8
  %17 = load i32, i32* @mac_addrs, align 4
  %18 = load %struct.cfg80211_acl_data*, %struct.cfg80211_acl_data** %5, align 8
  %19 = getelementptr inbounds %struct.cfg80211_acl_data, %struct.cfg80211_acl_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @struct_size(%struct.cfg80211_acl_data* %16, i32 %17, i32 %20)
  store i64 %21, i64* %9, align 8
  %22 = load %struct.qtnf_vif*, %struct.qtnf_vif** %4, align 8
  %23 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.qtnf_vif*, %struct.qtnf_vif** %4, align 8
  %28 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @QLINK_CMD_SET_MAC_ACL, align 4
  %31 = call %struct.sk_buff* @qtnf_cmd_alloc_new_cmdskb(i32 %26, i32 %29, i32 %30, i32 4)
  store %struct.sk_buff* %31, %struct.sk_buff** %7, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %33 = icmp ne %struct.sk_buff* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %2
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %70

37:                                               ; preds = %2
  %38 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %39 = load i64, i64* %9, align 8
  %40 = add i64 24, %39
  %41 = trunc i64 %40 to i32
  %42 = call %struct.qlink_tlv_hdr* @skb_put(%struct.sk_buff* %38, i32 %41)
  store %struct.qlink_tlv_hdr* %42, %struct.qlink_tlv_hdr** %8, align 8
  %43 = load i64, i64* @QTN_TLV_ID_ACL_DATA, align 8
  %44 = call i8* @cpu_to_le16(i64 %43)
  %45 = load %struct.qlink_tlv_hdr*, %struct.qlink_tlv_hdr** %8, align 8
  %46 = getelementptr inbounds %struct.qlink_tlv_hdr, %struct.qlink_tlv_hdr* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  %47 = load i64, i64* %9, align 8
  %48 = call i8* @cpu_to_le16(i64 %47)
  %49 = load %struct.qlink_tlv_hdr*, %struct.qlink_tlv_hdr** %8, align 8
  %50 = getelementptr inbounds %struct.qlink_tlv_hdr, %struct.qlink_tlv_hdr* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load %struct.cfg80211_acl_data*, %struct.cfg80211_acl_data** %5, align 8
  %52 = load %struct.qlink_tlv_hdr*, %struct.qlink_tlv_hdr** %8, align 8
  %53 = getelementptr inbounds %struct.qlink_tlv_hdr, %struct.qlink_tlv_hdr* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to %struct.qlink_acl_data*
  %56 = call i32 @qlink_acl_data_cfg2q(%struct.cfg80211_acl_data* %51, %struct.qlink_acl_data* %55)
  %57 = load %struct.qtnf_bus*, %struct.qtnf_bus** %6, align 8
  %58 = call i32 @qtnf_bus_lock(%struct.qtnf_bus* %57)
  %59 = load %struct.qtnf_bus*, %struct.qtnf_bus** %6, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %61 = call i32 @qtnf_cmd_send(%struct.qtnf_bus* %59, %struct.sk_buff* %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %37
  br label %66

65:                                               ; preds = %37
  br label %66

66:                                               ; preds = %65, %64
  %67 = load %struct.qtnf_bus*, %struct.qtnf_bus** %6, align 8
  %68 = call i32 @qtnf_bus_unlock(%struct.qtnf_bus* %67)
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %66, %34
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i64 @struct_size(%struct.cfg80211_acl_data*, i32, i32) #1

declare dso_local %struct.sk_buff* @qtnf_cmd_alloc_new_cmdskb(i32, i32, i32, i32) #1

declare dso_local %struct.qlink_tlv_hdr* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @qlink_acl_data_cfg2q(%struct.cfg80211_acl_data*, %struct.qlink_acl_data*) #1

declare dso_local i32 @qtnf_bus_lock(%struct.qtnf_bus*) #1

declare dso_local i32 @qtnf_cmd_send(%struct.qtnf_bus*, %struct.sk_buff*) #1

declare dso_local i32 @qtnf_bus_unlock(%struct.qtnf_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
