; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/extr_libcxgbi.c_skb_read_pdu_bhs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/extr_libcxgbi.c_skb_read_pdu_bhs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_sock = type { i32 }
%struct.iscsi_conn = type { i64, %struct.iscsi_tcp_conn* }
%struct.iscsi_tcp_conn = type { i32 }
%struct.sk_buff = type { i64, i32 }
%struct.iscsi_task = type { %struct.iscsi_tcp_task*, i64 }
%struct.iscsi_tcp_task = type { i32 }
%struct.iscsi_hdr = type { i64 }
%struct.iscsi_data = type { i32, i32 }

@CXGBI_DBG_PDU_RX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"conn 0x%p, skb 0x%p, len %u, flag 0x%lx.\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"conn 0x%p, skb 0x%p, not hdr.\0A\00", align 1
@ISCSI_ERR_PROTO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@SKCBF_RX_HCRC_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"conn 0x%p, skb 0x%p, hcrc.\0A\00", align 1
@ISCSI_ERR_HDR_DGST = common dso_local global i32 0, align 4
@SKCBF_RX_ISCSI_COMPL = common dso_local global i32 0, align 4
@SKCBF_RX_DATA_DDPD = common dso_local global i32 0, align 4
@ISCSI_OPCODE_MASK = common dso_local global i64 0, align 8
@ISCSI_OP_LOGOUT_RSP = common dso_local global i64 0, align 8
@CTPF_LOGOUT_RSP_RCVD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxgbi_sock*, %struct.iscsi_conn*, %struct.sk_buff*)* @skb_read_pdu_bhs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skb_read_pdu_bhs(%struct.cxgbi_sock* %0, %struct.iscsi_conn* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cxgbi_sock*, align 8
  %6 = alloca %struct.iscsi_conn*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.iscsi_tcp_conn*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.iscsi_task*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.iscsi_tcp_task*, align 8
  %14 = alloca %struct.iscsi_hdr*, align 8
  %15 = alloca i64, align 8
  store %struct.cxgbi_sock* %0, %struct.cxgbi_sock** %5, align 8
  store %struct.iscsi_conn* %1, %struct.iscsi_conn** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %16 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %17 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %16, i32 0, i32 1
  %18 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %17, align 8
  store %struct.iscsi_tcp_conn* %18, %struct.iscsi_tcp_conn** %8, align 8
  %19 = load i32, i32* @CXGBI_DBG_PDU_RX, align 4
  %20 = shl i32 1, %19
  %21 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %27 = call i32 @cxgbi_skcb_flags(%struct.sk_buff* %26)
  %28 = call i32 @log_debug(i32 %20, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), %struct.iscsi_conn* %21, %struct.sk_buff* %22, i32 %25, i32 %27)
  %29 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %8, align 8
  %30 = call i32 @iscsi_tcp_recv_segment_is_hdr(%struct.iscsi_tcp_conn* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %3
  %33 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %35 = call i32 @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), %struct.iscsi_conn* %33, %struct.sk_buff* %34)
  %36 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %37 = load i32, i32* @ISCSI_ERR_PROTO, align 4
  %38 = call i32 @iscsi_conn_failure(%struct.iscsi_conn* %36, i32 %37)
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %134

41:                                               ; preds = %3
  %42 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %43 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %41
  %47 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %48 = load i32, i32* @SKCBF_RX_HCRC_ERR, align 4
  %49 = call i64 @cxgbi_skcb_test_flag(%struct.sk_buff* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %46
  %52 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %54 = call i32 @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), %struct.iscsi_conn* %52, %struct.sk_buff* %53)
  %55 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %56 = load i32, i32* @ISCSI_ERR_HDR_DGST, align 4
  %57 = call i32 @iscsi_conn_failure(%struct.iscsi_conn* %55, i32 %56)
  %58 = load i32, i32* @EIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %134

60:                                               ; preds = %46, %41
  %61 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %62 = load i32, i32* @SKCBF_RX_ISCSI_COMPL, align 4
  %63 = call i64 @cxgbi_skcb_test_flag(%struct.sk_buff* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %102

65:                                               ; preds = %60
  %66 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %67 = load i32, i32* @SKCBF_RX_DATA_DDPD, align 4
  %68 = call i64 @cxgbi_skcb_test_flag(%struct.sk_buff* %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %102

70:                                               ; preds = %65
  %71 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to %struct.iscsi_data*
  %75 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %10, align 4
  %77 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call %struct.iscsi_task* @iscsi_itt_to_ctask(%struct.iscsi_conn* %77, i32 %78)
  store %struct.iscsi_task* %79, %struct.iscsi_task** %11, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to %struct.iscsi_data*
  %84 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @be32_to_cpu(i32 %85)
  store i32 %86, i32* %12, align 4
  %87 = load %struct.iscsi_task*, %struct.iscsi_task** %11, align 8
  %88 = icmp ne %struct.iscsi_task* %87, null
  br i1 %88, label %89, label %101

89:                                               ; preds = %70
  %90 = load %struct.iscsi_task*, %struct.iscsi_task** %11, align 8
  %91 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %89
  %95 = load %struct.iscsi_task*, %struct.iscsi_task** %11, align 8
  %96 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %95, i32 0, i32 0
  %97 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %96, align 8
  store %struct.iscsi_tcp_task* %97, %struct.iscsi_tcp_task** %13, align 8
  %98 = load i32, i32* %12, align 4
  %99 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %13, align 8
  %100 = getelementptr inbounds %struct.iscsi_tcp_task, %struct.iscsi_tcp_task* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 4
  br label %101

101:                                              ; preds = %94, %89, %70
  br label %102

102:                                              ; preds = %101, %65, %60
  %103 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %104 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %105 = call i32 @read_pdu_skb(%struct.iscsi_conn* %103, %struct.sk_buff* %104, i32 0, i32 0)
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %9, align 4
  %107 = icmp sge i32 %106, 0
  %108 = zext i1 %107 to i32
  %109 = call i64 @likely(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %132

111:                                              ; preds = %102
  %112 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %113 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = inttoptr i64 %114 to %struct.iscsi_hdr*
  store %struct.iscsi_hdr* %115, %struct.iscsi_hdr** %14, align 8
  %116 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %14, align 8
  %117 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @ISCSI_OPCODE_MASK, align 8
  %120 = and i64 %118, %119
  store i64 %120, i64* %15, align 8
  %121 = load i64, i64* %15, align 8
  %122 = load i64, i64* @ISCSI_OP_LOGOUT_RSP, align 8
  %123 = icmp eq i64 %121, %122
  %124 = zext i1 %123 to i32
  %125 = call i64 @unlikely(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %111
  %128 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %129 = load i32, i32* @CTPF_LOGOUT_RSP_RCVD, align 4
  %130 = call i32 @cxgbi_sock_set_flag(%struct.cxgbi_sock* %128, i32 %129)
  br label %131

131:                                              ; preds = %127, %111
  br label %132

132:                                              ; preds = %131, %102
  %133 = load i32, i32* %9, align 4
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %132, %51, %32
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i32 @log_debug(i32, i8*, %struct.iscsi_conn*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @cxgbi_skcb_flags(%struct.sk_buff*) #1

declare dso_local i32 @iscsi_tcp_recv_segment_is_hdr(%struct.iscsi_tcp_conn*) #1

declare dso_local i32 @pr_info(i8*, %struct.iscsi_conn*, %struct.sk_buff*) #1

declare dso_local i32 @iscsi_conn_failure(%struct.iscsi_conn*, i32) #1

declare dso_local i64 @cxgbi_skcb_test_flag(%struct.sk_buff*, i32) #1

declare dso_local %struct.iscsi_task* @iscsi_itt_to_ctask(%struct.iscsi_conn*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @read_pdu_skb(%struct.iscsi_conn*, %struct.sk_buff*, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cxgbi_sock_set_flag(%struct.cxgbi_sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
