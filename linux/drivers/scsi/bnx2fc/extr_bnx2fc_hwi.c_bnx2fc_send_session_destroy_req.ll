; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bnx2fc/extr_bnx2fc_hwi.c_bnx2fc_send_session_destroy_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bnx2fc/extr_bnx2fc_hwi.c_bnx2fc_send_session_destroy_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2fc_hba = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, %struct.kwqe**, i32)* }
%struct.kwqe = type { i32 }
%struct.bnx2fc_rport = type { i32, i32 }
%struct.fcoe_kwqe_conn_destroy = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@FCOE_KWQE_OPCODE_DESTROY_CONN = common dso_local global i32 0, align 4
@FCOE_KWQE_LAYER_CODE = common dso_local global i32 0, align 4
@FCOE_KWQE_HEADER_LAYER_CODE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2fc_send_session_destroy_req(%struct.bnx2fc_hba* %0, %struct.bnx2fc_rport* %1) #0 {
  %3 = alloca %struct.bnx2fc_hba*, align 8
  %4 = alloca %struct.bnx2fc_rport*, align 8
  %5 = alloca %struct.fcoe_kwqe_conn_destroy, align 4
  %6 = alloca [2 x %struct.kwqe*], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bnx2fc_hba* %0, %struct.bnx2fc_hba** %3, align 8
  store %struct.bnx2fc_rport* %1, %struct.bnx2fc_rport** %4, align 8
  store i32 1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = call i32 @memset(%struct.fcoe_kwqe_conn_destroy* %5, i32 0, i32 16)
  %10 = load i32, i32* @FCOE_KWQE_OPCODE_DESTROY_CONN, align 4
  %11 = getelementptr inbounds %struct.fcoe_kwqe_conn_destroy, %struct.fcoe_kwqe_conn_destroy* %5, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @FCOE_KWQE_LAYER_CODE, align 4
  %14 = load i32, i32* @FCOE_KWQE_HEADER_LAYER_CODE_SHIFT, align 4
  %15 = shl i32 %13, %14
  %16 = getelementptr inbounds %struct.fcoe_kwqe_conn_destroy, %struct.fcoe_kwqe_conn_destroy* %5, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %4, align 8
  %19 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.fcoe_kwqe_conn_destroy, %struct.fcoe_kwqe_conn_destroy* %5, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %4, align 8
  %23 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.fcoe_kwqe_conn_destroy, %struct.fcoe_kwqe_conn_destroy* %5, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = bitcast %struct.fcoe_kwqe_conn_destroy* %5 to %struct.kwqe*
  %27 = getelementptr inbounds [2 x %struct.kwqe*], [2 x %struct.kwqe*]* %6, i64 0, i64 0
  store %struct.kwqe* %26, %struct.kwqe** %27, align 16
  %28 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %3, align 8
  %29 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = icmp ne %struct.TYPE_4__* %30, null
  br i1 %31, label %32, label %51

32:                                               ; preds = %2
  %33 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %3, align 8
  %34 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32 (%struct.TYPE_4__*, %struct.kwqe**, i32)*, i32 (%struct.TYPE_4__*, %struct.kwqe**, i32)** %36, align 8
  %38 = icmp ne i32 (%struct.TYPE_4__*, %struct.kwqe**, i32)* %37, null
  br i1 %38, label %39, label %51

39:                                               ; preds = %32
  %40 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %3, align 8
  %41 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32 (%struct.TYPE_4__*, %struct.kwqe**, i32)*, i32 (%struct.TYPE_4__*, %struct.kwqe**, i32)** %43, align 8
  %45 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %3, align 8
  %46 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds [2 x %struct.kwqe*], [2 x %struct.kwqe*]* %6, i64 0, i64 0
  %49 = load i32, i32* %7, align 4
  %50 = call i32 %44(%struct.TYPE_4__* %47, %struct.kwqe** %48, i32 %49)
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %39, %32, %2
  %52 = load i32, i32* %8, align 4
  ret i32 %52
}

declare dso_local i32 @memset(%struct.fcoe_kwqe_conn_destroy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
