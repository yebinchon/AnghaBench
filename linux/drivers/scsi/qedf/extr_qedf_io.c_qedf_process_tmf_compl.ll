; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_io.c_qedf_process_tmf_compl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_io.c_qedf_process_tmf_compl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedf_ctx = type { i32 }
%struct.fcoe_cqe = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.fcoe_cqe_rsp_info }
%struct.fcoe_cqe_rsp_info = type { i32 }
%struct.qedf_ioreq = type { i32, i32*, i32 }

@QEDF_CMD_OUTSTANDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qedf_process_tmf_compl(%struct.qedf_ctx* %0, %struct.fcoe_cqe* %1, %struct.qedf_ioreq* %2) #0 {
  %4 = alloca %struct.qedf_ctx*, align 8
  %5 = alloca %struct.fcoe_cqe*, align 8
  %6 = alloca %struct.qedf_ioreq*, align 8
  %7 = alloca %struct.fcoe_cqe_rsp_info*, align 8
  store %struct.qedf_ctx* %0, %struct.qedf_ctx** %4, align 8
  store %struct.fcoe_cqe* %1, %struct.fcoe_cqe** %5, align 8
  store %struct.qedf_ioreq* %2, %struct.qedf_ioreq** %6, align 8
  %8 = load i32, i32* @QEDF_CMD_OUTSTANDING, align 4
  %9 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %10 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %9, i32 0, i32 2
  %11 = call i32 @clear_bit(i32 %8, i32* %10)
  %12 = load %struct.fcoe_cqe*, %struct.fcoe_cqe** %5, align 8
  %13 = getelementptr inbounds %struct.fcoe_cqe, %struct.fcoe_cqe* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.fcoe_cqe_rsp_info* %14, %struct.fcoe_cqe_rsp_info** %7, align 8
  %15 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %16 = load %struct.fcoe_cqe_rsp_info*, %struct.fcoe_cqe_rsp_info** %7, align 8
  %17 = call i32 @qedf_parse_fcp_rsp(%struct.qedf_ioreq* %15, %struct.fcoe_cqe_rsp_info* %16)
  %18 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %19 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %18, i32 0, i32 1
  store i32* null, i32** %19, align 8
  %20 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %21 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %20, i32 0, i32 0
  %22 = call i32 @complete(i32* %21)
  ret void
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @qedf_parse_fcp_rsp(%struct.qedf_ioreq*, %struct.fcoe_cqe_rsp_info*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
