; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/idt/extr_ntb_hw_idt.c_idt_pci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/idt/extr_ntb_hw_idt.c_idt_pci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.idt_ntb_dev = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"IDT NTB device is removed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @idt_pci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idt_pci_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.idt_ntb_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.idt_ntb_dev* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.idt_ntb_dev* %5, %struct.idt_ntb_dev** %3, align 8
  %6 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %7 = call i32 @idt_deinit_dbgfs(%struct.idt_ntb_dev* %6)
  %8 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %9 = call i32 @idt_unregister_device(%struct.idt_ntb_dev* %8)
  %10 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %11 = call i32 @idt_deinit_isr(%struct.idt_ntb_dev* %10)
  %12 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %13 = call i32 @idt_deinit_link(%struct.idt_ntb_dev* %12)
  %14 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %15 = call i32 @idt_deinit_pci(%struct.idt_ntb_dev* %14)
  %16 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 0
  %18 = call i32 @dev_info(i32* %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local %struct.idt_ntb_dev* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @idt_deinit_dbgfs(%struct.idt_ntb_dev*) #1

declare dso_local i32 @idt_unregister_device(%struct.idt_ntb_dev*) #1

declare dso_local i32 @idt_deinit_isr(%struct.idt_ntb_dev*) #1

declare dso_local i32 @idt_deinit_link(%struct.idt_ntb_dev*) #1

declare dso_local i32 @idt_deinit_pci(%struct.idt_ntb_dev*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
