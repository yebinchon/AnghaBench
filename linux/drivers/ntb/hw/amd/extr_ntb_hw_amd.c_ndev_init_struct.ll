; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/amd/extr_ntb_hw_amd.c_ndev_init_struct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/amd/extr_ntb_hw_amd.c_ndev_init_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_ntb_dev = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@NTB_TOPO_NONE = common dso_local global i32 0, align 4
@amd_ntb_ops = common dso_local global i32 0, align 4
@AMD_EVENT_INTMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amd_ntb_dev*, %struct.pci_dev*)* @ndev_init_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ndev_init_struct(%struct.amd_ntb_dev* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca %struct.amd_ntb_dev*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  store %struct.amd_ntb_dev* %0, %struct.amd_ntb_dev** %3, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %4, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %6 = load %struct.amd_ntb_dev*, %struct.amd_ntb_dev** %3, align 8
  %7 = getelementptr inbounds %struct.amd_ntb_dev, %struct.amd_ntb_dev* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 2
  store %struct.pci_dev* %5, %struct.pci_dev** %8, align 8
  %9 = load i32, i32* @NTB_TOPO_NONE, align 4
  %10 = load %struct.amd_ntb_dev*, %struct.amd_ntb_dev** %3, align 8
  %11 = getelementptr inbounds %struct.amd_ntb_dev, %struct.amd_ntb_dev* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  store i32 %9, i32* %12, align 8
  %13 = load %struct.amd_ntb_dev*, %struct.amd_ntb_dev** %3, align 8
  %14 = getelementptr inbounds %struct.amd_ntb_dev, %struct.amd_ntb_dev* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32* @amd_ntb_ops, i32** %15, align 8
  %16 = load i32, i32* @AMD_EVENT_INTMASK, align 4
  %17 = load %struct.amd_ntb_dev*, %struct.amd_ntb_dev** %3, align 8
  %18 = getelementptr inbounds %struct.amd_ntb_dev, %struct.amd_ntb_dev* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.amd_ntb_dev*, %struct.amd_ntb_dev** %3, align 8
  %20 = getelementptr inbounds %struct.amd_ntb_dev, %struct.amd_ntb_dev* %19, i32 0, i32 0
  %21 = call i32 @spin_lock_init(i32* %20)
  ret void
}

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
