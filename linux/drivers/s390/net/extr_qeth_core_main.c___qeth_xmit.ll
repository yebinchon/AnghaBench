; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c___qeth_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c___qeth_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.qeth_qdio_out_q = type { i64, i32, %struct.qeth_hdr*, i32, %struct.qeth_qdio_out_buffer** }
%struct.qeth_qdio_out_buffer = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.qeth_hdr = type { i32 }
%struct.netdev_queue = type { i32 }

@QETH_QDIO_BUF_EMPTY = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@QETH_QDIO_BUF_PRIMED = common dso_local global i32 0, align 4
@QDIO_MAX_BUFFERS_PER_Q = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, %struct.qeth_qdio_out_q*, %struct.sk_buff*, i32, %struct.qeth_hdr*, i32, i32)* @__qeth_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__qeth_xmit(%struct.qeth_card* %0, %struct.qeth_qdio_out_q* %1, %struct.sk_buff* %2, i32 %3, %struct.qeth_hdr* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.qeth_card*, align 8
  %10 = alloca %struct.qeth_qdio_out_q*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.qeth_hdr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.qeth_qdio_out_buffer*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.netdev_queue*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %9, align 8
  store %struct.qeth_qdio_out_q* %1, %struct.qeth_qdio_out_q** %10, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.qeth_hdr* %4, %struct.qeth_hdr** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %22 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %10, align 8
  %23 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %22, i32 0, i32 4
  %24 = load %struct.qeth_qdio_out_buffer**, %struct.qeth_qdio_out_buffer*** %23, align 8
  %25 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %10, align 8
  %26 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %24, i64 %27
  %29 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %28, align 8
  store %struct.qeth_qdio_out_buffer* %29, %struct.qeth_qdio_out_buffer** %16, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %31 = call i32 @qdisc_pkt_len(%struct.sk_buff* %30)
  store i32 %31, i32* %17, align 4
  store i32 0, i32* %20, align 4
  %32 = load %struct.qeth_card*, %struct.qeth_card** %9, align 8
  %33 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %36 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %35)
  %37 = call %struct.netdev_queue* @netdev_get_tx_queue(i32 %34, i32 %36)
  store %struct.netdev_queue* %37, %struct.netdev_queue** %19, align 8
  %38 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %16, align 8
  %39 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %38, i32 0, i32 2
  %40 = call i64 @atomic_read(i32* %39)
  %41 = load i64, i64* @QETH_QDIO_BUF_EMPTY, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %7
  %44 = load i32, i32* @EBUSY, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %8, align 4
  br label %156

46:                                               ; preds = %7
  %47 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %16, align 8
  %48 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %12, align 4
  %51 = add i32 %49, %50
  %52 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %10, align 8
  %53 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp ugt i32 %51, %54
  br i1 %55, label %63, label %56

56:                                               ; preds = %46
  %57 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %10, align 8
  %58 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %16, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %60 = load %struct.qeth_hdr*, %struct.qeth_hdr** %13, align 8
  %61 = call i32 @qeth_iqd_may_bulk(%struct.qeth_qdio_out_q* %57, %struct.qeth_qdio_out_buffer* %58, %struct.sk_buff* %59, %struct.qeth_hdr* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %87, label %63

63:                                               ; preds = %56, %46
  %64 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %16, align 8
  %65 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %64, i32 0, i32 2
  %66 = load i32, i32* @QETH_QDIO_BUF_PRIMED, align 4
  %67 = call i32 @atomic_set(i32* %65, i32 %66)
  %68 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %10, align 8
  %69 = call i32 @qeth_flush_queue(%struct.qeth_qdio_out_q* %68)
  %70 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %10, align 8
  %71 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %70, i32 0, i32 4
  %72 = load %struct.qeth_qdio_out_buffer**, %struct.qeth_qdio_out_buffer*** %71, align 8
  %73 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %10, align 8
  %74 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %72, i64 %75
  %77 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %76, align 8
  store %struct.qeth_qdio_out_buffer* %77, %struct.qeth_qdio_out_buffer** %16, align 8
  %78 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %16, align 8
  %79 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %78, i32 0, i32 2
  %80 = call i64 @atomic_read(i32* %79)
  %81 = load i64, i64* @QETH_QDIO_BUF_EMPTY, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %63
  %84 = load i32, i32* @EBUSY, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %8, align 4
  br label %156

86:                                               ; preds = %63
  br label %87

87:                                               ; preds = %86, %56
  %88 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %16, align 8
  %89 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %87
  %93 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %10, align 8
  %94 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %93, i32 0, i32 3
  %95 = call i64 @atomic_inc_return(i32* %94)
  %96 = load i64, i64* @QDIO_MAX_BUFFERS_PER_Q, align 8
  %97 = icmp sge i64 %95, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %92
  %99 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %10, align 8
  %100 = load i32, i32* %20, align 4
  %101 = call i32 @QETH_TXQ_STAT_INC(%struct.qeth_qdio_out_q* %99, i32 %100)
  %102 = load %struct.netdev_queue*, %struct.netdev_queue** %19, align 8
  %103 = call i32 @netif_tx_stop_queue(%struct.netdev_queue* %102)
  store i32 1, i32* %20, align 4
  br label %104

104:                                              ; preds = %98, %92, %87
  %105 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %16, align 8
  %106 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %107 = load %struct.qeth_hdr*, %struct.qeth_hdr** %13, align 8
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* %15, align 4
  %110 = call i32 @qeth_fill_buffer(%struct.qeth_qdio_out_buffer* %105, %struct.sk_buff* %106, %struct.qeth_hdr* %107, i32 %108, i32 %109)
  store i32 %110, i32* %18, align 4
  %111 = load i32, i32* %17, align 4
  %112 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %16, align 8
  %113 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = add i32 %114, %111
  store i32 %115, i32* %113, align 4
  %116 = load %struct.qeth_hdr*, %struct.qeth_hdr** %13, align 8
  %117 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %10, align 8
  %118 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %117, i32 0, i32 2
  store %struct.qeth_hdr* %116, %struct.qeth_hdr** %118, align 8
  %119 = load %struct.netdev_queue*, %struct.netdev_queue** %19, align 8
  %120 = load i32, i32* %17, align 4
  %121 = load i32, i32* %20, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %104
  %124 = call i64 (...) @netdev_xmit_more()
  %125 = icmp ne i64 %124, 0
  br label %126

126:                                              ; preds = %123, %104
  %127 = phi i1 [ false, %104 ], [ %125, %123 ]
  %128 = zext i1 %127 to i32
  %129 = call i32 @__netdev_tx_sent_queue(%struct.netdev_queue* %119, i32 %120, i32 %128)
  store i32 %129, i32* %21, align 4
  %130 = load i32, i32* %21, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %138, label %132

132:                                              ; preds = %126
  %133 = load i32, i32* %18, align 4
  %134 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %10, align 8
  %135 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = icmp uge i32 %133, %136
  br i1 %137, label %138, label %145

138:                                              ; preds = %132, %126
  %139 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %16, align 8
  %140 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %139, i32 0, i32 2
  %141 = load i32, i32* @QETH_QDIO_BUF_PRIMED, align 4
  %142 = call i32 @atomic_set(i32* %140, i32 %141)
  %143 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %10, align 8
  %144 = call i32 @qeth_flush_queue(%struct.qeth_qdio_out_q* %143)
  br label %145

145:                                              ; preds = %138, %132
  %146 = load i32, i32* %20, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %145
  %149 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %10, align 8
  %150 = call i32 @qeth_out_queue_is_full(%struct.qeth_qdio_out_q* %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %148
  %153 = load %struct.netdev_queue*, %struct.netdev_queue** %19, align 8
  %154 = call i32 @netif_tx_start_queue(%struct.netdev_queue* %153)
  br label %155

155:                                              ; preds = %152, %148, %145
  store i32 0, i32* %8, align 4
  br label %156

156:                                              ; preds = %155, %83, %43
  %157 = load i32, i32* %8, align 4
  ret i32 %157
}

declare dso_local i32 @qdisc_pkt_len(%struct.sk_buff*) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(i32, i32) #1

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @qeth_iqd_may_bulk(%struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_buffer*, %struct.sk_buff*, %struct.qeth_hdr*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @qeth_flush_queue(%struct.qeth_qdio_out_q*) #1

declare dso_local i64 @atomic_inc_return(i32*) #1

declare dso_local i32 @QETH_TXQ_STAT_INC(%struct.qeth_qdio_out_q*, i32) #1

declare dso_local i32 @netif_tx_stop_queue(%struct.netdev_queue*) #1

declare dso_local i32 @qeth_fill_buffer(%struct.qeth_qdio_out_buffer*, %struct.sk_buff*, %struct.qeth_hdr*, i32, i32) #1

declare dso_local i32 @__netdev_tx_sent_queue(%struct.netdev_queue*, i32, i32) #1

declare dso_local i64 @netdev_xmit_more(...) #1

declare dso_local i32 @qeth_out_queue_is_full(%struct.qeth_qdio_out_q*) #1

declare dso_local i32 @netif_tx_start_queue(%struct.netdev_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
