; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_msi.c___pci_restore_msi_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_msi.c___pci_restore_msi_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64, i32, i32 }
%struct.msi_desc = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@PCI_MSI_FLAGS = common dso_local global i64 0, align 8
@PCI_MSI_FLAGS_QSIZE = common dso_local global i32 0, align 4
@PCI_MSI_FLAGS_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @__pci_restore_msi_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__pci_restore_msi_state(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.msi_desc*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %59

10:                                               ; preds = %1
  %11 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.msi_desc* @irq_get_msi_desc(i32 %13)
  store %struct.msi_desc* %14, %struct.msi_desc** %4, align 8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %16 = call i32 @pci_intx_for_msi(%struct.pci_dev* %15, i32 0)
  %17 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %18 = call i32 @pci_msi_set_enable(%struct.pci_dev* %17, i32 0)
  %19 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %20 = call i32 @arch_restore_msi_irqs(%struct.pci_dev* %19)
  %21 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %22 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PCI_MSI_FLAGS, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @pci_read_config_word(%struct.pci_dev* %21, i64 %26, i32* %3)
  %28 = load %struct.msi_desc*, %struct.msi_desc** %4, align 8
  %29 = load %struct.msi_desc*, %struct.msi_desc** %4, align 8
  %30 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @msi_mask(i32 %32)
  %34 = load %struct.msi_desc*, %struct.msi_desc** %4, align 8
  %35 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @msi_mask_irq(%struct.msi_desc* %28, i32 %33, i32 %36)
  %38 = load i32, i32* @PCI_MSI_FLAGS_QSIZE, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %3, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %3, align 4
  %42 = load %struct.msi_desc*, %struct.msi_desc** %4, align 8
  %43 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 %45, 4
  %47 = load i32, i32* @PCI_MSI_FLAGS_ENABLE, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* %3, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %3, align 4
  %51 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %52 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %53 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @PCI_MSI_FLAGS, align 8
  %56 = add nsw i64 %54, %55
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @pci_write_config_word(%struct.pci_dev* %51, i64 %56, i32 %57)
  br label %59

59:                                               ; preds = %10, %9
  ret void
}

declare dso_local %struct.msi_desc* @irq_get_msi_desc(i32) #1

declare dso_local i32 @pci_intx_for_msi(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_msi_set_enable(%struct.pci_dev*, i32) #1

declare dso_local i32 @arch_restore_msi_irqs(%struct.pci_dev*) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @msi_mask_irq(%struct.msi_desc*, i32, i32) #1

declare dso_local i32 @msi_mask(i32) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
