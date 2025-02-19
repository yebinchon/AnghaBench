; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qla24xx_post_nack_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qla24xx_post_nack_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }
%struct.imm_ntfy_from_isp = type { i32 }
%struct.qla_work_evt = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32* }

@QLA_EVT_NACK = common dso_local global i32 0, align 4
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*, i32*, %struct.imm_ntfy_from_isp*, i32)* @qla24xx_post_nack_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla24xx_post_nack_work(%struct.scsi_qla_host* %0, i32* %1, %struct.imm_ntfy_from_isp* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_qla_host*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.imm_ntfy_from_isp*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.qla_work_evt*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.imm_ntfy_from_isp* %2, %struct.imm_ntfy_from_isp** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %12 = load i32, i32* @QLA_EVT_NACK, align 4
  %13 = call %struct.qla_work_evt* @qla2x00_alloc_work(%struct.scsi_qla_host* %11, i32 %12)
  store %struct.qla_work_evt* %13, %struct.qla_work_evt** %10, align 8
  %14 = load %struct.qla_work_evt*, %struct.qla_work_evt** %10, align 8
  %15 = icmp ne %struct.qla_work_evt* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %17, i32* %5, align 4
  br label %39

18:                                               ; preds = %4
  %19 = load i32*, i32** %7, align 8
  %20 = load %struct.qla_work_evt*, %struct.qla_work_evt** %10, align 8
  %21 = getelementptr inbounds %struct.qla_work_evt, %struct.qla_work_evt* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  store i32* %19, i32** %23, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.qla_work_evt*, %struct.qla_work_evt** %10, align 8
  %26 = getelementptr inbounds %struct.qla_work_evt, %struct.qla_work_evt* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 %24, i32* %28, align 8
  %29 = load %struct.qla_work_evt*, %struct.qla_work_evt** %10, align 8
  %30 = getelementptr inbounds %struct.qla_work_evt, %struct.qla_work_evt* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.imm_ntfy_from_isp*, %struct.imm_ntfy_from_isp** %8, align 8
  %35 = call i32 @memcpy(i32 %33, %struct.imm_ntfy_from_isp* %34, i32 4)
  %36 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %37 = load %struct.qla_work_evt*, %struct.qla_work_evt** %10, align 8
  %38 = call i32 @qla2x00_post_work(%struct.scsi_qla_host* %36, %struct.qla_work_evt* %37)
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %18, %16
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local %struct.qla_work_evt* @qla2x00_alloc_work(%struct.scsi_qla_host*, i32) #1

declare dso_local i32 @memcpy(i32, %struct.imm_ntfy_from_isp*, i32) #1

declare dso_local i32 @qla2x00_post_work(%struct.scsi_qla_host*, %struct.qla_work_evt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
