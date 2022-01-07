; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/kpc2000/kpc2000/extr_core.c_kp2000_pcie_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/kpc2000/kpc2000/extr_core.c_kp2000_pcie_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.kp2000_device = type { i32, i32, %struct.TYPE_5__*, i32*, i32* }
%struct.TYPE_5__ = type { i32 }

@kp_attr_list = common dso_local global i32 0, align 4
@DMA_BAR = common dso_local global i32 0, align 4
@REG_BAR = common dso_local global i32 0, align 4
@card_num_ida = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @kp2000_pcie_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kp2000_pcie_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.kp2000_device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.kp2000_device* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.kp2000_device* %5, %struct.kp2000_device** %3, align 8
  %6 = load %struct.kp2000_device*, %struct.kp2000_device** %3, align 8
  %7 = icmp ne %struct.kp2000_device* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %79

9:                                                ; preds = %1
  %10 = load %struct.kp2000_device*, %struct.kp2000_device** %3, align 8
  %11 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %10, i32 0, i32 1
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.kp2000_device*, %struct.kp2000_device** %3, align 8
  %14 = call i32 @kp2000_remove_cores(%struct.kp2000_device* %13)
  %15 = load %struct.kp2000_device*, %struct.kp2000_device** %3, align 8
  %16 = call i32 @PCARD_TO_DEV(%struct.kp2000_device* %15)
  %17 = call i32 @mfd_remove_devices(i32 %16)
  %18 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* @kp_attr_list, align 4
  %22 = call i32 @sysfs_remove_files(i32* %20, i32 %21)
  %23 = load %struct.kp2000_device*, %struct.kp2000_device** %3, align 8
  %24 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %23, i32 0, i32 2
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.kp2000_device*, %struct.kp2000_device** %3, align 8
  %29 = call i32 @free_irq(i32 %27, %struct.kp2000_device* %28)
  %30 = load %struct.kp2000_device*, %struct.kp2000_device** %3, align 8
  %31 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %30, i32 0, i32 2
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = call i32 @pci_disable_msi(%struct.TYPE_5__* %32)
  %34 = load %struct.kp2000_device*, %struct.kp2000_device** %3, align 8
  %35 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %34, i32 0, i32 4
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %48

38:                                               ; preds = %9
  %39 = load %struct.kp2000_device*, %struct.kp2000_device** %3, align 8
  %40 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %39, i32 0, i32 4
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @iounmap(i32* %41)
  %43 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %44 = load i32, i32* @DMA_BAR, align 4
  %45 = call i32 @pci_release_region(%struct.pci_dev* %43, i32 %44)
  %46 = load %struct.kp2000_device*, %struct.kp2000_device** %3, align 8
  %47 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %46, i32 0, i32 4
  store i32* null, i32** %47, align 8
  br label %48

48:                                               ; preds = %38, %9
  %49 = load %struct.kp2000_device*, %struct.kp2000_device** %3, align 8
  %50 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %63

53:                                               ; preds = %48
  %54 = load %struct.kp2000_device*, %struct.kp2000_device** %3, align 8
  %55 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @iounmap(i32* %56)
  %58 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %59 = load i32, i32* @REG_BAR, align 4
  %60 = call i32 @pci_release_region(%struct.pci_dev* %58, i32 %59)
  %61 = load %struct.kp2000_device*, %struct.kp2000_device** %3, align 8
  %62 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %61, i32 0, i32 3
  store i32* null, i32** %62, align 8
  br label %63

63:                                               ; preds = %53, %48
  %64 = load %struct.kp2000_device*, %struct.kp2000_device** %3, align 8
  %65 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %64, i32 0, i32 2
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = call i32 @pci_disable_device(%struct.TYPE_5__* %66)
  %68 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %69 = call i32 @pci_set_drvdata(%struct.pci_dev* %68, i32* null)
  %70 = load %struct.kp2000_device*, %struct.kp2000_device** %3, align 8
  %71 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %70, i32 0, i32 1
  %72 = call i32 @mutex_unlock(i32* %71)
  %73 = load %struct.kp2000_device*, %struct.kp2000_device** %3, align 8
  %74 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @ida_simple_remove(i32* @card_num_ida, i32 %75)
  %77 = load %struct.kp2000_device*, %struct.kp2000_device** %3, align 8
  %78 = call i32 @kfree(%struct.kp2000_device* %77)
  br label %79

79:                                               ; preds = %63, %8
  ret void
}

declare dso_local %struct.kp2000_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kp2000_remove_cores(%struct.kp2000_device*) #1

declare dso_local i32 @mfd_remove_devices(i32) #1

declare dso_local i32 @PCARD_TO_DEV(%struct.kp2000_device*) #1

declare dso_local i32 @sysfs_remove_files(i32*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.kp2000_device*) #1

declare dso_local i32 @pci_disable_msi(%struct.TYPE_5__*) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @pci_release_region(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_disable_device(%struct.TYPE_5__*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @kfree(%struct.kp2000_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
