; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_set_bus_msi_domain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_set_bus_msi_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32, %struct.TYPE_2__*, %struct.pci_bus* }
%struct.TYPE_2__ = type { i32 }
%struct.irq_domain = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_bus*)* @pci_set_bus_msi_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_set_bus_msi_domain(%struct.pci_bus* %0) #0 {
  %2 = alloca %struct.pci_bus*, align 8
  %3 = alloca %struct.irq_domain*, align 8
  %4 = alloca %struct.pci_bus*, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %2, align 8
  %5 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  store %struct.pci_bus* %5, %struct.pci_bus** %4, align 8
  store %struct.irq_domain* null, %struct.irq_domain** %3, align 8
  br label %6

6:                                                ; preds = %28, %1
  %7 = load %struct.irq_domain*, %struct.irq_domain** %3, align 8
  %8 = icmp ne %struct.irq_domain* %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %6
  %10 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %11 = call i32 @pci_is_root_bus(%struct.pci_bus* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  br label %14

14:                                               ; preds = %9, %6
  %15 = phi i1 [ false, %6 ], [ %13, %9 ]
  br i1 %15, label %16, label %32

16:                                               ; preds = %14
  %17 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %18 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = icmp ne %struct.TYPE_2__* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %23 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call %struct.irq_domain* @dev_get_msi_domain(i32* %25)
  store %struct.irq_domain* %26, %struct.irq_domain** %3, align 8
  br label %27

27:                                               ; preds = %21, %16
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %30 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %29, i32 0, i32 2
  %31 = load %struct.pci_bus*, %struct.pci_bus** %30, align 8
  store %struct.pci_bus* %31, %struct.pci_bus** %4, align 8
  br label %6

32:                                               ; preds = %14
  %33 = load %struct.irq_domain*, %struct.irq_domain** %3, align 8
  %34 = icmp ne %struct.irq_domain* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %37 = call %struct.irq_domain* @pci_host_bridge_msi_domain(%struct.pci_bus* %36)
  store %struct.irq_domain* %37, %struct.irq_domain** %3, align 8
  br label %38

38:                                               ; preds = %35, %32
  %39 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %40 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %39, i32 0, i32 0
  %41 = load %struct.irq_domain*, %struct.irq_domain** %3, align 8
  %42 = call i32 @dev_set_msi_domain(i32* %40, %struct.irq_domain* %41)
  ret void
}

declare dso_local i32 @pci_is_root_bus(%struct.pci_bus*) #1

declare dso_local %struct.irq_domain* @dev_get_msi_domain(i32*) #1

declare dso_local %struct.irq_domain* @pci_host_bridge_msi_domain(%struct.pci_bus*) #1

declare dso_local i32 @dev_set_msi_domain(i32*, %struct.irq_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
