; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_glue.c_sym2_reset_workarounds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_glue.c_sym2_reset_workarounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.sym_chip = type { i32 }

@PCI_STATUS = common dso_local global i32 0, align 4
@FE_66MHZ = common dso_local global i32 0, align 4
@PCI_STATUS_66MHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @sym2_reset_workarounds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym2_reset_workarounds(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sym_chip*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.sym_chip* @sym_lookup_chip_table(i32 %7, i32 %10)
  store %struct.sym_chip* %11, %struct.sym_chip** %4, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %13 = load i32, i32* @PCI_STATUS, align 4
  %14 = call i32 @pci_read_config_word(%struct.pci_dev* %12, i32 %13, i32* %3)
  %15 = load %struct.sym_chip*, %struct.sym_chip** %4, align 8
  %16 = getelementptr inbounds %struct.sym_chip, %struct.sym_chip* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @FE_66MHZ, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @PCI_STATUS_66MHZ, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load i32, i32* @PCI_STATUS_66MHZ, align 4
  store i32 %27, i32* %3, align 4
  %28 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %29 = load i32, i32* @PCI_STATUS, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @pci_write_config_word(%struct.pci_dev* %28, i32 %29, i32 %30)
  %32 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %33 = load i32, i32* @PCI_STATUS, align 4
  %34 = call i32 @pci_read_config_word(%struct.pci_dev* %32, i32 %33, i32* %3)
  br label %35

35:                                               ; preds = %26, %21, %1
  ret void
}

declare dso_local %struct.sym_chip* @sym_lookup_chip_table(i32, i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
