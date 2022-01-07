; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/intel/extr_ntb_hw_gen1.c_intel_ntb_pci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/intel/extr_ntb_hw_gen1.c_intel_ntb_pci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.intel_ntb_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @intel_ntb_pci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_ntb_pci_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.intel_ntb_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.intel_ntb_dev* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.intel_ntb_dev* %5, %struct.intel_ntb_dev** %3, align 8
  %6 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %7 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %6, i32 0, i32 0
  %8 = call i32 @ntb_unregister_device(i32* %7)
  %9 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %10 = call i32 @ndev_deinit_debugfs(%struct.intel_ntb_dev* %9)
  %11 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %12 = call i64 @pdev_is_gen1(%struct.pci_dev* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %16 = call i64 @pdev_is_gen3(%struct.pci_dev* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14, %1
  %19 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %20 = call i32 @xeon_deinit_dev(%struct.intel_ntb_dev* %19)
  br label %21

21:                                               ; preds = %18, %14
  %22 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %23 = call i32 @intel_ntb_deinit_pci(%struct.intel_ntb_dev* %22)
  %24 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %25 = call i32 @kfree(%struct.intel_ntb_dev* %24)
  ret void
}

declare dso_local %struct.intel_ntb_dev* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @ntb_unregister_device(i32*) #1

declare dso_local i32 @ndev_deinit_debugfs(%struct.intel_ntb_dev*) #1

declare dso_local i64 @pdev_is_gen1(%struct.pci_dev*) #1

declare dso_local i64 @pdev_is_gen3(%struct.pci_dev*) #1

declare dso_local i32 @xeon_deinit_dev(%struct.intel_ntb_dev*) #1

declare dso_local i32 @intel_ntb_deinit_pci(%struct.intel_ntb_dev*) #1

declare dso_local i32 @kfree(%struct.intel_ntb_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
