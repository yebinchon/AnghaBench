; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/switch/extr_switchtec.c_switchtec_pci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/switch/extr_switchtec.c_switchtec_pci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.switchtec_dev = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@switchtec_minor_ida = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"unregistered.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @switchtec_pci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @switchtec_pci_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.switchtec_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.switchtec_dev* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.switchtec_dev* %5, %struct.switchtec_dev** %3, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call i32 @pci_set_drvdata(%struct.pci_dev* %6, i32* null)
  %8 = load %struct.switchtec_dev*, %struct.switchtec_dev** %3, align 8
  %9 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %8, i32 0, i32 1
  %10 = load %struct.switchtec_dev*, %struct.switchtec_dev** %3, align 8
  %11 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %10, i32 0, i32 0
  %12 = call i32 @cdev_device_del(i32* %9, %struct.TYPE_4__* %11)
  %13 = load %struct.switchtec_dev*, %struct.switchtec_dev** %3, align 8
  %14 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @MINOR(i32 %16)
  %18 = call i32 @ida_simple_remove(i32* @switchtec_minor_ida, i32 %17)
  %19 = load %struct.switchtec_dev*, %struct.switchtec_dev** %3, align 8
  %20 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %19, i32 0, i32 0
  %21 = call i32 @dev_info(%struct.TYPE_4__* %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.switchtec_dev*, %struct.switchtec_dev** %3, align 8
  %23 = call i32 @stdev_kill(%struct.switchtec_dev* %22)
  %24 = load %struct.switchtec_dev*, %struct.switchtec_dev** %3, align 8
  %25 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %24, i32 0, i32 0
  %26 = call i32 @put_device(%struct.TYPE_4__* %25)
  ret void
}

declare dso_local %struct.switchtec_dev* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, i32*) #1

declare dso_local i32 @cdev_device_del(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @stdev_kill(%struct.switchtec_dev*) #1

declare dso_local i32 @put_device(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
