; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_xmit.c_set_qos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_xmit.c_set_qos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.pkt_attrib = type { i32, i32, i32, i32 }
%struct.iphdr = type { i32 }

@ETH_HLEN = common dso_local global i32 0, align 4
@ETH_P_PAE = common dso_local global i32 0, align 4
@WLAN_HDR_A3_QOS_LEN = common dso_local global i32 0, align 4
@WIFI_QOS_DATA_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.pkt_attrib*)* @set_qos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_qos(%struct.sk_buff* %0, %struct.pkt_attrib* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.pkt_attrib*, align 8
  %5 = alloca %struct.iphdr, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.pkt_attrib* %1, %struct.pkt_attrib** %4, align 8
  %6 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %7 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 2048
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = load i32, i32* @ETH_HLEN, align 4
  %13 = call i32 @skb_copy_bits(%struct.sk_buff* %11, i32 %12, %struct.iphdr* %5, i32 4)
  %14 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %5, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = ashr i32 %15, 5
  %17 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %18 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  br label %32

19:                                               ; preds = %2
  %20 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %21 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ETH_P_PAE, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %27 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %26, i32 0, i32 1
  store i32 7, i32* %27, align 4
  br label %31

28:                                               ; preds = %19
  %29 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %30 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %29, i32 0, i32 1
  store i32 0, i32* %30, align 4
  br label %31

31:                                               ; preds = %28, %25
  br label %32

32:                                               ; preds = %31, %10
  %33 = load i32, i32* @WLAN_HDR_A3_QOS_LEN, align 4
  %34 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %35 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @WIFI_QOS_DATA_TYPE, align 4
  %37 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %38 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  ret void
}

declare dso_local i32 @skb_copy_bits(%struct.sk_buff*, i32, %struct.iphdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
