; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_isr.c_qla4xxx_interrupt_service_routine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_isr.c_qla4xxx_interrupt_service_routine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32* }

@CSR_SCSI_COMPLETION_INTR = common dso_local global i32 0, align 4
@CSR_SCSI_PROCESSOR_INTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla4xxx_interrupt_service_routine(%struct.scsi_qla_host* %0, i32 %1) #0 {
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @CSR_SCSI_COMPLETION_INTR, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %11 = call i32 @qla4xxx_process_response_queue(%struct.scsi_qla_host* %10)
  br label %12

12:                                               ; preds = %9, %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @CSR_SCSI_PROCESSOR_INTR, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %12
  %18 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %19 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %20 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = call i32 @readl(i32* %24)
  %26 = call i32 @qla4xxx_isr_decode_mailbox(%struct.scsi_qla_host* %18, i32 %25)
  %27 = load i32, i32* @CSR_SCSI_PROCESSOR_INTR, align 4
  %28 = call i32 @set_rmask(i32 %27)
  %29 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %30 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @writel(i32 %28, i32* %32)
  %34 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %35 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @readl(i32* %37)
  br label %39

39:                                               ; preds = %17, %12
  ret void
}

declare dso_local i32 @qla4xxx_process_response_queue(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4xxx_isr_decode_mailbox(%struct.scsi_qla_host*, i32) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @set_rmask(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
