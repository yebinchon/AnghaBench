; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_quirks.c_quirk_via_bridge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_quirks.c_quirk_via_bridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }

@via_vlink_dev_lo = common dso_local global i32 0, align 4
@via_vlink_dev_hi = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @quirk_via_bridge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quirk_via_bridge(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %3 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %4 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %19 [
    i32 128, label %6
    i32 130, label %16
    i32 129, label %16
    i32 131, label %17
    i32 135, label %18
    i32 132, label %18
    i32 134, label %18
    i32 133, label %18
  ]

6:                                                ; preds = %1
  %7 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %8 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i8* @PCI_SLOT(i32 %9)
  %11 = ptrtoint i8* %10 to i32
  store i32 %11, i32* @via_vlink_dev_lo, align 4
  %12 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @PCI_SLOT(i32 %14)
  store i8* %15, i8** @via_vlink_dev_hi, align 8
  br label %19

16:                                               ; preds = %1, %1
  store i32 15, i32* @via_vlink_dev_lo, align 4
  br label %19

17:                                               ; preds = %1
  store i32 16, i32* @via_vlink_dev_lo, align 4
  br label %19

18:                                               ; preds = %1, %1, %1, %1
  store i32 17, i32* @via_vlink_dev_lo, align 4
  br label %19

19:                                               ; preds = %1, %18, %17, %16, %6
  ret void
}

declare dso_local i8* @PCI_SLOT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
