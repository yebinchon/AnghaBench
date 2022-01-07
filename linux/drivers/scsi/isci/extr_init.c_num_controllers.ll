; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_init.c_num_controllers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_init.c_num_controllers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@SCI_SCU_BAR = common dso_local global i32 0, align 4
@SCI_SMU_BAR = common dso_local global i32 0, align 4
@SCI_SCU_BAR_SIZE = common dso_local global i32 0, align 4
@SCI_MAX_CONTROLLERS = common dso_local global i32 0, align 4
@SCI_SMU_BAR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @num_controllers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @num_controllers(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %7 = load i32, i32* @SCI_SCU_BAR, align 4
  %8 = mul nsw i32 %7, 2
  %9 = call i32 @pci_resource_len(%struct.pci_dev* %6, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %11 = load i32, i32* @SCI_SMU_BAR, align 4
  %12 = mul nsw i32 %11, 2
  %13 = call i32 @pci_resource_len(%struct.pci_dev* %10, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @SCI_SCU_BAR_SIZE, align 4
  %16 = load i32, i32* @SCI_MAX_CONTROLLERS, align 4
  %17 = mul nsw i32 %15, %16
  %18 = icmp sge i32 %14, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @SCI_SMU_BAR_SIZE, align 4
  %22 = load i32, i32* @SCI_MAX_CONTROLLERS, align 4
  %23 = mul nsw i32 %21, %22
  %24 = icmp sge i32 %20, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @SCI_MAX_CONTROLLERS, align 4
  store i32 %26, i32* %2, align 4
  br label %28

27:                                               ; preds = %19, %1
  store i32 1, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %25
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
