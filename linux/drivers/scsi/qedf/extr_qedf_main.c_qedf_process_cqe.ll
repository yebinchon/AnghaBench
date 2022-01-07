; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_process_cqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_process_cqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedf_ctx = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.qedf_ioreq* }
%struct.qedf_ioreq = type { i32, %struct.qedf_rport* }
%struct.qedf_rport = type { i32, i32 }
%struct.fcoe_cqe = type { i32 }

@FCOE_CQE_CQE_TYPE_SHIFT = common dso_local global i32 0, align 4
@FCOE_CQE_CQE_TYPE_MASK = common dso_local global i32 0, align 4
@FCOE_CQE_TASK_ID_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"io_req is NULL for xid=0x%x.\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"fcport is NULL for xid=0x%x io_req=%p.\0A\00", align 1
@QEDF_RPORT_SESSION_READY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Session not offloaded yet, fcport = %p.\0A\00", align 1
@QEDF_LOG_IO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"Error detect CQE.\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Cleanup CQE.\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Abort CQE.\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"Dummy CQE.\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Local completion CQE.\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"Warning CQE.\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"Max FCoE CQE.\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"Default CQE.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qedf_process_cqe(%struct.qedf_ctx* %0, %struct.fcoe_cqe* %1) #0 {
  %3 = alloca %struct.qedf_ctx*, align 8
  %4 = alloca %struct.fcoe_cqe*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.qedf_ioreq*, align 8
  %7 = alloca %struct.qedf_rport*, align 8
  %8 = alloca i32, align 4
  store %struct.qedf_ctx* %0, %struct.qedf_ctx** %3, align 8
  store %struct.fcoe_cqe* %1, %struct.fcoe_cqe** %4, align 8
  %9 = load %struct.fcoe_cqe*, %struct.fcoe_cqe** %4, align 8
  %10 = getelementptr inbounds %struct.fcoe_cqe, %struct.fcoe_cqe* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @FCOE_CQE_CQE_TYPE_SHIFT, align 4
  %13 = ashr i32 %11, %12
  %14 = load i32, i32* @FCOE_CQE_CQE_TYPE_MASK, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %8, align 4
  %16 = load %struct.fcoe_cqe*, %struct.fcoe_cqe** %4, align 8
  %17 = getelementptr inbounds %struct.fcoe_cqe, %struct.fcoe_cqe* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* @FCOE_CQE_TASK_ID_MASK, align 8
  %21 = and i64 %19, %20
  store i64 %21, i64* %5, align 8
  %22 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %23 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %26, i64 %27
  store %struct.qedf_ioreq* %28, %struct.qedf_ioreq** %6, align 8
  %29 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %30 = icmp ne %struct.qedf_ioreq* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %2
  %32 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %33 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %32, i32 0, i32 0
  %34 = load i64, i64* %5, align 8
  %35 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %34)
  br label %166

36:                                               ; preds = %2
  %37 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %38 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %37, i32 0, i32 1
  %39 = load %struct.qedf_rport*, %struct.qedf_rport** %38, align 8
  store %struct.qedf_rport* %39, %struct.qedf_rport** %7, align 8
  %40 = load %struct.qedf_rport*, %struct.qedf_rport** %7, align 8
  %41 = icmp eq %struct.qedf_rport* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %44 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %43, i32 0, i32 0
  %45 = load i64, i64* %5, align 8
  %46 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %47 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %44, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %45, %struct.qedf_ioreq* %46)
  br label %166

48:                                               ; preds = %36
  %49 = load i32, i32* @QEDF_RPORT_SESSION_READY, align 4
  %50 = load %struct.qedf_rport*, %struct.qedf_rport** %7, align 8
  %51 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %50, i32 0, i32 1
  %52 = call i32 @test_bit(i32 %49, i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %48
  %55 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %56 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %55, i32 0, i32 0
  %57 = load %struct.qedf_rport*, %struct.qedf_rport** %7, align 8
  %58 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %56, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), %struct.qedf_rport* %57)
  br label %166

59:                                               ; preds = %48
  %60 = load i32, i32* %8, align 4
  switch i32 %60, label %161 [
    i32 135, label %61
    i32 137, label %89
    i32 136, label %101
    i32 139, label %113
    i32 138, label %125
    i32 134, label %133
    i32 133, label %141
    i32 132, label %153
  ]

61:                                               ; preds = %59
  %62 = load %struct.qedf_rport*, %struct.qedf_rport** %7, align 8
  %63 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %62, i32 0, i32 0
  %64 = call i32 @atomic_inc(i32* %63)
  %65 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %66 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  switch i32 %67, label %88 [
    i32 130, label %68
    i32 131, label %73
    i32 128, label %78
    i32 129, label %83
  ]

68:                                               ; preds = %61
  %69 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %70 = load %struct.fcoe_cqe*, %struct.fcoe_cqe** %4, align 8
  %71 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %72 = call i32 @qedf_scsi_completion(%struct.qedf_ctx* %69, %struct.fcoe_cqe* %70, %struct.qedf_ioreq* %71)
  br label %88

73:                                               ; preds = %61
  %74 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %75 = load %struct.fcoe_cqe*, %struct.fcoe_cqe** %4, align 8
  %76 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %77 = call i32 @qedf_process_els_compl(%struct.qedf_ctx* %74, %struct.fcoe_cqe* %75, %struct.qedf_ioreq* %76)
  br label %88

78:                                               ; preds = %61
  %79 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %80 = load %struct.fcoe_cqe*, %struct.fcoe_cqe** %4, align 8
  %81 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %82 = call i32 @qedf_process_tmf_compl(%struct.qedf_ctx* %79, %struct.fcoe_cqe* %80, %struct.qedf_ioreq* %81)
  br label %88

83:                                               ; preds = %61
  %84 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %85 = load %struct.fcoe_cqe*, %struct.fcoe_cqe** %4, align 8
  %86 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %87 = call i32 @qedf_process_seq_cleanup_compl(%struct.qedf_ctx* %84, %struct.fcoe_cqe* %85, %struct.qedf_ioreq* %86)
  br label %88

88:                                               ; preds = %61, %83, %78, %73, %68
  br label %166

89:                                               ; preds = %59
  %90 = load %struct.qedf_rport*, %struct.qedf_rport** %7, align 8
  %91 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %90, i32 0, i32 0
  %92 = call i32 @atomic_inc(i32* %91)
  %93 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %94 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %93, i32 0, i32 0
  %95 = load i32, i32* @QEDF_LOG_IO, align 4
  %96 = call i32 @QEDF_INFO(i32* %94, i32 %95, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %97 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %98 = load %struct.fcoe_cqe*, %struct.fcoe_cqe** %4, align 8
  %99 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %100 = call i32 @qedf_process_error_detect(%struct.qedf_ctx* %97, %struct.fcoe_cqe* %98, %struct.qedf_ioreq* %99)
  br label %166

101:                                              ; preds = %59
  %102 = load %struct.qedf_rport*, %struct.qedf_rport** %7, align 8
  %103 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %102, i32 0, i32 0
  %104 = call i32 @atomic_inc(i32* %103)
  %105 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %106 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %105, i32 0, i32 0
  %107 = load i32, i32* @QEDF_LOG_IO, align 4
  %108 = call i32 @QEDF_INFO(i32* %106, i32 %107, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %109 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %110 = load %struct.fcoe_cqe*, %struct.fcoe_cqe** %4, align 8
  %111 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %112 = call i32 @qedf_process_cleanup_compl(%struct.qedf_ctx* %109, %struct.fcoe_cqe* %110, %struct.qedf_ioreq* %111)
  br label %166

113:                                              ; preds = %59
  %114 = load %struct.qedf_rport*, %struct.qedf_rport** %7, align 8
  %115 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %114, i32 0, i32 0
  %116 = call i32 @atomic_inc(i32* %115)
  %117 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %118 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %117, i32 0, i32 0
  %119 = load i32, i32* @QEDF_LOG_IO, align 4
  %120 = call i32 @QEDF_INFO(i32* %118, i32 %119, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %121 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %122 = load %struct.fcoe_cqe*, %struct.fcoe_cqe** %4, align 8
  %123 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %124 = call i32 @qedf_process_abts_compl(%struct.qedf_ctx* %121, %struct.fcoe_cqe* %122, %struct.qedf_ioreq* %123)
  br label %166

125:                                              ; preds = %59
  %126 = load %struct.qedf_rport*, %struct.qedf_rport** %7, align 8
  %127 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %126, i32 0, i32 0
  %128 = call i32 @atomic_inc(i32* %127)
  %129 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %130 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %129, i32 0, i32 0
  %131 = load i32, i32* @QEDF_LOG_IO, align 4
  %132 = call i32 @QEDF_INFO(i32* %130, i32 %131, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  br label %166

133:                                              ; preds = %59
  %134 = load %struct.qedf_rport*, %struct.qedf_rport** %7, align 8
  %135 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %134, i32 0, i32 0
  %136 = call i32 @atomic_inc(i32* %135)
  %137 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %138 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %137, i32 0, i32 0
  %139 = load i32, i32* @QEDF_LOG_IO, align 4
  %140 = call i32 @QEDF_INFO(i32* %138, i32 %139, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  br label %166

141:                                              ; preds = %59
  %142 = load %struct.qedf_rport*, %struct.qedf_rport** %7, align 8
  %143 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %142, i32 0, i32 0
  %144 = call i32 @atomic_inc(i32* %143)
  %145 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %146 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %145, i32 0, i32 0
  %147 = load i32, i32* @QEDF_LOG_IO, align 4
  %148 = call i32 @QEDF_INFO(i32* %146, i32 %147, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %149 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %150 = load %struct.fcoe_cqe*, %struct.fcoe_cqe** %4, align 8
  %151 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %152 = call i32 @qedf_process_warning_compl(%struct.qedf_ctx* %149, %struct.fcoe_cqe* %150, %struct.qedf_ioreq* %151)
  br label %166

153:                                              ; preds = %59
  %154 = load %struct.qedf_rport*, %struct.qedf_rport** %7, align 8
  %155 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %154, i32 0, i32 0
  %156 = call i32 @atomic_inc(i32* %155)
  %157 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %158 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %157, i32 0, i32 0
  %159 = load i32, i32* @QEDF_LOG_IO, align 4
  %160 = call i32 @QEDF_INFO(i32* %158, i32 %159, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  br label %166

161:                                              ; preds = %59
  %162 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %163 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %162, i32 0, i32 0
  %164 = load i32, i32* @QEDF_LOG_IO, align 4
  %165 = call i32 @QEDF_INFO(i32* %163, i32 %164, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  br label %166

166:                                              ; preds = %31, %42, %54, %161, %153, %141, %133, %125, %113, %101, %89, %88
  ret void
}

declare dso_local i32 @QEDF_ERR(i32*, i8*, ...) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @qedf_scsi_completion(%struct.qedf_ctx*, %struct.fcoe_cqe*, %struct.qedf_ioreq*) #1

declare dso_local i32 @qedf_process_els_compl(%struct.qedf_ctx*, %struct.fcoe_cqe*, %struct.qedf_ioreq*) #1

declare dso_local i32 @qedf_process_tmf_compl(%struct.qedf_ctx*, %struct.fcoe_cqe*, %struct.qedf_ioreq*) #1

declare dso_local i32 @qedf_process_seq_cleanup_compl(%struct.qedf_ctx*, %struct.fcoe_cqe*, %struct.qedf_ioreq*) #1

declare dso_local i32 @QEDF_INFO(i32*, i32, i8*) #1

declare dso_local i32 @qedf_process_error_detect(%struct.qedf_ctx*, %struct.fcoe_cqe*, %struct.qedf_ioreq*) #1

declare dso_local i32 @qedf_process_cleanup_compl(%struct.qedf_ctx*, %struct.fcoe_cqe*, %struct.qedf_ioreq*) #1

declare dso_local i32 @qedf_process_abts_compl(%struct.qedf_ctx*, %struct.fcoe_cqe*, %struct.qedf_ioreq*) #1

declare dso_local i32 @qedf_process_warning_compl(%struct.qedf_ctx*, %struct.fcoe_cqe*, %struct.qedf_ioreq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
