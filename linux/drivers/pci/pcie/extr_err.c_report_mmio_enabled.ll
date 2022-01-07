; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_err.c_report_mmio_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_err.c_report_mmio_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pci_error_handlers* }
%struct.pci_error_handlers = type { i32 (%struct.pci_dev.0*)* }
%struct.pci_dev.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i8*)* @report_mmio_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @report_mmio_enabled(%struct.pci_dev* %0, i8* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.pci_error_handlers*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to i32*
  store i32* %9, i32** %6, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  %12 = call i32 @device_lock(i32* %11)
  %13 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  br i1 %16, label %17, label %33

17:                                               ; preds = %2
  %18 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.pci_error_handlers*, %struct.pci_error_handlers** %21, align 8
  %23 = icmp ne %struct.pci_error_handlers* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %17
  %25 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.pci_error_handlers*, %struct.pci_error_handlers** %28, align 8
  %30 = getelementptr inbounds %struct.pci_error_handlers, %struct.pci_error_handlers* %29, i32 0, i32 0
  %31 = load i32 (%struct.pci_dev.0*)*, i32 (%struct.pci_dev.0*)** %30, align 8
  %32 = icmp ne i32 (%struct.pci_dev.0*)* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %24, %17, %2
  br label %51

34:                                               ; preds = %24
  %35 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load %struct.pci_error_handlers*, %struct.pci_error_handlers** %38, align 8
  store %struct.pci_error_handlers* %39, %struct.pci_error_handlers** %7, align 8
  %40 = load %struct.pci_error_handlers*, %struct.pci_error_handlers** %7, align 8
  %41 = getelementptr inbounds %struct.pci_error_handlers, %struct.pci_error_handlers* %40, i32 0, i32 0
  %42 = load i32 (%struct.pci_dev.0*)*, i32 (%struct.pci_dev.0*)** %41, align 8
  %43 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %44 = bitcast %struct.pci_dev* %43 to %struct.pci_dev.0*
  %45 = call i32 %42(%struct.pci_dev.0* %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @merge_result(i32 %47, i32 %48)
  %50 = load i32*, i32** %6, align 8
  store i32 %49, i32* %50, align 4
  br label %51

51:                                               ; preds = %34, %33
  %52 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %53 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %52, i32 0, i32 0
  %54 = call i32 @device_unlock(i32* %53)
  ret i32 0
}

declare dso_local i32 @device_lock(i32*) #1

declare dso_local i32 @merge_result(i32, i32) #1

declare dso_local i32 @device_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
