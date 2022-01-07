; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_conn_pdu_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_conn_pdu_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_sock = type { i32, i32, i32, %struct.iscsi_conn*, %struct.cxgbi_device* }
%struct.iscsi_conn = type { i32, i32, i32 }
%struct.cxgbi_device = type { i64 }
%struct.sk_buff = type { i32, i32, i32, %struct.iscsi_conn*, %struct.cxgbi_device* }

@CXGBI_DBG_PDU_RX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"csk 0x%p, conn 0x%p.\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"csk 0x%p, conn 0x%p, id %d, suspend_rx %lu!\0A\00", align 1
@SKCBF_RX_STATUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"skb 0x%p, NOT ready 0x%lx.\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"csk 0x%p, skb 0x%p,%u,f 0x%lx, pdu len %u.\0A\00", align 1
@SKCBF_RX_COALESCED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [57 x i8] c"coalesced bhs, csk 0x%p, skb 0x%p,%u, f 0x%lx, plen %u.\0A\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"coalesced data, csk 0x%p, skb 0x%p,%u, f 0x%lx, plen %u.\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"bhs, csk 0x%p, skb 0x%p,%u, f 0x%lx, plen %u.\0A\00", align 1
@SKCBF_RX_DATA = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [51 x i8] c"csk 0x%p, skb 0x%p,%u, f 0x%lx, plen %u, NO data.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [62 x i8] c"data, csk 0x%p, skb 0x%p,%u, f 0x%lx, plen %u, dskb 0x%p,%u.\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"csk 0x%p, read %u.\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"csk 0x%p, 0x%p, rx failed %d, read %u.\0A\00", align 1
@ISCSI_ERR_CONN_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxgbi_conn_pdu_ready(%struct.cxgbi_sock* %0) #0 {
  %2 = alloca %struct.cxgbi_sock*, align 8
  %3 = alloca %struct.cxgbi_device*, align 8
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.cxgbi_sock* %0, %struct.cxgbi_sock** %2, align 8
  %9 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %10 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %9, i32 0, i32 4
  %11 = load %struct.cxgbi_device*, %struct.cxgbi_device** %10, align 8
  store %struct.cxgbi_device* %11, %struct.cxgbi_device** %3, align 8
  %12 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %13 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %12, i32 0, i32 3
  %14 = load %struct.iscsi_conn*, %struct.iscsi_conn** %13, align 8
  store %struct.iscsi_conn* %14, %struct.iscsi_conn** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %15 = load i32, i32* @CXGBI_DBG_PDU_RX, align 4
  %16 = shl i32 1, %15
  %17 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %18 = bitcast %struct.cxgbi_sock* %17 to %struct.sk_buff*
  %19 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %20 = call i32 (i32, i8*, %struct.sk_buff*, ...) @log_debug(i32 %16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.sk_buff* %18, %struct.iscsi_conn* %19)
  %21 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %22 = icmp ne %struct.iscsi_conn* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %25 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br label %28

28:                                               ; preds = %23, %1
  %29 = phi i1 [ true, %1 ], [ %27, %23 ]
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %58

33:                                               ; preds = %28
  %34 = load i32, i32* @CXGBI_DBG_PDU_RX, align 4
  %35 = shl i32 1, %34
  %36 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %37 = bitcast %struct.cxgbi_sock* %36 to %struct.sk_buff*
  %38 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %39 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %40 = icmp ne %struct.iscsi_conn* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %43 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  br label %46

45:                                               ; preds = %33
  br label %46

46:                                               ; preds = %45, %41
  %47 = phi i32 [ %44, %41 ], [ 255, %45 ]
  %48 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %49 = icmp ne %struct.iscsi_conn* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %52 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  br label %55

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54, %50
  %56 = phi i32 [ %53, %50 ], [ 255, %54 ]
  %57 = call i32 (i32, i8*, %struct.sk_buff*, ...) @log_debug(i32 %35, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), %struct.sk_buff* %37, %struct.iscsi_conn* %38, i32 %47, i32 %56)
  br label %285

58:                                               ; preds = %28
  br label %59

59:                                               ; preds = %247, %58
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  br i1 %62, label %63, label %248

63:                                               ; preds = %59
  %64 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %65 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %64, i32 0, i32 2
  %66 = call %struct.sk_buff* @skb_peek(i32* %65)
  store %struct.sk_buff* %66, %struct.sk_buff** %5, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %68 = icmp ne %struct.sk_buff* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %71 = load i32, i32* @SKCBF_RX_STATUS, align 4
  %72 = call i64 @cxgbi_skcb_test_flag(%struct.sk_buff* %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %85, label %74

74:                                               ; preds = %69, %63
  %75 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %76 = icmp ne %struct.sk_buff* %75, null
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = load i32, i32* @CXGBI_DBG_PDU_RX, align 4
  %79 = shl i32 1, %78
  %80 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %82 = call i32 @cxgbi_skcb_flags(%struct.sk_buff* %81)
  %83 = call i32 (i32, i8*, %struct.sk_buff*, ...) @log_debug(i32 %79, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), %struct.sk_buff* %80, i32 %82)
  br label %84

84:                                               ; preds = %77, %74
  br label %248

85:                                               ; preds = %69
  %86 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %87 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %88 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %87, i32 0, i32 2
  %89 = call i32 @__skb_unlink(%struct.sk_buff* %86, i32* %88)
  %90 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %91 = call i64 @cxgbi_skcb_rx_pdulen(%struct.sk_buff* %90)
  %92 = load i32, i32* %6, align 4
  %93 = zext i32 %92 to i64
  %94 = add nsw i64 %93, %91
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* @CXGBI_DBG_PDU_RX, align 4
  %97 = shl i32 1, %96
  %98 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %99 = bitcast %struct.cxgbi_sock* %98 to %struct.sk_buff*
  %100 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %102 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %105 = call i32 @cxgbi_skcb_flags(%struct.sk_buff* %104)
  %106 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %107 = call i64 @cxgbi_skcb_rx_pdulen(%struct.sk_buff* %106)
  %108 = call i32 (i32, i8*, %struct.sk_buff*, ...) @log_debug(i32 %97, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), %struct.sk_buff* %99, %struct.sk_buff* %100, i32 %103, i32 %105, i64 %107)
  %109 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %110 = load i32, i32* @SKCBF_RX_COALESCED, align 4
  %111 = call i64 @cxgbi_skcb_test_flag(%struct.sk_buff* %109, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %159

113:                                              ; preds = %85
  %114 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %115 = bitcast %struct.cxgbi_sock* %114 to %struct.sk_buff*
  %116 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %117 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %118 = call i32 @skb_read_pdu_bhs(%struct.sk_buff* %115, %struct.iscsi_conn* %116, %struct.sk_buff* %117)
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %7, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %133

121:                                              ; preds = %113
  %122 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %123 = bitcast %struct.cxgbi_sock* %122 to %struct.sk_buff*
  %124 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %125 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %126 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %129 = call i32 @cxgbi_skcb_flags(%struct.sk_buff* %128)
  %130 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %131 = call i64 @cxgbi_skcb_rx_pdulen(%struct.sk_buff* %130)
  %132 = call i32 (i8*, %struct.sk_buff*, %struct.sk_buff*, i32, i32, i64, ...) @pr_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), %struct.sk_buff* %123, %struct.sk_buff* %124, i32 %127, i32 %129, i64 %131)
  br label %241

133:                                              ; preds = %113
  %134 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %135 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %136 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %140 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = add nsw i64 %138, %141
  %143 = call i32 @skb_read_pdu_data(%struct.iscsi_conn* %134, %struct.sk_buff* %135, %struct.sk_buff* %136, i64 %142)
  store i32 %143, i32* %7, align 4
  %144 = load i32, i32* %7, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %158

146:                                              ; preds = %133
  %147 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %148 = bitcast %struct.cxgbi_sock* %147 to %struct.sk_buff*
  %149 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %150 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %151 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %154 = call i32 @cxgbi_skcb_flags(%struct.sk_buff* %153)
  %155 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %156 = call i64 @cxgbi_skcb_rx_pdulen(%struct.sk_buff* %155)
  %157 = call i32 (i8*, %struct.sk_buff*, %struct.sk_buff*, i32, i32, i64, ...) @pr_err(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0), %struct.sk_buff* %148, %struct.sk_buff* %149, i32 %152, i32 %154, i64 %156)
  br label %158

158:                                              ; preds = %146, %133
  br label %240

159:                                              ; preds = %85
  %160 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %161 = bitcast %struct.cxgbi_sock* %160 to %struct.sk_buff*
  %162 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %163 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %164 = call i32 @skb_read_pdu_bhs(%struct.sk_buff* %161, %struct.iscsi_conn* %162, %struct.sk_buff* %163)
  store i32 %164, i32* %7, align 4
  %165 = load i32, i32* %7, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %179

167:                                              ; preds = %159
  %168 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %169 = bitcast %struct.cxgbi_sock* %168 to %struct.sk_buff*
  %170 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %171 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %172 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %175 = call i32 @cxgbi_skcb_flags(%struct.sk_buff* %174)
  %176 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %177 = call i64 @cxgbi_skcb_rx_pdulen(%struct.sk_buff* %176)
  %178 = call i32 (i8*, %struct.sk_buff*, %struct.sk_buff*, i32, i32, i64, ...) @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), %struct.sk_buff* %169, %struct.sk_buff* %170, i32 %173, i32 %175, i64 %177)
  br label %241

179:                                              ; preds = %159
  %180 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %181 = load i32, i32* @SKCBF_RX_DATA, align 4
  %182 = call i64 @cxgbi_skcb_test_flag(%struct.sk_buff* %180, i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %234

184:                                              ; preds = %179
  %185 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %186 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %185, i32 0, i32 2
  %187 = call %struct.sk_buff* @skb_peek(i32* %186)
  store %struct.sk_buff* %187, %struct.sk_buff** %8, align 8
  %188 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %189 = icmp ne %struct.sk_buff* %188, null
  br i1 %189, label %204, label %190

190:                                              ; preds = %184
  %191 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %192 = bitcast %struct.cxgbi_sock* %191 to %struct.sk_buff*
  %193 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %194 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %195 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %198 = call i32 @cxgbi_skcb_flags(%struct.sk_buff* %197)
  %199 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %200 = call i64 @cxgbi_skcb_rx_pdulen(%struct.sk_buff* %199)
  %201 = call i32 (i8*, %struct.sk_buff*, %struct.sk_buff*, i32, i32, i64, ...) @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0), %struct.sk_buff* %192, %struct.sk_buff* %193, i32 %196, i32 %198, i64 %200)
  %202 = load i32, i32* @EIO, align 4
  %203 = sub nsw i32 0, %202
  store i32 %203, i32* %7, align 4
  br label %241

204:                                              ; preds = %184
  %205 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %206 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %207 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %206, i32 0, i32 2
  %208 = call i32 @__skb_unlink(%struct.sk_buff* %205, i32* %207)
  %209 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %210 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %211 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %212 = call i32 @skb_read_pdu_data(%struct.iscsi_conn* %209, %struct.sk_buff* %210, %struct.sk_buff* %211, i64 0)
  store i32 %212, i32* %7, align 4
  %213 = load i32, i32* %7, align 4
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %215, label %231

215:                                              ; preds = %204
  %216 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %217 = bitcast %struct.cxgbi_sock* %216 to %struct.sk_buff*
  %218 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %219 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %220 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %223 = call i32 @cxgbi_skcb_flags(%struct.sk_buff* %222)
  %224 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %225 = call i64 @cxgbi_skcb_rx_pdulen(%struct.sk_buff* %224)
  %226 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %227 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %228 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = call i32 (i8*, %struct.sk_buff*, %struct.sk_buff*, i32, i32, i64, ...) @pr_err(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0), %struct.sk_buff* %217, %struct.sk_buff* %218, i32 %221, i32 %223, i64 %225, %struct.sk_buff* %226, i32 %229)
  br label %231

231:                                              ; preds = %215, %204
  %232 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %233 = call i32 @__kfree_skb(%struct.sk_buff* %232)
  br label %239

234:                                              ; preds = %179
  %235 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %236 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %237 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %238 = call i32 @skb_read_pdu_data(%struct.iscsi_conn* %235, %struct.sk_buff* %236, %struct.sk_buff* %237, i64 0)
  store i32 %238, i32* %7, align 4
  br label %239

239:                                              ; preds = %234, %231
  br label %240

240:                                              ; preds = %239, %158
  br label %241

241:                                              ; preds = %240, %190, %167, %121
  %242 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %243 = call i32 @__kfree_skb(%struct.sk_buff* %242)
  %244 = load i32, i32* %7, align 4
  %245 = icmp slt i32 %244, 0
  br i1 %245, label %246, label %247

246:                                              ; preds = %241
  br label %248

247:                                              ; preds = %241
  br label %59

248:                                              ; preds = %246, %84, %59
  %249 = load i32, i32* @CXGBI_DBG_PDU_RX, align 4
  %250 = shl i32 1, %249
  %251 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %252 = bitcast %struct.cxgbi_sock* %251 to %struct.sk_buff*
  %253 = load i32, i32* %6, align 4
  %254 = call i32 (i32, i8*, %struct.sk_buff*, ...) @log_debug(i32 %250, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), %struct.sk_buff* %252, i32 %253)
  %255 = load i32, i32* %6, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %272

257:                                              ; preds = %248
  %258 = load i32, i32* %6, align 4
  %259 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %260 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = add i32 %261, %258
  store i32 %262, i32* %260, align 8
  %263 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %264 = bitcast %struct.cxgbi_sock* %263 to %struct.sk_buff*
  %265 = load i32, i32* %6, align 4
  %266 = call i32 @csk_return_rx_credits(%struct.sk_buff* %264, i32 %265)
  %267 = load i32, i32* %6, align 4
  %268 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %269 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 4
  %271 = add i32 %270, %267
  store i32 %271, i32* %269, align 4
  br label %272

272:                                              ; preds = %257, %248
  %273 = load i32, i32* %7, align 4
  %274 = icmp slt i32 %273, 0
  br i1 %274, label %275, label %285

275:                                              ; preds = %272
  %276 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %277 = bitcast %struct.cxgbi_sock* %276 to %struct.sk_buff*
  %278 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %279 = load i32, i32* %7, align 4
  %280 = load i32, i32* %6, align 4
  %281 = call i32 @pr_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), %struct.sk_buff* %277, %struct.iscsi_conn* %278, i32 %279, i32 %280)
  %282 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %283 = load i32, i32* @ISCSI_ERR_CONN_FAILED, align 4
  %284 = call i32 @iscsi_conn_failure(%struct.iscsi_conn* %282, i32 %283)
  br label %285

285:                                              ; preds = %55, %275, %272
  ret void
}

declare dso_local i32 @log_debug(i32, i8*, %struct.sk_buff*, ...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.sk_buff* @skb_peek(i32*) #1

declare dso_local i64 @cxgbi_skcb_test_flag(%struct.sk_buff*, i32) #1

declare dso_local i32 @cxgbi_skcb_flags(%struct.sk_buff*) #1

declare dso_local i32 @__skb_unlink(%struct.sk_buff*, i32*) #1

declare dso_local i64 @cxgbi_skcb_rx_pdulen(%struct.sk_buff*) #1

declare dso_local i32 @skb_read_pdu_bhs(%struct.sk_buff*, %struct.iscsi_conn*, %struct.sk_buff*) #1

declare dso_local i32 @pr_err(i8*, %struct.sk_buff*, %struct.sk_buff*, i32, i32, i64, ...) #1

declare dso_local i32 @skb_read_pdu_data(%struct.iscsi_conn*, %struct.sk_buff*, %struct.sk_buff*, i64) #1

declare dso_local i32 @__kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @csk_return_rx_credits(%struct.sk_buff*, i32) #1

declare dso_local i32 @pr_info(i8*, %struct.sk_buff*, %struct.iscsi_conn*, i32, i32) #1

declare dso_local i32 @iscsi_conn_failure(%struct.iscsi_conn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
