; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_finish_runtime_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_finish_runtime_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }

@PCI_POWER_ERROR = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@PCI_D3cold = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_finish_runtime_suspend(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 1
  %9 = call i32 @device_can_wakeup(i32* %8)
  %10 = call i64 @pci_target_state(%struct.pci_dev* %6, i32 %9)
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @PCI_POWER_ERROR, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %42

17:                                               ; preds = %1
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @PCI_D3cold, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %25 = load i64, i64* %4, align 8
  %26 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %27 = call i32 @pci_dev_run_wake(%struct.pci_dev* %26)
  %28 = call i32 @__pci_enable_wake(%struct.pci_dev* %24, i64 %25, i32 %27)
  %29 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @pci_set_power_state(%struct.pci_dev* %29, i64 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %17
  %35 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @pci_enable_wake(%struct.pci_dev* %35, i64 %36, i32 0)
  %38 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 0
  store i32 0, i32* %39, align 4
  br label %40

40:                                               ; preds = %34, %17
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %14
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i64 @pci_target_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @device_can_wakeup(i32*) #1

declare dso_local i32 @__pci_enable_wake(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @pci_dev_run_wake(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_power_state(%struct.pci_dev*, i64) #1

declare dso_local i32 @pci_enable_wake(%struct.pci_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
