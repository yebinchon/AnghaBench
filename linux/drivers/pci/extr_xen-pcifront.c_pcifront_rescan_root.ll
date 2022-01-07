; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_xen-pcifront.c_pcifront_rescan_root.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_xen-pcifront.c_pcifront_rescan_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcifront_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pci_bus = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"PCI Root in non-zero PCI Domain! domain=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Please compile with CONFIG_PCI_DOMAINS\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Rescanning PCI Frontend Bus %04x:%02x\0A\00", align 1
@pcifront_claim_resource = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcifront_device*, i32, i32)* @pcifront_rescan_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcifront_rescan_root(%struct.pcifront_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcifront_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pci_bus*, align 8
  store %struct.pcifront_device* %0, %struct.pcifront_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %3
  %13 = load %struct.pcifront_device*, %struct.pcifront_device** %5, align 8
  %14 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %6, align 4
  %18 = call i32 (i32*, i8*, ...) @dev_err(i32* %16, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.pcifront_device*, %struct.pcifront_device** %5, align 8
  %20 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 (i32*, i8*, ...) @dev_err(i32* %22, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %57

26:                                               ; preds = %3
  %27 = load %struct.pcifront_device*, %struct.pcifront_device** %5, align 8
  %28 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @dev_info(i32* %30, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %31, i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call %struct.pci_bus* @pci_find_bus(i32 %34, i32 %35)
  store %struct.pci_bus* %36, %struct.pci_bus** %9, align 8
  %37 = load %struct.pci_bus*, %struct.pci_bus** %9, align 8
  %38 = icmp ne %struct.pci_bus* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %26
  %40 = load %struct.pcifront_device*, %struct.pcifront_device** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @pcifront_scan_root(%struct.pcifront_device* %40, i32 %41, i32 %42)
  store i32 %43, i32* %4, align 4
  br label %57

44:                                               ; preds = %26
  %45 = load %struct.pcifront_device*, %struct.pcifront_device** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.pci_bus*, %struct.pci_bus** %9, align 8
  %49 = call i32 @pcifront_scan_bus(%struct.pcifront_device* %45, i32 %46, i32 %47, %struct.pci_bus* %48)
  store i32 %49, i32* %8, align 4
  %50 = load %struct.pci_bus*, %struct.pci_bus** %9, align 8
  %51 = load i32, i32* @pcifront_claim_resource, align 4
  %52 = load %struct.pcifront_device*, %struct.pcifront_device** %5, align 8
  %53 = call i32 @pci_walk_bus(%struct.pci_bus* %50, i32 %51, %struct.pcifront_device* %52)
  %54 = load %struct.pci_bus*, %struct.pci_bus** %9, align 8
  %55 = call i32 @pci_bus_add_devices(%struct.pci_bus* %54)
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %44, %39, %12
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local %struct.pci_bus* @pci_find_bus(i32, i32) #1

declare dso_local i32 @pcifront_scan_root(%struct.pcifront_device*, i32, i32) #1

declare dso_local i32 @pcifront_scan_bus(%struct.pcifront_device*, i32, i32, %struct.pci_bus*) #1

declare dso_local i32 @pci_walk_bus(%struct.pci_bus*, i32, %struct.pcifront_device*) #1

declare dso_local i32 @pci_bus_add_devices(%struct.pci_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
