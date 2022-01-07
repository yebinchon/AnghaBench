; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_pci.c_rtw_pci_disable_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_pci.c_rtw_pci_disable_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }
%struct.rtw_pci = type { i32 }

@RTK_PCI_HIMR0 = common dso_local global i32 0, align 4
@RTK_PCI_HIMR1 = common dso_local global i32 0, align 4
@RTK_PCI_HIMR3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, %struct.rtw_pci*)* @rtw_pci_disable_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_pci_disable_interrupt(%struct.rtw_dev* %0, %struct.rtw_pci* %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca %struct.rtw_pci*, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store %struct.rtw_pci* %1, %struct.rtw_pci** %4, align 8
  %5 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %6 = load i32, i32* @RTK_PCI_HIMR0, align 4
  %7 = call i32 @rtw_write32(%struct.rtw_dev* %5, i32 %6, i32 0)
  %8 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %9 = load i32, i32* @RTK_PCI_HIMR1, align 4
  %10 = call i32 @rtw_write32(%struct.rtw_dev* %8, i32 %9, i32 0)
  %11 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %12 = load i32, i32* @RTK_PCI_HIMR3, align 4
  %13 = call i32 @rtw_write32(%struct.rtw_dev* %11, i32 %12, i32 0)
  %14 = load %struct.rtw_pci*, %struct.rtw_pci** %4, align 8
  %15 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %14, i32 0, i32 0
  store i32 0, i32* %15, align 4
  ret void
}

declare dso_local i32 @rtw_write32(%struct.rtw_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
