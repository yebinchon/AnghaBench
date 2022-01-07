; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_quirks.c_reset_chelsio_generic_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_quirks.c_reset_chelsio_generic_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i64 }

@ENOTTY = common dso_local global i32 0, align 4
@PCI_COMMAND = common dso_local global i64 0, align 8
@PCI_COMMAND_MASTER = common dso_local global i32 0, align 4
@PCI_MSIX_FLAGS = common dso_local global i64 0, align 8
@PCI_MSIX_FLAGS_ENABLE = common dso_local global i32 0, align 4
@PCI_MSIX_FLAGS_MASKALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @reset_chelsio_generic_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reset_chelsio_generic_dev(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = and i32 %10, 61440
  %12 = icmp ne i32 %11, 16384
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOTTY, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %65

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %65

20:                                               ; preds = %16
  %21 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %22 = load i64, i64* @PCI_COMMAND, align 8
  %23 = call i32 @pci_read_config_word(%struct.pci_dev* %21, i64 %22, i32* %6)
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = load i64, i64* @PCI_COMMAND, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @PCI_COMMAND_MASTER, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @pci_write_config_word(%struct.pci_dev* %24, i64 %25, i32 %28)
  %30 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %31 = call i32 @pci_save_state(%struct.pci_dev* %30)
  %32 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %33 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PCI_MSIX_FLAGS, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @pci_read_config_word(%struct.pci_dev* %32, i64 %37, i32* %7)
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @PCI_MSIX_FLAGS_ENABLE, align 4
  %41 = and i32 %39, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %20
  %44 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %45 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %46 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @PCI_MSIX_FLAGS, align 8
  %49 = add nsw i64 %47, %48
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @PCI_MSIX_FLAGS_ENABLE, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @PCI_MSIX_FLAGS_MASKALL, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @pci_write_config_word(%struct.pci_dev* %44, i64 %49, i32 %54)
  br label %56

56:                                               ; preds = %43, %20
  %57 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %58 = call i32 @pcie_flr(%struct.pci_dev* %57)
  %59 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %60 = call i32 @pci_restore_state(%struct.pci_dev* %59)
  %61 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %62 = load i64, i64* @PCI_COMMAND, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @pci_write_config_word(%struct.pci_dev* %61, i64 %62, i32 %63)
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %56, %19, %13
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @pci_save_state(%struct.pci_dev*) #1

declare dso_local i32 @pcie_flr(%struct.pci_dev*) #1

declare dso_local i32 @pci_restore_state(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
