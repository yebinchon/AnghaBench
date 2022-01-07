; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_ea_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_ea_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64, i32, i32 }

@PCI_CAP_ID_EA = common dso_local global i32 0, align 4
@PCI_EA_NUM_ENT = common dso_local global i64 0, align 8
@PCI_EA_NUM_ENT_MASK = common dso_local global i32 0, align 4
@PCI_EA_FIRST_ENT = common dso_local global i32 0, align 4
@PCI_HEADER_TYPE_BRIDGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_ea_init(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %8 = load i32, i32* @PCI_CAP_ID_EA, align 4
  %9 = call i32 @pci_find_capability(%struct.pci_dev* %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %51

13:                                               ; preds = %1
  %14 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* @PCI_EA_NUM_ENT, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @pci_bus_read_config_byte(i32 %16, i32 %19, i64 %23, i32* %4)
  %25 = load i32, i32* @PCI_EA_NUM_ENT_MASK, align 4
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @PCI_EA_FIRST_ENT, align 4
  %30 = add nsw i32 %28, %29
  store i32 %30, i32* %5, align 4
  %31 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @PCI_HEADER_TYPE_BRIDGE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %13
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 4
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %36, %13
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %48, %39
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @pci_ea_read(%struct.pci_dev* %45, i32 %46)
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %40

51:                                               ; preds = %12, %40
  ret void
}

declare dso_local i32 @pci_find_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_bus_read_config_byte(i32, i32, i64, i32*) #1

declare dso_local i32 @pci_ea_read(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
