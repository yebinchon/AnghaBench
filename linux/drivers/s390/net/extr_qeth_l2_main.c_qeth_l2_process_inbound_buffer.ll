; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_process_inbound_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_process_inbound_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_12__, i32, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i32 (%struct.sk_buff*)* }
%struct.sk_buff = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i64, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32* }
%struct.qeth_hdr = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32* }

@.str = private unnamed_addr constant [9 x i8] c"inbunkno\00", align 1
@CTRL = common dso_local global i32 0, align 4
@rx_packets = common dso_local global i32 0, align 4
@rx_bytes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, i32, i32*)* @qeth_l2_process_inbound_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l2_process_inbound_buffer(%struct.qeth_card* %0, i32 %1, i32* %2) #0 {
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

17:                                               ; preds = %103, %95, %3
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %115

20:                                               ; preds = %17
  %21 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %22 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %23 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %29 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %27, i64 %31
  %33 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %34 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 2
  %36 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %37 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = call %struct.sk_buff* @qeth_core_get_next_skb(%struct.qeth_card* %21, i32* %32, i32* %35, i32* %38, %struct.qeth_hdr** %9)
  store %struct.sk_buff* %39, %struct.sk_buff** %8, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %41 = icmp ne %struct.sk_buff* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %20
  %43 = load i32*, i32** %6, align 8
  store i32 1, i32* %43, align 4
  br label %115

44:                                               ; preds = %20
  %45 = load %struct.qeth_hdr*, %struct.qeth_hdr** %9, align 8
  %46 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  switch i32 %49, label %95 [
    i32 129, label %50
    i32 128, label %75
  ]

50:                                               ; preds = %44
  %51 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @eth_type_trans(%struct.sk_buff* %51, i32 %54)
  %56 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %60 = load %struct.qeth_hdr*, %struct.qeth_hdr** %9, align 8
  %61 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @qeth_rx_csum(%struct.qeth_card* %58, %struct.sk_buff* %59, i32 %66)
  %68 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %10, align 4
  %71 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %72 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %71, i32 0, i32 1
  %73 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %74 = call i32 @napi_gro_receive(i32* %72, %struct.sk_buff* %73)
  br label %103

75:                                               ; preds = %44
  %76 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %77 = call i32 @IS_OSN(%struct.qeth_card* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %94

79:                                               ; preds = %75
  %80 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %81 = call i32 @skb_push(%struct.sk_buff* %80, i32 16)
  %82 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %83 = load %struct.qeth_hdr*, %struct.qeth_hdr** %9, align 8
  %84 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %82, %struct.qeth_hdr* %83, i32 16)
  %85 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %10, align 4
  %88 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %89 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %90, align 8
  %92 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %93 = call i32 %91(%struct.sk_buff* %92)
  br label %103

94:                                               ; preds = %75
  br label %95

95:                                               ; preds = %44, %94
  %96 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %97 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %96)
  %98 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %99 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %98, i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %100 = load i32, i32* @CTRL, align 4
  %101 = load %struct.qeth_hdr*, %struct.qeth_hdr** %9, align 8
  %102 = call i32 @QETH_DBF_HEX(i32 %100, i32 3, %struct.qeth_hdr* %101, i32 16)
  br label %17

103:                                              ; preds = %79, %50
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %5, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %5, align 4
  %108 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %109 = load i32, i32* @rx_packets, align 4
  %110 = call i32 @QETH_CARD_STAT_INC(%struct.qeth_card* %108, i32 %109)
  %111 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %112 = load i32, i32* @rx_bytes, align 4
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @QETH_CARD_STAT_ADD(%struct.qeth_card* %111, i32 %112, i32 %113)
  br label %17

115:                                              ; preds = %42, %17
  %116 = load i32, i32* %7, align 4
  ret i32 %116
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local %struct.sk_buff* @qeth_core_get_next_skb(%struct.qeth_card*, i32*, i32*, i32*, %struct.qeth_hdr**) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, i32) #1

declare dso_local i32 @qeth_rx_csum(%struct.qeth_card*, %struct.sk_buff*, i32) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

declare dso_local i32 @IS_OSN(%struct.qeth_card*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, %struct.qeth_hdr*, i32) #1

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
