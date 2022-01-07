; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MODE_TARGET = common dso_local global i32 0, align 4
@MODE_INITIATOR = common dso_local global i32 0, align 4
@MODE_DUAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlt_set_mode(%struct.scsi_qla_host* %0) #0 {
  %2 = alloca %struct.scsi_qla_host*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %2, align 8
  %3 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %4 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  switch i32 %5, label %24 [
    i32 131, label %6
    i32 128, label %6
    i32 129, label %12
    i32 130, label %18
  ]

6:                                                ; preds = %1, %1
  %7 = load i32, i32* @MODE_TARGET, align 4
  %8 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %9 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 %7, i32* %11, align 4
  br label %25

12:                                               ; preds = %1
  %13 = load i32, i32* @MODE_INITIATOR, align 4
  %14 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %15 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %13, i32* %17, align 4
  br label %25

18:                                               ; preds = %1
  %19 = load i32, i32* @MODE_DUAL, align 4
  %20 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %21 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %19, i32* %23, align 4
  br label %25

24:                                               ; preds = %1
  br label %25

25:                                               ; preds = %24, %18, %12, %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
