; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_io.c_qedf_process_warning_compl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_io.c_qedf_process_warning_compl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedf_ctx = type { i32 }
%struct.fcoe_cqe = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i64, i64, i64 }
%struct.qedf_ioreq = type { i32, i64, i64, i64, i32, %struct.qedf_rport*, i32 }
%struct.qedf_rport = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@QEDF_LOG_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cqe is NULL for io_req %p xid=0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Warning CQE, xid=0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"err_warn_bitmap=%08x:%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"tx_buff_off=%08x, rx_buff_off=%08x, rx_id=%04x\0A\00", align 1
@QEDF_RPORT_TYPE_TAPE = common dso_local global i64 0, align 8
@FCOE_WARNING_CODE_REC_TOV_TIMER_EXPIRATION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"REC timer expired.\0A\00", align 1
@QEDF_CMD_SRR_SENT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"Failed to queue ABTS.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qedf_process_warning_compl(%struct.qedf_ctx* %0, %struct.fcoe_cqe* %1, %struct.qedf_ioreq* %2) #0 {
  %4 = alloca %struct.qedf_ctx*, align 8
  %5 = alloca %struct.fcoe_cqe*, align 8
  %6 = alloca %struct.qedf_ioreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.qedf_rport*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.qedf_ctx* %0, %struct.qedf_ctx** %4, align 8
  store %struct.fcoe_cqe* %1, %struct.fcoe_cqe** %5, align 8
  store %struct.qedf_ioreq* %2, %struct.qedf_ioreq** %6, align 8
  %12 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %13 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %12, i32 0, i32 5
  %14 = load %struct.qedf_rport*, %struct.qedf_rport** %13, align 8
  store %struct.qedf_rport* %14, %struct.qedf_rport** %9, align 8
  store i32 255, i32* %11, align 4
  %15 = load %struct.fcoe_cqe*, %struct.fcoe_cqe** %5, align 8
  %16 = icmp ne %struct.fcoe_cqe* %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %3
  %18 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %19 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %18, i32 0, i32 0
  %20 = load i32, i32* @QEDF_LOG_IO, align 4
  %21 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %22 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %23 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @QEDF_INFO(i32* %19, i32 %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.qedf_ioreq* %21, i32 %24)
  br label %172

26:                                               ; preds = %3
  %27 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %28 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %27, i32 0, i32 5
  %29 = load %struct.qedf_rport*, %struct.qedf_rport** %28, align 8
  %30 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %34 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %38 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %37, i32 0, i32 5
  %39 = load %struct.qedf_rport*, %struct.qedf_rport** %38, align 8
  %40 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.fcoe_cqe*, %struct.fcoe_cqe** %5, align 8
  %44 = getelementptr inbounds %struct.fcoe_cqe, %struct.fcoe_cqe* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @le32_to_cpu(i64 %47)
  %49 = load %struct.fcoe_cqe*, %struct.fcoe_cqe** %5, align 8
  %50 = getelementptr inbounds %struct.fcoe_cqe, %struct.fcoe_cqe* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @le32_to_cpu(i64 %53)
  %55 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %48, i32 %54)
  %56 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %57 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %56, i32 0, i32 5
  %58 = load %struct.qedf_rport*, %struct.qedf_rport** %57, align 8
  %59 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load %struct.fcoe_cqe*, %struct.fcoe_cqe** %5, align 8
  %63 = getelementptr inbounds %struct.fcoe_cqe, %struct.fcoe_cqe* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @le32_to_cpu(i64 %66)
  %68 = load %struct.fcoe_cqe*, %struct.fcoe_cqe** %5, align 8
  %69 = getelementptr inbounds %struct.fcoe_cqe, %struct.fcoe_cqe* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @le32_to_cpu(i64 %72)
  %74 = load %struct.fcoe_cqe*, %struct.fcoe_cqe** %5, align 8
  %75 = getelementptr inbounds %struct.fcoe_cqe, %struct.fcoe_cqe* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @le32_to_cpu(i64 %78)
  %80 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %61, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %67, i32 %73, i32 %79)
  %81 = load %struct.fcoe_cqe*, %struct.fcoe_cqe** %5, align 8
  %82 = getelementptr inbounds %struct.fcoe_cqe, %struct.fcoe_cqe* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i32
  %87 = shl i32 %86, 32
  %88 = load %struct.fcoe_cqe*, %struct.fcoe_cqe** %5, align 8
  %89 = getelementptr inbounds %struct.fcoe_cqe, %struct.fcoe_cqe* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = trunc i64 %92 to i32
  %94 = or i32 %87, %93
  store i32 %94, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %95

95:                                               ; preds = %107, %26
  %96 = load i32, i32* %8, align 4
  %97 = icmp slt i32 %96, 64
  br i1 %97, label %98, label %110

98:                                               ; preds = %95
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %8, align 4
  %101 = shl i32 1, %100
  %102 = and i32 %99, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = load i32, i32* %8, align 4
  store i32 %105, i32* %11, align 4
  br label %110

106:                                              ; preds = %98
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %8, align 4
  br label %95

110:                                              ; preds = %104, %95
  %111 = load %struct.qedf_rport*, %struct.qedf_rport** %9, align 8
  %112 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @QEDF_RPORT_TYPE_TAPE, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %159

116:                                              ; preds = %110
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* @FCOE_WARNING_CODE_REC_TOV_TIMER_EXPIRATION, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %158

120:                                              ; preds = %116
  %121 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %122 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %121, i32 0, i32 0
  %123 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %122, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %124 = load i32, i32* @QEDF_CMD_SRR_SENT, align 4
  %125 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %126 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %125, i32 0, i32 4
  %127 = call i32 @test_bit(i32 %124, i32* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %157, label %129

129:                                              ; preds = %120
  %130 = load %struct.fcoe_cqe*, %struct.fcoe_cqe** %5, align 8
  %131 = getelementptr inbounds %struct.fcoe_cqe, %struct.fcoe_cqe* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %136 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %135, i32 0, i32 3
  store i64 %134, i64* %136, align 8
  %137 = load %struct.fcoe_cqe*, %struct.fcoe_cqe** %5, align 8
  %138 = getelementptr inbounds %struct.fcoe_cqe, %struct.fcoe_cqe* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %143 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %142, i32 0, i32 2
  store i64 %141, i64* %143, align 8
  %144 = load %struct.fcoe_cqe*, %struct.fcoe_cqe** %5, align 8
  %145 = getelementptr inbounds %struct.fcoe_cqe, %struct.fcoe_cqe* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %150 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %149, i32 0, i32 1
  store i64 %148, i64* %150, align 8
  %151 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %152 = call i32 @qedf_send_rec(%struct.qedf_ioreq* %151)
  store i32 %152, i32* %7, align 4
  %153 = load i32, i32* %7, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %129
  br label %160

156:                                              ; preds = %129
  br label %157

157:                                              ; preds = %156, %120
  br label %172

158:                                              ; preds = %116
  br label %159

159:                                              ; preds = %158, %110
  br label %160

160:                                              ; preds = %159, %155
  %161 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %162 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %161, i32 0, i32 0
  %163 = call i32 @init_completion(i32* %162)
  %164 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %165 = call i32 @qedf_initiate_abts(%struct.qedf_ioreq* %164, i32 1)
  store i32 %165, i32* %7, align 4
  %166 = load i32, i32* %7, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %160
  %169 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %170 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %169, i32 0, i32 0
  %171 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %170, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %172

172:                                              ; preds = %17, %157, %168, %160
  ret void
}

declare dso_local i32 @QEDF_INFO(i32*, i32, i8*, %struct.qedf_ioreq*, i32) #1

declare dso_local i32 @QEDF_ERR(i32*, i8*, ...) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @qedf_send_rec(%struct.qedf_ioreq*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @qedf_initiate_abts(%struct.qedf_ioreq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
