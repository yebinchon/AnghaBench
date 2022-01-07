; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_dev_save_and_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_dev_save_and_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pci_error_handlers* }
%struct.pci_error_handlers = type { i32 (%struct.pci_dev.0*)* }
%struct.pci_dev.0 = type opaque

@PCI_D0 = common dso_local global i32 0, align 4
@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_COMMAND_INTX_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @pci_dev_save_and_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_dev_save_and_disable(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.pci_error_handlers*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = icmp ne %struct.TYPE_2__* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.pci_error_handlers*, %struct.pci_error_handlers** %12, align 8
  br label %15

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %14, %8
  %16 = phi %struct.pci_error_handlers* [ %13, %8 ], [ null, %14 ]
  store %struct.pci_error_handlers* %16, %struct.pci_error_handlers** %3, align 8
  %17 = load %struct.pci_error_handlers*, %struct.pci_error_handlers** %3, align 8
  %18 = icmp ne %struct.pci_error_handlers* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = load %struct.pci_error_handlers*, %struct.pci_error_handlers** %3, align 8
  %21 = getelementptr inbounds %struct.pci_error_handlers, %struct.pci_error_handlers* %20, i32 0, i32 0
  %22 = load i32 (%struct.pci_dev.0*)*, i32 (%struct.pci_dev.0*)** %21, align 8
  %23 = icmp ne i32 (%struct.pci_dev.0*)* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.pci_error_handlers*, %struct.pci_error_handlers** %3, align 8
  %26 = getelementptr inbounds %struct.pci_error_handlers, %struct.pci_error_handlers* %25, i32 0, i32 0
  %27 = load i32 (%struct.pci_dev.0*)*, i32 (%struct.pci_dev.0*)** %26, align 8
  %28 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %29 = bitcast %struct.pci_dev* %28 to %struct.pci_dev.0*
  %30 = call i32 %27(%struct.pci_dev.0* %29)
  br label %31

31:                                               ; preds = %24, %19, %15
  %32 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %33 = load i32, i32* @PCI_D0, align 4
  %34 = call i32 @pci_set_power_state(%struct.pci_dev* %32, i32 %33)
  %35 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %36 = call i32 @pci_save_state(%struct.pci_dev* %35)
  %37 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %38 = load i32, i32* @PCI_COMMAND, align 4
  %39 = load i32, i32* @PCI_COMMAND_INTX_DISABLE, align 4
  %40 = call i32 @pci_write_config_word(%struct.pci_dev* %37, i32 %38, i32 %39)
  ret void
}

declare dso_local i32 @pci_set_power_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_save_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
