; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_target.c_cxgbit_rx_lro_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_target.c_cxgbit_rx_lro_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbit_sock = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.cxgbit_lro_cb = type { i64 }
%struct.cxgbit_lro_pdu_cb = type { i32, i32 }

@PDUCBF_RX_HDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"csk 0x%p, tid 0x%x, seq 0x%x != 0x%x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxgbit_sock*, %struct.sk_buff*)* @cxgbit_rx_lro_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgbit_rx_lro_skb(%struct.cxgbit_sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cxgbit_sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.cxgbit_lro_cb*, align 8
  %7 = alloca %struct.cxgbit_lro_pdu_cb*, align 8
  %8 = alloca i32, align 4
  store %struct.cxgbit_sock* %0, %struct.cxgbit_sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = call %struct.cxgbit_lro_cb* @cxgbit_skb_lro_cb(%struct.sk_buff* %9)
  store %struct.cxgbit_lro_cb* %10, %struct.cxgbit_lro_cb** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = call %struct.cxgbit_lro_pdu_cb* @cxgbit_skb_lro_pdu_cb(%struct.sk_buff* %11, i32 0)
  store %struct.cxgbit_lro_pdu_cb* %12, %struct.cxgbit_lro_pdu_cb** %7, align 8
  store i32 -1, i32* %8, align 4
  %13 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %7, align 8
  %14 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @PDUCBF_RX_HDR, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %42

19:                                               ; preds = %2
  %20 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %7, align 8
  %21 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %4, align 8
  %24 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %22, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %19
  %28 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %4, align 8
  %29 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %4, align 8
  %30 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %7, align 8
  %33 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %4, align 8
  %36 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @pr_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.cxgbit_sock* %28, i32 %31, i32 %34, i32 %37)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = call i32 @cxgbit_lro_skb_dump(%struct.sk_buff* %39)
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %3, align 4
  br label %77

42:                                               ; preds = %19, %2
  %43 = load %struct.cxgbit_lro_cb*, %struct.cxgbit_lro_cb** %6, align 8
  %44 = getelementptr inbounds %struct.cxgbit_lro_cb, %struct.cxgbit_lro_cb* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %4, align 8
  %47 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %45
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %47, align 4
  %52 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %4, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = call i32 @cxgbit_process_lro_skb(%struct.cxgbit_sock* %52, %struct.sk_buff* %53)
  store i32 %54, i32* %8, align 4
  %55 = load %struct.cxgbit_lro_cb*, %struct.cxgbit_lro_cb** %6, align 8
  %56 = getelementptr inbounds %struct.cxgbit_lro_cb, %struct.cxgbit_lro_cb* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %4, align 8
  %59 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %61, %57
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %59, align 4
  %64 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %4, align 8
  %65 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %4, align 8
  %68 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sdiv i32 %69, 4
  %71 = icmp sge i32 %66, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %42
  %73 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %4, align 8
  %74 = call i32 @cxgbit_rx_data_ack(%struct.cxgbit_sock* %73)
  br label %75

75:                                               ; preds = %72, %42
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %75, %27
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.cxgbit_lro_cb* @cxgbit_skb_lro_cb(%struct.sk_buff*) #1

declare dso_local %struct.cxgbit_lro_pdu_cb* @cxgbit_skb_lro_pdu_cb(%struct.sk_buff*, i32) #1

declare dso_local i32 @pr_info(i8*, %struct.cxgbit_sock*, i32, i32, i32) #1

declare dso_local i32 @cxgbit_lro_skb_dump(%struct.sk_buff*) #1

declare dso_local i32 @cxgbit_process_lro_skb(%struct.cxgbit_sock*, %struct.sk_buff*) #1

declare dso_local i32 @cxgbit_rx_data_ack(%struct.cxgbit_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
