; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_tx_complete_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_tx_complete_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_qdio_out_buffer = type { i64, i32, i32, %struct.qeth_qdio_out_q* }
%struct.qeth_qdio_out_q = type { i32 }
%struct.sk_buff = type { i64 }
%struct.TYPE_2__ = type { i32 }

@QETH_QDIO_BUF_IN_CQ = common dso_local global i64 0, align 8
@QETH_QDIO_BUF_PENDING = common dso_local global i64 0, align 8
@TX_NOTIFY_GENERALERROR = common dso_local global i32 0, align 4
@bufs = common dso_local global i32 0, align 4
@buf_elements = common dso_local global i32 0, align 4
@tx_errors = common dso_local global i32 0, align 4
@tx_packets = common dso_local global i32 0, align 4
@tx_bytes = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@skbs_csum = common dso_local global i32 0, align 4
@skbs_sg = common dso_local global i32 0, align 4
@skbs_tso = common dso_local global i32 0, align 4
@tso_bytes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qeth_qdio_out_buffer*, i32, i32)* @qeth_tx_complete_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_tx_complete_buf(%struct.qeth_qdio_out_buffer* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.qeth_qdio_out_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.qeth_qdio_out_q*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.qeth_qdio_out_buffer* %0, %struct.qeth_qdio_out_buffer** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %4, align 8
  %13 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %12, i32 0, i32 3
  %14 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %13, align 8
  store %struct.qeth_qdio_out_q* %14, %struct.qeth_qdio_out_q** %7, align 8
  %15 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %4, align 8
  %16 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %15, i32 0, i32 2
  %17 = call i64 @atomic_read(i32* %16)
  %18 = load i64, i64* @QETH_QDIO_BUF_IN_CQ, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @WARN_ON_ONCE(i32 %20)
  %22 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %4, align 8
  %23 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %22, i32 0, i32 2
  %24 = call i64 @atomic_read(i32* %23)
  %25 = load i64, i64* @QETH_QDIO_BUF_PENDING, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %3
  %28 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %7, align 8
  %29 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %4, align 8
  %30 = load i32, i32* @TX_NOTIFY_GENERALERROR, align 4
  %31 = call i32 @qeth_notify_skbs(%struct.qeth_qdio_out_q* %28, %struct.qeth_qdio_out_buffer* %29, i32 %30)
  br label %32

32:                                               ; preds = %27, %3
  %33 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %4, align 8
  %34 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %119

38:                                               ; preds = %32
  %39 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %7, align 8
  %40 = load i32, i32* @bufs, align 4
  %41 = call i32 @QETH_TXQ_STAT_INC(%struct.qeth_qdio_out_q* %39, i32 %40)
  %42 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %7, align 8
  %43 = load i32, i32* @buf_elements, align 4
  %44 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %4, align 8
  %45 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = call i32 @QETH_TXQ_STAT_ADD(%struct.qeth_qdio_out_q* %42, i32 %43, i32 %47)
  br label %49

49:                                               ; preds = %115, %38
  %50 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %4, align 8
  %51 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %50, i32 0, i32 1
  %52 = call %struct.sk_buff* @__skb_dequeue(i32* %51)
  store %struct.sk_buff* %52, %struct.sk_buff** %8, align 8
  %53 = icmp ne %struct.sk_buff* %52, null
  br i1 %53, label %54, label %119

54:                                               ; preds = %49
  %55 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %56 = call i32 @qdisc_pkt_len(%struct.sk_buff* %55)
  store i32 %56, i32* %9, align 4
  %57 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %58 = call i32 @skb_is_gso(%struct.sk_buff* %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %63 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %62)
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  br label %67

66:                                               ; preds = %54
  br label %67

67:                                               ; preds = %66, %61
  %68 = phi i32 [ %65, %61 ], [ 1, %66 ]
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %7, align 8
  %73 = load i32, i32* @tx_errors, align 4
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @QETH_TXQ_STAT_ADD(%struct.qeth_qdio_out_q* %72, i32 %73, i32 %74)
  br label %115

76:                                               ; preds = %67
  %77 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %7, align 8
  %78 = load i32, i32* @tx_packets, align 4
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @QETH_TXQ_STAT_ADD(%struct.qeth_qdio_out_q* %77, i32 %78, i32 %79)
  %81 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %7, align 8
  %82 = load i32, i32* @tx_bytes, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @QETH_TXQ_STAT_ADD(%struct.qeth_qdio_out_q* %81, i32 %82, i32 %83)
  %85 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %76
  %91 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %7, align 8
  %92 = load i32, i32* @skbs_csum, align 4
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @QETH_TXQ_STAT_ADD(%struct.qeth_qdio_out_q* %91, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %90, %76
  %96 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %97 = call i64 @skb_is_nonlinear(%struct.sk_buff* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %7, align 8
  %101 = load i32, i32* @skbs_sg, align 4
  %102 = call i32 @QETH_TXQ_STAT_INC(%struct.qeth_qdio_out_q* %100, i32 %101)
  br label %103

103:                                              ; preds = %99, %95
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %103
  %107 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %7, align 8
  %108 = load i32, i32* @skbs_tso, align 4
  %109 = call i32 @QETH_TXQ_STAT_INC(%struct.qeth_qdio_out_q* %107, i32 %108)
  %110 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %7, align 8
  %111 = load i32, i32* @tso_bytes, align 4
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @QETH_TXQ_STAT_ADD(%struct.qeth_qdio_out_q* %110, i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %106, %103
  br label %115

115:                                              ; preds = %114, %71
  %116 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @napi_consume_skb(%struct.sk_buff* %116, i32 %117)
  br label %49

119:                                              ; preds = %37, %49
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @qeth_notify_skbs(%struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_buffer*, i32) #1

declare dso_local i32 @QETH_TXQ_STAT_INC(%struct.qeth_qdio_out_q*, i32) #1

declare dso_local i32 @QETH_TXQ_STAT_ADD(%struct.qeth_qdio_out_q*, i32, i32) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(i32*) #1

declare dso_local i32 @qdisc_pkt_len(%struct.sk_buff*) #1

declare dso_local i32 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @skb_is_nonlinear(%struct.sk_buff*) #1

declare dso_local i32 @napi_consume_skb(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
