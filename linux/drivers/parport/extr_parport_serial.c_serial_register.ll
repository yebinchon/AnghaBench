; ModuleID = '/home/carl/AnghaBench/linux/drivers/parport/extr_parport_serial.c_serial_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/parport/extr_parport_serial.c_serial_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pciserial_board = type { i64 }
%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i64 }
%struct.parport_serial_private = type { %struct.serial_private* }
%struct.serial_private = type { i32 }

@pci_parport_serial_boards = common dso_local global %struct.pciserial_board* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @serial_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial_register(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.parport_serial_private*, align 8
  %7 = alloca %struct.pciserial_board*, align 8
  %8 = alloca %struct.serial_private*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = call %struct.parport_serial_private* @pci_get_drvdata(%struct.pci_dev* %9)
  store %struct.parport_serial_private* %10, %struct.parport_serial_private** %6, align 8
  %11 = load %struct.pciserial_board*, %struct.pciserial_board** @pci_parport_serial_boards, align 8
  %12 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %13 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.pciserial_board, %struct.pciserial_board* %11, i64 %14
  store %struct.pciserial_board* %15, %struct.pciserial_board** %7, align 8
  %16 = load %struct.pciserial_board*, %struct.pciserial_board** %7, align 8
  %17 = getelementptr inbounds %struct.pciserial_board, %struct.pciserial_board* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %35

21:                                               ; preds = %2
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = load %struct.pciserial_board*, %struct.pciserial_board** %7, align 8
  %24 = call %struct.serial_private* @pciserial_init_ports(%struct.pci_dev* %22, %struct.pciserial_board* %23)
  store %struct.serial_private* %24, %struct.serial_private** %8, align 8
  %25 = load %struct.serial_private*, %struct.serial_private** %8, align 8
  %26 = call i64 @IS_ERR(%struct.serial_private* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load %struct.serial_private*, %struct.serial_private** %8, align 8
  %30 = call i32 @PTR_ERR(%struct.serial_private* %29)
  store i32 %30, i32* %3, align 4
  br label %35

31:                                               ; preds = %21
  %32 = load %struct.serial_private*, %struct.serial_private** %8, align 8
  %33 = load %struct.parport_serial_private*, %struct.parport_serial_private** %6, align 8
  %34 = getelementptr inbounds %struct.parport_serial_private, %struct.parport_serial_private* %33, i32 0, i32 0
  store %struct.serial_private* %32, %struct.serial_private** %34, align 8
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %31, %28, %20
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.parport_serial_private* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.serial_private* @pciserial_init_ports(%struct.pci_dev*, %struct.pciserial_board*) #1

declare dso_local i64 @IS_ERR(%struct.serial_private*) #1

declare dso_local i32 @PTR_ERR(%struct.serial_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
