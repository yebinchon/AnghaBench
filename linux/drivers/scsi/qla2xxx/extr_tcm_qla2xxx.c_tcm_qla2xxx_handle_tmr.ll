; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_tcm_qla2xxx.c_tcm_qla2xxx_handle_tmr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_tcm_qla2xxx.c_tcm_qla2xxx_handle_tmr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_tgt_mgmt_cmd = type { %struct.se_cmd, %struct.fc_port* }
%struct.se_cmd = type { i32 }
%struct.fc_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TARGET_SCF_ACK_KREF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%ld: ABTS received\0A\00", align 1
@TMR_ABORT_TASK = common dso_local global i32 0, align 4
@TARGET_SCF_LOOKUP_LUN_FROM_TAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"%ld: 2G Abort Task received\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"%ld: CLEAR_ACA received\0A\00", align 1
@TMR_CLEAR_ACA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"%ld: TARGET_RESET received\0A\00", align 1
@TMR_TARGET_WARM_RESET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"%ld: LUN_RESET received\0A\00", align 1
@TMR_LUN_RESET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"%ld: CLEAR_TS received\0A\00", align 1
@TMR_CLEAR_TASK_SET = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"%ld: ABORT_TS received\0A\00", align 1
@TMR_ABORT_TASK_SET = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"%ld: Unknown task mgmt fn 0x%x\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qla_tgt_mgmt_cmd*, i32, i32, i32)* @tcm_qla2xxx_handle_tmr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcm_qla2xxx_handle_tmr(%struct.qla_tgt_mgmt_cmd* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qla_tgt_mgmt_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fc_port*, align 8
  %11 = alloca %struct.se_cmd*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.qla_tgt_mgmt_cmd* %0, %struct.qla_tgt_mgmt_cmd** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.qla_tgt_mgmt_cmd*, %struct.qla_tgt_mgmt_cmd** %6, align 8
  %15 = getelementptr inbounds %struct.qla_tgt_mgmt_cmd, %struct.qla_tgt_mgmt_cmd* %14, i32 0, i32 1
  %16 = load %struct.fc_port*, %struct.fc_port** %15, align 8
  store %struct.fc_port* %16, %struct.fc_port** %10, align 8
  %17 = load %struct.qla_tgt_mgmt_cmd*, %struct.qla_tgt_mgmt_cmd** %6, align 8
  %18 = getelementptr inbounds %struct.qla_tgt_mgmt_cmd, %struct.qla_tgt_mgmt_cmd* %17, i32 0, i32 0
  store %struct.se_cmd* %18, %struct.se_cmd** %11, align 8
  store i32 0, i32* %12, align 4
  %19 = load i32, i32* @TARGET_SCF_ACK_KREF, align 4
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %8, align 4
  switch i32 %20, label %80 [
    i32 132, label %21
    i32 134, label %32
    i32 131, label %40
    i32 128, label %48
    i32 129, label %56
    i32 130, label %64
    i32 133, label %72
  ]

21:                                               ; preds = %4
  %22 = load %struct.fc_port*, %struct.fc_port** %10, align 8
  %23 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @TMR_ABORT_TASK, align 4
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* @TARGET_SCF_LOOKUP_LUN_FROM_TAG, align 4
  %30 = load i32, i32* %13, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %13, align 4
  br label %90

32:                                               ; preds = %4
  %33 = load %struct.fc_port*, %struct.fc_port** %10, align 8
  %34 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @TMR_ABORT_TASK, align 4
  store i32 %39, i32* %12, align 4
  br label %90

40:                                               ; preds = %4
  %41 = load %struct.fc_port*, %struct.fc_port** %10, align 8
  %42 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @TMR_CLEAR_ACA, align 4
  store i32 %47, i32* %12, align 4
  br label %90

48:                                               ; preds = %4
  %49 = load %struct.fc_port*, %struct.fc_port** %10, align 8
  %50 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @TMR_TARGET_WARM_RESET, align 4
  store i32 %55, i32* %12, align 4
  br label %90

56:                                               ; preds = %4
  %57 = load %struct.fc_port*, %struct.fc_port** %10, align 8
  %58 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @TMR_LUN_RESET, align 4
  store i32 %63, i32* %12, align 4
  br label %90

64:                                               ; preds = %4
  %65 = load %struct.fc_port*, %struct.fc_port** %10, align 8
  %66 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @TMR_CLEAR_TASK_SET, align 4
  store i32 %71, i32* %12, align 4
  br label %90

72:                                               ; preds = %4
  %73 = load %struct.fc_port*, %struct.fc_port** %10, align 8
  %74 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %73, i32 0, i32 1
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* @TMR_ABORT_TASK_SET, align 4
  store i32 %79, i32* %12, align 4
  br label %90

80:                                               ; preds = %4
  %81 = load %struct.fc_port*, %struct.fc_port** %10, align 8
  %82 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %8, align 4
  %87 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %85, i32 %86)
  %88 = load i32, i32* @ENOSYS, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %5, align 4
  br label %102

90:                                               ; preds = %72, %64, %56, %48, %40, %32, %21
  %91 = load %struct.se_cmd*, %struct.se_cmd** %11, align 8
  %92 = load %struct.fc_port*, %struct.fc_port** %10, align 8
  %93 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = load %struct.qla_tgt_mgmt_cmd*, %struct.qla_tgt_mgmt_cmd** %6, align 8
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* @GFP_ATOMIC, align 4
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %13, align 4
  %101 = call i32 @target_submit_tmr(%struct.se_cmd* %91, i32 %94, i32* null, i32 %95, %struct.qla_tgt_mgmt_cmd* %96, i32 %97, i32 %98, i32 %99, i32 %100)
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %90, %80
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @target_submit_tmr(%struct.se_cmd*, i32, i32*, i32, %struct.qla_tgt_mgmt_cmd*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
