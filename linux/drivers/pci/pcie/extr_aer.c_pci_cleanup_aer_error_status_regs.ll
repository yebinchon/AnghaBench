; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aer.c_pci_cleanup_aer_error_status_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aer.c_pci_cleanup_aer_error_status_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@PCI_EXP_TYPE_ROOT_PORT = common dso_local global i32 0, align 4
@PCI_ERR_ROOT_STATUS = common dso_local global i64 0, align 8
@PCI_ERR_COR_STATUS = common dso_local global i64 0, align 8
@PCI_ERR_UNCOR_STATUS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_cleanup_aer_error_status_regs(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = call i32 @pci_is_pcie(%struct.pci_dev* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %76

13:                                               ; preds = %1
  %14 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %76

22:                                               ; preds = %13
  %23 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %24 = call i64 @pcie_aer_get_firmware_first(%struct.pci_dev* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %76

29:                                               ; preds = %22
  %30 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %31 = call i32 @pci_pcie_type(%struct.pci_dev* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @PCI_EXP_TYPE_ROOT_PORT, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %29
  %36 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* @PCI_ERR_ROOT_STATUS, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @pci_read_config_dword(%struct.pci_dev* %36, i64 %40, i32* %5)
  %42 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* @PCI_ERR_ROOT_STATUS, align 8
  %46 = add nsw i64 %44, %45
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @pci_write_config_dword(%struct.pci_dev* %42, i64 %46, i32 %47)
  br label %49

49:                                               ; preds = %35, %29
  %50 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* @PCI_ERR_COR_STATUS, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @pci_read_config_dword(%struct.pci_dev* %50, i64 %54, i32* %5)
  %56 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* @PCI_ERR_COR_STATUS, align 8
  %60 = add nsw i64 %58, %59
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @pci_write_config_dword(%struct.pci_dev* %56, i64 %60, i32 %61)
  %63 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* @PCI_ERR_UNCOR_STATUS, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @pci_read_config_dword(%struct.pci_dev* %63, i64 %67, i32* %5)
  %69 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* @PCI_ERR_UNCOR_STATUS, align 8
  %73 = add nsw i64 %71, %72
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @pci_write_config_dword(%struct.pci_dev* %69, i64 %73, i32 %74)
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %49, %26, %19, %10
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @pci_is_pcie(%struct.pci_dev*) #1

declare dso_local i64 @pcie_aer_get_firmware_first(%struct.pci_dev*) #1

declare dso_local i32 @pci_pcie_type(%struct.pci_dev*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
