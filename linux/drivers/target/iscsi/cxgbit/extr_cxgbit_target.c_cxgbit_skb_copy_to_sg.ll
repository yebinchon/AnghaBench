; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_target.c_cxgbit_skb_copy_to_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_target.c_cxgbit_skb_copy_to_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.scatterlist = type { i32 }
%struct.skb_seq_state = type { i32 }
%struct.cxgbit_lro_pdu_cb = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.scatterlist*, i32, i64)* @cxgbit_skb_copy_to_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxgbit_skb_copy_to_sg(%struct.sk_buff* %0, %struct.scatterlist* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.skb_seq_state, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.cxgbit_lro_pdu_cb*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = call %struct.cxgbit_lro_pdu_cb* @cxgbit_rx_pdu_cb(%struct.sk_buff* %14)
  store %struct.cxgbit_lro_pdu_cb* %15, %struct.cxgbit_lro_pdu_cb** %13, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %13, align 8
  %18 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %13, align 8
  %21 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %13, align 8
  %24 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  %27 = call i32 @skb_prepare_seq_read(%struct.sk_buff* %16, i64 %19, i64 %26, %struct.skb_seq_state* %9)
  br label %28

28:                                               ; preds = %4, %35
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @skb_seq_read(i32 %29, i32** %10, %struct.skb_seq_state* %9)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = call i32 @skb_abort_seq_read(%struct.skb_seq_state* %9)
  br label %50

35:                                               ; preds = %28
  %36 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32*, i32** %10, align 8
  %39 = bitcast i32* %38 to i8*
  %40 = load i32, i32* %12, align 4
  %41 = load i64, i64* %8, align 8
  %42 = load i32, i32* %11, align 4
  %43 = zext i32 %42 to i64
  %44 = add nsw i64 %41, %43
  %45 = call i64 @sg_pcopy_from_buffer(%struct.scatterlist* %36, i32 %37, i8* %39, i32 %40, i64 %44)
  %46 = load i32, i32* %11, align 4
  %47 = zext i32 %46 to i64
  %48 = add nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %11, align 4
  br label %28

50:                                               ; preds = %33
  ret void
}

declare dso_local %struct.cxgbit_lro_pdu_cb* @cxgbit_rx_pdu_cb(%struct.sk_buff*) #1

declare dso_local i32 @skb_prepare_seq_read(%struct.sk_buff*, i64, i64, %struct.skb_seq_state*) #1

declare dso_local i32 @skb_seq_read(i32, i32**, %struct.skb_seq_state*) #1

declare dso_local i32 @skb_abort_seq_read(%struct.skb_seq_state*) #1

declare dso_local i64 @sg_pcopy_from_buffer(%struct.scatterlist*, i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
