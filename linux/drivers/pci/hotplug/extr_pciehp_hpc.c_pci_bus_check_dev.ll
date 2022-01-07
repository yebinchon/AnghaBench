; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pciehp_hpc.c_pci_bus_check_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pciehp_hpc.c_pci_bus_check_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@.str = private unnamed_addr constant [79 x i8] c"pci %04x:%02x:%02x.%d id reading try %d times with interval %d ms to get %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32)* @pci_bus_check_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_bus_check_dev(%struct.pci_bus* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_bus*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 1000, i32* %7, align 4
  store i32 20, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %25, %2
  %11 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @pci_bus_read_dev_vendor_id(%struct.pci_bus* %11, i32 %12, i32* %5, i32 0)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  br label %28

19:                                               ; preds = %10
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @msleep(i32 %20)
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  %24 = sub nsw i32 %23, %22
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %19
  %26 = load i32, i32* %7, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %10, label %28

28:                                               ; preds = %25, %18
  %29 = load i32, i32* %6, align 4
  %30 = icmp sgt i32 %29, 1
  br i1 %30, label %31, label %45

31:                                               ; preds = %28
  %32 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %33 = call i32 @pci_domain_nr(%struct.pci_bus* %32)
  %34 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %35 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @PCI_SLOT(i32 %37)
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @PCI_FUNC(i32 %39)
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @pr_debug(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %36, i32 %38, i32 %40, i32 %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %31, %28
  %46 = load i32, i32* %9, align 4
  ret i32 %46
}

declare dso_local i32 @pci_bus_read_dev_vendor_id(%struct.pci_bus*, i32, i32*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pci_domain_nr(%struct.pci_bus*) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
