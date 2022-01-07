; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_err.c_report_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_err.c_report_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pci_error_handlers* }
%struct.pci_error_handlers = type { i32 (%struct.pci_dev.0*)* }
%struct.pci_dev.0 = type opaque

@pci_channel_io_normal = common dso_local global i32 0, align 4
@PCI_ERS_RESULT_RECOVERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i8*)* @report_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @report_resume(%struct.pci_dev* %0, i8* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pci_error_handlers*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %7 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 0
  %8 = call i32 @device_lock(i32* %7)
  %9 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %10 = load i32, i32* @pci_channel_io_normal, align 4
  %11 = call i32 @pci_dev_set_io_state(%struct.pci_dev* %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %34

13:                                               ; preds = %2
  %14 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = icmp ne %struct.TYPE_2__* %16, null
  br i1 %17, label %18, label %34

18:                                               ; preds = %13
  %19 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.pci_error_handlers*, %struct.pci_error_handlers** %22, align 8
  %24 = icmp ne %struct.pci_error_handlers* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %18
  %26 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %27 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.pci_error_handlers*, %struct.pci_error_handlers** %29, align 8
  %31 = getelementptr inbounds %struct.pci_error_handlers, %struct.pci_error_handlers* %30, i32 0, i32 0
  %32 = load i32 (%struct.pci_dev.0*)*, i32 (%struct.pci_dev.0*)** %31, align 8
  %33 = icmp ne i32 (%struct.pci_dev.0*)* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %25, %18, %13, %2
  br label %47

35:                                               ; preds = %25
  %36 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %37 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load %struct.pci_error_handlers*, %struct.pci_error_handlers** %39, align 8
  store %struct.pci_error_handlers* %40, %struct.pci_error_handlers** %5, align 8
  %41 = load %struct.pci_error_handlers*, %struct.pci_error_handlers** %5, align 8
  %42 = getelementptr inbounds %struct.pci_error_handlers, %struct.pci_error_handlers* %41, i32 0, i32 0
  %43 = load i32 (%struct.pci_dev.0*)*, i32 (%struct.pci_dev.0*)** %42, align 8
  %44 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %45 = bitcast %struct.pci_dev* %44 to %struct.pci_dev.0*
  %46 = call i32 %43(%struct.pci_dev.0* %45)
  br label %47

47:                                               ; preds = %35, %34
  %48 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %49 = load i32, i32* @PCI_ERS_RESULT_RECOVERED, align 4
  %50 = call i32 @pci_uevent_ers(%struct.pci_dev* %48, i32 %49)
  %51 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %52 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %51, i32 0, i32 0
  %53 = call i32 @device_unlock(i32* %52)
  ret i32 0
}

declare dso_local i32 @device_lock(i32*) #1

declare dso_local i32 @pci_dev_set_io_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_uevent_ers(%struct.pci_dev*, i32) #1

declare dso_local i32 @device_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
