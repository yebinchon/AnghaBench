; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla8xxx_dev_failed_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla8xxx_dev_failed_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, i32, %struct.qla_hw_data* }
%struct.TYPE_7__ = type { i64, i64 }
%struct.qla_hw_data = type { i32 }

@ql_log_fatal = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Disabling the board.\0A\00", align 1
@DFLG_DEV_FAILED = common dso_local global i32 0, align 4
@DID_NO_CONNECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla8xxx_dev_failed_handler(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 2
  %6 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  store %struct.qla_hw_data* %6, %struct.qla_hw_data** %3, align 8
  %7 = load i32, i32* @ql_log_fatal, align 4
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %9 = call i32 @ql_log(i32 %7, %struct.TYPE_8__* %8, i32 184, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %11 = call i64 @IS_QLA82XX(%struct.qla_hw_data* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %15 = call i32 @qla82xx_clear_drv_active(%struct.qla_hw_data* %14)
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %17 = call i32 @qla82xx_idc_unlock(%struct.qla_hw_data* %16)
  br label %28

18:                                               ; preds = %1
  %19 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %20 = call i64 @IS_QLA8044(%struct.qla_hw_data* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %24 = call i32 @qla8044_clear_drv_active(%struct.qla_hw_data* %23)
  %25 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %26 = call i32 @qla8044_idc_unlock(%struct.qla_hw_data* %25)
  br label %27

27:                                               ; preds = %22, %18
  br label %28

28:                                               ; preds = %27, %13
  %29 = load i32, i32* @DFLG_DEV_FAILED, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %35 = load i32, i32* @DID_NO_CONNECT, align 4
  %36 = shl i32 %35, 16
  %37 = call i32 @qla2x00_abort_all_cmds(%struct.TYPE_8__* %34, i32 %36)
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %39 = call i32 @qla2x00_mark_all_devices_lost(%struct.TYPE_8__* %38, i32 0)
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  ret void
}

declare dso_local i32 @ql_log(i32, %struct.TYPE_8__*, i32, i8*) #1

declare dso_local i64 @IS_QLA82XX(%struct.qla_hw_data*) #1

declare dso_local i32 @qla82xx_clear_drv_active(%struct.qla_hw_data*) #1

declare dso_local i32 @qla82xx_idc_unlock(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA8044(%struct.qla_hw_data*) #1

declare dso_local i32 @qla8044_clear_drv_active(%struct.qla_hw_data*) #1

declare dso_local i32 @qla8044_idc_unlock(%struct.qla_hw_data*) #1

declare dso_local i32 @qla2x00_abort_all_cmds(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @qla2x00_mark_all_devices_lost(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
