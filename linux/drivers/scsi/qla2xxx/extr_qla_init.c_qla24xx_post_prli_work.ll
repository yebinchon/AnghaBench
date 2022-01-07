; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla24xx_post_prli_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla24xx_post_prli_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }
%struct.qla_work_evt = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@QLA_EVT_PRLI = common dso_local global i32 0, align 4
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*, i32*)* @qla24xx_post_prli_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla24xx_post_prli_work(%struct.scsi_qla_host* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_qla_host*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.qla_work_evt*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %8 = load i32, i32* @QLA_EVT_PRLI, align 4
  %9 = call %struct.qla_work_evt* @qla2x00_alloc_work(%struct.scsi_qla_host* %7, i32 %8)
  store %struct.qla_work_evt* %9, %struct.qla_work_evt** %6, align 8
  %10 = load %struct.qla_work_evt*, %struct.qla_work_evt** %6, align 8
  %11 = icmp ne %struct.qla_work_evt* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %13, i32* %3, align 4
  br label %23

14:                                               ; preds = %2
  %15 = load i32*, i32** %5, align 8
  %16 = load %struct.qla_work_evt*, %struct.qla_work_evt** %6, align 8
  %17 = getelementptr inbounds %struct.qla_work_evt, %struct.qla_work_evt* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32* %15, i32** %19, align 8
  %20 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %21 = load %struct.qla_work_evt*, %struct.qla_work_evt** %6, align 8
  %22 = call i32 @qla2x00_post_work(%struct.scsi_qla_host* %20, %struct.qla_work_evt* %21)
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %14, %12
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local %struct.qla_work_evt* @qla2x00_alloc_work(%struct.scsi_qla_host*, i32) #1

declare dso_local i32 @qla2x00_post_work(%struct.scsi_qla_host*, %struct.qla_work_evt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
