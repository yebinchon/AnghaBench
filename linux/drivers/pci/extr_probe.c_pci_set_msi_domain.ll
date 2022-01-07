; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_set_msi_domain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_set_msi_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.irq_domain = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @pci_set_msi_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_set_msi_domain(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.irq_domain*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.irq_domain* @pci_dev_msi_domain(%struct.pci_dev* %4)
  store %struct.irq_domain* %5, %struct.irq_domain** %3, align 8
  %6 = load %struct.irq_domain*, %struct.irq_domain** %3, align 8
  %7 = icmp ne %struct.irq_domain* %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call %struct.irq_domain* @dev_get_msi_domain(i32* %12)
  store %struct.irq_domain* %13, %struct.irq_domain** %3, align 8
  br label %14

14:                                               ; preds = %8, %1
  %15 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 0
  %17 = load %struct.irq_domain*, %struct.irq_domain** %3, align 8
  %18 = call i32 @dev_set_msi_domain(i32* %16, %struct.irq_domain* %17)
  ret void
}

declare dso_local %struct.irq_domain* @pci_dev_msi_domain(%struct.pci_dev*) #1

declare dso_local %struct.irq_domain* @dev_get_msi_domain(i32*) #1

declare dso_local i32 @dev_set_msi_domain(i32*, %struct.irq_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
