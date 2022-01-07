; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_fill_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_fill_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_qdio_out_q = type { i32 }
%struct.qeth_hdr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32*, i32 }
%struct.sk_buff = type { i64 }
%struct.vlan_ethhdr = type { i64, i32 }

@QETH_HEADER_TYPE_L2_TSO = common dso_local global i32 0, align 4
@QETH_HEADER_TYPE_LAYER2 = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@RTN_MULTICAST = common dso_local global i32 0, align 4
@QETH_LAYER2_FLAG_MULTICAST = common dso_local global i32 0, align 4
@RTN_BROADCAST = common dso_local global i32 0, align 4
@QETH_LAYER2_FLAG_BROADCAST = common dso_local global i32 0, align 4
@QETH_LAYER2_FLAG_UNICAST = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@QETH_LAYER2_FLAG_VLAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qeth_qdio_out_q*, %struct.qeth_hdr*, %struct.sk_buff*, i32, i32)* @qeth_l2_fill_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_l2_fill_header(%struct.qeth_qdio_out_q* %0, %struct.qeth_hdr* %1, %struct.sk_buff* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.qeth_qdio_out_q*, align 8
  %7 = alloca %struct.qeth_hdr*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.vlan_ethhdr*, align 8
  store %struct.qeth_qdio_out_q* %0, %struct.qeth_qdio_out_q** %6, align 8
  store %struct.qeth_hdr* %1, %struct.qeth_hdr** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %14 = call i32 @qeth_get_ether_cast_type(%struct.sk_buff* %13)
  store i32 %14, i32* %11, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %16 = call %struct.vlan_ethhdr* @vlan_eth_hdr(%struct.sk_buff* %15)
  store %struct.vlan_ethhdr* %16, %struct.vlan_ethhdr** %12, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load %struct.qeth_hdr*, %struct.qeth_hdr** %7, align 8
  %19 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32 %17, i32* %21, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %23 = call i64 @skb_is_gso(%struct.sk_buff* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %5
  %26 = load i32, i32* @QETH_HEADER_TYPE_L2_TSO, align 4
  %27 = load %struct.qeth_hdr*, %struct.qeth_hdr** %7, align 8
  %28 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 3
  store i32 %26, i32* %30, align 8
  br label %53

31:                                               ; preds = %5
  %32 = load i32, i32* @QETH_HEADER_TYPE_LAYER2, align 4
  %33 = load %struct.qeth_hdr*, %struct.qeth_hdr** %7, align 8
  %34 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 3
  store i32 %32, i32* %36, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %31
  %43 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %44 = load %struct.qeth_hdr*, %struct.qeth_hdr** %7, align 8
  %45 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @qeth_tx_csum(%struct.sk_buff* %43, i32* %49, i32 %50)
  br label %52

52:                                               ; preds = %42, %31
  br label %53

53:                                               ; preds = %52, %25
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @RTN_MULTICAST, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %53
  %58 = load i32, i32* @QETH_LAYER2_FLAG_MULTICAST, align 4
  %59 = load %struct.qeth_hdr*, %struct.qeth_hdr** %7, align 8
  %60 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %58
  store i32 %66, i32* %64, align 4
  br label %92

67:                                               ; preds = %53
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @RTN_BROADCAST, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %81

71:                                               ; preds = %67
  %72 = load i32, i32* @QETH_LAYER2_FLAG_BROADCAST, align 4
  %73 = load %struct.qeth_hdr*, %struct.qeth_hdr** %7, align 8
  %74 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %72
  store i32 %80, i32* %78, align 4
  br label %91

81:                                               ; preds = %67
  %82 = load i32, i32* @QETH_LAYER2_FLAG_UNICAST, align 4
  %83 = load %struct.qeth_hdr*, %struct.qeth_hdr** %7, align 8
  %84 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 2
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %82
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %81, %71
  br label %92

92:                                               ; preds = %91, %57
  %93 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %12, align 8
  %94 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* @ETH_P_8021Q, align 4
  %97 = call i64 @__constant_htons(i32 %96)
  %98 = icmp eq i64 %95, %97
  br i1 %98, label %99, label %117

99:                                               ; preds = %92
  %100 = load i32, i32* @QETH_LAYER2_FLAG_VLAN, align 4
  %101 = load %struct.qeth_hdr*, %struct.qeth_hdr** %7, align 8
  %102 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %100
  store i32 %108, i32* %106, align 4
  %109 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %12, align 8
  %110 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @ntohs(i32 %111)
  %113 = load %struct.qeth_hdr*, %struct.qeth_hdr** %7, align 8
  %114 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  store i32 %112, i32* %116, align 4
  br label %117

117:                                              ; preds = %99, %92
  ret void
}

declare dso_local i32 @qeth_get_ether_cast_type(%struct.sk_buff*) #1

declare dso_local %struct.vlan_ethhdr* @vlan_eth_hdr(%struct.sk_buff*) #1

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i32 @qeth_tx_csum(%struct.sk_buff*, i32*, i32) #1

declare dso_local i64 @__constant_htons(i32) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
