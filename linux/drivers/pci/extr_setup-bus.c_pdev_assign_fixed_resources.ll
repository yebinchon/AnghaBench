; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_setup-bus.c_pdev_assign_fixed_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_setup-bus.c_pdev_assign_fixed_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.pci_bus*, %struct.resource* }
%struct.pci_bus = type { %struct.pci_bus* }
%struct.resource = type { i32, i64 }

@PCI_NUM_RESOURCES = common dso_local global i32 0, align 4
@IORESOURCE_PCI_FIXED = common dso_local global i32 0, align 4
@IORESOURCE_IO = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @pdev_assign_fixed_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdev_assign_fixed_resources(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_bus*, align 8
  %5 = alloca %struct.resource*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %61, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @PCI_NUM_RESOURCES, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %64

10:                                               ; preds = %6
  %11 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 1
  %13 = load %struct.resource*, %struct.resource** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.resource, %struct.resource* %13, i64 %15
  store %struct.resource* %16, %struct.resource** %5, align 8
  %17 = load %struct.resource*, %struct.resource** %5, align 8
  %18 = getelementptr inbounds %struct.resource, %struct.resource* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %37, label %21

21:                                               ; preds = %10
  %22 = load %struct.resource*, %struct.resource** %5, align 8
  %23 = getelementptr inbounds %struct.resource, %struct.resource* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @IORESOURCE_PCI_FIXED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %21
  %29 = load %struct.resource*, %struct.resource** %5, align 8
  %30 = getelementptr inbounds %struct.resource, %struct.resource* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @IORESOURCE_IO, align 4
  %33 = load i32, i32* @IORESOURCE_MEM, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %31, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %28, %21, %10
  br label %61

38:                                               ; preds = %28
  %39 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %39, i32 0, i32 0
  %41 = load %struct.pci_bus*, %struct.pci_bus** %40, align 8
  store %struct.pci_bus* %41, %struct.pci_bus** %4, align 8
  br label %42

42:                                               ; preds = %53, %38
  %43 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %44 = icmp ne %struct.pci_bus* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load %struct.resource*, %struct.resource** %5, align 8
  %47 = getelementptr inbounds %struct.resource, %struct.resource* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  %50 = xor i1 %49, true
  br label %51

51:                                               ; preds = %45, %42
  %52 = phi i1 [ false, %42 ], [ %50, %45 ]
  br i1 %52, label %53, label %60

53:                                               ; preds = %51
  %54 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %55 = load %struct.resource*, %struct.resource** %5, align 8
  %56 = call i32 @assign_fixed_resource_on_bus(%struct.pci_bus* %54, %struct.resource* %55)
  %57 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %58 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %57, i32 0, i32 0
  %59 = load %struct.pci_bus*, %struct.pci_bus** %58, align 8
  store %struct.pci_bus* %59, %struct.pci_bus** %4, align 8
  br label %42

60:                                               ; preds = %51
  br label %61

61:                                               ; preds = %60, %37
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %3, align 4
  br label %6

64:                                               ; preds = %6
  ret void
}

declare dso_local i32 @assign_fixed_resource_on_bus(%struct.pci_bus*, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
