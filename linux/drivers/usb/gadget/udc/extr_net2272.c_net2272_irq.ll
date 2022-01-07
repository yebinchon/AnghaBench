; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_net2272.c_net2272_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_net2272.c_net2272_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net2272 = type { i32, %struct.TYPE_4__, i32*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@IRQSTAT1 = common dso_local global i32 0, align 4
@IRQSTAT0 = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@CHANNEL_CLEAR_INTERRUPT = common dso_local global i32 0, align 4
@CHANNEL_ENABLE = common dso_local global i32 0, align 4
@DMACSR0 = common dso_local global i64 0, align 8
@DMAREQ = common dso_local global i32 0, align 4
@DMA_CHANNEL_0_TEST = common dso_local global i32 0, align 4
@INTCSR = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@LOCAL_INTERRUPT_TEST = common dso_local global i32 0, align 4
@NET2272_PCI_IRQ = common dso_local global i32 0, align 4
@PCI_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@RDK2_IRQSTAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @net2272_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net2272_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net2272*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.net2272*
  store %struct.net2272* %7, %struct.net2272** %5, align 8
  %8 = load %struct.net2272*, %struct.net2272** %5, align 8
  %9 = getelementptr inbounds %struct.net2272, %struct.net2272* %8, i32 0, i32 0
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.net2272*, %struct.net2272** %5, align 8
  %12 = load %struct.net2272*, %struct.net2272** %5, align 8
  %13 = load i32, i32* @IRQSTAT1, align 4
  %14 = call i32 @net2272_read(%struct.net2272* %12, i32 %13)
  %15 = call i32 @net2272_handle_stat1_irqs(%struct.net2272* %11, i32 %14)
  %16 = load %struct.net2272*, %struct.net2272** %5, align 8
  %17 = load %struct.net2272*, %struct.net2272** %5, align 8
  %18 = load i32, i32* @IRQSTAT0, align 4
  %19 = call i32 @net2272_read(%struct.net2272* %17, i32 %18)
  %20 = call i32 @net2272_handle_stat0_irqs(%struct.net2272* %16, i32 %19)
  %21 = load %struct.net2272*, %struct.net2272** %5, align 8
  %22 = getelementptr inbounds %struct.net2272, %struct.net2272* %21, i32 0, i32 0
  %23 = call i32 @spin_unlock(i32* %22)
  %24 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %24
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @net2272_handle_stat1_irqs(%struct.net2272*, i32) #1

declare dso_local i32 @net2272_read(%struct.net2272*, i32) #1

declare dso_local i32 @net2272_handle_stat0_irqs(%struct.net2272*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
