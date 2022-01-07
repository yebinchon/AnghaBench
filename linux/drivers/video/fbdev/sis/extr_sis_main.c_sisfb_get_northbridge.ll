; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_sis_main.c_sisfb_get_northbridge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_sis_main.c_sisfb_get_northbridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@sisfb_get_northbridge.nbridgeids = internal constant [12 x i16] [i16 144, i16 142, i16 137, i16 143, i16 141, i16 140, i16 136, i16 138, i16 135, i16 139, i16 134, i16 133], align 16
@PCI_VENDOR_ID_SI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pci_dev* (i32)* @sisfb_get_northbridge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pci_dev* @sisfb_get_northbridge(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store %struct.pci_dev* null, %struct.pci_dev** %3, align 8
  %7 = load i32, i32* %2, align 4
  switch i32 %7, label %8 [
  ]

8:                                                ; preds = %1
  ret %struct.pci_dev* null
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
