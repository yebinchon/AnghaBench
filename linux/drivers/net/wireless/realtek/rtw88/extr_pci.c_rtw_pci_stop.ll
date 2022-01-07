; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_pci.c_rtw_pci_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_pci.c_rtw_pci_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i64 }
%struct.rtw_pci = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*)* @rtw_pci_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_pci_stop(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca %struct.rtw_pci*, align 8
  %4 = alloca i64, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %5 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %6 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.rtw_pci*
  store %struct.rtw_pci* %8, %struct.rtw_pci** %3, align 8
  %9 = load %struct.rtw_pci*, %struct.rtw_pci** %3, align 8
  %10 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %9, i32 0, i32 0
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %14 = load %struct.rtw_pci*, %struct.rtw_pci** %3, align 8
  %15 = call i32 @rtw_pci_disable_interrupt(%struct.rtw_dev* %13, %struct.rtw_pci* %14)
  %16 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %17 = load %struct.rtw_pci*, %struct.rtw_pci** %3, align 8
  %18 = call i32 @rtw_pci_dma_release(%struct.rtw_dev* %16, %struct.rtw_pci* %17)
  %19 = load %struct.rtw_pci*, %struct.rtw_pci** %3, align 8
  %20 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %19, i32 0, i32 0
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* %20, i64 %21)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @rtw_pci_disable_interrupt(%struct.rtw_dev*, %struct.rtw_pci*) #1

declare dso_local i32 @rtw_pci_dma_release(%struct.rtw_dev*, %struct.rtw_pci*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
