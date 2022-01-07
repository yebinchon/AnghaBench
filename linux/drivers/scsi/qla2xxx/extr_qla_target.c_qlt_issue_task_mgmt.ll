; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_issue_task_mgmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_issue_task_mgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_port = type { %struct.scsi_qla_host* }
%struct.scsi_qla_host = type { i32, %struct.TYPE_10__, %struct.qla_hw_data* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.qla_qpair_hint* }
%struct.qla_qpair_hint = type { i32, i32 }
%struct.qla_hw_data = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.qla_tgt_mgmt_cmd = type { i32, i32, i32, %struct.TYPE_16__, i32, i32, %struct.scsi_qla_host*, i32, %struct.TYPE_11__, %struct.fc_port* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.atio_from_isp = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }

@qla_tgt_mgmt_cmd_mempool = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ql_dbg_tgt_tmr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [98 x i8] c"qla_target(%d): Allocation of management command failed, some commands and their data could leak\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@qlt_do_tmr_work = common dso_local global i32 0, align 4
@qla_tgt_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_port*, i32, i32, i8*, i32)* @qlt_issue_task_mgmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlt_issue_task_mgmt(%struct.fc_port* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.fc_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.scsi_qla_host*, align 8
  %13 = alloca %struct.qla_hw_data*, align 8
  %14 = alloca %struct.qla_tgt_mgmt_cmd*, align 8
  %15 = alloca %struct.atio_from_isp*, align 8
  %16 = alloca %struct.qla_qpair_hint*, align 8
  store %struct.fc_port* %0, %struct.fc_port** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.fc_port*, %struct.fc_port** %7, align 8
  %18 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %17, i32 0, i32 0
  %19 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %18, align 8
  store %struct.scsi_qla_host* %19, %struct.scsi_qla_host** %12, align 8
  %20 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %12, align 8
  %21 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %20, i32 0, i32 2
  %22 = load %struct.qla_hw_data*, %struct.qla_hw_data** %21, align 8
  store %struct.qla_hw_data* %22, %struct.qla_hw_data** %13, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = bitcast i8* %23 to %struct.atio_from_isp*
  store %struct.atio_from_isp* %24, %struct.atio_from_isp** %15, align 8
  %25 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %12, align 8
  %26 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load %struct.qla_qpair_hint*, %struct.qla_qpair_hint** %29, align 8
  %31 = getelementptr inbounds %struct.qla_qpair_hint, %struct.qla_qpair_hint* %30, i64 0
  store %struct.qla_qpair_hint* %31, %struct.qla_qpair_hint** %16, align 8
  %32 = load i32, i32* @qla_tgt_mgmt_cmd_mempool, align 4
  %33 = load i32, i32* @GFP_ATOMIC, align 4
  %34 = call %struct.qla_tgt_mgmt_cmd* @mempool_alloc(i32 %32, i32 %33)
  store %struct.qla_tgt_mgmt_cmd* %34, %struct.qla_tgt_mgmt_cmd** %14, align 8
  %35 = load %struct.qla_tgt_mgmt_cmd*, %struct.qla_tgt_mgmt_cmd** %14, align 8
  %36 = icmp ne %struct.qla_tgt_mgmt_cmd* %35, null
  br i1 %36, label %46, label %37

37:                                               ; preds = %5
  %38 = load i32, i32* @ql_dbg_tgt_tmr, align 4
  %39 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %12, align 8
  %40 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %12, align 8
  %41 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @ql_dbg(i32 %38, %struct.scsi_qla_host* %39, i32 65545, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %134

46:                                               ; preds = %5
  %47 = load %struct.qla_tgt_mgmt_cmd*, %struct.qla_tgt_mgmt_cmd** %14, align 8
  %48 = call i32 @memset(%struct.qla_tgt_mgmt_cmd* %47, i32 0, i32 48)
  %49 = load %struct.fc_port*, %struct.fc_port** %7, align 8
  %50 = load %struct.qla_tgt_mgmt_cmd*, %struct.qla_tgt_mgmt_cmd** %14, align 8
  %51 = getelementptr inbounds %struct.qla_tgt_mgmt_cmd, %struct.qla_tgt_mgmt_cmd* %50, i32 0, i32 9
  store %struct.fc_port* %49, %struct.fc_port** %51, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %46
  %55 = load %struct.qla_tgt_mgmt_cmd*, %struct.qla_tgt_mgmt_cmd** %14, align 8
  %56 = getelementptr inbounds %struct.qla_tgt_mgmt_cmd, %struct.qla_tgt_mgmt_cmd* %55, i32 0, i32 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i8*, i8** %10, align 8
  %59 = call i32 @memcpy(i32* %57, i8* %58, i32 4)
  br label %60

60:                                               ; preds = %54, %46
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.qla_tgt_mgmt_cmd*, %struct.qla_tgt_mgmt_cmd** %14, align 8
  %63 = getelementptr inbounds %struct.qla_tgt_mgmt_cmd, %struct.qla_tgt_mgmt_cmd* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* %11, align 4
  %65 = load %struct.qla_tgt_mgmt_cmd*, %struct.qla_tgt_mgmt_cmd** %14, align 8
  %66 = getelementptr inbounds %struct.qla_tgt_mgmt_cmd, %struct.qla_tgt_mgmt_cmd* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %68 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %67, i32 0, i32 0
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.qla_tgt_mgmt_cmd*, %struct.qla_tgt_mgmt_cmd** %14, align 8
  %73 = getelementptr inbounds %struct.qla_tgt_mgmt_cmd, %struct.qla_tgt_mgmt_cmd* %72, i32 0, i32 7
  store i32 %71, i32* %73, align 8
  %74 = load %struct.qla_qpair_hint*, %struct.qla_qpair_hint** %16, align 8
  %75 = getelementptr inbounds %struct.qla_qpair_hint, %struct.qla_qpair_hint* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.qla_tgt_mgmt_cmd*, %struct.qla_tgt_mgmt_cmd** %14, align 8
  %78 = getelementptr inbounds %struct.qla_tgt_mgmt_cmd, %struct.qla_tgt_mgmt_cmd* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 8
  %79 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %12, align 8
  %80 = load %struct.qla_tgt_mgmt_cmd*, %struct.qla_tgt_mgmt_cmd** %14, align 8
  %81 = getelementptr inbounds %struct.qla_tgt_mgmt_cmd, %struct.qla_tgt_mgmt_cmd* %80, i32 0, i32 6
  store %struct.scsi_qla_host* %79, %struct.scsi_qla_host** %81, align 8
  %82 = load %struct.qla_qpair_hint*, %struct.qla_qpair_hint** %16, align 8
  %83 = getelementptr inbounds %struct.qla_qpair_hint, %struct.qla_qpair_hint* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.qla_tgt_mgmt_cmd*, %struct.qla_tgt_mgmt_cmd** %14, align 8
  %86 = getelementptr inbounds %struct.qla_tgt_mgmt_cmd, %struct.qla_tgt_mgmt_cmd* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 4
  %88 = load i32, i32* %8, align 4
  %89 = load %struct.qla_tgt_mgmt_cmd*, %struct.qla_tgt_mgmt_cmd** %14, align 8
  %90 = getelementptr inbounds %struct.qla_tgt_mgmt_cmd, %struct.qla_tgt_mgmt_cmd* %89, i32 0, i32 5
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* %9, align 4
  switch i32 %91, label %120 [
    i32 131, label %92
    i32 132, label %92
    i32 134, label %92
    i32 133, label %102
    i32 128, label %119
    i32 129, label %119
    i32 130, label %119
    i32 135, label %119
  ]

92:                                               ; preds = %60, %60, %60
  %93 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %12, align 8
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.atio_from_isp*, %struct.atio_from_isp** %15, align 8
  %96 = getelementptr inbounds %struct.atio_from_isp, %struct.atio_from_isp* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @abort_cmds_for_lun(%struct.scsi_qla_host* %93, i32 %94, i32 %100)
  br label %102

102:                                              ; preds = %60, %92
  %103 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %12, align 8
  %104 = load %struct.qla_tgt_mgmt_cmd*, %struct.qla_tgt_mgmt_cmd** %14, align 8
  %105 = getelementptr inbounds %struct.qla_tgt_mgmt_cmd, %struct.qla_tgt_mgmt_cmd* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = call %struct.qla_qpair_hint* @qlt_find_qphint(%struct.scsi_qla_host* %103, i32 %106)
  store %struct.qla_qpair_hint* %107, %struct.qla_qpair_hint** %16, align 8
  %108 = load %struct.qla_qpair_hint*, %struct.qla_qpair_hint** %16, align 8
  %109 = getelementptr inbounds %struct.qla_qpair_hint, %struct.qla_qpair_hint* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.qla_tgt_mgmt_cmd*, %struct.qla_tgt_mgmt_cmd** %14, align 8
  %112 = getelementptr inbounds %struct.qla_tgt_mgmt_cmd, %struct.qla_tgt_mgmt_cmd* %111, i32 0, i32 4
  store i32 %110, i32* %112, align 8
  %113 = load %struct.qla_qpair_hint*, %struct.qla_qpair_hint** %16, align 8
  %114 = getelementptr inbounds %struct.qla_qpair_hint, %struct.qla_qpair_hint* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.qla_tgt_mgmt_cmd*, %struct.qla_tgt_mgmt_cmd** %14, align 8
  %117 = getelementptr inbounds %struct.qla_tgt_mgmt_cmd, %struct.qla_tgt_mgmt_cmd* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  store i32 %115, i32* %118, align 4
  br label %121

119:                                              ; preds = %60, %60, %60, %60
  br label %120

120:                                              ; preds = %60, %119
  br label %121

121:                                              ; preds = %120, %102
  %122 = load %struct.qla_tgt_mgmt_cmd*, %struct.qla_tgt_mgmt_cmd** %14, align 8
  %123 = getelementptr inbounds %struct.qla_tgt_mgmt_cmd, %struct.qla_tgt_mgmt_cmd* %122, i32 0, i32 2
  %124 = load i32, i32* @qlt_do_tmr_work, align 4
  %125 = call i32 @INIT_WORK(i32* %123, i32 %124)
  %126 = load %struct.qla_tgt_mgmt_cmd*, %struct.qla_tgt_mgmt_cmd** %14, align 8
  %127 = getelementptr inbounds %struct.qla_tgt_mgmt_cmd, %struct.qla_tgt_mgmt_cmd* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @qla_tgt_wq, align 4
  %131 = load %struct.qla_tgt_mgmt_cmd*, %struct.qla_tgt_mgmt_cmd** %14, align 8
  %132 = getelementptr inbounds %struct.qla_tgt_mgmt_cmd, %struct.qla_tgt_mgmt_cmd* %131, i32 0, i32 2
  %133 = call i32 @queue_work_on(i32 %129, i32 %130, i32* %132)
  store i32 0, i32* %6, align 4
  br label %134

134:                                              ; preds = %121, %37
  %135 = load i32, i32* %6, align 4
  ret i32 %135
}

declare dso_local %struct.qla_tgt_mgmt_cmd* @mempool_alloc(i32, i32) #1

declare dso_local i32 @ql_dbg(i32, %struct.scsi_qla_host*, i32, i8*, i32) #1

declare dso_local i32 @memset(%struct.qla_tgt_mgmt_cmd*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @abort_cmds_for_lun(%struct.scsi_qla_host*, i32, i32) #1

declare dso_local %struct.qla_qpair_hint* @qlt_find_qphint(%struct.scsi_qla_host*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work_on(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
