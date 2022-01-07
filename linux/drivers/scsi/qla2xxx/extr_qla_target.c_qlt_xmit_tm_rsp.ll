; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_xmit_tm_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_xmit_tm_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_tgt_mgmt_cmd = type { i32, %struct.TYPE_20__, %struct.TYPE_13__*, i32, i32, %struct.qla_qpair* }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_12__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { %struct.qla_tgt_mgmt_cmd*, %struct.scsi_qla_host* }
%struct.scsi_qla_host = type { %struct.qla_hw_data*, %struct.TYPE_14__ }
%struct.qla_hw_data = type { %struct.TYPE_22__, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 (%struct.qla_tgt_mgmt_cmd*)* }
%struct.TYPE_14__ = type { i32 }
%struct.qla_qpair = type { i32, i32 }

@ql_dbg_tgt_mgt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"TM response mcmd (%p) status %#x state %#x\00", align 1
@ql_dbg_async = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"RESET-TMR online/active/old-count/new-count = %d/%d/%d/%d.\0A\00", align 1
@QLA24XX_MGMT_SEND_NACK = common dso_local global i32 0, align 4
@ql_dbg_disc = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"TM response logo %8phC status %#x state %#x\00", align 1
@ABTS_RECV_24XX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlt_xmit_tm_rsp(%struct.qla_tgt_mgmt_cmd* %0) #0 {
  %2 = alloca %struct.qla_tgt_mgmt_cmd*, align 8
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca %struct.qla_hw_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.qla_qpair*, align 8
  %7 = alloca i32, align 4
  store %struct.qla_tgt_mgmt_cmd* %0, %struct.qla_tgt_mgmt_cmd** %2, align 8
  %8 = load %struct.qla_tgt_mgmt_cmd*, %struct.qla_tgt_mgmt_cmd** %2, align 8
  %9 = getelementptr inbounds %struct.qla_tgt_mgmt_cmd, %struct.qla_tgt_mgmt_cmd* %8, i32 0, i32 2
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %12 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %11, align 8
  store %struct.scsi_qla_host* %12, %struct.scsi_qla_host** %3, align 8
  %13 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %14 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %13, i32 0, i32 0
  %15 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  store %struct.qla_hw_data* %15, %struct.qla_hw_data** %4, align 8
  %16 = load %struct.qla_tgt_mgmt_cmd*, %struct.qla_tgt_mgmt_cmd** %2, align 8
  %17 = getelementptr inbounds %struct.qla_tgt_mgmt_cmd, %struct.qla_tgt_mgmt_cmd* %16, i32 0, i32 5
  %18 = load %struct.qla_qpair*, %struct.qla_qpair** %17, align 8
  store %struct.qla_qpair* %18, %struct.qla_qpair** %6, align 8
  store i32 1, i32* %7, align 4
  %19 = load i32, i32* @ql_dbg_tgt_mgt, align 4
  %20 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %21 = load %struct.qla_tgt_mgmt_cmd*, %struct.qla_tgt_mgmt_cmd** %2, align 8
  %22 = load %struct.qla_tgt_mgmt_cmd*, %struct.qla_tgt_mgmt_cmd** %2, align 8
  %23 = getelementptr inbounds %struct.qla_tgt_mgmt_cmd, %struct.qla_tgt_mgmt_cmd* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.qla_tgt_mgmt_cmd*, %struct.qla_tgt_mgmt_cmd** %2, align 8
  %26 = getelementptr inbounds %struct.qla_tgt_mgmt_cmd, %struct.qla_tgt_mgmt_cmd* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, %struct.qla_tgt_mgmt_cmd*, i32, i32, ...) @ql_dbg(i32 %19, %struct.scsi_qla_host* %20, i32 61459, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), %struct.qla_tgt_mgmt_cmd* %21, i32 %24, i32 %27)
  %29 = load %struct.qla_qpair*, %struct.qla_qpair** %6, align 8
  %30 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @spin_lock_irqsave(i32 %31, i64 %32)
  %34 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %35 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %1
  %40 = load %struct.qla_tgt_mgmt_cmd*, %struct.qla_tgt_mgmt_cmd** %2, align 8
  %41 = getelementptr inbounds %struct.qla_tgt_mgmt_cmd, %struct.qla_tgt_mgmt_cmd* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.qla_qpair*, %struct.qla_qpair** %6, align 8
  %44 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %42, %45
  br i1 %46, label %47, label %78

47:                                               ; preds = %39, %1
  %48 = load i32, i32* @ql_dbg_async, align 4
  %49 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %50 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %51 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to %struct.qla_tgt_mgmt_cmd*
  %56 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %57 = call i32 @qla2x00_reset_active(%struct.scsi_qla_host* %56)
  %58 = load %struct.qla_tgt_mgmt_cmd*, %struct.qla_tgt_mgmt_cmd** %2, align 8
  %59 = getelementptr inbounds %struct.qla_tgt_mgmt_cmd, %struct.qla_tgt_mgmt_cmd* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.qla_qpair*, %struct.qla_qpair** %6, align 8
  %62 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, %struct.qla_tgt_mgmt_cmd*, i32, i32, ...) @ql_dbg(i32 %48, %struct.scsi_qla_host* %49, i32 57600, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), %struct.qla_tgt_mgmt_cmd* %55, i32 %57, i32 %60, i32 %63)
  %65 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %66 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 0
  %70 = load i32 (%struct.qla_tgt_mgmt_cmd*)*, i32 (%struct.qla_tgt_mgmt_cmd*)** %69, align 8
  %71 = load %struct.qla_tgt_mgmt_cmd*, %struct.qla_tgt_mgmt_cmd** %2, align 8
  %72 = call i32 %70(%struct.qla_tgt_mgmt_cmd* %71)
  %73 = load %struct.qla_qpair*, %struct.qla_qpair** %6, align 8
  %74 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i64, i64* %5, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32 %75, i64 %76)
  br label %161

78:                                               ; preds = %39
  %79 = load %struct.qla_tgt_mgmt_cmd*, %struct.qla_tgt_mgmt_cmd** %2, align 8
  %80 = getelementptr inbounds %struct.qla_tgt_mgmt_cmd, %struct.qla_tgt_mgmt_cmd* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @QLA24XX_MGMT_SEND_NACK, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %122

84:                                               ; preds = %78
  %85 = load %struct.qla_tgt_mgmt_cmd*, %struct.qla_tgt_mgmt_cmd** %2, align 8
  %86 = getelementptr inbounds %struct.qla_tgt_mgmt_cmd, %struct.qla_tgt_mgmt_cmd* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  switch i32 %91, label %111 [
    i32 130, label %92
    i32 129, label %92
    i32 128, label %92
  ]

92:                                               ; preds = %84, %84, %84
  %93 = load i32, i32* @ql_dbg_disc, align 4
  %94 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %95 = load %struct.qla_tgt_mgmt_cmd*, %struct.qla_tgt_mgmt_cmd** %2, align 8
  %96 = getelementptr inbounds %struct.qla_tgt_mgmt_cmd, %struct.qla_tgt_mgmt_cmd* %95, i32 0, i32 2
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load %struct.qla_tgt_mgmt_cmd*, %struct.qla_tgt_mgmt_cmd** %98, align 8
  %100 = load %struct.qla_tgt_mgmt_cmd*, %struct.qla_tgt_mgmt_cmd** %2, align 8
  %101 = getelementptr inbounds %struct.qla_tgt_mgmt_cmd, %struct.qla_tgt_mgmt_cmd* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.qla_tgt_mgmt_cmd*, %struct.qla_tgt_mgmt_cmd** %2, align 8
  %104 = getelementptr inbounds %struct.qla_tgt_mgmt_cmd, %struct.qla_tgt_mgmt_cmd* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, %struct.qla_tgt_mgmt_cmd*, i32, i32, ...) @ql_dbg(i32 %93, %struct.scsi_qla_host* %94, i32 8454, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), %struct.qla_tgt_mgmt_cmd* %99, i32 %102, i32 %105)
  %107 = load %struct.qla_tgt_mgmt_cmd*, %struct.qla_tgt_mgmt_cmd** %2, align 8
  %108 = getelementptr inbounds %struct.qla_tgt_mgmt_cmd, %struct.qla_tgt_mgmt_cmd* %107, i32 0, i32 2
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %108, align 8
  %110 = call i32 @qlt_schedule_sess_for_deletion(%struct.TYPE_13__* %109)
  br label %121

111:                                              ; preds = %84
  %112 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %113 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %112, i32 0, i32 0
  %114 = load %struct.qla_hw_data*, %struct.qla_hw_data** %113, align 8
  %115 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.qla_tgt_mgmt_cmd*, %struct.qla_tgt_mgmt_cmd** %2, align 8
  %118 = getelementptr inbounds %struct.qla_tgt_mgmt_cmd, %struct.qla_tgt_mgmt_cmd* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 1
  %120 = call i32 @qlt_send_notify_ack(i32 %116, %struct.TYPE_12__* %119, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  br label %121

121:                                              ; preds = %111, %92
  br label %143

122:                                              ; preds = %78
  %123 = load %struct.qla_tgt_mgmt_cmd*, %struct.qla_tgt_mgmt_cmd** %2, align 8
  %124 = getelementptr inbounds %struct.qla_tgt_mgmt_cmd, %struct.qla_tgt_mgmt_cmd* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @ABTS_RECV_24XX, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %122
  %133 = load %struct.qla_tgt_mgmt_cmd*, %struct.qla_tgt_mgmt_cmd** %2, align 8
  %134 = call i32 @qlt_build_abts_resp_iocb(%struct.qla_tgt_mgmt_cmd* %133)
  store i32 0, i32* %7, align 4
  br label %142

135:                                              ; preds = %122
  %136 = load %struct.qla_qpair*, %struct.qla_qpair** %6, align 8
  %137 = load %struct.qla_tgt_mgmt_cmd*, %struct.qla_tgt_mgmt_cmd** %2, align 8
  %138 = load %struct.qla_tgt_mgmt_cmd*, %struct.qla_tgt_mgmt_cmd** %2, align 8
  %139 = getelementptr inbounds %struct.qla_tgt_mgmt_cmd, %struct.qla_tgt_mgmt_cmd* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @qlt_24xx_send_task_mgmt_ctio(%struct.qla_qpair* %136, %struct.qla_tgt_mgmt_cmd* %137, i32 %140)
  br label %142

142:                                              ; preds = %135, %132
  br label %143

143:                                              ; preds = %142, %121
  %144 = load i32, i32* %7, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %155

146:                                              ; preds = %143
  %147 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %148 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i32 0, i32 0
  %152 = load i32 (%struct.qla_tgt_mgmt_cmd*)*, i32 (%struct.qla_tgt_mgmt_cmd*)** %151, align 8
  %153 = load %struct.qla_tgt_mgmt_cmd*, %struct.qla_tgt_mgmt_cmd** %2, align 8
  %154 = call i32 %152(%struct.qla_tgt_mgmt_cmd* %153)
  br label %155

155:                                              ; preds = %146, %143
  %156 = load %struct.qla_qpair*, %struct.qla_qpair** %6, align 8
  %157 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i64, i64* %5, align 8
  %160 = call i32 @spin_unlock_irqrestore(i32 %158, i64 %159)
  br label %161

161:                                              ; preds = %155, %47
  ret void
}

declare dso_local i32 @ql_dbg(i32, %struct.scsi_qla_host*, i32, i8*, %struct.qla_tgt_mgmt_cmd*, i32, i32, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @qla2x00_reset_active(%struct.scsi_qla_host*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @qlt_schedule_sess_for_deletion(%struct.TYPE_13__*) #1

declare dso_local i32 @qlt_send_notify_ack(i32, %struct.TYPE_12__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @qlt_build_abts_resp_iocb(%struct.qla_tgt_mgmt_cmd*) #1

declare dso_local i32 @qlt_24xx_send_task_mgmt_ctio(%struct.qla_qpair*, %struct.qla_tgt_mgmt_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
