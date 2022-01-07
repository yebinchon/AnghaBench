; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_pci.c_rtw_pci_irq_recognized.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_pci.c_rtw_pci_irq_recognized.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }
%struct.rtw_pci = type { i32* }

@RTK_PCI_HISR0 = common dso_local global i32 0, align 4
@RTK_PCI_HISR1 = common dso_local global i32 0, align 4
@RTK_PCI_HISR3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, %struct.rtw_pci*, i32*)* @rtw_pci_irq_recognized to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_pci_irq_recognized(%struct.rtw_dev* %0, %struct.rtw_pci* %1, i32* %2) #0 {
  %4 = alloca %struct.rtw_dev*, align 8
  %5 = alloca %struct.rtw_pci*, align 8
  %6 = alloca i32*, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %4, align 8
  store %struct.rtw_pci* %1, %struct.rtw_pci** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %8 = load i32, i32* @RTK_PCI_HISR0, align 4
  %9 = call i32 @rtw_read32(%struct.rtw_dev* %7, i32 %8)
  %10 = load i32*, i32** %6, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  store i32 %9, i32* %11, align 4
  %12 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %13 = load i32, i32* @RTK_PCI_HISR1, align 4
  %14 = call i32 @rtw_read32(%struct.rtw_dev* %12, i32 %13)
  %15 = load i32*, i32** %6, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %18 = load i32, i32* @RTK_PCI_HISR3, align 4
  %19 = call i32 @rtw_read32(%struct.rtw_dev* %17, i32 %18)
  %20 = load i32*, i32** %6, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 3
  store i32 %19, i32* %21, align 4
  %22 = load %struct.rtw_pci*, %struct.rtw_pci** %5, align 8
  %23 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load %struct.rtw_pci*, %struct.rtw_pci** %5, align 8
  %32 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load %struct.rtw_pci*, %struct.rtw_pci** %5, align 8
  %41 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 3
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 3
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %50 = load i32, i32* @RTK_PCI_HISR0, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @rtw_write32(%struct.rtw_dev* %49, i32 %50, i32 %53)
  %55 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %56 = load i32, i32* @RTK_PCI_HISR1, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @rtw_write32(%struct.rtw_dev* %55, i32 %56, i32 %59)
  %61 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %62 = load i32, i32* @RTK_PCI_HISR3, align 4
  %63 = load i32*, i32** %6, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @rtw_write32(%struct.rtw_dev* %61, i32 %62, i32 %65)
  ret void
}

declare dso_local i32 @rtw_read32(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw_write32(%struct.rtw_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
