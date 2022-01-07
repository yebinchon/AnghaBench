; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_io.c_qedf_process_abts_compl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_io.c_qedf_process_abts_compl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedf_ctx = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.fcoe_cqe = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.qedf_ioreq = type { i32, i32, i64, i32, i64, i32, i32, i32, i32, i32, i32, %struct.qedf_rport* }
%struct.qedf_rport = type { i32 }

@QEDF_LOG_SCSI_TM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Entered with xid = 0x%x cmd_type = %d\0A\00", align 1
@QEDF_LOG_IO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Dropping ABTS completion xid=0x%x as fcport is NULL\00", align 1
@QEDF_RPORT_IN_TARGET_RESET = common dso_local global i32 0, align 4
@QEDF_RPORT_IN_LUN_RESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"Dropping ABTS completion xid=0x%x as fcport is flushing\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Wasn't able to cancel abts timeout work.\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"ABTS response - ACC Send RRQ after R_A_TOV\0A\00", align 1
@QEDF_IOREQ_EV_ABORT_SUCCESS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [73 x i8] c"kref is already zero so ABTS was already completed or flushed xid=0x%x.\0A\00", align 1
@QEDFC_CMD_ST_RRQ_WAIT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"ABTS response - RJT\0A\00", align 1
@QEDF_IOREQ_EV_ABORT_FAILED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"Unknown ABTS response\0A\00", align 1
@QEDF_CMD_IN_ABORT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"Not call scsi_done for xid=0x%x.\0A\00", align 1
@DID_ERROR = common dso_local global i32 0, align 4
@qedf_release_cmd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qedf_process_abts_compl(%struct.qedf_ctx* %0, %struct.fcoe_cqe* %1, %struct.qedf_ioreq* %2) #0 {
  %4 = alloca %struct.qedf_ctx*, align 8
  %5 = alloca %struct.fcoe_cqe*, align 8
  %6 = alloca %struct.qedf_ioreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.qedf_rport*, align 8
  store %struct.qedf_ctx* %0, %struct.qedf_ctx** %4, align 8
  store %struct.fcoe_cqe* %1, %struct.fcoe_cqe** %5, align 8
  store %struct.qedf_ioreq* %2, %struct.qedf_ioreq** %6, align 8
  %11 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %12 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %11, i32 0, i32 11
  %13 = load %struct.qedf_rport*, %struct.qedf_rport** %12, align 8
  store %struct.qedf_rport* %13, %struct.qedf_rport** %10, align 8
  %14 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %15 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %14, i32 0, i32 0
  %16 = load i32, i32* @QEDF_LOG_SCSI_TM, align 4
  %17 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %18 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %21 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %20, i32 0, i32 10
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i32*, i32, i8*, ...) @QEDF_INFO(i32* %15, i32 %16, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22)
  %24 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %25 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %8, align 4
  %27 = load %struct.fcoe_cqe*, %struct.fcoe_cqe** %5, align 8
  %28 = getelementptr inbounds %struct.fcoe_cqe, %struct.fcoe_cqe* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %7, align 4
  %32 = load %struct.qedf_rport*, %struct.qedf_rport** %10, align 8
  %33 = icmp ne %struct.qedf_rport* %32, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %3
  %35 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %36 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %35, i32 0, i32 0
  %37 = load i32, i32* @QEDF_LOG_IO, align 4
  %38 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %39 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (i32*, i32, i8*, ...) @QEDF_INFO(i32* %36, i32 %37, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %164

42:                                               ; preds = %3
  %43 = load i32, i32* @QEDF_RPORT_IN_TARGET_RESET, align 4
  %44 = load %struct.qedf_rport*, %struct.qedf_rport** %10, align 8
  %45 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %44, i32 0, i32 0
  %46 = call i64 @test_bit(i32 %43, i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* @QEDF_RPORT_IN_LUN_RESET, align 4
  %50 = load %struct.qedf_rport*, %struct.qedf_rport** %10, align 8
  %51 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %50, i32 0, i32 0
  %52 = call i64 @test_bit(i32 %49, i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %48, %42
  %55 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %56 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %55, i32 0, i32 0
  %57 = load i32, i32* @QEDF_LOG_IO, align 4
  %58 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %59 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (i32*, i32, i8*, ...) @QEDF_INFO(i32* %56, i32 %57, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  br label %164

62:                                               ; preds = %48
  %63 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %64 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %63, i32 0, i32 9
  %65 = call i32 @cancel_delayed_work(i32* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %62
  %68 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %69 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %68, i32 0, i32 0
  %70 = call i32 @QEDF_ERR(i32* %69, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %71

71:                                               ; preds = %67, %62
  %72 = load i32, i32* %7, align 4
  switch i32 %72, label %119 [
    i32 129, label %73
    i32 128, label %111
  ]

73:                                               ; preds = %71
  %74 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %75 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %74, i32 0, i32 0
  %76 = load i32, i32* @QEDF_LOG_SCSI_TM, align 4
  %77 = call i32 (i32*, i32, i8*, ...) @QEDF_INFO(i32* %75, i32 %76, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  %78 = load i32, i32* @QEDF_IOREQ_EV_ABORT_SUCCESS, align 4
  %79 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %80 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %79, i32 0, i32 6
  store i32 %78, i32* %80, align 4
  %81 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %82 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %81, i32 0, i32 0
  %83 = call i32 @kref_get_unless_zero(i32* %82)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %73
  %87 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %88 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %87, i32 0, i32 0
  %89 = load i32, i32* @QEDF_LOG_SCSI_TM, align 4
  %90 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %91 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = call i32 (i32*, i32, i8*, ...) @QEDF_INFO(i32* %88, i32 %89, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.5, i64 0, i64 0), i32 %92)
  br label %164

94:                                               ; preds = %73
  %95 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %96 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %99 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %98, i32 0, i32 8
  %100 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %101 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %100, i32 0, i32 1
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @msecs_to_jiffies(i32 %104)
  %106 = call i32 @queue_delayed_work(i32 %97, i32* %99, i32 %105)
  %107 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %108 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %107, i32 0, i32 7
  %109 = load i32, i32* @QEDFC_CMD_ST_RRQ_WAIT, align 4
  %110 = call i32 @atomic_set(i32* %108, i32 %109)
  br label %123

111:                                              ; preds = %71
  %112 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %113 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %112, i32 0, i32 0
  %114 = load i32, i32* @QEDF_LOG_SCSI_TM, align 4
  %115 = call i32 (i32*, i32, i8*, ...) @QEDF_INFO(i32* %113, i32 %114, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %116 = load i32, i32* @QEDF_IOREQ_EV_ABORT_FAILED, align 4
  %117 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %118 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %117, i32 0, i32 6
  store i32 %116, i32* %118, align 4
  br label %123

119:                                              ; preds = %71
  %120 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %121 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %120, i32 0, i32 0
  %122 = call i32 @QEDF_ERR(i32* %121, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  br label %123

123:                                              ; preds = %119, %111, %94
  %124 = load i32, i32* @QEDF_CMD_IN_ABORT, align 4
  %125 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %126 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %125, i32 0, i32 5
  %127 = call i32 @clear_bit(i32 %124, i32* %126)
  %128 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %129 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %128, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %156

132:                                              ; preds = %123
  %133 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %134 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %145, label %137

137:                                              ; preds = %132
  %138 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %139 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %138, i32 0, i32 0
  %140 = load i32, i32* @QEDF_LOG_SCSI_TM, align 4
  %141 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %142 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = call i32 (i32*, i32, i8*, ...) @QEDF_INFO(i32* %139, i32 %140, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %143)
  br label %145

145:                                              ; preds = %137, %132
  %146 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %147 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %145
  %151 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %152 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %153 = load i32, i32* @DID_ERROR, align 4
  %154 = call i32 @qedf_scsi_done(%struct.qedf_ctx* %151, %struct.qedf_ioreq* %152, i32 %153)
  br label %155

155:                                              ; preds = %150, %145
  br label %156

156:                                              ; preds = %155, %123
  %157 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %158 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %157, i32 0, i32 1
  %159 = call i32 @complete(i32* %158)
  %160 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %161 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %160, i32 0, i32 0
  %162 = load i32, i32* @qedf_release_cmd, align 4
  %163 = call i32 @kref_put(i32* %161, i32 %162)
  br label %164

164:                                              ; preds = %156, %86, %54, %34
  ret void
}

declare dso_local i32 @QEDF_INFO(i32*, i32, i8*, ...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @QEDF_ERR(i32*, i8*) #1

declare dso_local i32 @kref_get_unless_zero(i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @qedf_scsi_done(%struct.qedf_ctx*, %struct.qedf_ioreq*, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
