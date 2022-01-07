; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_hard_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_hard_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { %struct.qeth_card* }
%struct.qeth_card = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.qeth_qdio_out_q** }
%struct.qeth_qdio_out_q = type { i32 }
%struct.TYPE_4__ = type { i32 }

@qeth_l2_fill_header = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@tx_dropped = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @qeth_l2_hard_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l2_hard_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.qeth_card*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.qeth_qdio_out_q*, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  store %struct.qeth_card* %12, %struct.qeth_card** %6, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = call i64 @skb_get_queue_mapping(%struct.sk_buff* %13)
  store i64 %14, i64* %7, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = call i32 @skb_is_gso(%struct.sk_buff* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = call %struct.TYPE_4__* @qdisc_skb_cb(%struct.sk_buff* %22)
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 4
  br label %25

25:                                               ; preds = %18, %2
  %26 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %27 = call i64 @IS_IQD(%struct.qeth_card* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load %struct.net_device*, %struct.net_device** %5, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i64 @qeth_iqd_translate_txq(%struct.net_device* %30, i64 %31)
  store i64 %32, i64* %7, align 8
  br label %33

33:                                               ; preds = %29, %25
  %34 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %35 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load %struct.qeth_qdio_out_q**, %struct.qeth_qdio_out_q*** %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = getelementptr inbounds %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %37, i64 %38
  %40 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %39, align 8
  store %struct.qeth_qdio_out_q* %40, %struct.qeth_qdio_out_q** %8, align 8
  %41 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %42 = call i64 @IS_OSN(%struct.qeth_card* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %33
  %45 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %8, align 8
  %48 = call i32 @qeth_l2_xmit_osn(%struct.qeth_card* %45, %struct.sk_buff* %46, %struct.qeth_qdio_out_q* %47)
  store i32 %48, i32* %9, align 4
  br label %57

49:                                               ; preds = %33
  %50 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %8, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = call i32 @qeth_get_ip_version(%struct.sk_buff* %53)
  %55 = load i32, i32* @qeth_l2_fill_header, align 4
  %56 = call i32 @qeth_xmit(%struct.qeth_card* %50, %struct.sk_buff* %51, %struct.qeth_qdio_out_q* %52, i32 %54, i32 %55)
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %49, %44
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %61, i32* %3, align 4
  br label %69

62:                                               ; preds = %57
  %63 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %8, align 8
  %64 = load i32, i32* @tx_dropped, align 4
  %65 = call i32 @QETH_TXQ_STAT_INC(%struct.qeth_qdio_out_q* %63, i32 %64)
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = call i32 @kfree_skb(%struct.sk_buff* %66)
  %68 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %62, %60
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i64 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i32 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @qdisc_skb_cb(%struct.sk_buff*) #1

declare dso_local i64 @IS_IQD(%struct.qeth_card*) #1

declare dso_local i64 @qeth_iqd_translate_txq(%struct.net_device*, i64) #1

declare dso_local i64 @IS_OSN(%struct.qeth_card*) #1

declare dso_local i32 @qeth_l2_xmit_osn(%struct.qeth_card*, %struct.sk_buff*, %struct.qeth_qdio_out_q*) #1

declare dso_local i32 @qeth_xmit(%struct.qeth_card*, %struct.sk_buff*, %struct.qeth_qdio_out_q*, i32, i32) #1

declare dso_local i32 @qeth_get_ip_version(%struct.sk_buff*) #1

declare dso_local i32 @QETH_TXQ_STAT_INC(%struct.qeth_qdio_out_q*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
