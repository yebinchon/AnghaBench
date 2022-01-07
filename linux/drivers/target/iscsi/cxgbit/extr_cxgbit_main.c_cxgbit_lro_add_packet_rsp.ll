; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_main.c_cxgbit_lro_add_packet_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_main.c_cxgbit_lro_add_packet_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.cxgbit_lro_cb = type { i32, i32, i32, i32 }
%struct.cxgbit_lro_pdu_cb = type { i32, i32, i64, i32 }
%struct.cpl_rx_iscsi_ddp = type { i32, i32, i32 }

@PDUCBF_RX_STATUS = common dso_local global i32 0, align 4
@PDUCBF_RX_HDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i32, i32*)* @cxgbit_lro_add_packet_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxgbit_lro_add_packet_rsp(%struct.sk_buff* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.cxgbit_lro_cb*, align 8
  %8 = alloca %struct.cxgbit_lro_pdu_cb*, align 8
  %9 = alloca %struct.cpl_rx_iscsi_ddp*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = call %struct.cxgbit_lro_cb* @cxgbit_skb_lro_cb(%struct.sk_buff* %10)
  store %struct.cxgbit_lro_cb* %11, %struct.cxgbit_lro_cb** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = load %struct.cxgbit_lro_cb*, %struct.cxgbit_lro_cb** %7, align 8
  %14 = getelementptr inbounds %struct.cxgbit_lro_cb, %struct.cxgbit_lro_cb* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.cxgbit_lro_pdu_cb* @cxgbit_skb_lro_pdu_cb(%struct.sk_buff* %12, i32 %15)
  store %struct.cxgbit_lro_pdu_cb* %16, %struct.cxgbit_lro_pdu_cb** %8, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = bitcast i32* %18 to %struct.cpl_rx_iscsi_ddp*
  store %struct.cpl_rx_iscsi_ddp* %19, %struct.cpl_rx_iscsi_ddp** %9, align 8
  %20 = load %struct.cxgbit_lro_cb*, %struct.cxgbit_lro_cb** %7, align 8
  %21 = getelementptr inbounds %struct.cxgbit_lro_cb, %struct.cxgbit_lro_cb* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %8, align 8
  %24 = load %struct.cpl_rx_iscsi_ddp*, %struct.cpl_rx_iscsi_ddp** %9, align 8
  %25 = getelementptr inbounds %struct.cpl_rx_iscsi_ddp, %struct.cpl_rx_iscsi_ddp* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @be32_to_cpu(i32 %26)
  %28 = call i32 @cxgbit_process_ddpvld(i32 %22, %struct.cxgbit_lro_pdu_cb* %23, i32 %27)
  %29 = load i32, i32* @PDUCBF_RX_STATUS, align 4
  %30 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %8, align 8
  %31 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load %struct.cpl_rx_iscsi_ddp*, %struct.cpl_rx_iscsi_ddp** %9, align 8
  %35 = getelementptr inbounds %struct.cpl_rx_iscsi_ddp, %struct.cpl_rx_iscsi_ddp* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ntohl(i32 %36)
  %38 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %8, align 8
  %39 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load %struct.cpl_rx_iscsi_ddp*, %struct.cpl_rx_iscsi_ddp** %9, align 8
  %41 = getelementptr inbounds %struct.cpl_rx_iscsi_ddp, %struct.cpl_rx_iscsi_ddp* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @ntohs(i32 %42)
  %44 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %8, align 8
  %45 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %44, i32 0, i32 2
  store i64 %43, i64* %45, align 8
  %46 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %8, align 8
  %47 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @PDUCBF_RX_HDR, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %3
  %53 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %8, align 8
  %54 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %53, i32 0, i32 1
  store i32 1, i32* %54, align 4
  br label %55

55:                                               ; preds = %52, %3
  %56 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %8, align 8
  %57 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.cxgbit_lro_cb*, %struct.cxgbit_lro_cb** %7, align 8
  %60 = getelementptr inbounds %struct.cxgbit_lro_cb, %struct.cxgbit_lro_cb* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %58
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %60, align 4
  %65 = load %struct.cxgbit_lro_cb*, %struct.cxgbit_lro_cb** %7, align 8
  %66 = getelementptr inbounds %struct.cxgbit_lro_cb, %struct.cxgbit_lro_cb* %65, i32 0, i32 0
  store i32 1, i32* %66, align 4
  %67 = load %struct.cxgbit_lro_cb*, %struct.cxgbit_lro_cb** %7, align 8
  %68 = getelementptr inbounds %struct.cxgbit_lro_cb, %struct.cxgbit_lro_cb* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  ret void
}

declare dso_local %struct.cxgbit_lro_cb* @cxgbit_skb_lro_cb(%struct.sk_buff*) #1

declare dso_local %struct.cxgbit_lro_pdu_cb* @cxgbit_skb_lro_pdu_cb(%struct.sk_buff*, i32) #1

declare dso_local i32 @cxgbit_process_ddpvld(i32, %struct.cxgbit_lro_pdu_cb*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i64 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
