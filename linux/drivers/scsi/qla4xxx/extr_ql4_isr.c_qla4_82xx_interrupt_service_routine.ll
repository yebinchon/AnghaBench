; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_isr.c_qla4_82xx_interrupt_service_routine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_isr.c_qla4_82xx_interrupt_service_routine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32* }

@HSRX_RISC_IOCB_INT = common dso_local global i32 0, align 4
@AF_INIT_DONE = common dso_local global i32 0, align 4
@HSRX_RISC_MB_INT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla4_82xx_interrupt_service_routine(%struct.scsi_qla_host* %0, i32 %1) #0 {
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @HSRX_RISC_IOCB_INT, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load i32, i32* @AF_INIT_DONE, align 4
  %11 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %12 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %11, i32 0, i32 1
  %13 = call i64 @test_bit(i32 %10, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %17 = call i32 @qla4xxx_process_response_queue(%struct.scsi_qla_host* %16)
  br label %18

18:                                               ; preds = %15, %9, %2
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @HSRX_RISC_MB_INT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %18
  %24 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %25 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %26 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = call i32 @readl(i32* %30)
  %32 = call i32 @qla4xxx_isr_decode_mailbox(%struct.scsi_qla_host* %24, i32 %31)
  br label %33

33:                                               ; preds = %23, %18
  %34 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %35 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @writel(i32 0, i32* %37)
  %39 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %40 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @readl(i32* %42)
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @qla4xxx_process_response_queue(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4xxx_isr_decode_mailbox(%struct.scsi_qla_host*, i32) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
