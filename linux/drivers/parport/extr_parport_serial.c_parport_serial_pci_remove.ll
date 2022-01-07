; ModuleID = '/home/carl/AnghaBench/linux/drivers/parport/extr_parport_serial.c_parport_serial_pci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/parport/extr_parport_serial.c_parport_serial_pci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.parport_serial_private = type { i32, i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @parport_serial_pci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parport_serial_pci_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.parport_serial_private*, align 8
  %4 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.parport_serial_private* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.parport_serial_private* %6, %struct.parport_serial_private** %3, align 8
  %7 = load %struct.parport_serial_private*, %struct.parport_serial_private** %3, align 8
  %8 = getelementptr inbounds %struct.parport_serial_private, %struct.parport_serial_private* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.parport_serial_private*, %struct.parport_serial_private** %3, align 8
  %13 = getelementptr inbounds %struct.parport_serial_private, %struct.parport_serial_private* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @pciserial_remove_ports(i64 %14)
  br label %16

16:                                               ; preds = %11, %1
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %32, %16
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.parport_serial_private*, %struct.parport_serial_private** %3, align 8
  %20 = getelementptr inbounds %struct.parport_serial_private, %struct.parport_serial_private* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %17
  %24 = load %struct.parport_serial_private*, %struct.parport_serial_private** %3, align 8
  %25 = getelementptr inbounds %struct.parport_serial_private, %struct.parport_serial_private* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @parport_pc_unregister_port(i32 %30)
  br label %32

32:                                               ; preds = %23
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %17

35:                                               ; preds = %17
  ret void
}

declare dso_local %struct.parport_serial_private* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @pciserial_remove_ports(i64) #1

declare dso_local i32 @parport_pc_unregister_port(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
