; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_pci_stub.c_pcistub_device_get_pci_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_pci_stub.c_pcistub_device_get_pci_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.xen_pcibk_device = type { i32 }
%struct.pcistub_device = type { i32, %struct.pci_dev*, %struct.xen_pcibk_device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pci_dev* (%struct.xen_pcibk_device*, %struct.pcistub_device*)* @pcistub_device_get_pci_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pci_dev* @pcistub_device_get_pci_dev(%struct.xen_pcibk_device* %0, %struct.pcistub_device* %1) #0 {
  %3 = alloca %struct.xen_pcibk_device*, align 8
  %4 = alloca %struct.pcistub_device*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i64, align 8
  store %struct.xen_pcibk_device* %0, %struct.xen_pcibk_device** %3, align 8
  store %struct.pcistub_device* %1, %struct.pcistub_device** %4, align 8
  store %struct.pci_dev* null, %struct.pci_dev** %5, align 8
  %7 = load %struct.pcistub_device*, %struct.pcistub_device** %4, align 8
  %8 = call i32 @pcistub_device_get(%struct.pcistub_device* %7)
  %9 = load %struct.pcistub_device*, %struct.pcistub_device** %4, align 8
  %10 = getelementptr inbounds %struct.pcistub_device, %struct.pcistub_device* %9, i32 0, i32 0
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.pcistub_device*, %struct.pcistub_device** %4, align 8
  %14 = getelementptr inbounds %struct.pcistub_device, %struct.pcistub_device* %13, i32 0, i32 2
  %15 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %14, align 8
  %16 = icmp ne %struct.xen_pcibk_device* %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %2
  %18 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %3, align 8
  %19 = load %struct.pcistub_device*, %struct.pcistub_device** %4, align 8
  %20 = getelementptr inbounds %struct.pcistub_device, %struct.pcistub_device* %19, i32 0, i32 2
  store %struct.xen_pcibk_device* %18, %struct.xen_pcibk_device** %20, align 8
  %21 = load %struct.pcistub_device*, %struct.pcistub_device** %4, align 8
  %22 = getelementptr inbounds %struct.pcistub_device, %struct.pcistub_device* %21, i32 0, i32 1
  %23 = load %struct.pci_dev*, %struct.pci_dev** %22, align 8
  store %struct.pci_dev* %23, %struct.pci_dev** %5, align 8
  br label %24

24:                                               ; preds = %17, %2
  %25 = load %struct.pcistub_device*, %struct.pcistub_device** %4, align 8
  %26 = getelementptr inbounds %struct.pcistub_device, %struct.pcistub_device* %25, i32 0, i32 0
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  %29 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %30 = icmp ne %struct.pci_dev* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load %struct.pcistub_device*, %struct.pcistub_device** %4, align 8
  %33 = call i32 @pcistub_device_put(%struct.pcistub_device* %32)
  br label %34

34:                                               ; preds = %31, %24
  %35 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  ret %struct.pci_dev* %35
}

declare dso_local i32 @pcistub_device_get(%struct.pcistub_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pcistub_device_put(%struct.pcistub_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
