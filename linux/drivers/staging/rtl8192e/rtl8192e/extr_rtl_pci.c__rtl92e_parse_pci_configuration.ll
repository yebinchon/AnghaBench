; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_pci.c__rtl92e_parse_pci_configuration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_pci.c__rtl92e_parse_pci_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32 }

@PCI_EXP_LNKCTL = common dso_local global i32 0, align 4
@COMP_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Link Control Register =%x\0A\00", align 1
@BIT4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, %struct.net_device*)* @_rtl92e_parse_pci_configuration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92e_parse_pci_configuration(%struct.pci_dev* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.r8192_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call i64 @rtllib_priv(%struct.net_device* %8)
  %10 = inttoptr i64 %9 to %struct.r8192_priv*
  store %struct.r8192_priv* %10, %struct.r8192_priv** %5, align 8
  %11 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %12 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @PCI_EXP_LNKCTL, align 4
  %15 = call i32 @pcie_capability_read_word(i32 %13, i32 %14, i32* %7)
  %16 = load i32, i32* @COMP_INIT, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @RT_TRACE(i32 %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %20 = call i32 @pci_read_config_byte(%struct.pci_dev* %19, i32 152, i32* %6)
  %21 = load i32, i32* @BIT4, align 4
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @pci_write_config_byte(%struct.pci_dev* %24, i32 152, i32 %25)
  store i32 23, i32* %6, align 4
  %27 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @pci_write_config_byte(%struct.pci_dev* %27, i32 1807, i32 %28)
  ret void
}

declare dso_local i64 @rtllib_priv(%struct.net_device*) #1

declare dso_local i32 @pcie_capability_read_word(i32, i32, i32*) #1

declare dso_local i32 @RT_TRACE(i32, i8*, i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
