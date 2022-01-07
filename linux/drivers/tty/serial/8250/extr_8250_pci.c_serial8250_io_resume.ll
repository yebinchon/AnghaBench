; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_pci.c_serial8250_io_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_pci.c_serial8250_io_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.serial_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @serial8250_io_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial8250_io_resume(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.serial_private*, align 8
  %4 = alloca %struct.serial_private*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.serial_private* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.serial_private* %6, %struct.serial_private** %3, align 8
  %7 = load %struct.serial_private*, %struct.serial_private** %3, align 8
  %8 = icmp ne %struct.serial_private* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %25

10:                                               ; preds = %1
  %11 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %12 = load %struct.serial_private*, %struct.serial_private** %3, align 8
  %13 = getelementptr inbounds %struct.serial_private, %struct.serial_private* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.serial_private* @pciserial_init_ports(%struct.pci_dev* %11, i32 %14)
  store %struct.serial_private* %15, %struct.serial_private** %4, align 8
  %16 = load %struct.serial_private*, %struct.serial_private** %4, align 8
  %17 = call i32 @IS_ERR(%struct.serial_private* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %10
  %20 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %21 = load %struct.serial_private*, %struct.serial_private** %4, align 8
  %22 = call i32 @pci_set_drvdata(%struct.pci_dev* %20, %struct.serial_private* %21)
  %23 = load %struct.serial_private*, %struct.serial_private** %3, align 8
  %24 = call i32 @kfree(%struct.serial_private* %23)
  br label %25

25:                                               ; preds = %9, %19, %10
  ret void
}

declare dso_local %struct.serial_private* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.serial_private* @pciserial_init_ports(%struct.pci_dev*, i32) #1

declare dso_local i32 @IS_ERR(%struct.serial_private*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.serial_private*) #1

declare dso_local i32 @kfree(%struct.serial_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
