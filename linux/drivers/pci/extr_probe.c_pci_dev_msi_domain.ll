; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_dev_msi_domain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_dev_msi_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i32 }
%struct.pci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.irq_domain* (%struct.pci_dev*)* @pci_dev_msi_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.irq_domain* @pci_dev_msi_domain(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.irq_domain*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.irq_domain*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %6 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 0
  %7 = call %struct.irq_domain* @dev_get_msi_domain(i32* %6)
  store %struct.irq_domain* %7, %struct.irq_domain** %4, align 8
  %8 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %9 = icmp ne %struct.irq_domain* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  store %struct.irq_domain* %11, %struct.irq_domain** %2, align 8
  br label %20

12:                                               ; preds = %1
  %13 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %14 = call %struct.irq_domain* @pci_msi_get_device_domain(%struct.pci_dev* %13)
  store %struct.irq_domain* %14, %struct.irq_domain** %4, align 8
  %15 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %16 = icmp ne %struct.irq_domain* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  store %struct.irq_domain* %18, %struct.irq_domain** %2, align 8
  br label %20

19:                                               ; preds = %12
  store %struct.irq_domain* null, %struct.irq_domain** %2, align 8
  br label %20

20:                                               ; preds = %19, %17, %10
  %21 = load %struct.irq_domain*, %struct.irq_domain** %2, align 8
  ret %struct.irq_domain* %21
}

declare dso_local %struct.irq_domain* @dev_get_msi_domain(i32*) #1

declare dso_local %struct.irq_domain* @pci_msi_get_device_domain(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
