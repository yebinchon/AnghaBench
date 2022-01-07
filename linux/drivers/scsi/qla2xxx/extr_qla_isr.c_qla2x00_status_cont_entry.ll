; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_isr.c_qla2x00_status_cont_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_isr.c_qla2x00_status_cont_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsp_que = type { %struct.TYPE_12__*, %struct.qla_hw_data* }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_12__*, i32)* }
%struct.qla_hw_data = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.scsi_qla_host = type { i32 }
%struct.scsi_cmnd = type { i32 }

@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"cmd is NULL: already returned to OS (sp=%p).\0A\00", align 1
@ql_dbg_io = common dso_local global i64 0, align 8
@ql_dbg_buffer = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsp_que*, %struct.TYPE_11__*)* @qla2x00_status_cont_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla2x00_status_cont_entry(%struct.rsp_que* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.rsp_que*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qla_hw_data*, align 8
  %7 = alloca %struct.scsi_qla_host*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.scsi_cmnd*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.rsp_que* %0, %struct.rsp_que** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.rsp_que*, %struct.rsp_que** %3, align 8
  %13 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %12, i32 0, i32 1
  %14 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  store %struct.qla_hw_data* %14, %struct.qla_hw_data** %6, align 8
  %15 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %16 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.scsi_qla_host* @pci_get_drvdata(i32 %17)
  store %struct.scsi_qla_host* %18, %struct.scsi_qla_host** %7, align 8
  %19 = load %struct.rsp_que*, %struct.rsp_que** %3, align 8
  %20 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %19, i32 0, i32 0
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %8, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %23 = icmp ne %struct.TYPE_12__* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %26 = call i32 @GET_CMD_SENSE_LEN(%struct.TYPE_12__* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24, %2
  br label %101

29:                                               ; preds = %24
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %31 = call i32 @GET_CMD_SENSE_LEN(%struct.TYPE_12__* %30)
  store i32 %31, i32* %10, align 4
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %33 = call i32* @GET_CMD_SENSE_PTR(%struct.TYPE_12__* %32)
  store i32* %33, i32** %11, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %35 = call %struct.scsi_cmnd* @GET_CMD_SP(%struct.TYPE_12__* %34)
  store %struct.scsi_cmnd* %35, %struct.scsi_cmnd** %9, align 8
  %36 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %37 = icmp eq %struct.scsi_cmnd* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %29
  %39 = load i32, i32* @ql_log_warn, align 4
  %40 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %42 = call i32 @ql_log(i32 %39, %struct.scsi_qla_host* %40, i32 12325, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), %struct.TYPE_12__* %41)
  %43 = load %struct.rsp_que*, %struct.rsp_que** %3, align 8
  %44 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %43, i32 0, i32 0
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %44, align 8
  br label %101

45:                                               ; preds = %29
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = icmp ugt i64 %47, 4
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 4, i32* %5, align 4
  br label %52

50:                                               ; preds = %45
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %50, %49
  %53 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %54 = call i64 @IS_FWI2_CAPABLE(%struct.qla_hw_data* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @host_to_fcp_swap(i32 %59, i32 4)
  br label %61

61:                                               ; preds = %56, %52
  %62 = load i32*, i32** %11, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @memcpy(i32* %62, i32 %65, i32 %66)
  %68 = load i64, i64* @ql_dbg_io, align 8
  %69 = load i64, i64* @ql_dbg_buffer, align 8
  %70 = add nsw i64 %68, %69
  %71 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %72 = load i32*, i32** %11, align 8
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @ql_dump_buffer(i64 %70, %struct.scsi_qla_host* %71, i32 12332, i32* %72, i32 %73)
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %10, align 4
  %77 = sub nsw i32 %76, %75
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load i32*, i32** %11, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  store i32* %81, i32** %11, align 8
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %83 = load i32*, i32** %11, align 8
  %84 = call i32 @SET_CMD_SENSE_PTR(%struct.TYPE_12__* %82, i32* %83)
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @SET_CMD_SENSE_LEN(%struct.TYPE_12__* %85, i32 %86)
  %88 = load i32, i32* %10, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %61
  %91 = load %struct.rsp_que*, %struct.rsp_que** %3, align 8
  %92 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %91, i32 0, i32 0
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %92, align 8
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load i32 (%struct.TYPE_12__*, i32)*, i32 (%struct.TYPE_12__*, i32)** %94, align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %97 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %98 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 %95(%struct.TYPE_12__* %96, i32 %99)
  br label %101

101:                                              ; preds = %28, %38, %90, %61
  ret void
}

declare dso_local %struct.scsi_qla_host* @pci_get_drvdata(i32) #1

declare dso_local i32 @GET_CMD_SENSE_LEN(%struct.TYPE_12__*) #1

declare dso_local i32* @GET_CMD_SENSE_PTR(%struct.TYPE_12__*) #1

declare dso_local %struct.scsi_cmnd* @GET_CMD_SP(%struct.TYPE_12__*) #1

declare dso_local i32 @ql_log(i32, %struct.scsi_qla_host*, i32, i8*, %struct.TYPE_12__*) #1

declare dso_local i64 @IS_FWI2_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i32 @host_to_fcp_swap(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @ql_dump_buffer(i64, %struct.scsi_qla_host*, i32, i32*, i32) #1

declare dso_local i32 @SET_CMD_SENSE_PTR(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @SET_CMD_SENSE_LEN(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
