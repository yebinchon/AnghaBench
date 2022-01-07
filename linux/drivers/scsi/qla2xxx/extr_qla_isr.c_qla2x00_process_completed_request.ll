; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_isr.c_qla2x00_process_completed_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_isr.c_qla2x00_process_completed_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32, %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32 }
%struct.req_que = type { i64, %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_3__*, i32)* }

@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Invalid SCSI command index (%x).\0A\00", align 1
@FCOE_CTX_RESET_NEEDED = common dso_local global i32 0, align 4
@ISP_ABORT_NEEDED = common dso_local global i32 0, align 4
@DID_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Invalid SCSI SRB.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla2x00_process_completed_request(%struct.scsi_qla_host* %0, %struct.req_que* %1, i64 %2) #0 {
  %4 = alloca %struct.scsi_qla_host*, align 8
  %5 = alloca %struct.req_que*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca %struct.qla_hw_data*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %4, align 8
  store %struct.req_que* %1, %struct.req_que** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %10 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %9, i32 0, i32 1
  %11 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  store %struct.qla_hw_data* %11, %struct.qla_hw_data** %8, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.req_que*, %struct.req_que** %5, align 8
  %14 = getelementptr inbounds %struct.req_que, %struct.req_que* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp uge i64 %12, %15
  br i1 %16, label %17, label %36

17:                                               ; preds = %3
  %18 = load i32, i32* @ql_log_warn, align 4
  %19 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_log(i32 %18, %struct.scsi_qla_host* %19, i32 12308, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %23 = call i64 @IS_P3P_TYPE(%struct.qla_hw_data* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %17
  %26 = load i32, i32* @FCOE_CTX_RESET_NEEDED, align 4
  %27 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %28 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %27, i32 0, i32 0
  %29 = call i32 @set_bit(i32 %26, i32* %28)
  br label %35

30:                                               ; preds = %17
  %31 = load i32, i32* @ISP_ABORT_NEEDED, align 4
  %32 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %33 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %32, i32 0, i32 0
  %34 = call i32 @set_bit(i32 %31, i32* %33)
  br label %35

35:                                               ; preds = %30, %25
  br label %76

36:                                               ; preds = %3
  %37 = load %struct.req_que*, %struct.req_que** %5, align 8
  %38 = getelementptr inbounds %struct.req_que, %struct.req_que* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %39, i64 %40
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  store %struct.TYPE_3__* %42, %struct.TYPE_3__** %7, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %44 = icmp ne %struct.TYPE_3__* %43, null
  br i1 %44, label %45, label %58

45:                                               ; preds = %36
  %46 = load %struct.req_que*, %struct.req_que** %5, align 8
  %47 = getelementptr inbounds %struct.req_que, %struct.req_que* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %48, i64 %49
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %50, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32 (%struct.TYPE_3__*, i32)*, i32 (%struct.TYPE_3__*, i32)** %52, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %55 = load i32, i32* @DID_OK, align 4
  %56 = shl i32 %55, 16
  %57 = call i32 %53(%struct.TYPE_3__* %54, i32 %56)
  br label %76

58:                                               ; preds = %36
  %59 = load i32, i32* @ql_log_warn, align 4
  %60 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %61 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_log(i32 %59, %struct.scsi_qla_host* %60, i32 12310, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %62 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %63 = call i64 @IS_P3P_TYPE(%struct.qla_hw_data* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %58
  %66 = load i32, i32* @FCOE_CTX_RESET_NEEDED, align 4
  %67 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %68 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %67, i32 0, i32 0
  %69 = call i32 @set_bit(i32 %66, i32* %68)
  br label %75

70:                                               ; preds = %58
  %71 = load i32, i32* @ISP_ABORT_NEEDED, align 4
  %72 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %73 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %72, i32 0, i32 0
  %74 = call i32 @set_bit(i32 %71, i32* %73)
  br label %75

75:                                               ; preds = %70, %65
  br label %76

76:                                               ; preds = %35, %75, %45
  ret void
}

declare dso_local i32 @ql_log(i32, %struct.scsi_qla_host*, i32, i8*, ...) #1

declare dso_local i64 @IS_P3P_TYPE(%struct.qla_hw_data*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
