; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_io.c_qedf_trace_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_io.c_qedf_trace_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedf_rport = type { %struct.TYPE_5__*, %struct.qedf_ctx* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.qedf_ctx = type { i64, i32, %struct.qedf_io_log* }
%struct.qedf_io_log = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i64 }
%struct.qedf_ioreq = type { i32, i64, i32, i32, i32, %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { i32, i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@QEDF_IO_TRACE_REQ = common dso_local global i64 0, align 8
@QEDF_IO_TRACE_RSP = common dso_local global i64 0, align 8
@QEDF_IO_TRACE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qedf_rport*, %struct.qedf_ioreq*, i64)* @qedf_trace_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedf_trace_io(%struct.qedf_rport* %0, %struct.qedf_ioreq* %1, i64 %2) #0 {
  %4 = alloca %struct.qedf_rport*, align 8
  %5 = alloca %struct.qedf_ioreq*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.qedf_ctx*, align 8
  %8 = alloca %struct.qedf_io_log*, align 8
  %9 = alloca %struct.scsi_cmnd*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.qedf_rport* %0, %struct.qedf_rport** %4, align 8
  store %struct.qedf_ioreq* %1, %struct.qedf_ioreq** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.qedf_rport*, %struct.qedf_rport** %4, align 8
  %13 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %12, i32 0, i32 1
  %14 = load %struct.qedf_ctx*, %struct.qedf_ctx** %13, align 8
  store %struct.qedf_ctx* %14, %struct.qedf_ctx** %7, align 8
  %15 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %16 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %15, i32 0, i32 5
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %16, align 8
  store %struct.scsi_cmnd* %17, %struct.scsi_cmnd** %9, align 8
  %18 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %19 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %18, i32 0, i32 1
  %20 = load i64, i64* %10, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %23 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %22, i32 0, i32 2
  %24 = load %struct.qedf_io_log*, %struct.qedf_io_log** %23, align 8
  %25 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %26 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.qedf_io_log, %struct.qedf_io_log* %24, i64 %27
  store %struct.qedf_io_log* %28, %struct.qedf_io_log** %8, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load %struct.qedf_io_log*, %struct.qedf_io_log** %8, align 8
  %31 = getelementptr inbounds %struct.qedf_io_log, %struct.qedf_io_log* %30, i32 0, i32 14
  store i64 %29, i64* %31, align 8
  %32 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %33 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.qedf_io_log*, %struct.qedf_io_log** %8, align 8
  %36 = getelementptr inbounds %struct.qedf_io_log, %struct.qedf_io_log* %35, i32 0, i32 13
  store i32 %34, i32* %36, align 4
  %37 = load %struct.qedf_rport*, %struct.qedf_rport** %4, align 8
  %38 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.qedf_io_log*, %struct.qedf_io_log** %8, align 8
  %44 = getelementptr inbounds %struct.qedf_io_log, %struct.qedf_io_log* %43, i32 0, i32 12
  store i32 %42, i32* %44, align 8
  %45 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %46 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %45, i32 0, i32 2
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.qedf_io_log*, %struct.qedf_io_log** %8, align 8
  %51 = getelementptr inbounds %struct.qedf_io_log, %struct.qedf_io_log* %50, i32 0, i32 11
  store i32 %49, i32* %51, align 4
  %52 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %53 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %11, align 4
  %57 = load %struct.qedf_io_log*, %struct.qedf_io_log** %8, align 8
  %58 = getelementptr inbounds %struct.qedf_io_log, %struct.qedf_io_log* %57, i32 0, i32 10
  store i32 %56, i32* %58, align 8
  %59 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %60 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.qedf_io_log*, %struct.qedf_io_log** %8, align 8
  %65 = getelementptr inbounds %struct.qedf_io_log, %struct.qedf_io_log* %64, i32 0, i32 9
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  store i32 %63, i32* %67, align 4
  %68 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %69 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.qedf_io_log*, %struct.qedf_io_log** %8, align 8
  %74 = getelementptr inbounds %struct.qedf_io_log, %struct.qedf_io_log* %73, i32 0, i32 9
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  store i32 %72, i32* %76, align 4
  %77 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %78 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 4
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.qedf_io_log*, %struct.qedf_io_log** %8, align 8
  %83 = getelementptr inbounds %struct.qedf_io_log, %struct.qedf_io_log* %82, i32 0, i32 9
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 2
  store i32 %81, i32* %85, align 4
  %86 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %87 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 5
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.qedf_io_log*, %struct.qedf_io_log** %8, align 8
  %92 = getelementptr inbounds %struct.qedf_io_log, %struct.qedf_io_log* %91, i32 0, i32 9
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 3
  store i32 %90, i32* %94, align 4
  %95 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %96 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %95)
  %97 = load %struct.qedf_io_log*, %struct.qedf_io_log** %8, align 8
  %98 = getelementptr inbounds %struct.qedf_io_log, %struct.qedf_io_log* %97, i32 0, i32 8
  store i32 %96, i32* %98, align 4
  %99 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %100 = call i32 @scsi_sg_count(%struct.scsi_cmnd* %99)
  %101 = load %struct.qedf_io_log*, %struct.qedf_io_log** %8, align 8
  %102 = getelementptr inbounds %struct.qedf_io_log, %struct.qedf_io_log* %101, i32 0, i32 7
  store i32 %100, i32* %102, align 8
  %103 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %104 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.qedf_io_log*, %struct.qedf_io_log** %8, align 8
  %107 = getelementptr inbounds %struct.qedf_io_log, %struct.qedf_io_log* %106, i32 0, i32 6
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* @jiffies, align 4
  %109 = load %struct.qedf_io_log*, %struct.qedf_io_log** %8, align 8
  %110 = getelementptr inbounds %struct.qedf_io_log, %struct.qedf_io_log* %109, i32 0, i32 5
  store i32 %108, i32* %110, align 8
  %111 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %112 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %111, i32 0, i32 3
  %113 = call i32 @kref_read(i32* %112)
  %114 = load %struct.qedf_io_log*, %struct.qedf_io_log** %8, align 8
  %115 = getelementptr inbounds %struct.qedf_io_log, %struct.qedf_io_log* %114, i32 0, i32 4
  store i32 %113, i32* %115, align 4
  %116 = load i64, i64* %6, align 8
  %117 = load i64, i64* @QEDF_IO_TRACE_REQ, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %129

119:                                              ; preds = %3
  %120 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %121 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.qedf_io_log*, %struct.qedf_io_log** %8, align 8
  %124 = getelementptr inbounds %struct.qedf_io_log, %struct.qedf_io_log* %123, i32 0, i32 3
  store i32 %122, i32* %124, align 8
  %125 = load %struct.qedf_io_log*, %struct.qedf_io_log** %8, align 8
  %126 = getelementptr inbounds %struct.qedf_io_log, %struct.qedf_io_log* %125, i32 0, i32 2
  store i64 0, i64* %126, align 8
  %127 = load %struct.qedf_io_log*, %struct.qedf_io_log** %8, align 8
  %128 = getelementptr inbounds %struct.qedf_io_log, %struct.qedf_io_log* %127, i32 0, i32 1
  store i64 0, i64* %128, align 8
  br label %148

129:                                              ; preds = %3
  %130 = load i64, i64* %6, align 8
  %131 = load i64, i64* @QEDF_IO_TRACE_RSP, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %147

133:                                              ; preds = %129
  %134 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %135 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.qedf_io_log*, %struct.qedf_io_log** %8, align 8
  %138 = getelementptr inbounds %struct.qedf_io_log, %struct.qedf_io_log* %137, i32 0, i32 3
  store i32 %136, i32* %138, align 8
  %139 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %140 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.qedf_io_log*, %struct.qedf_io_log** %8, align 8
  %143 = getelementptr inbounds %struct.qedf_io_log, %struct.qedf_io_log* %142, i32 0, i32 2
  store i64 %141, i64* %143, align 8
  %144 = call i64 (...) @smp_processor_id()
  %145 = load %struct.qedf_io_log*, %struct.qedf_io_log** %8, align 8
  %146 = getelementptr inbounds %struct.qedf_io_log, %struct.qedf_io_log* %145, i32 0, i32 1
  store i64 %144, i64* %146, align 8
  br label %147

147:                                              ; preds = %133, %129
  br label %148

148:                                              ; preds = %147, %119
  %149 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %150 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.qedf_io_log*, %struct.qedf_io_log** %8, align 8
  %153 = getelementptr inbounds %struct.qedf_io_log, %struct.qedf_io_log* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 8
  %154 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %155 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = add i64 %156, 1
  store i64 %157, i64* %155, align 8
  %158 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %159 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @QEDF_IO_TRACE_SIZE, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %148
  %164 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %165 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %164, i32 0, i32 0
  store i64 0, i64* %165, align 8
  br label %166

166:                                              ; preds = %163, %148
  %167 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %168 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %167, i32 0, i32 1
  %169 = load i64, i64* %10, align 8
  %170 = call i32 @spin_unlock_irqrestore(i32* %168, i64 %169)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @kref_read(i32*) #1

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
