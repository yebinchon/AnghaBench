; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_vmd.c_vmd_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_vmd.c_vmd_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.vmd_dev = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"domain\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @vmd_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmd_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.vmd_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.vmd_dev* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.vmd_dev* %5, %struct.vmd_dev** %3, align 8
  %6 = load %struct.vmd_dev*, %struct.vmd_dev** %3, align 8
  %7 = getelementptr inbounds %struct.vmd_dev, %struct.vmd_dev* %6, i32 0, i32 2
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = call i32 @sysfs_remove_link(i32* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.vmd_dev*, %struct.vmd_dev** %3, align 8
  %13 = getelementptr inbounds %struct.vmd_dev, %struct.vmd_dev* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @pci_stop_root_bus(i32 %14)
  %16 = load %struct.vmd_dev*, %struct.vmd_dev** %3, align 8
  %17 = getelementptr inbounds %struct.vmd_dev, %struct.vmd_dev* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @pci_remove_root_bus(i32 %18)
  %20 = load %struct.vmd_dev*, %struct.vmd_dev** %3, align 8
  %21 = call i32 @vmd_cleanup_srcu(%struct.vmd_dev* %20)
  %22 = load %struct.vmd_dev*, %struct.vmd_dev** %3, align 8
  %23 = call i32 @vmd_teardown_dma_ops(%struct.vmd_dev* %22)
  %24 = load %struct.vmd_dev*, %struct.vmd_dev** %3, align 8
  %25 = call i32 @vmd_detach_resources(%struct.vmd_dev* %24)
  %26 = load %struct.vmd_dev*, %struct.vmd_dev** %3, align 8
  %27 = getelementptr inbounds %struct.vmd_dev, %struct.vmd_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @irq_domain_remove(i32 %28)
  ret void
}

declare dso_local %struct.vmd_dev* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @sysfs_remove_link(i32*, i8*) #1

declare dso_local i32 @pci_stop_root_bus(i32) #1

declare dso_local i32 @pci_remove_root_bus(i32) #1

declare dso_local i32 @vmd_cleanup_srcu(%struct.vmd_dev*) #1

declare dso_local i32 @vmd_teardown_dma_ops(%struct.vmd_dev*) #1

declare dso_local i32 @vmd_detach_resources(%struct.vmd_dev*) #1

declare dso_local i32 @irq_domain_remove(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
