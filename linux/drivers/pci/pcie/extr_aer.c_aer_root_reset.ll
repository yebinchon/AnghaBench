; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aer.c_aer_root_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aer.c_aer_root_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCI_ERR_ROOT_COMMAND = common dso_local global i64 0, align 8
@ROOT_PORT_INTR_ON_MESG_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Root Port link has been reset\0A\00", align 1
@PCI_ERR_ROOT_STATUS = common dso_local global i64 0, align 8
@PCI_ERS_RESULT_DISCONNECT = common dso_local global i32 0, align 4
@PCI_ERS_RESULT_RECOVERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @aer_root_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aer_root_reset(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %4, align 4
  %9 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = load i64, i64* @PCI_ERR_ROOT_COMMAND, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @pci_read_config_dword(%struct.pci_dev* %9, i64 %13, i32* %3)
  %15 = load i32, i32* @ROOT_PORT_INTR_ON_MESG_MASK, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* @PCI_ERR_ROOT_COMMAND, align 8
  %23 = add nsw i64 %21, %22
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @pci_write_config_dword(%struct.pci_dev* %19, i64 %23, i32 %24)
  %26 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %27 = call i32 @pci_bus_error_reset(%struct.pci_dev* %26)
  store i32 %27, i32* %5, align 4
  %28 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %29 = call i32 @pci_info(%struct.pci_dev* %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* @PCI_ERR_ROOT_STATUS, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @pci_read_config_dword(%struct.pci_dev* %30, i64 %34, i32* %3)
  %36 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* @PCI_ERR_ROOT_STATUS, align 8
  %40 = add nsw i64 %38, %39
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @pci_write_config_dword(%struct.pci_dev* %36, i64 %40, i32 %41)
  %43 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* @PCI_ERR_ROOT_COMMAND, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @pci_read_config_dword(%struct.pci_dev* %43, i64 %47, i32* %3)
  %49 = load i32, i32* @ROOT_PORT_INTR_ON_MESG_MASK, align 4
  %50 = load i32, i32* %3, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %3, align 4
  %52 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* @PCI_ERR_ROOT_COMMAND, align 8
  %56 = add nsw i64 %54, %55
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @pci_write_config_dword(%struct.pci_dev* %52, i64 %56, i32 %57)
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %1
  %62 = load i32, i32* @PCI_ERS_RESULT_DISCONNECT, align 4
  br label %65

63:                                               ; preds = %1
  %64 = load i32, i32* @PCI_ERS_RESULT_RECOVERED, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  ret i32 %66
}

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @pci_bus_error_reset(%struct.pci_dev*) #1

declare dso_local i32 @pci_info(%struct.pci_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
