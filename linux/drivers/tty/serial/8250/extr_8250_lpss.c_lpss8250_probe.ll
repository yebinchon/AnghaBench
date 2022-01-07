; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_lpss.c_lpss8250_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_lpss.c_lpss8250_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.pci_device_id = type { i64 }
%struct.uart_8250_port = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__*, i32, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.lpss8250 = type { %struct.lpss8250_board*, %struct.TYPE_4__ }
%struct.lpss8250_board = type { i32, i32 (%struct.lpss8250.0*, %struct.TYPE_5__*)*, i32 (%struct.lpss8250.1*)* }
%struct.lpss8250.0 = type opaque
%struct.lpss8250.1 = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PORT_16550A = common dso_local global i32 0, align 4
@UPIO_MEM = common dso_local global i32 0, align 4
@UPF_SHARE_IRQ = common dso_local global i32 0, align 4
@UPF_FIXED_PORT = common dso_local global i32 0, align 4
@UPF_FIXED_TYPE = common dso_local global i32 0, align 4
@UART_CAP_FIFO = common dso_local global i32 0, align 4
@UART_CAP_AFE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @lpss8250_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpss8250_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.uart_8250_port, align 8
  %7 = alloca %struct.lpss8250*, align 8
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = call i32 @pcim_enable_device(%struct.pci_dev* %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %3, align 4
  br label %141

15:                                               ; preds = %2
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 1
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.lpss8250* @devm_kzalloc(i32* %17, i32 16, i32 %18)
  store %struct.lpss8250* %19, %struct.lpss8250** %7, align 8
  %20 = load %struct.lpss8250*, %struct.lpss8250** %7, align 8
  %21 = icmp ne %struct.lpss8250* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %141

25:                                               ; preds = %15
  %26 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %27 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.lpss8250_board*
  %30 = load %struct.lpss8250*, %struct.lpss8250** %7, align 8
  %31 = getelementptr inbounds %struct.lpss8250, %struct.lpss8250* %30, i32 0, i32 0
  store %struct.lpss8250_board* %29, %struct.lpss8250_board** %31, align 8
  %32 = call i32 @memset(%struct.uart_8250_port* %6, i32 0, i32 64)
  %33 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %6, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 9
  store i32* %34, i32** %36, align 8
  %37 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %38 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %6, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 8
  store i32 %39, i32* %41, align 8
  %42 = load %struct.lpss8250*, %struct.lpss8250** %7, align 8
  %43 = getelementptr inbounds %struct.lpss8250, %struct.lpss8250* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %6, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 7
  store %struct.TYPE_4__* %43, %struct.TYPE_4__** %45, align 8
  %46 = load i32, i32* @PORT_16550A, align 4
  %47 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %6, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 6
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @UPIO_MEM, align 4
  %50 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %6, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 4
  %52 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %6, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i32 2, i32* %53, align 8
  %54 = load %struct.lpss8250*, %struct.lpss8250** %7, align 8
  %55 = getelementptr inbounds %struct.lpss8250, %struct.lpss8250* %54, i32 0, i32 0
  %56 = load %struct.lpss8250_board*, %struct.lpss8250_board** %55, align 8
  %57 = getelementptr inbounds %struct.lpss8250_board, %struct.lpss8250_board* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = mul nsw i32 %58, 16
  %60 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %6, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @UPF_SHARE_IRQ, align 4
  %63 = load i32, i32* @UPF_FIXED_PORT, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @UPF_FIXED_TYPE, align 4
  %66 = or i32 %64, %65
  %67 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %6, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* @UART_CAP_FIFO, align 4
  %70 = load i32, i32* @UART_CAP_AFE, align 4
  %71 = or i32 %69, %70
  %72 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %6, i32 0, i32 0
  store i32 %71, i32* %72, align 8
  %73 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %74 = call i32 @pci_resource_start(%struct.pci_dev* %73, i32 0)
  %75 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %6, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 8
  %77 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %78 = call i32 @pcim_iomap(%struct.pci_dev* %77, i32 0, i32 0)
  %79 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %6, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 4
  %81 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %6, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %25
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %141

88:                                               ; preds = %25
  %89 = load %struct.lpss8250*, %struct.lpss8250** %7, align 8
  %90 = getelementptr inbounds %struct.lpss8250, %struct.lpss8250* %89, i32 0, i32 0
  %91 = load %struct.lpss8250_board*, %struct.lpss8250_board** %90, align 8
  %92 = getelementptr inbounds %struct.lpss8250_board, %struct.lpss8250_board* %91, i32 0, i32 1
  %93 = load i32 (%struct.lpss8250.0*, %struct.TYPE_5__*)*, i32 (%struct.lpss8250.0*, %struct.TYPE_5__*)** %92, align 8
  %94 = load %struct.lpss8250*, %struct.lpss8250** %7, align 8
  %95 = bitcast %struct.lpss8250* %94 to %struct.lpss8250.0*
  %96 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %6, i32 0, i32 1
  %97 = call i32 %93(%struct.lpss8250.0* %95, %struct.TYPE_5__* %96)
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %88
  %101 = load i32, i32* %8, align 4
  store i32 %101, i32* %3, align 4
  br label %141

102:                                              ; preds = %88
  %103 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %6, i32 0, i32 1
  %104 = call i32 @dw8250_setup_port(%struct.TYPE_5__* %103)
  %105 = load %struct.lpss8250*, %struct.lpss8250** %7, align 8
  %106 = call i32 @lpss8250_dma_setup(%struct.lpss8250* %105, %struct.uart_8250_port* %6)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %102
  br label %123

110:                                              ; preds = %102
  %111 = call i32 @serial8250_register_8250_port(%struct.uart_8250_port* %6)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  br label %123

115:                                              ; preds = %110
  %116 = load i32, i32* %8, align 4
  %117 = load %struct.lpss8250*, %struct.lpss8250** %7, align 8
  %118 = getelementptr inbounds %struct.lpss8250, %struct.lpss8250* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  store i32 %116, i32* %119, align 8
  %120 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %121 = load %struct.lpss8250*, %struct.lpss8250** %7, align 8
  %122 = call i32 @pci_set_drvdata(%struct.pci_dev* %120, %struct.lpss8250* %121)
  store i32 0, i32* %3, align 4
  br label %141

123:                                              ; preds = %114, %109
  %124 = load %struct.lpss8250*, %struct.lpss8250** %7, align 8
  %125 = getelementptr inbounds %struct.lpss8250, %struct.lpss8250* %124, i32 0, i32 0
  %126 = load %struct.lpss8250_board*, %struct.lpss8250_board** %125, align 8
  %127 = getelementptr inbounds %struct.lpss8250_board, %struct.lpss8250_board* %126, i32 0, i32 2
  %128 = load i32 (%struct.lpss8250.1*)*, i32 (%struct.lpss8250.1*)** %127, align 8
  %129 = icmp ne i32 (%struct.lpss8250.1*)* %128, null
  br i1 %129, label %130, label %139

130:                                              ; preds = %123
  %131 = load %struct.lpss8250*, %struct.lpss8250** %7, align 8
  %132 = getelementptr inbounds %struct.lpss8250, %struct.lpss8250* %131, i32 0, i32 0
  %133 = load %struct.lpss8250_board*, %struct.lpss8250_board** %132, align 8
  %134 = getelementptr inbounds %struct.lpss8250_board, %struct.lpss8250_board* %133, i32 0, i32 2
  %135 = load i32 (%struct.lpss8250.1*)*, i32 (%struct.lpss8250.1*)** %134, align 8
  %136 = load %struct.lpss8250*, %struct.lpss8250** %7, align 8
  %137 = bitcast %struct.lpss8250* %136 to %struct.lpss8250.1*
  %138 = call i32 %135(%struct.lpss8250.1* %137)
  br label %139

139:                                              ; preds = %130, %123
  %140 = load i32, i32* %8, align 4
  store i32 %140, i32* %3, align 4
  br label %141

141:                                              ; preds = %139, %115, %100, %85, %22, %13
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i32 @pcim_enable_device(%struct.pci_dev*) #1

declare dso_local %struct.lpss8250* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @memset(%struct.uart_8250_port*, i32, i32) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pcim_iomap(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @dw8250_setup_port(%struct.TYPE_5__*) #1

declare dso_local i32 @lpss8250_dma_setup(%struct.lpss8250*, %struct.uart_8250_port*) #1

declare dso_local i32 @serial8250_register_8250_port(%struct.uart_8250_port*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.lpss8250*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
