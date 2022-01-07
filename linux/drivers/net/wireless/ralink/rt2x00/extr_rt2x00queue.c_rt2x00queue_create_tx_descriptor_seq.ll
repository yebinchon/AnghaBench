; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00queue.c_rt2x00queue_create_tx_descriptor_seq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00queue.c_rt2x00queue_create_tx_descriptor_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.sk_buff = type { i64 }
%struct.txentry_desc = type { i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_hdr = type { i32, i32 }
%struct.rt2x00_intf = type { i32 }

@IEEE80211_TX_CTL_ASSIGN_SEQ = common dso_local global i32 0, align 4
@ENTRY_TXD_GENERATE_SEQ = common dso_local global i32 0, align 4
@REQUIRE_SW_SEQNO = common dso_local global i32 0, align 4
@ENTRY_TXD_FIRST_FRAGMENT = common dso_local global i32 0, align 4
@IEEE80211_SCTL_FRAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.sk_buff*, %struct.txentry_desc*)* @rt2x00queue_create_tx_descriptor_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2x00queue_create_tx_descriptor_seq(%struct.rt2x00_dev* %0, %struct.sk_buff* %1, %struct.txentry_desc* %2) #0 {
  %4 = alloca %struct.rt2x00_dev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.txentry_desc*, align 8
  %7 = alloca %struct.ieee80211_tx_info*, align 8
  %8 = alloca %struct.ieee80211_hdr*, align 8
  %9 = alloca %struct.rt2x00_intf*, align 8
  %10 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.txentry_desc* %2, %struct.txentry_desc** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %11)
  store %struct.ieee80211_tx_info* %12, %struct.ieee80211_tx_info** %7, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %16, %struct.ieee80211_hdr** %8, align 8
  %17 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %18 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.rt2x00_intf* @vif_to_intf(i32 %20)
  store %struct.rt2x00_intf* %21, %struct.rt2x00_intf** %9, align 8
  %22 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %23 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IEEE80211_TX_CTL_ASSIGN_SEQ, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %3
  br label %81

29:                                               ; preds = %3
  %30 = load i32, i32* @ENTRY_TXD_GENERATE_SEQ, align 4
  %31 = load %struct.txentry_desc*, %struct.txentry_desc** %6, align 8
  %32 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %31, i32 0, i32 0
  %33 = call i32 @__set_bit(i32 %30, i32* %32)
  %34 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %35 = load i32, i32* @REQUIRE_SW_SEQNO, align 4
  %36 = call i32 @rt2x00_has_cap_flag(%struct.rt2x00_dev* %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %54, label %38

38:                                               ; preds = %29
  %39 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %40 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @ieee80211_is_beacon(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load i32, i32* @ENTRY_TXD_GENERATE_SEQ, align 4
  %46 = load %struct.txentry_desc*, %struct.txentry_desc** %6, align 8
  %47 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %46, i32 0, i32 0
  %48 = call i32 @__set_bit(i32 %45, i32* %47)
  br label %81

49:                                               ; preds = %38
  %50 = load i32, i32* @ENTRY_TXD_GENERATE_SEQ, align 4
  %51 = load %struct.txentry_desc*, %struct.txentry_desc** %6, align 8
  %52 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %51, i32 0, i32 0
  %53 = call i32 @__clear_bit(i32 %50, i32* %52)
  br label %54

54:                                               ; preds = %49, %29
  %55 = load i32, i32* @ENTRY_TXD_FIRST_FRAGMENT, align 4
  %56 = load %struct.txentry_desc*, %struct.txentry_desc** %6, align 8
  %57 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %56, i32 0, i32 0
  %58 = call i64 @test_bit(i32 %55, i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load %struct.rt2x00_intf*, %struct.rt2x00_intf** %9, align 8
  %62 = getelementptr inbounds %struct.rt2x00_intf, %struct.rt2x00_intf* %61, i32 0, i32 0
  %63 = call i32 @atomic_add_return(i32 16, i32* %62)
  store i32 %63, i32* %10, align 4
  br label %68

64:                                               ; preds = %54
  %65 = load %struct.rt2x00_intf*, %struct.rt2x00_intf** %9, align 8
  %66 = getelementptr inbounds %struct.rt2x00_intf, %struct.rt2x00_intf* %65, i32 0, i32 0
  %67 = call i32 @atomic_read(i32* %66)
  store i32 %67, i32* %10, align 4
  br label %68

68:                                               ; preds = %64, %60
  %69 = load i32, i32* @IEEE80211_SCTL_FRAG, align 4
  %70 = call i32 @cpu_to_le16(i32 %69)
  %71 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %72 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @cpu_to_le16(i32 %75)
  %77 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %78 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %68, %44, %28
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.rt2x00_intf* @vif_to_intf(i32) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i32 @rt2x00_has_cap_flag(%struct.rt2x00_dev*, i32) #1

declare dso_local i64 @ieee80211_is_beacon(i32) #1

declare dso_local i32 @__clear_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @atomic_add_return(i32, i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
