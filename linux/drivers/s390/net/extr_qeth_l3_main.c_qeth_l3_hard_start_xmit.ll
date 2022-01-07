; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_hard_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_hard_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32 }
%struct.net_device = type { i32, %struct.qeth_card* }
%struct.qeth_card = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.qeth_qdio_out_q** }
%struct.qeth_qdio_out_q = type { i32 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_6__ = type { i32 }

@QETH_CQ_ENABLED = common dso_local global i64 0, align 8
@ETH_P_AF_IUCV = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@RTN_BROADCAST = common dso_local global i64 0, align 8
@qeth_l3_fill_header = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@tx_dropped = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @qeth_l3_hard_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_hard_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.qeth_card*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.qeth_qdio_out_q*, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 1
  %13 = load %struct.qeth_card*, %struct.qeth_card** %12, align 8
  store %struct.qeth_card* %13, %struct.qeth_card** %6, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call i64 @skb_get_queue_mapping(%struct.sk_buff* %14)
  store i64 %15, i64* %7, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = call i32 @qeth_get_ip_version(%struct.sk_buff* %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = call i32 @skb_is_gso(%struct.sk_buff* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %2
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = call %struct.TYPE_6__* @qdisc_skb_cb(%struct.sk_buff* %25)
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  br label %28

28:                                               ; preds = %21, %2
  %29 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %30 = call i64 @IS_IQD(%struct.qeth_card* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %74

32:                                               ; preds = %28
  %33 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %34 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.qeth_qdio_out_q**, %struct.qeth_qdio_out_q*** %35, align 8
  %37 = load %struct.net_device*, %struct.net_device** %5, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i64 @qeth_iqd_translate_txq(%struct.net_device* %37, i64 %38)
  %40 = getelementptr inbounds %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %36, i64 %39
  %41 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %40, align 8
  store %struct.qeth_qdio_out_q* %41, %struct.qeth_qdio_out_q** %9, align 8
  %42 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %43 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %32
  br label %121

48:                                               ; preds = %32
  %49 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %50 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @QETH_CQ_ENABLED, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %55, %48
  %59 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %60 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @QETH_CQ_ENABLED, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %58
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* @ETH_P_AF_IUCV, align 4
  %70 = call i64 @htons(i32 %69)
  %71 = icmp ne i64 %68, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %65, %55
  br label %121

73:                                               ; preds = %65, %58
  br label %82

74:                                               ; preds = %28
  %75 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %76 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load %struct.qeth_qdio_out_q**, %struct.qeth_qdio_out_q*** %77, align 8
  %79 = load i64, i64* %7, align 8
  %80 = getelementptr inbounds %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %78, i64 %79
  %81 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %80, align 8
  store %struct.qeth_qdio_out_q* %81, %struct.qeth_qdio_out_q** %9, align 8
  br label %82

82:                                               ; preds = %74, %73
  %83 = load %struct.net_device*, %struct.net_device** %5, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @IFF_BROADCAST, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %82
  %90 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %91 = call i64 @qeth_l3_get_cast_type(%struct.sk_buff* %90)
  %92 = load i64, i64* @RTN_BROADCAST, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  br label %121

95:                                               ; preds = %89, %82
  %96 = load i32, i32* %8, align 4
  %97 = icmp eq i32 %96, 4
  br i1 %97, label %102, label %98

98:                                               ; preds = %95
  %99 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %100 = call i64 @IS_IQD(%struct.qeth_card* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %98, %95
  %103 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %104 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %105 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %9, align 8
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @qeth_l3_xmit(%struct.qeth_card* %103, %struct.sk_buff* %104, %struct.qeth_qdio_out_q* %105, i32 %106)
  store i32 %107, i32* %10, align 4
  br label %115

108:                                              ; preds = %98
  %109 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %110 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %111 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %9, align 8
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @qeth_l3_fill_header, align 4
  %114 = call i32 @qeth_xmit(%struct.qeth_card* %109, %struct.sk_buff* %110, %struct.qeth_qdio_out_q* %111, i32 %112, i32 %113)
  store i32 %114, i32* %10, align 4
  br label %115

115:                                              ; preds = %108, %102
  %116 = load i32, i32* %10, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %115
  %119 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %119, i32* %3, align 4
  br label %128

120:                                              ; preds = %115
  br label %121

121:                                              ; preds = %120, %94, %72, %47
  %122 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %9, align 8
  %123 = load i32, i32* @tx_dropped, align 4
  %124 = call i32 @QETH_TXQ_STAT_INC(%struct.qeth_qdio_out_q* %122, i32 %123)
  %125 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %126 = call i32 @kfree_skb(%struct.sk_buff* %125)
  %127 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %121, %118
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i64 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i32 @qeth_get_ip_version(%struct.sk_buff*) #1

declare dso_local i32 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_6__* @qdisc_skb_cb(%struct.sk_buff*) #1

declare dso_local i64 @IS_IQD(%struct.qeth_card*) #1

declare dso_local i64 @qeth_iqd_translate_txq(%struct.net_device*, i64) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @qeth_l3_get_cast_type(%struct.sk_buff*) #1

declare dso_local i32 @qeth_l3_xmit(%struct.qeth_card*, %struct.sk_buff*, %struct.qeth_qdio_out_q*, i32) #1

declare dso_local i32 @qeth_xmit(%struct.qeth_card*, %struct.sk_buff*, %struct.qeth_qdio_out_q*, i32, i32) #1

declare dso_local i32 @QETH_TXQ_STAT_INC(%struct.qeth_qdio_out_q*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
