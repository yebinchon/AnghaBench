; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_83xx.c_qla4_83xx_disable_pause.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_83xx.c_qla4_83xx_disable_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla4_83xx_disable_pause(%struct.scsi_qla_host* %0) #0 {
  %2 = alloca %struct.scsi_qla_host*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %2, align 8
  %3 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %4 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %7 = load i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)** %6, align 8
  %8 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %9 = call i32 %7(%struct.scsi_qla_host* %8)
  %10 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %11 = call i32 @qla4_83xx_eport_init(%struct.scsi_qla_host* %10)
  %12 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %13 = call i32 @qla4_83xx_dump_pause_control_regs(%struct.scsi_qla_host* %12)
  %14 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %15 = call i32 @__qla4_83xx_disable_pause(%struct.scsi_qla_host* %14)
  %16 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %17 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)** %19, align 8
  %21 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %22 = call i32 %20(%struct.scsi_qla_host* %21)
  ret void
}

declare dso_local i32 @qla4_83xx_eport_init(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4_83xx_dump_pause_control_regs(%struct.scsi_qla_host*) #1

declare dso_local i32 @__qla4_83xx_disable_pause(%struct.scsi_qla_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
