; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32, %struct.TYPE_9__, %struct.qla_hw_data* }
%struct.TYPE_9__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.qla_hw_data = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.fc_port* (%struct.scsi_qla_host*, i32)* }
%struct.fc_port = type { i32 }
%struct.imm_ntfy_from_isp = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@ql_dbg_tgt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Using sess for qla_tgt_reset: %p\0A\00", align 1
@ESRCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"scsi(%ld): resetting (session %p from port %8phC mcmd %x, loop_id %d)\0A\00", align 1
@QLA24XX_MGMT_SEND_NACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*, i8*, i32)* @qlt_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlt_reset(%struct.scsi_qla_host* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_qla_host*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qla_hw_data*, align 8
  %9 = alloca %struct.fc_port*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.imm_ntfy_from_isp*, align 8
  %13 = alloca i64, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %15 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %14, i32 0, i32 2
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %15, align 8
  store %struct.qla_hw_data* %16, %struct.qla_hw_data** %8, align 8
  store %struct.fc_port* null, %struct.fc_port** %9, align 8
  store i32 0, i32* %11, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to %struct.imm_ntfy_from_isp*
  store %struct.imm_ntfy_from_isp* %18, %struct.imm_ntfy_from_isp** %12, align 8
  %19 = load %struct.imm_ntfy_from_isp*, %struct.imm_ntfy_from_isp** %12, align 8
  %20 = getelementptr inbounds %struct.imm_ntfy_from_isp, %struct.imm_ntfy_from_isp* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @le16_to_cpu(i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp eq i32 %25, 65535
  br i1 %26, label %27, label %49

27:                                               ; preds = %3
  %28 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %29 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = call i32 @atomic_inc(i32* %32)
  %34 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %35 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i64, i64* %13, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %40 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %41, align 8
  %43 = call i32 @qlt_clear_tgt_db(%struct.TYPE_12__* %42)
  %44 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %45 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i64, i64* %13, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  br label %69

49:                                               ; preds = %3
  %50 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %51 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i64, i64* %13, align 8
  %54 = call i32 @spin_lock_irqsave(i32* %52, i64 %53)
  %55 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %56 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load %struct.fc_port* (%struct.scsi_qla_host*, i32)*, %struct.fc_port* (%struct.scsi_qla_host*, i32)** %59, align 8
  %61 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %62 = load i32, i32* %10, align 4
  %63 = call %struct.fc_port* %60(%struct.scsi_qla_host* %61, i32 %62)
  store %struct.fc_port* %63, %struct.fc_port** %9, align 8
  %64 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %65 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i64, i64* %13, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  br label %69

69:                                               ; preds = %49, %27
  %70 = load i32, i32* @ql_dbg_tgt, align 4
  %71 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %72 = load %struct.fc_port*, %struct.fc_port** %9, align 8
  %73 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, %struct.fc_port*, ...) @ql_dbg(i32 %70, %struct.scsi_qla_host* %71, i32 57344, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.fc_port* %72)
  %74 = load %struct.fc_port*, %struct.fc_port** %9, align 8
  %75 = icmp ne %struct.fc_port* %74, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %69
  %77 = load i32, i32* @ESRCH, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %4, align 4
  br label %100

80:                                               ; preds = %69
  %81 = load i32, i32* @ql_dbg_tgt, align 4
  %82 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %83 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %84 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = inttoptr i64 %86 to %struct.fc_port*
  %88 = load %struct.fc_port*, %struct.fc_port** %9, align 8
  %89 = load %struct.fc_port*, %struct.fc_port** %9, align 8
  %90 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %10, align 4
  %94 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, %struct.fc_port*, ...) @ql_dbg(i32 %81, %struct.scsi_qla_host* %82, i32 57415, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), %struct.fc_port* %87, %struct.fc_port* %88, i32 %91, i32 %92, i32 %93)
  %95 = load %struct.fc_port*, %struct.fc_port** %9, align 8
  %96 = load i32, i32* %7, align 4
  %97 = load i8*, i8** %6, align 8
  %98 = load i32, i32* @QLA24XX_MGMT_SEND_NACK, align 4
  %99 = call i32 @qlt_issue_task_mgmt(%struct.fc_port* %95, i32 0, i32 %96, i8* %97, i32 %98)
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %80, %76
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @qlt_clear_tgt_db(%struct.TYPE_12__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ql_dbg(i32, %struct.scsi_qla_host*, i32, i8*, %struct.fc_port*, ...) #1

declare dso_local i32 @qlt_issue_task_mgmt(%struct.fc_port*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
