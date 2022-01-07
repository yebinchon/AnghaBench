; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_target.c_cxgbit_handle_immediate_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_target.c_cxgbit_handle_immediate_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i64, i32, i32, i32, %struct.TYPE_6__, %struct.iscsi_conn* }
%struct.TYPE_6__ = type { i32, i32, i64, %struct.scatterlist* }
%struct.scatterlist = type { i32 }
%struct.iscsi_conn = type { %struct.TYPE_5__*, %struct.cxgbit_sock* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.cxgbit_sock = type { i32 }
%struct.iscsi_scsi_req = type { i32 }
%struct.cxgbit_lro_pdu_cb = type { i32, i64, i64 }
%struct.cxgbit_cmd = type { i32, %struct.scatterlist }
%struct.skb_shared_info = type { i32* }

@PDUCBF_RX_DCRC_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"ImmediateData CRC32C DataDigest error\0A\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"Unable to recover from Immediate Data digest failure while in ERL=0.\0A\00", align 1
@ISCSI_REASON_DATA_DIGEST_ERROR = common dso_local global i32 0, align 4
@IMMEDIATE_DATA_CANNOT_RECOVER = common dso_local global i32 0, align 4
@IMMEDIATE_DATA_ERL1_CRC_FAILURE = common dso_local global i32 0, align 4
@SCF_PASSTHROUGH_SG_TO_MEM_NOALLOC = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@ICF_GOT_LAST_DATAOUT = common dso_local global i32 0, align 4
@ISTATE_RECEIVED_LAST_DATAOUT = common dso_local global i32 0, align 4
@IMMEDIATE_DATA_NORMAL_OPERATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_cmd*, %struct.iscsi_scsi_req*, i32)* @cxgbit_handle_immediate_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgbit_handle_immediate_data(%struct.iscsi_cmd* %0, %struct.iscsi_scsi_req* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_cmd*, align 8
  %6 = alloca %struct.iscsi_scsi_req*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iscsi_conn*, align 8
  %9 = alloca %struct.cxgbit_sock*, align 8
  %10 = alloca %struct.cxgbit_lro_pdu_cb*, align 8
  %11 = alloca %struct.cxgbit_cmd*, align 8
  %12 = alloca %struct.skb_shared_info*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.scatterlist*, align 8
  %15 = alloca i32, align 4
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %5, align 8
  store %struct.iscsi_scsi_req* %1, %struct.iscsi_scsi_req** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %17 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %16, i32 0, i32 5
  %18 = load %struct.iscsi_conn*, %struct.iscsi_conn** %17, align 8
  store %struct.iscsi_conn* %18, %struct.iscsi_conn** %8, align 8
  %19 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  %20 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %19, i32 0, i32 1
  %21 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %20, align 8
  store %struct.cxgbit_sock* %21, %struct.cxgbit_sock** %9, align 8
  %22 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %9, align 8
  %23 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.cxgbit_lro_pdu_cb* @cxgbit_rx_pdu_cb(i32 %24)
  store %struct.cxgbit_lro_pdu_cb* %25, %struct.cxgbit_lro_pdu_cb** %10, align 8
  %26 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %10, align 8
  %27 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @PDUCBF_RX_DCRC_ERR, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %57

32:                                               ; preds = %3
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  %35 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %32
  %43 = call i32 @pr_err(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0))
  %44 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %45 = load i32, i32* @ISCSI_REASON_DATA_DIGEST_ERROR, align 4
  %46 = load %struct.iscsi_scsi_req*, %struct.iscsi_scsi_req** %6, align 8
  %47 = bitcast %struct.iscsi_scsi_req* %46 to i8*
  %48 = call i32 @iscsit_reject_cmd(%struct.iscsi_cmd* %44, i32 %45, i8* %47)
  %49 = load i32, i32* @IMMEDIATE_DATA_CANNOT_RECOVER, align 4
  store i32 %49, i32* %4, align 4
  br label %155

50:                                               ; preds = %32
  %51 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %52 = load i32, i32* @ISCSI_REASON_DATA_DIGEST_ERROR, align 4
  %53 = load %struct.iscsi_scsi_req*, %struct.iscsi_scsi_req** %6, align 8
  %54 = bitcast %struct.iscsi_scsi_req* %53 to i8*
  %55 = call i32 @iscsit_reject_cmd(%struct.iscsi_cmd* %51, i32 %52, i8* %54)
  %56 = load i32, i32* @IMMEDIATE_DATA_ERL1_CRC_FAILURE, align 4
  store i32 %56, i32* %4, align 4
  br label %155

57:                                               ; preds = %3
  %58 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %59 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @SCF_PASSTHROUGH_SG_TO_MEM_NOALLOC, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %104

65:                                               ; preds = %57
  %66 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %67 = call %struct.cxgbit_cmd* @iscsit_priv_cmd(%struct.iscsi_cmd* %66)
  store %struct.cxgbit_cmd* %67, %struct.cxgbit_cmd** %11, align 8
  %68 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %9, align 8
  %69 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call %struct.skb_shared_info* @skb_shinfo(i32 %70)
  store %struct.skb_shared_info* %71, %struct.skb_shared_info** %12, align 8
  %72 = load %struct.skb_shared_info*, %struct.skb_shared_info** %12, align 8
  %73 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %10, align 8
  %76 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  store i32* %78, i32** %13, align 8
  %79 = load %struct.cxgbit_cmd*, %struct.cxgbit_cmd** %11, align 8
  %80 = getelementptr inbounds %struct.cxgbit_cmd, %struct.cxgbit_cmd* %79, i32 0, i32 1
  %81 = call i32 @sg_init_table(%struct.scatterlist* %80, i32 1)
  %82 = load %struct.cxgbit_cmd*, %struct.cxgbit_cmd** %11, align 8
  %83 = getelementptr inbounds %struct.cxgbit_cmd, %struct.cxgbit_cmd* %82, i32 0, i32 1
  %84 = load i32*, i32** %13, align 8
  %85 = call i32 @skb_frag_page(i32* %84)
  %86 = load i32*, i32** %13, align 8
  %87 = call i32 @skb_frag_size(i32* %86)
  %88 = load i32*, i32** %13, align 8
  %89 = call i32 @skb_frag_off(i32* %88)
  %90 = call i32 @sg_set_page(%struct.scatterlist* %83, i32 %85, i32 %87, i32 %89)
  %91 = load i32*, i32** %13, align 8
  %92 = call i32 @skb_frag_page(i32* %91)
  %93 = call i32 @get_page(i32 %92)
  %94 = load %struct.cxgbit_cmd*, %struct.cxgbit_cmd** %11, align 8
  %95 = getelementptr inbounds %struct.cxgbit_cmd, %struct.cxgbit_cmd* %94, i32 0, i32 1
  %96 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %97 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 3
  store %struct.scatterlist* %95, %struct.scatterlist** %98, align 8
  %99 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %100 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %99, i32 0, i32 4
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  store i32 1, i32* %101, align 4
  %102 = load %struct.cxgbit_cmd*, %struct.cxgbit_cmd** %11, align 8
  %103 = getelementptr inbounds %struct.cxgbit_cmd, %struct.cxgbit_cmd* %102, i32 0, i32 0
  store i32 1, i32* %103, align 4
  br label %122

104:                                              ; preds = %57
  %105 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %106 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 3
  %108 = load %struct.scatterlist*, %struct.scatterlist** %107, align 8
  %109 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %108, i64 0
  store %struct.scatterlist* %109, %struct.scatterlist** %14, align 8
  %110 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %10, align 8
  %111 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* @PAGE_SIZE, align 4
  %114 = call i32 @DIV_ROUND_UP(i64 %112, i32 %113)
  %115 = call i32 @max(i64 1, i32 %114)
  store i32 %115, i32* %15, align 4
  %116 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %9, align 8
  %117 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %120 = load i32, i32* %15, align 4
  %121 = call i32 @cxgbit_skb_copy_to_sg(i32 %118, %struct.scatterlist* %119, i32 %120, i32 0)
  br label %122

122:                                              ; preds = %104, %65
  %123 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %10, align 8
  %124 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %127 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = add nsw i64 %128, %125
  store i64 %129, i64* %127, align 8
  %130 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %131 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %134 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = icmp eq i64 %132, %136
  br i1 %137, label %138, label %153

138:                                              ; preds = %122
  %139 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %140 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %139, i32 0, i32 1
  %141 = call i32 @spin_lock_bh(i32* %140)
  %142 = load i32, i32* @ICF_GOT_LAST_DATAOUT, align 4
  %143 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %144 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = or i32 %145, %142
  store i32 %146, i32* %144, align 8
  %147 = load i32, i32* @ISTATE_RECEIVED_LAST_DATAOUT, align 4
  %148 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %149 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %148, i32 0, i32 2
  store i32 %147, i32* %149, align 4
  %150 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %151 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %150, i32 0, i32 1
  %152 = call i32 @spin_unlock_bh(i32* %151)
  br label %153

153:                                              ; preds = %138, %122
  %154 = load i32, i32* @IMMEDIATE_DATA_NORMAL_OPERATION, align 4
  store i32 %154, i32* %4, align 4
  br label %155

155:                                              ; preds = %153, %50, %42
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local %struct.cxgbit_lro_pdu_cb* @cxgbit_rx_pdu_cb(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @iscsit_reject_cmd(%struct.iscsi_cmd*, i32, i8*) #1

declare dso_local %struct.cxgbit_cmd* @iscsit_priv_cmd(%struct.iscsi_cmd*) #1

declare dso_local %struct.skb_shared_info* @skb_shinfo(i32) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @sg_set_page(%struct.scatterlist*, i32, i32, i32) #1

declare dso_local i32 @skb_frag_page(i32*) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i32 @skb_frag_off(i32*) #1

declare dso_local i32 @get_page(i32) #1

declare dso_local i32 @max(i64, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @cxgbit_skb_copy_to_sg(i32, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
