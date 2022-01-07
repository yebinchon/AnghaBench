; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_pci.c_setup_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_pci.c_setup_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serial_private = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.uart_8250_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32*, i8*, i8*, i32 }

@PCI_NUM_BAR_RESOURCES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UPIO_MEM = common dso_local global i32 0, align 4
@UPIO_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serial_private*, %struct.uart_8250_port*, i32, i32, i32)* @setup_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_port(%struct.serial_private* %0, %struct.uart_8250_port* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.serial_private*, align 8
  %8 = alloca %struct.uart_8250_port*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pci_dev*, align 8
  store %struct.serial_private* %0, %struct.serial_private** %7, align 8
  store %struct.uart_8250_port* %1, %struct.uart_8250_port** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.serial_private*, %struct.serial_private** %7, align 8
  %14 = getelementptr inbounds %struct.serial_private, %struct.serial_private* %13, i32 0, i32 0
  %15 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  store %struct.pci_dev* %15, %struct.pci_dev** %12, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @PCI_NUM_BAR_RESOURCES, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %98

22:                                               ; preds = %5
  %23 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @pci_resource_flags(%struct.pci_dev* %23, i32 %24)
  %26 = load i32, i32* @IORESOURCE_MEM, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %74

29:                                               ; preds = %22
  %30 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @pcim_iomap(%struct.pci_dev* %30, i32 %31, i32 0)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %29
  %35 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %36 = call i32** @pcim_iomap_table(%struct.pci_dev* %35)
  %37 = icmp ne i32** %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %98

41:                                               ; preds = %34, %29
  %42 = load i32, i32* @UPIO_MEM, align 4
  %43 = load %struct.uart_8250_port*, %struct.uart_8250_port** %8, align 8
  %44 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 4
  store i32 %42, i32* %45, align 8
  %46 = load %struct.uart_8250_port*, %struct.uart_8250_port** %8, align 8
  %47 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 3
  store i8* null, i8** %48, align 8
  %49 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i8* @pci_resource_start(%struct.pci_dev* %49, i32 %50)
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr i8, i8* %51, i64 %53
  %55 = load %struct.uart_8250_port*, %struct.uart_8250_port** %8, align 8
  %56 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  store i8* %54, i8** %57, align 8
  %58 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %59 = call i32** @pcim_iomap_table(%struct.pci_dev* %58)
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %59, i64 %61
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load %struct.uart_8250_port*, %struct.uart_8250_port** %8, align 8
  %68 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store i32* %66, i32** %69, align 8
  %70 = load i32, i32* %11, align 4
  %71 = load %struct.uart_8250_port*, %struct.uart_8250_port** %8, align 8
  %72 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 8
  br label %97

74:                                               ; preds = %22
  %75 = load i32, i32* @UPIO_PORT, align 4
  %76 = load %struct.uart_8250_port*, %struct.uart_8250_port** %8, align 8
  %77 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 4
  store i32 %75, i32* %78, align 8
  %79 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %80 = load i32, i32* %9, align 4
  %81 = call i8* @pci_resource_start(%struct.pci_dev* %79, i32 %80)
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr i8, i8* %81, i64 %83
  %85 = load %struct.uart_8250_port*, %struct.uart_8250_port** %8, align 8
  %86 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 3
  store i8* %84, i8** %87, align 8
  %88 = load %struct.uart_8250_port*, %struct.uart_8250_port** %8, align 8
  %89 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 2
  store i8* null, i8** %90, align 8
  %91 = load %struct.uart_8250_port*, %struct.uart_8250_port** %8, align 8
  %92 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  store i32* null, i32** %93, align 8
  %94 = load %struct.uart_8250_port*, %struct.uart_8250_port** %8, align 8
  %95 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  store i32 0, i32* %96, align 8
  br label %97

97:                                               ; preds = %74, %41
  store i32 0, i32* %6, align 4
  br label %98

98:                                               ; preds = %97, %38, %19
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local i32 @pci_resource_flags(%struct.pci_dev*, i32) #1

declare dso_local i32 @pcim_iomap(%struct.pci_dev*, i32, i32) #1

declare dso_local i32** @pcim_iomap_table(%struct.pci_dev*) #1

declare dso_local i8* @pci_resource_start(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
