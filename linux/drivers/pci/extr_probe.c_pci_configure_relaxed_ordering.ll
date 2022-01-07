; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_configure_relaxed_ordering.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_configure_relaxed_ordering.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i64 }

@PCI_DEV_FLAGS_NO_RELAXED_ORDERING = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL_RELAX_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"Relaxed Ordering disabled because the Root Port didn't support it\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @pci_configure_relaxed_ordering to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_configure_relaxed_ordering(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %34

9:                                                ; preds = %1
  %10 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %11 = call i32 @pcie_relaxed_ordering_enabled(%struct.pci_dev* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  br label %34

14:                                               ; preds = %9
  %15 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %16 = call %struct.pci_dev* @pci_find_pcie_root_port(%struct.pci_dev* %15)
  store %struct.pci_dev* %16, %struct.pci_dev** %3, align 8
  %17 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %18 = icmp ne %struct.pci_dev* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  br label %34

20:                                               ; preds = %14
  %21 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @PCI_DEV_FLAGS_NO_RELAXED_ORDERING, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %29 = load i32, i32* @PCI_EXP_DEVCTL, align 4
  %30 = load i32, i32* @PCI_EXP_DEVCTL_RELAX_EN, align 4
  %31 = call i32 @pcie_capability_clear_word(%struct.pci_dev* %28, i32 %29, i32 %30)
  %32 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %33 = call i32 @pci_info(%struct.pci_dev* %32, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %8, %13, %19, %27, %20
  ret void
}

declare dso_local i32 @pcie_relaxed_ordering_enabled(%struct.pci_dev*) #1

declare dso_local %struct.pci_dev* @pci_find_pcie_root_port(%struct.pci_dev*) #1

declare dso_local i32 @pcie_capability_clear_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_info(%struct.pci_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
