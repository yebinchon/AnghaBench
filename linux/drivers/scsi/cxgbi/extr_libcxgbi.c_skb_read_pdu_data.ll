; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/extr_libcxgbi.c_skb_read_pdu_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/extr_libcxgbi.c_skb_read_pdu_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i64, i64, %struct.iscsi_tcp_conn* }
%struct.iscsi_tcp_conn = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sk_buff = type { i32 }

@ISCSI_OPCODE_MASK = common dso_local global i32 0, align 4
@CXGBI_DBG_PDU_RX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"conn 0x%p, skb 0x%p, len %u, flag 0x%lx.\0A\00", align 1
@SKCBF_RX_DCRC_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"conn 0x%p, skb 0x%p, dcrc 0x%lx.\0A\00", align 1
@ISCSI_ERR_DATA_DGST = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ISCSI_DIGEST_SIZE = common dso_local global i64 0, align 8
@SKCBF_RX_DATA_DDPD = common dso_local global i32 0, align 4
@ISCSI_OP_SCSI_DATA_IN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"skb 0x%p, op 0x%x, itt 0x%x, %u %s ddp'ed.\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"is\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_conn*, %struct.sk_buff*, %struct.sk_buff*, i32)* @skb_read_pdu_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skb_read_pdu_data(%struct.iscsi_conn* %0, %struct.sk_buff* %1, %struct.sk_buff* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_conn*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iscsi_tcp_conn*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %14 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %13, i32 0, i32 2
  %15 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %14, align 8
  store %struct.iscsi_tcp_conn* %15, %struct.iscsi_tcp_conn** %10, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %10, align 8
  %17 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ISCSI_OPCODE_MASK, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* @CXGBI_DBG_PDU_RX, align 4
  %25 = shl i32 1, %24
  %26 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %32 = call i32 @cxgbi_skcb_flags(%struct.sk_buff* %31)
  %33 = call i32 (i32, i8*, ...) @log_debug(i32 %25, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), %struct.iscsi_conn* %26, %struct.sk_buff* %27, i32 %30, i32 %32)
  %34 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %35 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %4
  %39 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %40 = load i32, i32* @SKCBF_RX_DCRC_ERR, align 4
  %41 = call i64 @cxgbi_skcb_test_flag(%struct.sk_buff* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %38
  %44 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %47 = call i32 @cxgbi_skcb_flags(%struct.sk_buff* %46)
  %48 = call i32 @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), %struct.iscsi_conn* %44, %struct.sk_buff* %45, i32 %47)
  %49 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %50 = load i32, i32* @ISCSI_ERR_DATA_DGST, align 4
  %51 = call i32 @iscsi_conn_failure(%struct.iscsi_conn* %49, i32 %50)
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %111

54:                                               ; preds = %38, %4
  %55 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %10, align 8
  %56 = call i64 @iscsi_tcp_recv_segment_is_hdr(%struct.iscsi_tcp_conn* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 0, i32* %5, align 4
  br label %111

59:                                               ; preds = %54
  %60 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %62 = icmp eq %struct.sk_buff* %60, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %59
  %64 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %65 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load i64, i64* @ISCSI_DIGEST_SIZE, align 8
  %70 = load i32, i32* %9, align 4
  %71 = zext i32 %70 to i64
  %72 = add nsw i64 %71, %69
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %68, %63, %59
  %75 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %76 = load i32, i32* @SKCBF_RX_DATA_DDPD, align 4
  %77 = call i64 @cxgbi_skcb_test_flag(%struct.sk_buff* %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  store i32 1, i32* %11, align 4
  br label %80

80:                                               ; preds = %79, %74
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* @ISCSI_OP_SCSI_DATA_IN, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %105

84:                                               ; preds = %80
  %85 = load i32, i32* @CXGBI_DBG_PDU_RX, align 4
  %86 = shl i32 1, %85
  %87 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %88 = load i32, i32* %12, align 4
  %89 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %10, align 8
  %90 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @ntohl(i32 %94)
  %96 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %10, align 8
  %97 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %11, align 4
  %101 = icmp ne i32 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %104 = call i32 (i32, i8*, ...) @log_debug(i32 %86, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), %struct.sk_buff* %87, i32 %88, i32 %95, i32 %99, i8* %103)
  br label %105

105:                                              ; preds = %84, %80
  %106 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %107 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %11, align 4
  %110 = call i32 @read_pdu_skb(%struct.iscsi_conn* %106, %struct.sk_buff* %107, i32 %108, i32 %109)
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %105, %58, %43
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local i32 @log_debug(i32, i8*, ...) #1

declare dso_local i32 @cxgbi_skcb_flags(%struct.sk_buff*) #1

declare dso_local i64 @cxgbi_skcb_test_flag(%struct.sk_buff*, i32) #1

declare dso_local i32 @pr_info(i8*, %struct.iscsi_conn*, %struct.sk_buff*, i32) #1

declare dso_local i32 @iscsi_conn_failure(%struct.iscsi_conn*, i32) #1

declare dso_local i64 @iscsi_tcp_recv_segment_is_hdr(%struct.iscsi_tcp_conn*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @read_pdu_skb(%struct.iscsi_conn*, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
