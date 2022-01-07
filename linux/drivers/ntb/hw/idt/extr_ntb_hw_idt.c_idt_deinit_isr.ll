; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/idt/extr_ntb_hw_idt.c_idt_deinit_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/idt/extr_ntb_hw_idt.c_idt_deinit_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt_ntb_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@IDT_NT_NTINTMSK = common dso_local global i32 0, align 4
@IDT_NTINTMSK_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"NTB interrupts deinitialized\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.idt_ntb_dev*)* @idt_deinit_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idt_deinit_isr(%struct.idt_ntb_dev* %0) #0 {
  %2 = alloca %struct.idt_ntb_dev*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.idt_ntb_dev* %0, %struct.idt_ntb_dev** %2, align 8
  %5 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %2, align 8
  %6 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %8, %struct.pci_dev** %3, align 8
  %9 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %2, align 8
  %10 = load i32, i32* @IDT_NT_NTINTMSK, align 4
  %11 = call i32 @idt_nt_read(%struct.idt_ntb_dev* %9, i32 %10)
  %12 = load i32, i32* @IDT_NTINTMSK_ALL, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %2, align 8
  %15 = load i32, i32* @IDT_NT_NTINTMSK, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @idt_nt_write(%struct.idt_ntb_dev* %14, i32 %15, i32 %16)
  %18 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 0
  %20 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %21 = call i32 @pci_irq_vector(%struct.pci_dev* %20, i32 0)
  %22 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %2, align 8
  %23 = call i32 @devm_free_irq(i32* %19, i32 %21, %struct.idt_ntb_dev* %22)
  %24 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %25 = call i32 @pci_free_irq_vectors(%struct.pci_dev* %24)
  %26 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %27 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 0
  %28 = call i32 @dev_dbg(i32* %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @idt_nt_read(%struct.idt_ntb_dev*, i32) #1

declare dso_local i32 @idt_nt_write(%struct.idt_ntb_dev*, i32, i32) #1

declare dso_local i32 @devm_free_irq(i32*, i32, %struct.idt_ntb_dev*) #1

declare dso_local i32 @pci_irq_vector(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_free_irq_vectors(%struct.pci_dev*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
