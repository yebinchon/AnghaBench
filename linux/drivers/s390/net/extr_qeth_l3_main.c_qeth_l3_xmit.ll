; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.sk_buff = type { i32 }
%struct.qeth_qdio_out_q = type { i32 }

@ETH_HLEN = common dso_local global i64 0, align 8
@qeth_l3_fill_header = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, %struct.sk_buff*, %struct.qeth_qdio_out_q*, i32)* @qeth_l3_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_xmit(%struct.qeth_card* %0, %struct.sk_buff* %1, %struct.qeth_qdio_out_q* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qeth_card*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.qeth_qdio_out_q*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.qeth_qdio_out_q* %2, %struct.qeth_qdio_out_q** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %13 = call i64 @skb_is_gso(%struct.sk_buff* %12)
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i64 4, i64 4
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %10, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %19 = load i32, i32* %10, align 4
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* @ETH_HLEN, align 8
  %22 = sub nsw i64 %20, %21
  %23 = call i32 @skb_cow_head(%struct.sk_buff* %18, i64 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %5, align 4
  br label %40

28:                                               ; preds = %4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %30 = load i64, i64* @ETH_HLEN, align 8
  %31 = call i32 @skb_pull(%struct.sk_buff* %29, i64 %30)
  %32 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %33 = call i32 @qeth_l3_fixup_headers(%struct.sk_buff* %32)
  %34 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %36 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @qeth_l3_fill_header, align 4
  %39 = call i32 @qeth_xmit(%struct.qeth_card* %34, %struct.sk_buff* %35, %struct.qeth_qdio_out_q* %36, i32 %37, i32 %38)
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %28, %26
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i32 @skb_cow_head(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

declare dso_local i32 @qeth_l3_fixup_headers(%struct.sk_buff*) #1

declare dso_local i32 @qeth_xmit(%struct.qeth_card*, %struct.sk_buff*, %struct.qeth_qdio_out_q*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
