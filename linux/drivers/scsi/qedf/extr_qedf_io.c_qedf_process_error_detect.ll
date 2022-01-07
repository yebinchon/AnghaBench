; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_io.c_qedf_process_error_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_io.c_qedf_process_error_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedf_ctx = type { i32, i64 }
%struct.fcoe_cqe = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.qedf_ioreq = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@QEDF_LOG_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"cqe is NULL for io_req %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Error detection CQE, xid=0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"err_warn_bitmap=%08x:%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"tx_buff_off=%08x, rx_buff_off=%08x, rx_id=%04x\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Failed to queue ABTS.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qedf_process_error_detect(%struct.qedf_ctx* %0, %struct.fcoe_cqe* %1, %struct.qedf_ioreq* %2) #0 {
  %4 = alloca %struct.qedf_ctx*, align 8
  %5 = alloca %struct.fcoe_cqe*, align 8
  %6 = alloca %struct.qedf_ioreq*, align 8
  %7 = alloca i32, align 4
  store %struct.qedf_ctx* %0, %struct.qedf_ctx** %4, align 8
  store %struct.fcoe_cqe* %1, %struct.fcoe_cqe** %5, align 8
  store %struct.qedf_ioreq* %2, %struct.qedf_ioreq** %6, align 8
  %8 = load %struct.fcoe_cqe*, %struct.fcoe_cqe** %5, align 8
  %9 = icmp ne %struct.fcoe_cqe* %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %11, i32 0, i32 0
  %13 = load i32, i32* @QEDF_LOG_IO, align 4
  %14 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %15 = call i32 @QEDF_INFO(i32* %12, i32 %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.qedf_ioreq* %14)
  br label %90

16:                                               ; preds = %3
  %17 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %18 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %24 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %28 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %27, i32 0, i32 1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.fcoe_cqe*, %struct.fcoe_cqe** %5, align 8
  %34 = getelementptr inbounds %struct.fcoe_cqe, %struct.fcoe_cqe* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le32_to_cpu(i32 %37)
  %39 = load %struct.fcoe_cqe*, %struct.fcoe_cqe** %5, align 8
  %40 = getelementptr inbounds %struct.fcoe_cqe, %struct.fcoe_cqe* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @le32_to_cpu(i32 %43)
  %45 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %38, i32 %44)
  %46 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %47 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %46, i32 0, i32 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load %struct.fcoe_cqe*, %struct.fcoe_cqe** %5, align 8
  %53 = getelementptr inbounds %struct.fcoe_cqe, %struct.fcoe_cqe* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @le32_to_cpu(i32 %56)
  %58 = load %struct.fcoe_cqe*, %struct.fcoe_cqe** %5, align 8
  %59 = getelementptr inbounds %struct.fcoe_cqe, %struct.fcoe_cqe* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @le32_to_cpu(i32 %62)
  %64 = load %struct.fcoe_cqe*, %struct.fcoe_cqe** %5, align 8
  %65 = getelementptr inbounds %struct.fcoe_cqe, %struct.fcoe_cqe* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @le32_to_cpu(i32 %68)
  %70 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %51, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %57, i32 %63, i32 %69)
  %71 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %72 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %16
  %76 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %77 = call i32 @qedf_stop_all_io(%struct.qedf_ctx* %76)
  br label %90

78:                                               ; preds = %16
  %79 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %80 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %79, i32 0, i32 0
  %81 = call i32 @init_completion(i32* %80)
  %82 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %83 = call i32 @qedf_initiate_abts(%struct.qedf_ioreq* %82, i32 1)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %78
  %87 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %88 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %87, i32 0, i32 0
  %89 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %88, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %90

90:                                               ; preds = %10, %75, %86, %78
  ret void
}

declare dso_local i32 @QEDF_INFO(i32*, i32, i8*, %struct.qedf_ioreq*) #1

declare dso_local i32 @QEDF_ERR(i32*, i8*, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @qedf_stop_all_io(%struct.qedf_ctx*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @qedf_initiate_abts(%struct.qedf_ioreq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
