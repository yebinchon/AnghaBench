; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_post_nvme_gpnft_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_post_nvme_gpnft_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }
%struct.qla_work_evt = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32 }

@QLA_EVT_GPNFT = common dso_local global i32 0, align 4
@QLA_PARAMETER_ERROR = common dso_local global i32 0, align 4
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@FC4_TYPE_NVME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*, i32*, i32)* @qla2x00_post_nvme_gpnft_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2x00_post_nvme_gpnft_work(%struct.scsi_qla_host* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_qla_host*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qla_work_evt*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @QLA_EVT_GPNFT, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @QLA_PARAMETER_ERROR, align 4
  store i32 %13, i32* %4, align 4
  br label %36

14:                                               ; preds = %3
  %15 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.qla_work_evt* @qla2x00_alloc_work(%struct.scsi_qla_host* %15, i32 %16)
  store %struct.qla_work_evt* %17, %struct.qla_work_evt** %8, align 8
  %18 = load %struct.qla_work_evt*, %struct.qla_work_evt** %8, align 8
  %19 = icmp ne %struct.qla_work_evt* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %21, i32* %4, align 4
  br label %36

22:                                               ; preds = %14
  %23 = load i32, i32* @FC4_TYPE_NVME, align 4
  %24 = load %struct.qla_work_evt*, %struct.qla_work_evt** %8, align 8
  %25 = getelementptr inbounds %struct.qla_work_evt, %struct.qla_work_evt* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i32 %23, i32* %27, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load %struct.qla_work_evt*, %struct.qla_work_evt** %8, align 8
  %30 = getelementptr inbounds %struct.qla_work_evt, %struct.qla_work_evt* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32* %28, i32** %32, align 8
  %33 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %34 = load %struct.qla_work_evt*, %struct.qla_work_evt** %8, align 8
  %35 = call i32 @qla2x00_post_work(%struct.scsi_qla_host* %33, %struct.qla_work_evt* %34)
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %22, %20, %12
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.qla_work_evt* @qla2x00_alloc_work(%struct.scsi_qla_host*, i32) #1

declare dso_local i32 @qla2x00_post_work(%struct.scsi_qla_host*, %struct.qla_work_evt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
