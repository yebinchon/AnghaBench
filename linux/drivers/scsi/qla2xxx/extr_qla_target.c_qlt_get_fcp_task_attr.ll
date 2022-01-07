; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_get_fcp_task_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_get_fcp_task_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }

@TCM_SIMPLE_TAG = common dso_local global i32 0, align 4
@TCM_HEAD_TAG = common dso_local global i32 0, align 4
@TCM_ORDERED_TAG = common dso_local global i32 0, align 4
@TCM_ACA_TAG = common dso_local global i32 0, align 4
@ql_dbg_tgt_mgt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"qla_target: unknown task code %x, use ORDERED instead\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*, i32)* @qlt_get_fcp_task_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlt_get_fcp_task_attr(%struct.scsi_qla_host* %0, i32 %1) #0 {
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %17 [
    i32 129, label %7
    i32 131, label %9
    i32 130, label %11
    i32 132, label %13
    i32 128, label %15
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @TCM_SIMPLE_TAG, align 4
  store i32 %8, i32* %5, align 4
  br label %23

9:                                                ; preds = %2
  %10 = load i32, i32* @TCM_HEAD_TAG, align 4
  store i32 %10, i32* %5, align 4
  br label %23

11:                                               ; preds = %2
  %12 = load i32, i32* @TCM_ORDERED_TAG, align 4
  store i32 %12, i32* %5, align 4
  br label %23

13:                                               ; preds = %2
  %14 = load i32, i32* @TCM_ACA_TAG, align 4
  store i32 %14, i32* %5, align 4
  br label %23

15:                                               ; preds = %2
  %16 = load i32, i32* @TCM_SIMPLE_TAG, align 4
  store i32 %16, i32* %5, align 4
  br label %23

17:                                               ; preds = %2
  %18 = load i32, i32* @ql_dbg_tgt_mgt, align 4
  %19 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @ql_dbg(i32 %18, %struct.scsi_qla_host* %19, i32 61533, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @TCM_ORDERED_TAG, align 4
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %17, %15, %13, %11, %9, %7
  %24 = load i32, i32* %5, align 4
  ret i32 %24
}

declare dso_local i32 @ql_dbg(i32, %struct.scsi_qla_host*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
