; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_24xx_handle_abts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_24xx_handle_abts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32, %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.fc_port* (%struct.scsi_qla_host*, i32)* }
%struct.fc_port = type { i64 }
%struct.abts_recv_from_24xx = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@ABTS_PARAM_ABORT_SEQ = common dso_local global i32 0, align 4
@ql_dbg_tgt_mgt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"qla_target(%d): ABTS: Abort Sequence not supported\0A\00", align 1
@FCP_TMF_REJECTED = common dso_local global i32 0, align 4
@ATIO_EXCHANGE_ADDRESS_UNKNOWN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [57 x i8] c"qla_target(%d): ABTS: Unknown Exchange Address received\0A\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"qla_target(%d): task abort (s_id=%x:%x:%x, tag=%d, param=%x)\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"qla_target(%d): task abort for non-existent session\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"qla_target(%d): __qlt_24xx_handle_abts() failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_qla_host*, %struct.abts_recv_from_24xx*)* @qlt_24xx_handle_abts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlt_24xx_handle_abts(%struct.scsi_qla_host* %0, %struct.abts_recv_from_24xx* %1) #0 {
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca %struct.abts_recv_from_24xx*, align 8
  %5 = alloca %struct.qla_hw_data*, align 8
  %6 = alloca %struct.fc_port*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca { i64, i32 }, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  store %struct.abts_recv_from_24xx* %1, %struct.abts_recv_from_24xx** %4, align 8
  %12 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %13 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %12, i32 0, i32 1
  %14 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  store %struct.qla_hw_data* %14, %struct.qla_hw_data** %5, align 8
  %15 = load %struct.abts_recv_from_24xx*, %struct.abts_recv_from_24xx** %4, align 8
  %16 = getelementptr inbounds %struct.abts_recv_from_24xx, %struct.abts_recv_from_24xx* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %7, align 8
  %18 = load %struct.abts_recv_from_24xx*, %struct.abts_recv_from_24xx** %4, align 8
  %19 = getelementptr inbounds %struct.abts_recv_from_24xx, %struct.abts_recv_from_24xx* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le32_to_cpu(i32 %21)
  %23 = load i32, i32* @ABTS_PARAM_ABORT_SEQ, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %2
  %27 = load i32, i32* @ql_dbg_tgt_mgt, align 4
  %28 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %29 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %30 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, i32, ...) @ql_dbg(i32 %27, %struct.scsi_qla_host* %28, i32 61523, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %34 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.abts_recv_from_24xx*, %struct.abts_recv_from_24xx** %4, align 8
  %37 = load i32, i32* @FCP_TMF_REJECTED, align 4
  %38 = call i32 @qlt_24xx_send_abts_resp(i32 %35, %struct.abts_recv_from_24xx* %36, i32 %37, i32 0)
  br label %166

39:                                               ; preds = %2
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* @ATIO_EXCHANGE_ADDRESS_UNKNOWN, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %39
  %44 = load i32, i32* @ql_dbg_tgt_mgt, align 4
  %45 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %46 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %47 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, i32, ...) @ql_dbg(i32 %44, %struct.scsi_qla_host* %45, i32 61456, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %51 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.abts_recv_from_24xx*, %struct.abts_recv_from_24xx** %4, align 8
  %54 = load i32, i32* @FCP_TMF_REJECTED, align 4
  %55 = call i32 @qlt_24xx_send_abts_resp(i32 %52, %struct.abts_recv_from_24xx* %53, i32 %54, i32 0)
  br label %166

56:                                               ; preds = %39
  %57 = load i32, i32* @ql_dbg_tgt_mgt, align 4
  %58 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %59 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %60 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.abts_recv_from_24xx*, %struct.abts_recv_from_24xx** %4, align 8
  %63 = getelementptr inbounds %struct.abts_recv_from_24xx, %struct.abts_recv_from_24xx* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.abts_recv_from_24xx*, %struct.abts_recv_from_24xx** %4, align 8
  %68 = getelementptr inbounds %struct.abts_recv_from_24xx, %struct.abts_recv_from_24xx* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.abts_recv_from_24xx*, %struct.abts_recv_from_24xx** %4, align 8
  %73 = getelementptr inbounds %struct.abts_recv_from_24xx, %struct.abts_recv_from_24xx* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i64, i64* %7, align 8
  %78 = load %struct.abts_recv_from_24xx*, %struct.abts_recv_from_24xx** %4, align 8
  %79 = getelementptr inbounds %struct.abts_recv_from_24xx, %struct.abts_recv_from_24xx* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @le32_to_cpu(i32 %81)
  %83 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, i32, ...) @ql_dbg(i32 %57, %struct.scsi_qla_host* %58, i32 61457, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i32 %61, i32 %66, i32 %71, i32 %76, i64 %77, i32 %82)
  %84 = load %struct.abts_recv_from_24xx*, %struct.abts_recv_from_24xx** %4, align 8
  %85 = getelementptr inbounds %struct.abts_recv_from_24xx, %struct.abts_recv_from_24xx* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = bitcast { i64, i32 }* %11 to i8*
  %88 = bitcast %struct.TYPE_8__* %86 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %87, i8* align 8 %88, i64 12, i1 false)
  %89 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @le_id_to_be(i64 %90, i32 %92)
  store i32 %93, i32* %8, align 4
  %94 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %95 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i64, i64* %10, align 8
  %98 = call i32 @spin_lock_irqsave(i32* %96, i64 %97)
  %99 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %100 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load %struct.fc_port* (%struct.scsi_qla_host*, i32)*, %struct.fc_port* (%struct.scsi_qla_host*, i32)** %103, align 8
  %105 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %106 = load i32, i32* %8, align 4
  %107 = call %struct.fc_port* %104(%struct.scsi_qla_host* %105, i32 %106)
  store %struct.fc_port* %107, %struct.fc_port** %6, align 8
  %108 = load %struct.fc_port*, %struct.fc_port** %6, align 8
  %109 = icmp ne %struct.fc_port* %108, null
  br i1 %109, label %128, label %110

110:                                              ; preds = %56
  %111 = load i32, i32* @ql_dbg_tgt_mgt, align 4
  %112 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %113 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %114 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, i32, ...) @ql_dbg(i32 %111, %struct.scsi_qla_host* %112, i32 61458, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %115)
  %117 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %118 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i64, i64* %10, align 8
  %121 = call i32 @spin_unlock_irqrestore(i32* %119, i64 %120)
  %122 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %123 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.abts_recv_from_24xx*, %struct.abts_recv_from_24xx** %4, align 8
  %126 = load i32, i32* @FCP_TMF_REJECTED, align 4
  %127 = call i32 @qlt_24xx_send_abts_resp(i32 %124, %struct.abts_recv_from_24xx* %125, i32 %126, i32 0)
  br label %166

128:                                              ; preds = %56
  %129 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %130 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load i64, i64* %10, align 8
  %133 = call i32 @spin_unlock_irqrestore(i32* %131, i64 %132)
  %134 = load %struct.fc_port*, %struct.fc_port** %6, align 8
  %135 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %128
  %139 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %140 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.abts_recv_from_24xx*, %struct.abts_recv_from_24xx** %4, align 8
  %143 = load i32, i32* @FCP_TMF_REJECTED, align 4
  %144 = call i32 @qlt_24xx_send_abts_resp(i32 %141, %struct.abts_recv_from_24xx* %142, i32 %143, i32 0)
  br label %166

145:                                              ; preds = %128
  %146 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %147 = load %struct.abts_recv_from_24xx*, %struct.abts_recv_from_24xx** %4, align 8
  %148 = load %struct.fc_port*, %struct.fc_port** %6, align 8
  %149 = call i32 @__qlt_24xx_handle_abts(%struct.scsi_qla_host* %146, %struct.abts_recv_from_24xx* %147, %struct.fc_port* %148)
  store i32 %149, i32* %9, align 4
  %150 = load i32, i32* %9, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %166

152:                                              ; preds = %145
  %153 = load i32, i32* @ql_dbg_tgt_mgt, align 4
  %154 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %155 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %156 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* %9, align 4
  %159 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, i32, ...) @ql_dbg(i32 %153, %struct.scsi_qla_host* %154, i32 61524, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %157, i32 %158)
  %160 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %161 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.abts_recv_from_24xx*, %struct.abts_recv_from_24xx** %4, align 8
  %164 = load i32, i32* @FCP_TMF_REJECTED, align 4
  %165 = call i32 @qlt_24xx_send_abts_resp(i32 %162, %struct.abts_recv_from_24xx* %163, i32 %164, i32 0)
  br label %166

166:                                              ; preds = %26, %43, %110, %138, %152, %145
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ql_dbg(i32, %struct.scsi_qla_host*, i32, i8*, i32, ...) #1

declare dso_local i32 @qlt_24xx_send_abts_resp(i32, %struct.abts_recv_from_24xx*, i32, i32) #1

declare dso_local i32 @le_id_to_be(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @__qlt_24xx_handle_abts(%struct.scsi_qla_host*, %struct.abts_recv_from_24xx*, %struct.fc_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
