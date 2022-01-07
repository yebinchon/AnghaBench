; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_err.c_reset_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_err.c_reset_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pcie_port_service_driver = type { i64 (%struct.pci_dev.0*)* }
%struct.pci_dev.0 = type opaque

@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"no link-reset support at upstream device %s\0A\00", align 1
@PCI_ERS_RESULT_DISCONNECT = common dso_local global i64 0, align 8
@PCI_ERS_RESULT_RECOVERED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"link reset at upstream device %s failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pci_dev*, i32)* @reset_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @reset_link(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.pcie_port_service_driver*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.pcie_port_service_driver* null, %struct.pcie_port_service_driver** %7, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.pcie_port_service_driver* @pcie_port_find_service(%struct.pci_dev* %8, i32 %9)
  store %struct.pcie_port_service_driver* %10, %struct.pcie_port_service_driver** %7, align 8
  %11 = load %struct.pcie_port_service_driver*, %struct.pcie_port_service_driver** %7, align 8
  %12 = icmp ne %struct.pcie_port_service_driver* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = load %struct.pcie_port_service_driver*, %struct.pcie_port_service_driver** %7, align 8
  %15 = getelementptr inbounds %struct.pcie_port_service_driver, %struct.pcie_port_service_driver* %14, i32 0, i32 0
  %16 = load i64 (%struct.pci_dev.0*)*, i64 (%struct.pci_dev.0*)** %15, align 8
  %17 = icmp ne i64 (%struct.pci_dev.0*)* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = load %struct.pcie_port_service_driver*, %struct.pcie_port_service_driver** %7, align 8
  %20 = getelementptr inbounds %struct.pcie_port_service_driver, %struct.pcie_port_service_driver* %19, i32 0, i32 0
  %21 = load i64 (%struct.pci_dev.0*)*, i64 (%struct.pci_dev.0*)** %20, align 8
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = bitcast %struct.pci_dev* %22 to %struct.pci_dev.0*
  %24 = call i64 %21(%struct.pci_dev.0* %23)
  store i64 %24, i64* %6, align 8
  br label %40

25:                                               ; preds = %13, %2
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %27 = call i64 @pcie_downstream_port(%struct.pci_dev* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %31 = call i64 @default_reset_link(%struct.pci_dev* %30)
  store i64 %31, i64* %6, align 8
  br label %39

32:                                               ; preds = %25
  %33 = load i32, i32* @KERN_DEBUG, align 4
  %34 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = call i32 @pci_name(%struct.pci_dev* %35)
  %37 = call i32 @pci_printk(i32 %33, %struct.pci_dev* %34, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i64, i64* @PCI_ERS_RESULT_DISCONNECT, align 8
  store i64 %38, i64* %3, align 8
  br label %53

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39, %18
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* @PCI_ERS_RESULT_RECOVERED, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = load i32, i32* @KERN_DEBUG, align 4
  %46 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %47 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %48 = call i32 @pci_name(%struct.pci_dev* %47)
  %49 = call i32 @pci_printk(i32 %45, %struct.pci_dev* %46, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i64, i64* @PCI_ERS_RESULT_DISCONNECT, align 8
  store i64 %50, i64* %3, align 8
  br label %53

51:                                               ; preds = %40
  %52 = load i64, i64* %6, align 8
  store i64 %52, i64* %3, align 8
  br label %53

53:                                               ; preds = %51, %44, %32
  %54 = load i64, i64* %3, align 8
  ret i64 %54
}

declare dso_local %struct.pcie_port_service_driver* @pcie_port_find_service(%struct.pci_dev*, i32) #1

declare dso_local i64 @pcie_downstream_port(%struct.pci_dev*) #1

declare dso_local i64 @default_reset_link(%struct.pci_dev*) #1

declare dso_local i32 @pci_printk(i32, %struct.pci_dev*, i8*, i32) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
