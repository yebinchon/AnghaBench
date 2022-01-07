; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_io.c_qedf_process_cleanup_compl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_io.c_qedf_process_cleanup_compl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedf_ctx = type { i32 }
%struct.fcoe_cqe = type { i32 }
%struct.qedf_ioreq = type { i32, i32, i32 }

@QEDF_LOG_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Entered xid = 0x%x\0A\00", align 1
@QEDF_CMD_IN_CLEANUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qedf_process_cleanup_compl(%struct.qedf_ctx* %0, %struct.fcoe_cqe* %1, %struct.qedf_ioreq* %2) #0 {
  %4 = alloca %struct.qedf_ctx*, align 8
  %5 = alloca %struct.fcoe_cqe*, align 8
  %6 = alloca %struct.qedf_ioreq*, align 8
  store %struct.qedf_ctx* %0, %struct.qedf_ctx** %4, align 8
  store %struct.fcoe_cqe* %1, %struct.fcoe_cqe** %5, align 8
  store %struct.qedf_ioreq* %2, %struct.qedf_ioreq** %6, align 8
  %7 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %8 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %7, i32 0, i32 0
  %9 = load i32, i32* @QEDF_LOG_IO, align 4
  %10 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %11 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @QEDF_INFO(i32* %8, i32 %9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* @QEDF_CMD_IN_CLEANUP, align 4
  %15 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %16 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %15, i32 0, i32 1
  %17 = call i32 @clear_bit(i32 %14, i32* %16)
  %18 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %19 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %18, i32 0, i32 0
  %20 = call i32 @complete(i32* %19)
  ret void
}

declare dso_local i32 @QEDF_INFO(i32*, i32, i8*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
