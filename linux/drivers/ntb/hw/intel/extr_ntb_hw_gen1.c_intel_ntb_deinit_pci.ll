; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/intel/extr_ntb_hw_gen1.c_intel_ntb_deinit_pci.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/intel/extr_ntb_hw_gen1.c_intel_ntb_deinit_pci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_ntb_dev = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_ntb_dev*)* @intel_ntb_deinit_pci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_ntb_deinit_pci(%struct.intel_ntb_dev* %0) #0 {
  %2 = alloca %struct.intel_ntb_dev*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  store %struct.intel_ntb_dev* %0, %struct.intel_ntb_dev** %2, align 8
  %4 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %2, align 8
  %5 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  store %struct.pci_dev* %7, %struct.pci_dev** %3, align 8
  %8 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %2, align 8
  %9 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %1
  %13 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %2, align 8
  %14 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %2, align 8
  %17 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %15, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %12
  %21 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %22 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %2, align 8
  %23 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pci_iounmap(%struct.pci_dev* %21, i32 %24)
  br label %26

26:                                               ; preds = %20, %12, %1
  %27 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %28 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %2, align 8
  %29 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @pci_iounmap(%struct.pci_dev* %27, i32 %30)
  %32 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %33 = call i32 @pci_clear_master(%struct.pci_dev* %32)
  %34 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %35 = call i32 @pci_release_regions(%struct.pci_dev* %34)
  %36 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %37 = call i32 @pci_disable_device(%struct.pci_dev* %36)
  %38 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %39 = call i32 @pci_set_drvdata(%struct.pci_dev* %38, i32* null)
  ret void
}

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_clear_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
