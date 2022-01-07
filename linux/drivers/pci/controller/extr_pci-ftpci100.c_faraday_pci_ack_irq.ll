; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-ftpci100.c_faraday_pci_ack_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-ftpci100.c_faraday_pci_ack_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.faraday_pci = type { i32 }

@FARADAY_PCI_CTRL2 = common dso_local global i32 0, align 4
@PCI_CTRL2_INTSTS_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @faraday_pci_ack_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @faraday_pci_ack_irq(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.faraday_pci*, align 8
  %4 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %5 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %6 = call %struct.faraday_pci* @irq_data_get_irq_chip_data(%struct.irq_data* %5)
  store %struct.faraday_pci* %6, %struct.faraday_pci** %3, align 8
  %7 = load %struct.faraday_pci*, %struct.faraday_pci** %3, align 8
  %8 = load i32, i32* @FARADAY_PCI_CTRL2, align 4
  %9 = call i32 @faraday_raw_pci_read_config(%struct.faraday_pci* %7, i32 0, i32 0, i32 %8, i32 4, i32* %4)
  %10 = load i32, i32* @PCI_CTRL2_INTSTS_SHIFT, align 4
  %11 = shl i32 15, %10
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %4, align 4
  %15 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %16 = call i64 @irqd_to_hwirq(%struct.irq_data* %15)
  %17 = load i32, i32* @PCI_CTRL2_INTSTS_SHIFT, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %16, %18
  %20 = call i32 @BIT(i64 %19)
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %4, align 4
  %23 = load %struct.faraday_pci*, %struct.faraday_pci** %3, align 8
  %24 = load i32, i32* @FARADAY_PCI_CTRL2, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @faraday_raw_pci_write_config(%struct.faraday_pci* %23, i32 0, i32 0, i32 %24, i32 4, i32 %25)
  ret void
}

declare dso_local %struct.faraday_pci* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @faraday_raw_pci_read_config(%struct.faraday_pci*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i64 @irqd_to_hwirq(%struct.irq_data*) #1

declare dso_local i32 @faraday_raw_pci_write_config(%struct.faraday_pci*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
