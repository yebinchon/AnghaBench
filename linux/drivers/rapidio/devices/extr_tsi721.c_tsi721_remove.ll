; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721.c_tsi721_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721.c_tsi721_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.tsi721_device = type { i32, i32, i64, i64, i32 }

@EXIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"enter\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@TSI721_USING_MSI = common dso_local global i32 0, align 4
@TSI721_USING_MSIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @tsi721_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tsi721_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.tsi721_device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.tsi721_device* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.tsi721_device* %5, %struct.tsi721_device** %3, align 8
  %6 = load i32, i32* @EXIT, align 4
  %7 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %8 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 0
  %9 = call i32 @tsi_debug(i32 %6, i32* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %11 = call i32 @tsi721_disable_ints(%struct.tsi721_device* %10)
  %12 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %13 = call i32 @tsi721_free_irq(%struct.tsi721_device* %12)
  %14 = call i32 (...) @flush_scheduled_work()
  %15 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %16 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %15, i32 0, i32 4
  %17 = call i32 @rio_unregister_mport(i32* %16)
  %18 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %19 = call i32 @tsi721_unregister_dma(%struct.tsi721_device* %18)
  %20 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %21 = call i32 @tsi721_bdma_maint_free(%struct.tsi721_device* %20)
  %22 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %23 = call i32 @tsi721_doorbell_free(%struct.tsi721_device* %22)
  %24 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %25 = call i32 @tsi721_port_write_free(%struct.tsi721_device* %24)
  %26 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %27 = call i32 @tsi721_close_sr2pc_mapping(%struct.tsi721_device* %26)
  %28 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %29 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %1
  %33 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %34 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @iounmap(i64 %35)
  br label %37

37:                                               ; preds = %32, %1
  %38 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %39 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %44 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @iounmap(i64 %45)
  br label %47

47:                                               ; preds = %42, %37
  %48 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %49 = call i32 @pci_release_regions(%struct.pci_dev* %48)
  %50 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %51 = call i32 @pci_clear_master(%struct.pci_dev* %50)
  %52 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %53 = call i32 @pci_disable_device(%struct.pci_dev* %52)
  %54 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %55 = call i32 @pci_set_drvdata(%struct.pci_dev* %54, i32* null)
  %56 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %57 = call i32 @kfree(%struct.tsi721_device* %56)
  %58 = load i32, i32* @EXIT, align 4
  %59 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %60 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %59, i32 0, i32 0
  %61 = call i32 @tsi_debug(i32 %58, i32* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local %struct.tsi721_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @tsi_debug(i32, i32*, i8*) #1

declare dso_local i32 @tsi721_disable_ints(%struct.tsi721_device*) #1

declare dso_local i32 @tsi721_free_irq(%struct.tsi721_device*) #1

declare dso_local i32 @flush_scheduled_work(...) #1

declare dso_local i32 @rio_unregister_mport(i32*) #1

declare dso_local i32 @tsi721_unregister_dma(%struct.tsi721_device*) #1

declare dso_local i32 @tsi721_bdma_maint_free(%struct.tsi721_device*) #1

declare dso_local i32 @tsi721_doorbell_free(%struct.tsi721_device*) #1

declare dso_local i32 @tsi721_port_write_free(%struct.tsi721_device*) #1

declare dso_local i32 @tsi721_close_sr2pc_mapping(%struct.tsi721_device*) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_clear_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, i32*) #1

declare dso_local i32 @kfree(%struct.tsi721_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
