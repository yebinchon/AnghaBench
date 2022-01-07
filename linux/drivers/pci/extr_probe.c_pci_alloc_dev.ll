; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_alloc_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_alloc_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.pci_bus = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@pci_dev_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pci_dev* @pci_alloc_dev(%struct.pci_bus* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.pci_bus*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.pci_dev* @kzalloc(i32 24, i32 %5)
  store %struct.pci_dev* %6, %struct.pci_dev** %4, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %8 = icmp ne %struct.pci_dev* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.pci_dev* null, %struct.pci_dev** %2, align 8
  br label %22

10:                                               ; preds = %1
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 2
  %13 = call i32 @INIT_LIST_HEAD(i32* %12)
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32* @pci_dev_type, i32** %16, align 8
  %17 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %18 = call i32 @pci_bus_get(%struct.pci_bus* %17)
  %19 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  store %struct.pci_dev* %21, %struct.pci_dev** %2, align 8
  br label %22

22:                                               ; preds = %10, %9
  %23 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  ret %struct.pci_dev* %23
}

declare dso_local %struct.pci_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @pci_bus_get(%struct.pci_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
