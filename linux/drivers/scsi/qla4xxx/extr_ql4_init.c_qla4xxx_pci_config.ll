; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_init.c_qla4xxx_pci_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_init.c_qla4xxx_pci_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Configuring PCI space...\0A\00", align 1
@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_COMMAND_PARITY = common dso_local global i32 0, align 4
@PCI_COMMAND_SERR = common dso_local global i32 0, align 4
@PCI_COMMAND_INTX_DISABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla4xxx_pci_config(%struct.scsi_qla_host* %0) #0 {
  %2 = alloca %struct.scsi_qla_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %2, align 8
  %5 = load i32, i32* @KERN_INFO, align 4
  %6 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %7 = call i32 @ql4_printk(i32 %5, %struct.scsi_qla_host* %6, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %9 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @pci_set_master(i32 %10)
  %12 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %13 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @pci_set_mwi(i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %17 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PCI_COMMAND, align 4
  %20 = call i32 @pci_read_config_word(i32 %18, i32 %19, i32* %3)
  %21 = load i32, i32* @PCI_COMMAND_PARITY, align 4
  %22 = load i32, i32* @PCI_COMMAND_SERR, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* @PCI_COMMAND_INTX_DISABLE, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %3, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %3, align 4
  %30 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %31 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @PCI_COMMAND, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @pci_write_config_word(i32 %32, i32 %33, i32 %34)
  ret void
}

declare dso_local i32 @ql4_printk(i32, %struct.scsi_qla_host*, i8*) #1

declare dso_local i32 @pci_set_master(i32) #1

declare dso_local i32 @pci_set_mwi(i32) #1

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
