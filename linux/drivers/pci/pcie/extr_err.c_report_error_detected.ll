; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_err.c_report_error_detected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_err.c_report_error_detected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pci_error_handlers* }
%struct.pci_error_handlers = type { i32 (%struct.pci_dev.0*, i32)* }
%struct.pci_dev.0 = type opaque

@PCI_HEADER_TYPE_BRIDGE = common dso_local global i64 0, align 8
@PCI_ERS_RESULT_NO_AER_DRIVER = common dso_local global i32 0, align 4
@PCI_ERS_RESULT_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32, i32*)* @report_error_detected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @report_error_detected(%struct.pci_dev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_error_handlers*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 1
  %11 = call i32 @device_lock(i32* %10)
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @pci_dev_set_io_state(%struct.pci_dev* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %3
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = icmp ne %struct.TYPE_2__* %19, null
  br i1 %20, label %21, label %37

21:                                               ; preds = %16
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.pci_error_handlers*, %struct.pci_error_handlers** %25, align 8
  %27 = icmp ne %struct.pci_error_handlers* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %21
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.pci_error_handlers*, %struct.pci_error_handlers** %32, align 8
  %34 = getelementptr inbounds %struct.pci_error_handlers, %struct.pci_error_handlers* %33, i32 0, i32 0
  %35 = load i32 (%struct.pci_dev.0*, i32)*, i32 (%struct.pci_dev.0*, i32)** %34, align 8
  %36 = icmp ne i32 (%struct.pci_dev.0*, i32)* %35, null
  br i1 %36, label %48, label %37

37:                                               ; preds = %28, %21, %16, %3
  %38 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PCI_HEADER_TYPE_BRIDGE, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* @PCI_ERS_RESULT_NO_AER_DRIVER, align 4
  store i32 %44, i32* %7, align 4
  br label %47

45:                                               ; preds = %37
  %46 = load i32, i32* @PCI_ERS_RESULT_NONE, align 4
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %45, %43
  br label %61

48:                                               ; preds = %28
  %49 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %50 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %49, i32 0, i32 2
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load %struct.pci_error_handlers*, %struct.pci_error_handlers** %52, align 8
  store %struct.pci_error_handlers* %53, %struct.pci_error_handlers** %8, align 8
  %54 = load %struct.pci_error_handlers*, %struct.pci_error_handlers** %8, align 8
  %55 = getelementptr inbounds %struct.pci_error_handlers, %struct.pci_error_handlers* %54, i32 0, i32 0
  %56 = load i32 (%struct.pci_dev.0*, i32)*, i32 (%struct.pci_dev.0*, i32)** %55, align 8
  %57 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %58 = bitcast %struct.pci_dev* %57 to %struct.pci_dev.0*
  %59 = load i32, i32* %5, align 4
  %60 = call i32 %56(%struct.pci_dev.0* %58, i32 %59)
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %48, %47
  %62 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @pci_uevent_ers(%struct.pci_dev* %62, i32 %63)
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @merge_result(i32 %66, i32 %67)
  %69 = load i32*, i32** %6, align 8
  store i32 %68, i32* %69, align 4
  %70 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %71 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %70, i32 0, i32 1
  %72 = call i32 @device_unlock(i32* %71)
  ret i32 0
}

declare dso_local i32 @device_lock(i32*) #1

declare dso_local i32 @pci_dev_set_io_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_uevent_ers(%struct.pci_dev*, i32) #1

declare dso_local i32 @merge_result(i32, i32) #1

declare dso_local i32 @device_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
