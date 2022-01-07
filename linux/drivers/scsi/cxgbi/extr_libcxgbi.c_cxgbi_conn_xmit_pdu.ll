; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_conn_xmit_pdu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_conn_xmit_pdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_task = type { %struct.TYPE_7__*, %struct.iscsi_task*, i32, i32 }
%struct.TYPE_7__ = type { i32, i64, i64, %struct.iscsi_tcp_conn* }
%struct.iscsi_tcp_conn = type { %struct.cxgbi_conn* }
%struct.cxgbi_conn = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.cxgbi_sock* }
%struct.cxgbi_sock = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 (%struct.cxgbi_ppm*, %struct.cxgbi_sock*, %struct.cxgbi_task_tag_info*)*, %struct.cxgbi_ppm* (%struct.TYPE_6__*)* }
%struct.cxgbi_ppm = type { i32 }
%struct.cxgbi_task_tag_info = type { i32 }
%struct.cxgbi_task_data = type { %struct.sk_buff*, %struct.cxgbi_task_tag_info }
%struct.sk_buff = type { i32, i32, i32 }

@CXGBI_DBG_ISCSI = common dso_local global i32 0, align 4
@CXGBI_DBG_PDU_TX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"task 0x%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"task 0x%p, csk gone.\0A\00", align 1
@EPIPE = common dso_local global i32 0, align 4
@CXGBI_PPOD_INFO_FLAG_VALID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"task 0x%p, ppod writing using ofldq failed.\0A\00", align 1
@SKB_TX_ISCSI_PDU_HEADER_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"task 0x%p,0x%p, skb 0x%p, len %u/%u, rv %d.\0A\00", align 1
@ISCSI_DIGEST_SIZE = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"task 0x%p, skb 0x%p, len %u/%u, %d EAGAIN.\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"itt 0x%x, skb 0x%p, len %u/%u, xmit err %d.\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"xmit err %d.\0A\00", align 1
@ISCSI_ERR_XMIT_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxgbi_conn_xmit_pdu(%struct.iscsi_task* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iscsi_task*, align 8
  %4 = alloca %struct.iscsi_tcp_conn*, align 8
  %5 = alloca %struct.cxgbi_conn*, align 8
  %6 = alloca %struct.cxgbi_task_data*, align 8
  %7 = alloca %struct.cxgbi_task_tag_info*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.cxgbi_sock*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.cxgbi_ppm*, align 8
  %13 = alloca i32, align 4
  store %struct.iscsi_task* %0, %struct.iscsi_task** %3, align 8
  %14 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %15 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 3
  %18 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %17, align 8
  store %struct.iscsi_tcp_conn* %18, %struct.iscsi_tcp_conn** %4, align 8
  %19 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %4, align 8
  %20 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %19, i32 0, i32 0
  %21 = load %struct.cxgbi_conn*, %struct.cxgbi_conn** %20, align 8
  store %struct.cxgbi_conn* %21, %struct.cxgbi_conn** %5, align 8
  %22 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %23 = call %struct.cxgbi_task_data* @iscsi_task_cxgbi_data(%struct.iscsi_task* %22)
  store %struct.cxgbi_task_data* %23, %struct.cxgbi_task_data** %6, align 8
  %24 = load %struct.cxgbi_task_data*, %struct.cxgbi_task_data** %6, align 8
  %25 = getelementptr inbounds %struct.cxgbi_task_data, %struct.cxgbi_task_data* %24, i32 0, i32 1
  store %struct.cxgbi_task_tag_info* %25, %struct.cxgbi_task_tag_info** %7, align 8
  %26 = load %struct.cxgbi_task_data*, %struct.cxgbi_task_data** %6, align 8
  %27 = getelementptr inbounds %struct.cxgbi_task_data, %struct.cxgbi_task_data* %26, i32 0, i32 0
  %28 = load %struct.sk_buff*, %struct.sk_buff** %27, align 8
  store %struct.sk_buff* %28, %struct.sk_buff** %8, align 8
  store %struct.cxgbi_sock* null, %struct.cxgbi_sock** %9, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %30 = icmp ne %struct.sk_buff* %29, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %1
  %32 = load i32, i32* @CXGBI_DBG_ISCSI, align 4
  %33 = shl i32 1, %32
  %34 = load i32, i32* @CXGBI_DBG_PDU_TX, align 4
  %35 = shl i32 1, %34
  %36 = or i32 %33, %35
  %37 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %38 = call i32 (i32, i8*, %struct.iscsi_task*, ...) @log_debug(i32 %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.iscsi_task* %37)
  store i32 0, i32* %2, align 4
  br label %244

39:                                               ; preds = %1
  %40 = load %struct.cxgbi_conn*, %struct.cxgbi_conn** %5, align 8
  %41 = icmp ne %struct.cxgbi_conn* %40, null
  br i1 %41, label %42, label %53

42:                                               ; preds = %39
  %43 = load %struct.cxgbi_conn*, %struct.cxgbi_conn** %5, align 8
  %44 = getelementptr inbounds %struct.cxgbi_conn, %struct.cxgbi_conn* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = icmp ne %struct.TYPE_5__* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.cxgbi_conn*, %struct.cxgbi_conn** %5, align 8
  %49 = getelementptr inbounds %struct.cxgbi_conn, %struct.cxgbi_conn* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %51, align 8
  store %struct.cxgbi_sock* %52, %struct.cxgbi_sock** %9, align 8
  br label %53

53:                                               ; preds = %47, %42, %39
  %54 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %9, align 8
  %55 = icmp ne %struct.cxgbi_sock* %54, null
  br i1 %55, label %66, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* @CXGBI_DBG_ISCSI, align 4
  %58 = shl i32 1, %57
  %59 = load i32, i32* @CXGBI_DBG_PDU_TX, align 4
  %60 = shl i32 1, %59
  %61 = or i32 %58, %60
  %62 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %63 = call i32 (i32, i8*, %struct.iscsi_task*, ...) @log_debug(i32 %61, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), %struct.iscsi_task* %62)
  %64 = load i32, i32* @EPIPE, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %244

66:                                               ; preds = %53
  %67 = load %struct.cxgbi_task_data*, %struct.cxgbi_task_data** %6, align 8
  %68 = getelementptr inbounds %struct.cxgbi_task_data, %struct.cxgbi_task_data* %67, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %68, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %10, align 4
  %72 = load %struct.cxgbi_task_tag_info*, %struct.cxgbi_task_tag_info** %7, align 8
  %73 = getelementptr inbounds %struct.cxgbi_task_tag_info, %struct.cxgbi_task_tag_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @CXGBI_PPOD_INFO_FLAG_VALID, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %108

78:                                               ; preds = %66
  %79 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %9, align 8
  %80 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %79, i32 0, i32 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load %struct.cxgbi_ppm* (%struct.TYPE_6__*)*, %struct.cxgbi_ppm* (%struct.TYPE_6__*)** %82, align 8
  %84 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %9, align 8
  %85 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %84, i32 0, i32 0
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = call %struct.cxgbi_ppm* %83(%struct.TYPE_6__* %86)
  store %struct.cxgbi_ppm* %87, %struct.cxgbi_ppm** %12, align 8
  %88 = load i32, i32* @CXGBI_PPOD_INFO_FLAG_VALID, align 4
  %89 = xor i32 %88, -1
  %90 = load %struct.cxgbi_task_tag_info*, %struct.cxgbi_task_tag_info** %7, align 8
  %91 = getelementptr inbounds %struct.cxgbi_task_tag_info, %struct.cxgbi_task_tag_info* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, %89
  store i32 %93, i32* %91, align 4
  %94 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %9, align 8
  %95 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %94, i32 0, i32 0
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i64 (%struct.cxgbi_ppm*, %struct.cxgbi_sock*, %struct.cxgbi_task_tag_info*)*, i64 (%struct.cxgbi_ppm*, %struct.cxgbi_sock*, %struct.cxgbi_task_tag_info*)** %97, align 8
  %99 = load %struct.cxgbi_ppm*, %struct.cxgbi_ppm** %12, align 8
  %100 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %9, align 8
  %101 = load %struct.cxgbi_task_tag_info*, %struct.cxgbi_task_tag_info** %7, align 8
  %102 = call i64 %98(%struct.cxgbi_ppm* %99, %struct.cxgbi_sock* %100, %struct.cxgbi_task_tag_info* %101)
  %103 = icmp slt i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %78
  %105 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %106 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), %struct.iscsi_task* %105)
  br label %107

107:                                              ; preds = %104, %78
  br label %108

108:                                              ; preds = %107, %66
  %109 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %110 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %122, label %113

113:                                              ; preds = %108
  %114 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %115 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %118 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @SKB_TX_ISCSI_PDU_HEADER_MAX, align 4
  %121 = call i32 @memcpy(i32 %116, i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %113, %108
  %123 = load %struct.cxgbi_conn*, %struct.cxgbi_conn** %5, align 8
  %124 = getelementptr inbounds %struct.cxgbi_conn, %struct.cxgbi_conn* %123, i32 0, i32 0
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %126, align 8
  %128 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %129 = call i32 @cxgbi_sock_send_pdus(%struct.cxgbi_sock* %127, %struct.sk_buff* %128)
  store i32 %129, i32* %11, align 4
  %130 = load i32, i32* %11, align 4
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %185

132:                                              ; preds = %122
  %133 = load i32, i32* %11, align 4
  store i32 %133, i32* %13, align 4
  %134 = load i32, i32* @CXGBI_DBG_PDU_TX, align 4
  %135 = shl i32 1, %134
  %136 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %137 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %138 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %141 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %142 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %145 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %11, align 4
  %148 = call i32 (i32, i8*, %struct.iscsi_task*, ...) @log_debug(i32 %135, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), %struct.iscsi_task* %136, i32 %139, %struct.sk_buff* %140, i32 %143, i32 %146, i32 %147)
  %149 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %150 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %149, i32 0, i32 0
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %132
  %156 = load i64, i64* @ISCSI_DIGEST_SIZE, align 8
  %157 = load i32, i32* %13, align 4
  %158 = sext i32 %157 to i64
  %159 = add nsw i64 %158, %156
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %13, align 4
  br label %161

161:                                              ; preds = %155, %132
  %162 = load i32, i32* %10, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %177

164:                                              ; preds = %161
  %165 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %166 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %165, i32 0, i32 0
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %164
  %172 = load i64, i64* @ISCSI_DIGEST_SIZE, align 8
  %173 = load i32, i32* %13, align 4
  %174 = sext i32 %173 to i64
  %175 = add nsw i64 %174, %172
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* %13, align 4
  br label %177

177:                                              ; preds = %171, %164, %161
  %178 = load i32, i32* %13, align 4
  %179 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %180 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %179, i32 0, i32 0
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = add nsw i32 %183, %178
  store i32 %184, i32* %182, align 8
  store i32 0, i32* %2, align 4
  br label %244

185:                                              ; preds = %122
  %186 = load i32, i32* %11, align 4
  %187 = load i32, i32* @EAGAIN, align 4
  %188 = sub nsw i32 0, %187
  %189 = icmp eq i32 %186, %188
  br i1 %189, label %195, label %190

190:                                              ; preds = %185
  %191 = load i32, i32* %11, align 4
  %192 = load i32, i32* @ENOBUFS, align 4
  %193 = sub nsw i32 0, %192
  %194 = icmp eq i32 %191, %193
  br i1 %194, label %195, label %212

195:                                              ; preds = %190, %185
  %196 = load i32, i32* @CXGBI_DBG_PDU_TX, align 4
  %197 = shl i32 1, %196
  %198 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %199 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %200 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %201 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %204 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* %11, align 4
  %207 = call i32 (i32, i8*, %struct.iscsi_task*, ...) @log_debug(i32 %197, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), %struct.iscsi_task* %198, %struct.sk_buff* %199, i32 %202, i32 %205, i32 %206)
  %208 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %209 = load %struct.cxgbi_task_data*, %struct.cxgbi_task_data** %6, align 8
  %210 = getelementptr inbounds %struct.cxgbi_task_data, %struct.cxgbi_task_data* %209, i32 0, i32 0
  store %struct.sk_buff* %208, %struct.sk_buff** %210, align 8
  %211 = load i32, i32* %11, align 4
  store i32 %211, i32* %2, align 4
  br label %244

212:                                              ; preds = %190
  %213 = load i32, i32* @CXGBI_DBG_ISCSI, align 4
  %214 = shl i32 1, %213
  %215 = load i32, i32* @CXGBI_DBG_PDU_TX, align 4
  %216 = shl i32 1, %215
  %217 = or i32 %214, %216
  %218 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %219 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %218, i32 0, i32 1
  %220 = load %struct.iscsi_task*, %struct.iscsi_task** %219, align 8
  %221 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %222 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %223 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %226 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* %11, align 4
  %229 = call i32 (i32, i8*, %struct.iscsi_task*, ...) @log_debug(i32 %217, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), %struct.iscsi_task* %220, %struct.sk_buff* %221, i32 %224, i32 %227, i32 %228)
  %230 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %231 = call i32 @__kfree_skb(%struct.sk_buff* %230)
  %232 = load i32, i32* @KERN_ERR, align 4
  %233 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %234 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %233, i32 0, i32 0
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** %234, align 8
  %236 = load i32, i32* %11, align 4
  %237 = call i32 @iscsi_conn_printk(i32 %232, %struct.TYPE_7__* %235, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %236)
  %238 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %239 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %238, i32 0, i32 0
  %240 = load %struct.TYPE_7__*, %struct.TYPE_7__** %239, align 8
  %241 = load i32, i32* @ISCSI_ERR_XMIT_FAILED, align 4
  %242 = call i32 @iscsi_conn_failure(%struct.TYPE_7__* %240, i32 %241)
  %243 = load i32, i32* %11, align 4
  store i32 %243, i32* %2, align 4
  br label %244

244:                                              ; preds = %212, %195, %177, %56, %31
  %245 = load i32, i32* %2, align 4
  ret i32 %245
}

declare dso_local %struct.cxgbi_task_data* @iscsi_task_cxgbi_data(%struct.iscsi_task*) #1

declare dso_local i32 @log_debug(i32, i8*, %struct.iscsi_task*, ...) #1

declare dso_local i32 @pr_err(i8*, %struct.iscsi_task*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @cxgbi_sock_send_pdus(%struct.cxgbi_sock*, %struct.sk_buff*) #1

declare dso_local i32 @__kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @iscsi_conn_printk(i32, %struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @iscsi_conn_failure(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
