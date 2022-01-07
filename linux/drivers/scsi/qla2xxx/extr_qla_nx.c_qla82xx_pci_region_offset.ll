; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_pci_region_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_pci_region_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@QLA82XX_PCI_REG_MSIX_TBL = common dso_local global i32 0, align 4
@QLA82XX_MSIX_TBL_SPACE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla82xx_pci_region_offset(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %16 [
    i32 0, label %8
    i32 1, label %9
  ]

8:                                                ; preds = %2
  store i64 0, i64* %5, align 8
  br label %16

9:                                                ; preds = %2
  %10 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %11 = load i32, i32* @QLA82XX_PCI_REG_MSIX_TBL, align 4
  %12 = call i32 @pci_read_config_dword(%struct.pci_dev* %10, i32 %11, i64* %6)
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @QLA82XX_MSIX_TBL_SPACE, align 8
  %15 = add i64 %13, %14
  store i64 %15, i64* %5, align 8
  br label %16

16:                                               ; preds = %2, %9, %8
  %17 = load i64, i64* %5, align 8
  %18 = trunc i64 %17 to i32
  ret i32 %18
}

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
