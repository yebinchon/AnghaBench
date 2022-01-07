; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx2.c_qla8044_abort_isp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx2.c_qla8044_abort_isp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i64 }

@QLA8044_CRB_DEV_STATE_INDEX = common dso_local global i32 0, align 4
@ql2xdontresethba = common dso_local global i64 0, align 8
@QLA8XXX_DEV_READY = common dso_local global i64 0, align 8
@DONTRESET_BIT0 = common dso_local global i64 0, align 8
@ql_dbg_p3p = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Reset recovery disabled\0A\00", align 1
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"HW State: NEED RESET\0A\00", align 1
@QLA8XXX_DEV_NEED_RESET = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla8044_abort_isp(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %6 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %8 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  store %struct.qla_hw_data* %8, %struct.qla_hw_data** %5, align 8
  %9 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %10 = call i32 @qla8044_idc_lock(%struct.qla_hw_data* %9)
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %12 = load i32, i32* @QLA8044_CRB_DEV_STATE_INDEX, align 4
  %13 = call i64 @qla8044_rd_direct(%struct.TYPE_13__* %11, i32 %12)
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* @ql2xdontresethba, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %18 = call i32 @qla8044_set_idc_dontreset(%struct.TYPE_13__* %17)
  br label %19

19:                                               ; preds = %16, %1
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @QLA8XXX_DEV_READY, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %19
  %24 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %25 = call i64 @qla8044_idc_dontreset(%struct.qla_hw_data* %24)
  %26 = load i64, i64* @DONTRESET_BIT0, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i32, i32* @ql_dbg_p3p, align 4
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %31 = call i32 @ql_dbg(i32 %29, %struct.TYPE_13__* %30, i32 45374, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %32, i32* %3, align 4
  br label %52

33:                                               ; preds = %23
  %34 = load i32, i32* @ql_dbg_p3p, align 4
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %36 = call i32 @ql_dbg(i32 %34, %struct.TYPE_13__* %35, i32 45376, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %38 = load i32, i32* @QLA8044_CRB_DEV_STATE_INDEX, align 4
  %39 = load i32, i32* @QLA8XXX_DEV_NEED_RESET, align 4
  %40 = call i32 @qla8044_wr_direct(%struct.TYPE_13__* %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %33, %19
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %43 = call i32 @qla83xx_reset_ownership(%struct.TYPE_13__* %42)
  %44 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %45 = call i32 @qla8044_idc_unlock(%struct.qla_hw_data* %44)
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %47 = call i32 @qla8044_device_state_handler(%struct.TYPE_13__* %46)
  store i32 %47, i32* %3, align 4
  %48 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %49 = call i32 @qla8044_idc_lock(%struct.qla_hw_data* %48)
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %51 = call i32 @qla8044_clear_rst_ready(%struct.TYPE_13__* %50)
  br label %52

52:                                               ; preds = %41, %28
  %53 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %54 = call i32 @qla8044_idc_unlock(%struct.qla_hw_data* %53)
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @QLA_SUCCESS, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %52
  %59 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %60 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  %62 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %63 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %66 = call i32 @qla82xx_restart_isp(%struct.TYPE_13__* %65)
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %58, %52
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @qla8044_idc_lock(%struct.qla_hw_data*) #1

declare dso_local i64 @qla8044_rd_direct(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @qla8044_set_idc_dontreset(%struct.TYPE_13__*) #1

declare dso_local i64 @qla8044_idc_dontreset(%struct.qla_hw_data*) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_13__*, i32, i8*) #1

declare dso_local i32 @qla8044_wr_direct(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @qla83xx_reset_ownership(%struct.TYPE_13__*) #1

declare dso_local i32 @qla8044_idc_unlock(%struct.qla_hw_data*) #1

declare dso_local i32 @qla8044_device_state_handler(%struct.TYPE_13__*) #1

declare dso_local i32 @qla8044_clear_rst_ready(%struct.TYPE_13__*) #1

declare dso_local i32 @qla82xx_restart_isp(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
