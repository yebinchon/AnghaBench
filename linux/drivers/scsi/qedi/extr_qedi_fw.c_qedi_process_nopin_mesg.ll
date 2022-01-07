; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw.c_qedi_process_nopin_mesg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw.c_qedi_process_nopin_mesg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedi_ctx = type { i32, i32 }
%union.iscsi_cqe = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.iscsi_nop_in_hdr }
%struct.iscsi_nop_in_hdr = type { i32, i32, i32, i32, i32, i32 }
%struct.iscsi_task = type { %struct.qedi_cmd* }
%struct.qedi_cmd = type { i32, i32, i32, i32 }
%struct.qedi_conn = type { i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.iscsi_session* }
%struct.iscsi_session = type { i32, i32 }
%struct.iscsi_nopin = type { i32, i32, i32, i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.iscsi_hdr = type { i32 }

@QEDI_BDQ_BUF_SIZE = common dso_local global i32 0, align 4
@ISCSI_NOP_IN_HDR_DATA_SEG_LEN_MASK = common dso_local global i32 0, align 4
@ISCSI_CQE_TYPE_UNSOLICITED = common dso_local global i64 0, align 8
@RESERVED_ITT = common dso_local global i32 0, align 4
@ISCSI_FLAG_CMD_FINAL = common dso_local global i32 0, align 4
@QEDI_LOG_TID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Freeing tid=0x%x for cid=0x%x\0A\00", align 1
@RESPONSE_RECEIVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedi_ctx*, %union.iscsi_cqe*, %struct.iscsi_task*, %struct.qedi_conn*, i32)* @qedi_process_nopin_mesg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedi_process_nopin_mesg(%struct.qedi_ctx* %0, %union.iscsi_cqe* %1, %struct.iscsi_task* %2, %struct.qedi_conn* %3, i32 %4) #0 {
  %6 = alloca %struct.qedi_ctx*, align 8
  %7 = alloca %union.iscsi_cqe*, align 8
  %8 = alloca %struct.iscsi_task*, align 8
  %9 = alloca %struct.qedi_conn*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.iscsi_conn*, align 8
  %12 = alloca %struct.iscsi_session*, align 8
  %13 = alloca %struct.iscsi_nop_in_hdr*, align 8
  %14 = alloca %struct.iscsi_nopin*, align 8
  %15 = alloca %struct.qedi_cmd*, align 8
  %16 = alloca i32, align 4
  %17 = alloca [2 x i32], align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.qedi_ctx* %0, %struct.qedi_ctx** %6, align 8
  store %union.iscsi_cqe* %1, %union.iscsi_cqe** %7, align 8
  store %struct.iscsi_task* %2, %struct.iscsi_task** %8, align 8
  store %struct.qedi_conn* %3, %struct.qedi_conn** %9, align 8
  store i32 %4, i32* %10, align 4
  %23 = load %struct.qedi_conn*, %struct.qedi_conn** %9, align 8
  %24 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %23, i32 0, i32 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.iscsi_conn*, %struct.iscsi_conn** %26, align 8
  store %struct.iscsi_conn* %27, %struct.iscsi_conn** %11, align 8
  %28 = load %struct.iscsi_conn*, %struct.iscsi_conn** %11, align 8
  %29 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %28, i32 0, i32 0
  %30 = load %struct.iscsi_session*, %struct.iscsi_session** %29, align 8
  store %struct.iscsi_session* %30, %struct.iscsi_session** %12, align 8
  store i32 0, i32* %16, align 4
  %31 = load i32, i32* @QEDI_BDQ_BUF_SIZE, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %20, align 8
  %34 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %21, align 8
  %35 = load %struct.iscsi_session*, %struct.iscsi_session** %12, align 8
  %36 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %35, i32 0, i32 0
  %37 = call i32 @spin_lock_bh(i32* %36)
  %38 = load %union.iscsi_cqe*, %union.iscsi_cqe** %7, align 8
  %39 = bitcast %union.iscsi_cqe* %38 to %struct.TYPE_9__*
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  store %struct.iscsi_nop_in_hdr* %41, %struct.iscsi_nop_in_hdr** %13, align 8
  %42 = load %struct.iscsi_nop_in_hdr*, %struct.iscsi_nop_in_hdr** %13, align 8
  %43 = getelementptr inbounds %struct.iscsi_nop_in_hdr, %struct.iscsi_nop_in_hdr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @ISCSI_NOP_IN_HDR_DATA_SEG_LEN_MASK, align 4
  %46 = and i32 %44, %45
  store i32 %46, i32* %18, align 4
  %47 = load i32, i32* %18, align 4
  %48 = load i32, i32* @QEDI_BDQ_BUF_SIZE, align 4
  %49 = sdiv i32 %47, %48
  store i32 %49, i32* %19, align 4
  %50 = load %struct.qedi_conn*, %struct.qedi_conn** %9, align 8
  %51 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = bitcast i32* %52 to %struct.iscsi_nopin*
  store %struct.iscsi_nopin* %53, %struct.iscsi_nopin** %14, align 8
  %54 = load %struct.iscsi_nopin*, %struct.iscsi_nopin** %14, align 8
  %55 = call i32 @memset(%struct.iscsi_nopin* %54, i32 0, i32 4)
  %56 = load %struct.iscsi_nop_in_hdr*, %struct.iscsi_nop_in_hdr** %13, align 8
  %57 = getelementptr inbounds %struct.iscsi_nop_in_hdr, %struct.iscsi_nop_in_hdr* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.iscsi_nopin*, %struct.iscsi_nopin** %14, align 8
  %60 = getelementptr inbounds %struct.iscsi_nopin, %struct.iscsi_nopin* %59, i32 0, i32 7
  store i32 %58, i32* %60, align 8
  %61 = load %struct.iscsi_nop_in_hdr*, %struct.iscsi_nop_in_hdr** %13, align 8
  %62 = getelementptr inbounds %struct.iscsi_nop_in_hdr, %struct.iscsi_nop_in_hdr* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @cpu_to_be32(i32 %63)
  %65 = load %struct.iscsi_nopin*, %struct.iscsi_nopin** %14, align 8
  %66 = getelementptr inbounds %struct.iscsi_nopin, %struct.iscsi_nopin* %65, i32 0, i32 6
  store i8* %64, i8** %66, align 8
  %67 = load %struct.iscsi_nop_in_hdr*, %struct.iscsi_nop_in_hdr** %13, align 8
  %68 = getelementptr inbounds %struct.iscsi_nop_in_hdr, %struct.iscsi_nop_in_hdr* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @cpu_to_be32(i32 %69)
  %71 = load %struct.iscsi_nopin*, %struct.iscsi_nopin** %14, align 8
  %72 = getelementptr inbounds %struct.iscsi_nopin, %struct.iscsi_nopin* %71, i32 0, i32 5
  store i8* %70, i8** %72, align 8
  %73 = load %struct.iscsi_nop_in_hdr*, %struct.iscsi_nop_in_hdr** %13, align 8
  %74 = getelementptr inbounds %struct.iscsi_nop_in_hdr, %struct.iscsi_nop_in_hdr* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @cpu_to_be32(i32 %75)
  %77 = load %struct.iscsi_nopin*, %struct.iscsi_nopin** %14, align 8
  %78 = getelementptr inbounds %struct.iscsi_nopin, %struct.iscsi_nopin* %77, i32 0, i32 4
  store i8* %76, i8** %78, align 8
  %79 = load %struct.iscsi_nop_in_hdr*, %struct.iscsi_nop_in_hdr** %13, align 8
  %80 = getelementptr inbounds %struct.iscsi_nop_in_hdr, %struct.iscsi_nop_in_hdr* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @cpu_to_be32(i32 %81)
  %83 = load %struct.iscsi_nopin*, %struct.iscsi_nopin** %14, align 8
  %84 = getelementptr inbounds %struct.iscsi_nopin, %struct.iscsi_nopin* %83, i32 0, i32 3
  store i8* %82, i8** %84, align 8
  %85 = load %union.iscsi_cqe*, %union.iscsi_cqe** %7, align 8
  %86 = bitcast %union.iscsi_cqe* %85 to %struct.TYPE_9__*
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @ISCSI_CQE_TYPE_UNSOLICITED, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %109

91:                                               ; preds = %5
  %92 = load %struct.qedi_ctx*, %struct.qedi_ctx** %6, align 8
  %93 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %92, i32 0, i32 1
  %94 = load i64, i64* %22, align 8
  %95 = call i32 @spin_lock_irqsave(i32* %93, i64 %94)
  %96 = load %struct.qedi_ctx*, %struct.qedi_ctx** %6, align 8
  %97 = load %union.iscsi_cqe*, %union.iscsi_cqe** %7, align 8
  %98 = bitcast %union.iscsi_cqe* %97 to i32*
  %99 = load i32, i32* %18, align 4
  %100 = load i32, i32* %19, align 4
  %101 = call i32 @qedi_unsol_pdu_adjust_bdq(%struct.qedi_ctx* %96, i32* %98, i32 %99, i32 %100, i8* %34)
  %102 = load i32, i32* @RESERVED_ITT, align 4
  %103 = load %struct.iscsi_nopin*, %struct.iscsi_nopin** %14, align 8
  %104 = getelementptr inbounds %struct.iscsi_nopin, %struct.iscsi_nopin* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  store i32 1, i32* %16, align 4
  %105 = load %struct.qedi_ctx*, %struct.qedi_ctx** %6, align 8
  %106 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %105, i32 0, i32 1
  %107 = load i64, i64* %22, align 8
  %108 = call i32 @spin_unlock_irqrestore(i32* %106, i64 %107)
  br label %178

109:                                              ; preds = %5
  %110 = load %struct.iscsi_task*, %struct.iscsi_task** %8, align 8
  %111 = icmp ne %struct.iscsi_task* %110, null
  br i1 %111, label %112, label %177

112:                                              ; preds = %109
  %113 = load %struct.iscsi_task*, %struct.iscsi_task** %8, align 8
  %114 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %113, i32 0, i32 0
  %115 = load %struct.qedi_cmd*, %struct.qedi_cmd** %114, align 8
  store %struct.qedi_cmd* %115, %struct.qedi_cmd** %15, align 8
  %116 = load i32, i32* @ISCSI_FLAG_CMD_FINAL, align 4
  %117 = load %struct.iscsi_nopin*, %struct.iscsi_nopin** %14, align 8
  %118 = getelementptr inbounds %struct.iscsi_nopin, %struct.iscsi_nopin* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 8
  %119 = load %union.iscsi_cqe*, %union.iscsi_cqe** %7, align 8
  %120 = bitcast %union.iscsi_cqe* %119 to %struct.TYPE_10__*
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.iscsi_conn*, %struct.iscsi_conn** %11, align 8
  %124 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %123, i32 0, i32 0
  %125 = load %struct.iscsi_session*, %struct.iscsi_session** %124, align 8
  %126 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @build_itt(i32 %122, i32 %127)
  %129 = load %struct.iscsi_nopin*, %struct.iscsi_nopin** %14, align 8
  %130 = getelementptr inbounds %struct.iscsi_nopin, %struct.iscsi_nopin* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  store i32 -1, i32* %131, align 4
  %132 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  store i32 -1, i32* %132, align 4
  %133 = load %struct.iscsi_nopin*, %struct.iscsi_nopin** %14, align 8
  %134 = getelementptr inbounds %struct.iscsi_nopin, %struct.iscsi_nopin* %133, i32 0, i32 0
  %135 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %136 = call i32 @memcpy(i32* %134, i32* %135, i32 4)
  %137 = load %struct.qedi_ctx*, %struct.qedi_ctx** %6, align 8
  %138 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %137, i32 0, i32 0
  %139 = load i32, i32* @QEDI_LOG_TID, align 4
  %140 = load %struct.qedi_cmd*, %struct.qedi_cmd** %15, align 8
  %141 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.qedi_conn*, %struct.qedi_conn** %9, align 8
  %144 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @QEDI_INFO(i32* %138, i32 %139, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %142, i32 %145)
  %147 = load i32, i32* @RESPONSE_RECEIVED, align 4
  %148 = load %struct.qedi_cmd*, %struct.qedi_cmd** %15, align 8
  %149 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %148, i32 0, i32 3
  store i32 %147, i32* %149, align 4
  %150 = load %struct.qedi_conn*, %struct.qedi_conn** %9, align 8
  %151 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %150, i32 0, i32 0
  %152 = call i32 @spin_lock(i32* %151)
  %153 = load %struct.qedi_cmd*, %struct.qedi_cmd** %15, align 8
  %154 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i64 @likely(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %168

158:                                              ; preds = %112
  %159 = load %struct.qedi_cmd*, %struct.qedi_cmd** %15, align 8
  %160 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %159, i32 0, i32 0
  store i32 0, i32* %160, align 4
  %161 = load %struct.qedi_cmd*, %struct.qedi_cmd** %15, align 8
  %162 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %161, i32 0, i32 2
  %163 = call i32 @list_del_init(i32* %162)
  %164 = load %struct.qedi_conn*, %struct.qedi_conn** %9, align 8
  %165 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %166, -1
  store i32 %167, i32* %165, align 4
  br label %168

168:                                              ; preds = %158, %112
  %169 = load %struct.qedi_conn*, %struct.qedi_conn** %9, align 8
  %170 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %169, i32 0, i32 0
  %171 = call i32 @spin_unlock(i32* %170)
  %172 = load %struct.qedi_ctx*, %struct.qedi_ctx** %6, align 8
  %173 = load %struct.qedi_cmd*, %struct.qedi_cmd** %15, align 8
  %174 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @qedi_clear_task_idx(%struct.qedi_ctx* %172, i32 %175)
  br label %177

177:                                              ; preds = %168, %109
  br label %178

178:                                              ; preds = %177, %91
  %179 = load %struct.iscsi_conn*, %struct.iscsi_conn** %11, align 8
  %180 = load %struct.iscsi_nopin*, %struct.iscsi_nopin** %14, align 8
  %181 = bitcast %struct.iscsi_nopin* %180 to %struct.iscsi_hdr*
  %182 = load i32, i32* %18, align 4
  %183 = call i32 @__iscsi_complete_pdu(%struct.iscsi_conn* %179, %struct.iscsi_hdr* %181, i8* %34, i32 %182)
  %184 = load %struct.iscsi_session*, %struct.iscsi_session** %12, align 8
  %185 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %184, i32 0, i32 0
  %186 = call i32 @spin_unlock_bh(i32* %185)
  %187 = load i32, i32* %16, align 4
  %188 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %188)
  ret i32 %187
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @spin_lock_bh(i32*) #2

declare dso_local i32 @memset(%struct.iscsi_nopin*, i32, i32) #2

declare dso_local i8* @cpu_to_be32(i32) #2

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #2

declare dso_local i32 @qedi_unsol_pdu_adjust_bdq(%struct.qedi_ctx*, i32*, i32, i32, i8*) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #2

declare dso_local i32 @build_itt(i32, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @QEDI_INFO(i32*, i32, i8*, i32, i32) #2

declare dso_local i32 @spin_lock(i32*) #2

declare dso_local i64 @likely(i32) #2

declare dso_local i32 @list_del_init(i32*) #2

declare dso_local i32 @spin_unlock(i32*) #2

declare dso_local i32 @qedi_clear_task_idx(%struct.qedi_ctx*, i32) #2

declare dso_local i32 @__iscsi_complete_pdu(%struct.iscsi_conn*, %struct.iscsi_hdr*, i8*, i32) #2

declare dso_local i32 @spin_unlock_bh(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
