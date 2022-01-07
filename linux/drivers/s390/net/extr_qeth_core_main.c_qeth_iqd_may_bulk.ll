; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_iqd_may_bulk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_iqd_may_bulk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_qdio_out_q = type { %struct.qeth_hdr* }
%struct.qeth_qdio_out_buffer = type { i32 }
%struct.sk_buff = type { i32 }
%struct.qeth_hdr = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i32 }

@QETH_HEADER_TYPE_LAYER2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_buffer*, %struct.sk_buff*, %struct.qeth_hdr*)* @qeth_iqd_may_bulk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_iqd_may_bulk(%struct.qeth_qdio_out_q* %0, %struct.qeth_qdio_out_buffer* %1, %struct.sk_buff* %2, %struct.qeth_hdr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qeth_qdio_out_q*, align 8
  %7 = alloca %struct.qeth_qdio_out_buffer*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.qeth_hdr*, align 8
  %10 = alloca %struct.qeth_hdr*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  store %struct.qeth_qdio_out_q* %0, %struct.qeth_qdio_out_q** %6, align 8
  store %struct.qeth_qdio_out_buffer* %1, %struct.qeth_qdio_out_buffer** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store %struct.qeth_hdr* %3, %struct.qeth_hdr** %9, align 8
  %12 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %6, align 8
  %13 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %12, i32 0, i32 0
  %14 = load %struct.qeth_hdr*, %struct.qeth_hdr** %13, align 8
  store %struct.qeth_hdr* %14, %struct.qeth_hdr** %10, align 8
  %15 = load %struct.qeth_hdr*, %struct.qeth_hdr** %10, align 8
  %16 = icmp ne %struct.qeth_hdr* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %73

18:                                               ; preds = %4
  %19 = load %struct.qeth_hdr*, %struct.qeth_hdr** %9, align 8
  %20 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @QETH_HEADER_TYPE_LAYER2, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %52

26:                                               ; preds = %18
  %27 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %7, align 8
  %28 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %27, i32 0, i32 0
  %29 = call %struct.sk_buff* @skb_peek(i32* %28)
  store %struct.sk_buff* %29, %struct.sk_buff** %11, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %31 = call %struct.TYPE_7__* @eth_hdr(%struct.sk_buff* %30)
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %35 = call %struct.TYPE_7__* @eth_hdr(%struct.sk_buff* %34)
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @ether_addr_equal(i32 %33, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %26
  %41 = load %struct.qeth_hdr*, %struct.qeth_hdr** %10, align 8
  %42 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load %struct.qeth_hdr*, %struct.qeth_hdr** %9, align 8
  %45 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = call i64 @qeth_l2_same_vlan(%struct.TYPE_6__* %43, %struct.TYPE_6__* %46)
  %48 = icmp ne i64 %47, 0
  br label %49

49:                                               ; preds = %40, %26
  %50 = phi i1 [ false, %26 ], [ %48, %40 ]
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %5, align 4
  br label %73

52:                                               ; preds = %18
  %53 = load %struct.qeth_hdr*, %struct.qeth_hdr** %10, align 8
  %54 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load %struct.qeth_hdr*, %struct.qeth_hdr** %9, align 8
  %57 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = call i64 @qeth_l3_same_next_hop(i32* %55, i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %52
  %62 = load %struct.qeth_hdr*, %struct.qeth_hdr** %10, align 8
  %63 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load %struct.qeth_hdr*, %struct.qeth_hdr** %9, align 8
  %66 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = call i64 @qeth_l3_iqd_same_vlan(i32* %64, i32* %67)
  %69 = icmp ne i64 %68, 0
  br label %70

70:                                               ; preds = %61, %52
  %71 = phi i1 [ false, %52 ], [ %69, %61 ]
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %70, %49, %17
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local %struct.sk_buff* @skb_peek(i32*) #1

declare dso_local i64 @ether_addr_equal(i32, i32) #1

declare dso_local %struct.TYPE_7__* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i64 @qeth_l2_same_vlan(%struct.TYPE_6__*, %struct.TYPE_6__*) #1

declare dso_local i64 @qeth_l3_same_next_hop(i32*, i32*) #1

declare dso_local i64 @qeth_l3_iqd_same_vlan(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
