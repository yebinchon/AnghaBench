; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_error_detected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_error_detected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.nvme_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PCI_ERS_RESULT_CAN_RECOVER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"frozen state error detected, reset controller\0A\00", align 1
@PCI_ERS_RESULT_NEED_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"failure state error detected, request disconnect\0A\00", align 1
@PCI_ERS_RESULT_DISCONNECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @nvme_error_detected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_error_detected(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvme_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %8 = call %struct.nvme_dev* @pci_get_drvdata(%struct.pci_dev* %7)
  store %struct.nvme_dev* %8, %struct.nvme_dev** %6, align 8
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %28 [
    i32 129, label %10
    i32 130, label %12
    i32 128, label %21
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* @PCI_ERS_RESULT_CAN_RECOVER, align 4
  store i32 %11, i32* %3, align 4
  br label %30

12:                                               ; preds = %2
  %13 = load %struct.nvme_dev*, %struct.nvme_dev** %6, align 8
  %14 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dev_warn(i32 %16, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.nvme_dev*, %struct.nvme_dev** %6, align 8
  %19 = call i32 @nvme_dev_disable(%struct.nvme_dev* %18, i32 0)
  %20 = load i32, i32* @PCI_ERS_RESULT_NEED_RESET, align 4
  store i32 %20, i32* %3, align 4
  br label %30

21:                                               ; preds = %2
  %22 = load %struct.nvme_dev*, %struct.nvme_dev** %6, align 8
  %23 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_warn(i32 %25, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @PCI_ERS_RESULT_DISCONNECT, align 4
  store i32 %27, i32* %3, align 4
  br label %30

28:                                               ; preds = %2
  %29 = load i32, i32* @PCI_ERS_RESULT_NEED_RESET, align 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %28, %21, %12, %10
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.nvme_dev* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @nvme_dev_disable(%struct.nvme_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
