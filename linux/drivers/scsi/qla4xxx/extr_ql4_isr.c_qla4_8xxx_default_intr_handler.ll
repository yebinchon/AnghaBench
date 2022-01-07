; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_isr.c_qla4_8xxx_default_intr_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_isr.c_qla4_8xxx_default_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.scsi_qla_host*, i32)* }
%struct.TYPE_3__ = type { i32, i32 }

@ISRX_82XX_RISC_INT = common dso_local global i32 0, align 4
@HSRX_RISC_MB_INT = common dso_local global i32 0, align 4
@HSRX_RISC_IOCB_INT = common dso_local global i32 0, align 4
@MAX_REQS_SERVICED_PER_INTR = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla4_8xxx_default_intr_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.scsi_qla_host*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.scsi_qla_host*
  store %struct.scsi_qla_host* %10, %struct.scsi_qla_host** %5, align 8
  store i64 0, i64* %8, align 8
  %11 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %12 = call i64 @is_qla8032(%struct.scsi_qla_host* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %16 = call i64 @is_qla8042(%struct.scsi_qla_host* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14, %2
  %19 = load i32, i32* %3, align 4
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @qla4_83xx_mailbox_intr_handler(i32 %19, i8* %20)
  br label %80

22:                                               ; preds = %14
  %23 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %24 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %23, i32 0, i32 0
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  br label %27

27:                                               ; preds = %22, %70
  %28 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %29 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %28, i32 0, i32 3
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = call i32 @readl(i32* %31)
  %33 = load i32, i32* @ISRX_82XX_RISC_INT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %27
  %37 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @qla4_82xx_spurious_interrupt(%struct.scsi_qla_host* %37, i64 %38)
  br label %71

40:                                               ; preds = %27
  %41 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %42 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %41, i32 0, i32 3
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = call i32 @readl(i32* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @HSRX_RISC_MB_INT, align 4
  %48 = load i32, i32* @HSRX_RISC_IOCB_INT, align 4
  %49 = or i32 %47, %48
  %50 = and i32 %46, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %40
  %53 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @qla4_82xx_spurious_interrupt(%struct.scsi_qla_host* %53, i64 %54)
  br label %71

56:                                               ; preds = %40
  %57 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %58 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %57, i32 0, i32 2
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32 (%struct.scsi_qla_host*, i32)*, i32 (%struct.scsi_qla_host*, i32)** %60, align 8
  %62 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 %61(%struct.scsi_qla_host* %62, i32 %63)
  %65 = load i64, i64* %8, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %8, align 8
  %67 = load i64, i64* @MAX_REQS_SERVICED_PER_INTR, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %56
  br label %71

70:                                               ; preds = %56
  br label %27

71:                                               ; preds = %69, %52, %36
  %72 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %73 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  %76 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %77 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %76, i32 0, i32 0
  %78 = load i64, i64* %6, align 8
  %79 = call i32 @spin_unlock_irqrestore(i32* %77, i64 %78)
  br label %80

80:                                               ; preds = %71, %18
  %81 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %81
}

declare dso_local i64 @is_qla8032(%struct.scsi_qla_host*) #1

declare dso_local i64 @is_qla8042(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4_83xx_mailbox_intr_handler(i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @qla4_82xx_spurious_interrupt(%struct.scsi_qla_host*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
