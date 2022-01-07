; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_pci-quirks.c_usb_asmedia_modifyflowcontrol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_pci-quirks.c_usb_asmedia_modifyflowcontrol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@ASMT_DATA_WRITE0_REG = common dso_local global i32 0, align 4
@ASMT_WRITEREG_CMD = common dso_local global i32 0, align 4
@ASMT_DATA_WRITE1_REG = common dso_local global i32 0, align 4
@ASMT_FLOWCTL_ADDR = common dso_local global i32 0, align 4
@ASMT_CONTROL_REG = common dso_local global i32 0, align 4
@ASMT_CONTROL_WRITE_BIT = common dso_local global i32 0, align 4
@ASMT_FLOWCTL_DATA = common dso_local global i32 0, align 4
@ASMT_PSEUDO_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_asmedia_modifyflowcontrol(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %3 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %4 = call i64 @usb_asmedia_wait_write(%struct.pci_dev* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %37

7:                                                ; preds = %1
  %8 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %9 = load i32, i32* @ASMT_DATA_WRITE0_REG, align 4
  %10 = load i32, i32* @ASMT_WRITEREG_CMD, align 4
  %11 = call i32 @pci_write_config_dword(%struct.pci_dev* %8, i32 %9, i32 %10)
  %12 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %13 = load i32, i32* @ASMT_DATA_WRITE1_REG, align 4
  %14 = load i32, i32* @ASMT_FLOWCTL_ADDR, align 4
  %15 = call i32 @pci_write_config_dword(%struct.pci_dev* %12, i32 %13, i32 %14)
  %16 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %17 = load i32, i32* @ASMT_CONTROL_REG, align 4
  %18 = load i32, i32* @ASMT_CONTROL_WRITE_BIT, align 4
  %19 = call i32 @pci_write_config_byte(%struct.pci_dev* %16, i32 %17, i32 %18)
  %20 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %21 = call i64 @usb_asmedia_wait_write(%struct.pci_dev* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %7
  br label %37

24:                                               ; preds = %7
  %25 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %26 = load i32, i32* @ASMT_DATA_WRITE0_REG, align 4
  %27 = load i32, i32* @ASMT_FLOWCTL_DATA, align 4
  %28 = call i32 @pci_write_config_dword(%struct.pci_dev* %25, i32 %26, i32 %27)
  %29 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %30 = load i32, i32* @ASMT_DATA_WRITE1_REG, align 4
  %31 = load i32, i32* @ASMT_PSEUDO_DATA, align 4
  %32 = call i32 @pci_write_config_dword(%struct.pci_dev* %29, i32 %30, i32 %31)
  %33 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %34 = load i32, i32* @ASMT_CONTROL_REG, align 4
  %35 = load i32, i32* @ASMT_CONTROL_WRITE_BIT, align 4
  %36 = call i32 @pci_write_config_byte(%struct.pci_dev* %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %24, %23, %6
  ret void
}

declare dso_local i64 @usb_asmedia_wait_write(%struct.pci_dev*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
