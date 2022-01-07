; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-cadence-host.c_cdns_pcie_host_init_root_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-cadence-host.c_cdns_pcie_host_init_root_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns_pcie_rc = type { i32, i32, %struct.cdns_pcie }
%struct.cdns_pcie = type { i32 }

@CDNS_PCIE_LM_BAR_CFG_CTRL_DISABLED = common dso_local global i32 0, align 4
@CDNS_PCIE_LM_RC_BAR_CFG_PREFETCH_MEM_ENABLE = common dso_local global i32 0, align 4
@CDNS_PCIE_LM_RC_BAR_CFG_PREFETCH_MEM_64BITS = common dso_local global i32 0, align 4
@CDNS_PCIE_LM_RC_BAR_CFG_IO_ENABLE = common dso_local global i32 0, align 4
@CDNS_PCIE_LM_RC_BAR_CFG_IO_32BITS = common dso_local global i32 0, align 4
@CDNS_PCIE_LM_RC_BAR_CFG = common dso_local global i32 0, align 4
@PCI_VENDOR_ID = common dso_local global i32 0, align 4
@PCI_DEVICE_ID = common dso_local global i32 0, align 4
@PCI_CLASS_REVISION = common dso_local global i32 0, align 4
@PCI_CLASS_PROG = common dso_local global i32 0, align 4
@PCI_CLASS_DEVICE = common dso_local global i32 0, align 4
@PCI_CLASS_BRIDGE_PCI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdns_pcie_rc*)* @cdns_pcie_host_init_root_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_pcie_host_init_root_port(%struct.cdns_pcie_rc* %0) #0 {
  %2 = alloca %struct.cdns_pcie_rc*, align 8
  %3 = alloca %struct.cdns_pcie*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cdns_pcie_rc* %0, %struct.cdns_pcie_rc** %2, align 8
  %6 = load %struct.cdns_pcie_rc*, %struct.cdns_pcie_rc** %2, align 8
  %7 = getelementptr inbounds %struct.cdns_pcie_rc, %struct.cdns_pcie_rc* %6, i32 0, i32 2
  store %struct.cdns_pcie* %7, %struct.cdns_pcie** %3, align 8
  %8 = load i32, i32* @CDNS_PCIE_LM_BAR_CFG_CTRL_DISABLED, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @CDNS_PCIE_LM_RC_BAR_CFG_BAR0_CTRL(i32 %9)
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @CDNS_PCIE_LM_RC_BAR_CFG_BAR1_CTRL(i32 %11)
  %13 = or i32 %10, %12
  %14 = load i32, i32* @CDNS_PCIE_LM_RC_BAR_CFG_PREFETCH_MEM_ENABLE, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @CDNS_PCIE_LM_RC_BAR_CFG_PREFETCH_MEM_64BITS, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @CDNS_PCIE_LM_RC_BAR_CFG_IO_ENABLE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @CDNS_PCIE_LM_RC_BAR_CFG_IO_32BITS, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %4, align 4
  %22 = load %struct.cdns_pcie*, %struct.cdns_pcie** %3, align 8
  %23 = load i32, i32* @CDNS_PCIE_LM_RC_BAR_CFG, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @cdns_pcie_writel(%struct.cdns_pcie* %22, i32 %23, i32 %24)
  %26 = load %struct.cdns_pcie_rc*, %struct.cdns_pcie_rc** %2, align 8
  %27 = getelementptr inbounds %struct.cdns_pcie_rc, %struct.cdns_pcie_rc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 65535
  br i1 %29, label %30, label %37

30:                                               ; preds = %1
  %31 = load %struct.cdns_pcie*, %struct.cdns_pcie** %3, align 8
  %32 = load i32, i32* @PCI_VENDOR_ID, align 4
  %33 = load %struct.cdns_pcie_rc*, %struct.cdns_pcie_rc** %2, align 8
  %34 = getelementptr inbounds %struct.cdns_pcie_rc, %struct.cdns_pcie_rc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @cdns_pcie_rp_writew(%struct.cdns_pcie* %31, i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %30, %1
  %38 = load %struct.cdns_pcie_rc*, %struct.cdns_pcie_rc** %2, align 8
  %39 = getelementptr inbounds %struct.cdns_pcie_rc, %struct.cdns_pcie_rc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 65535
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.cdns_pcie*, %struct.cdns_pcie** %3, align 8
  %44 = load i32, i32* @PCI_DEVICE_ID, align 4
  %45 = load %struct.cdns_pcie_rc*, %struct.cdns_pcie_rc** %2, align 8
  %46 = getelementptr inbounds %struct.cdns_pcie_rc, %struct.cdns_pcie_rc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @cdns_pcie_rp_writew(%struct.cdns_pcie* %43, i32 %44, i32 %47)
  br label %49

49:                                               ; preds = %42, %37
  %50 = load %struct.cdns_pcie*, %struct.cdns_pcie** %3, align 8
  %51 = load i32, i32* @PCI_CLASS_REVISION, align 4
  %52 = call i32 @cdns_pcie_rp_writeb(%struct.cdns_pcie* %50, i32 %51, i32 0)
  %53 = load %struct.cdns_pcie*, %struct.cdns_pcie** %3, align 8
  %54 = load i32, i32* @PCI_CLASS_PROG, align 4
  %55 = call i32 @cdns_pcie_rp_writeb(%struct.cdns_pcie* %53, i32 %54, i32 0)
  %56 = load %struct.cdns_pcie*, %struct.cdns_pcie** %3, align 8
  %57 = load i32, i32* @PCI_CLASS_DEVICE, align 4
  %58 = load i32, i32* @PCI_CLASS_BRIDGE_PCI, align 4
  %59 = call i32 @cdns_pcie_rp_writew(%struct.cdns_pcie* %56, i32 %57, i32 %58)
  ret i32 0
}

declare dso_local i32 @CDNS_PCIE_LM_RC_BAR_CFG_BAR0_CTRL(i32) #1

declare dso_local i32 @CDNS_PCIE_LM_RC_BAR_CFG_BAR1_CTRL(i32) #1

declare dso_local i32 @cdns_pcie_writel(%struct.cdns_pcie*, i32, i32) #1

declare dso_local i32 @cdns_pcie_rp_writew(%struct.cdns_pcie*, i32, i32) #1

declare dso_local i32 @cdns_pcie_rp_writeb(%struct.cdns_pcie*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
