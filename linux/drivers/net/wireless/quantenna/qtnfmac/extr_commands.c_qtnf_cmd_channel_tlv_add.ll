; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_channel_tlv_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_channel_tlv_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ieee80211_channel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qlink_tlv_channel = type { %struct.TYPE_2__, %struct.qlink_channel }
%struct.TYPE_2__ = type { i8*, i8* }
%struct.qlink_channel = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8* }

@QTN_TLV_ID_CHANNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.ieee80211_channel*)* @qtnf_cmd_channel_tlv_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qtnf_cmd_channel_tlv_add(%struct.sk_buff* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca %struct.qlink_tlv_channel*, align 8
  %6 = alloca %struct.qlink_channel*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = call %struct.qlink_tlv_channel* @skb_put_zero(%struct.sk_buff* %7, i32 64)
  store %struct.qlink_tlv_channel* %8, %struct.qlink_tlv_channel** %5, align 8
  %9 = load %struct.qlink_tlv_channel*, %struct.qlink_tlv_channel** %5, align 8
  %10 = getelementptr inbounds %struct.qlink_tlv_channel, %struct.qlink_tlv_channel* %9, i32 0, i32 1
  store %struct.qlink_channel* %10, %struct.qlink_channel** %6, align 8
  %11 = load i32, i32* @QTN_TLV_ID_CHANNEL, align 4
  %12 = call i8* @cpu_to_le16(i32 %11)
  %13 = load %struct.qlink_tlv_channel*, %struct.qlink_tlv_channel** %5, align 8
  %14 = getelementptr inbounds %struct.qlink_tlv_channel, %struct.qlink_tlv_channel* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store i8* %12, i8** %15, align 8
  %16 = call i8* @cpu_to_le16(i32 48)
  %17 = load %struct.qlink_tlv_channel*, %struct.qlink_tlv_channel** %5, align 8
  %18 = getelementptr inbounds %struct.qlink_tlv_channel, %struct.qlink_tlv_channel* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i8* %16, i8** %19, align 8
  %20 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %21 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @cpu_to_le16(i32 %22)
  %24 = load %struct.qlink_channel*, %struct.qlink_channel** %6, align 8
  %25 = getelementptr inbounds %struct.qlink_channel, %struct.qlink_channel* %24, i32 0, i32 8
  store i8* %23, i8** %25, align 8
  %26 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %27 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @cpu_to_le16(i32 %28)
  %30 = load %struct.qlink_channel*, %struct.qlink_channel** %6, align 8
  %31 = getelementptr inbounds %struct.qlink_channel, %struct.qlink_channel* %30, i32 0, i32 7
  store i8* %29, i8** %31, align 8
  %32 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %33 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %32, i32 0, i32 8
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @qlink_utils_band_cfg2q(i32 %34)
  %36 = load %struct.qlink_channel*, %struct.qlink_channel** %6, align 8
  %37 = getelementptr inbounds %struct.qlink_channel, %struct.qlink_channel* %36, i32 0, i32 6
  store i32 %35, i32* %37, align 8
  %38 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %39 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.qlink_channel*, %struct.qlink_channel** %6, align 8
  %42 = getelementptr inbounds %struct.qlink_channel, %struct.qlink_channel* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 4
  %43 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %44 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.qlink_channel*, %struct.qlink_channel** %6, align 8
  %47 = getelementptr inbounds %struct.qlink_channel, %struct.qlink_channel* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 8
  %48 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %49 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.qlink_channel*, %struct.qlink_channel** %6, align 8
  %52 = getelementptr inbounds %struct.qlink_channel, %struct.qlink_channel* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %54 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.qlink_channel*, %struct.qlink_channel** %6, align 8
  %57 = getelementptr inbounds %struct.qlink_channel, %struct.qlink_channel* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %59 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @qlink_utils_dfs_state_cfg2q(i32 %60)
  %62 = load %struct.qlink_channel*, %struct.qlink_channel** %6, align 8
  %63 = getelementptr inbounds %struct.qlink_channel, %struct.qlink_channel* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %65 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @qlink_utils_chflags_cfg2q(i32 %66)
  %68 = call i32 @cpu_to_le32(i32 %67)
  %69 = load %struct.qlink_channel*, %struct.qlink_channel** %6, align 8
  %70 = getelementptr inbounds %struct.qlink_channel, %struct.qlink_channel* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  ret void
}

declare dso_local %struct.qlink_tlv_channel* @skb_put_zero(%struct.sk_buff*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @qlink_utils_band_cfg2q(i32) #1

declare dso_local i32 @qlink_utils_dfs_state_cfg2q(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @qlink_utils_chflags_cfg2q(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
