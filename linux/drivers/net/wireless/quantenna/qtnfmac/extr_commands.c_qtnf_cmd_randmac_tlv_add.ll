; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_randmac_tlv_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_randmac_tlv_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.qlink_random_mac_addr = type { i32, i32 }
%struct.qlink_tlv_hdr = type { i64, i8*, i8* }

@QTN_TLV_ID_RANDOM_MAC_ADDR = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i32*, i32*)* @qtnf_cmd_randmac_tlv_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qtnf_cmd_randmac_tlv_add(%struct.sk_buff* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.qlink_random_mac_addr*, align 8
  %8 = alloca %struct.qlink_tlv_hdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = call %struct.qlink_tlv_hdr* @skb_put(%struct.sk_buff* %9, i32 32)
  store %struct.qlink_tlv_hdr* %10, %struct.qlink_tlv_hdr** %8, align 8
  %11 = load i32, i32* @QTN_TLV_ID_RANDOM_MAC_ADDR, align 4
  %12 = call i8* @cpu_to_le16(i32 %11)
  %13 = load %struct.qlink_tlv_hdr*, %struct.qlink_tlv_hdr** %8, align 8
  %14 = getelementptr inbounds %struct.qlink_tlv_hdr, %struct.qlink_tlv_hdr* %13, i32 0, i32 2
  store i8* %12, i8** %14, align 8
  %15 = call i8* @cpu_to_le16(i32 8)
  %16 = load %struct.qlink_tlv_hdr*, %struct.qlink_tlv_hdr** %8, align 8
  %17 = getelementptr inbounds %struct.qlink_tlv_hdr, %struct.qlink_tlv_hdr* %16, i32 0, i32 1
  store i8* %15, i8** %17, align 8
  %18 = load %struct.qlink_tlv_hdr*, %struct.qlink_tlv_hdr** %8, align 8
  %19 = getelementptr inbounds %struct.qlink_tlv_hdr, %struct.qlink_tlv_hdr* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.qlink_random_mac_addr*
  store %struct.qlink_random_mac_addr* %21, %struct.qlink_random_mac_addr** %7, align 8
  %22 = load %struct.qlink_random_mac_addr*, %struct.qlink_random_mac_addr** %7, align 8
  %23 = getelementptr inbounds %struct.qlink_random_mac_addr, %struct.qlink_random_mac_addr* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* @ETH_ALEN, align 4
  %27 = call i32 @memcpy(i32 %24, i32* %25, i32 %26)
  %28 = load %struct.qlink_random_mac_addr*, %struct.qlink_random_mac_addr** %7, align 8
  %29 = getelementptr inbounds %struct.qlink_random_mac_addr, %struct.qlink_random_mac_addr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* @ETH_ALEN, align 4
  %33 = call i32 @memcpy(i32 %30, i32* %31, i32 %32)
  ret void
}

declare dso_local %struct.qlink_tlv_hdr* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
