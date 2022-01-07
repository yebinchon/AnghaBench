; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_process_inbound_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_process_inbound_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32* }
%struct.sk_buff = type { i32, i32, i32 }
%struct.qeth_hdr = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"inbunkno\00", align 1
@CTRL = common dso_local global i32 0, align 4
@rx_packets = common dso_local global i32 0, align 4
@rx_bytes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, i32, i32*)* @qeth_l3_process_inbound_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_process_inbound_buffer(%struct.qeth_card* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.qeth_hdr*, align 8
  %10 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load i32*, i32** %6, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON_ONCE(i32 %15)
  br label %17

17:                                               ; preds = %78, %70, %3
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %90

20:                                               ; preds = %17
  %21 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %22 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %23 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %29 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %27, i64 %31
  %33 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %34 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 2
  %36 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %37 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = call %struct.sk_buff* @qeth_core_get_next_skb(%struct.qeth_card* %21, i32* %32, i32* %35, i32* %38, %struct.qeth_hdr** %9)
  store %struct.sk_buff* %39, %struct.sk_buff** %8, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %41 = icmp ne %struct.sk_buff* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %20
  %43 = load i32*, i32** %6, align 8
  store i32 1, i32* %43, align 4
  br label %90

44:                                               ; preds = %20
  %45 = load %struct.qeth_hdr*, %struct.qeth_hdr** %9, align 8
  %46 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  switch i32 %49, label %70 [
    i32 128, label %50
    i32 129, label %55
  ]

50:                                               ; preds = %44
  %51 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %53 = load %struct.qeth_hdr*, %struct.qeth_hdr** %9, align 8
  %54 = call i32 @qeth_l3_rebuild_skb(%struct.qeth_card* %51, %struct.sk_buff* %52, %struct.qeth_hdr* %53)
  br label %55

55:                                               ; preds = %44, %50
  %56 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @eth_type_trans(%struct.sk_buff* %56, i32 %59)
  %61 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %10, align 4
  %66 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %67 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %66, i32 0, i32 0
  %68 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %69 = call i32 @napi_gro_receive(i32* %67, %struct.sk_buff* %68)
  br label %78

70:                                               ; preds = %44
  %71 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %72 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %71)
  %73 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %74 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %73, i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %75 = load i32, i32* @CTRL, align 4
  %76 = load %struct.qeth_hdr*, %struct.qeth_hdr** %9, align 8
  %77 = call i32 @QETH_DBF_HEX(i32 %75, i32 3, %struct.qeth_hdr* %76, i32 4)
  br label %17

78:                                               ; preds = %55
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %5, align 4
  %83 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %84 = load i32, i32* @rx_packets, align 4
  %85 = call i32 @QETH_CARD_STAT_INC(%struct.qeth_card* %83, i32 %84)
  %86 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %87 = load i32, i32* @rx_bytes, align 4
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @QETH_CARD_STAT_ADD(%struct.qeth_card* %86, i32 %87, i32 %88)
  br label %17

90:                                               ; preds = %42, %17
  %91 = load i32, i32* %7, align 4
  ret i32 %91
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local %struct.sk_buff* @qeth_core_get_next_skb(%struct.qeth_card*, i32*, i32*, i32*, %struct.qeth_hdr**) #1

declare dso_local i32 @qeth_l3_rebuild_skb(%struct.qeth_card*, %struct.sk_buff*, %struct.qeth_hdr*) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, i32) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i32 @QETH_DBF_HEX(i32, i32, %struct.qeth_hdr*, i32) #1

declare dso_local i32 @QETH_CARD_STAT_INC(%struct.qeth_card*, i32) #1

declare dso_local i32 @QETH_CARD_STAT_ADD(%struct.qeth_card*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
