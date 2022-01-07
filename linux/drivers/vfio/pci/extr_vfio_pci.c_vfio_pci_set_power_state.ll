; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci.c_vfio_pci_set_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci.c_vfio_pci_set_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_pci_device = type { i32, i64, %struct.pci_dev* }
%struct.pci_dev = type { i64 }

@PCI_D3hot = common dso_local global i64 0, align 8
@PCI_D0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfio_pci_set_power_state(%struct.vfio_pci_device* %0, i64 %1) #0 {
  %3 = alloca %struct.vfio_pci_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vfio_pci_device* %0, %struct.vfio_pci_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %3, align 8
  %10 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %9, i32 0, i32 2
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %3, align 8
  %13 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %41

16:                                               ; preds = %2
  %17 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PCI_D3hot, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @PCI_D3hot, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %28 = call i32 @pci_save_state(%struct.pci_dev* %27)
  store i32 1, i32* %7, align 4
  br label %29

29:                                               ; preds = %26, %22, %16
  %30 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PCI_D3hot, align 8
  %34 = icmp sge i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* @PCI_D0, align 8
  %38 = icmp sle i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 1, i32* %6, align 4
  br label %40

40:                                               ; preds = %39, %35, %29
  br label %41

41:                                               ; preds = %40, %2
  %42 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @pci_set_power_state(%struct.pci_dev* %42, i64 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %73, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %47
  %51 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %52 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @PCI_D3hot, align 8
  %55 = icmp sge i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %58 = call i32 @pci_store_saved_state(%struct.pci_dev* %57)
  %59 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %3, align 8
  %60 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  br label %72

61:                                               ; preds = %50, %47
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %66 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %3, align 8
  %67 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %66, i32 0, i32 0
  %68 = call i32 @pci_load_and_free_saved_state(%struct.pci_dev* %65, i32* %67)
  %69 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %70 = call i32 @pci_restore_state(%struct.pci_dev* %69)
  br label %71

71:                                               ; preds = %64, %61
  br label %72

72:                                               ; preds = %71, %56
  br label %73

73:                                               ; preds = %72, %41
  %74 = load i32, i32* %8, align 4
  ret i32 %74
}

declare dso_local i32 @pci_save_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_power_state(%struct.pci_dev*, i64) #1

declare dso_local i32 @pci_store_saved_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_load_and_free_saved_state(%struct.pci_dev*, i32*) #1

declare dso_local i32 @pci_restore_state(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
