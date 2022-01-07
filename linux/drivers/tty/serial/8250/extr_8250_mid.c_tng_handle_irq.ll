; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_mid.c_tng_handle_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_mid.c_tng_handle_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { %struct.mid8250* }
%struct.mid8250 = type { i32, i32 }
%struct.uart_8250_port = type { i32 }
%struct.hsu_dma_chip = type { i32 }

@UART_IIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @tng_handle_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tng_handle_irq(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.mid8250*, align 8
  %4 = alloca %struct.uart_8250_port*, align 8
  %5 = alloca %struct.hsu_dma_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %10 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %9, i32 0, i32 0
  %11 = load %struct.mid8250*, %struct.mid8250** %10, align 8
  store %struct.mid8250* %11, %struct.mid8250** %3, align 8
  %12 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %13 = call %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port* %12)
  store %struct.uart_8250_port* %13, %struct.uart_8250_port** %4, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.mid8250*, %struct.mid8250** %3, align 8
  %15 = getelementptr inbounds %struct.mid8250, %struct.mid8250* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.hsu_dma_chip* @pci_get_drvdata(i32 %16)
  store %struct.hsu_dma_chip* %17, %struct.hsu_dma_chip** %5, align 8
  %18 = load %struct.hsu_dma_chip*, %struct.hsu_dma_chip** %5, align 8
  %19 = load %struct.mid8250*, %struct.mid8250** %3, align 8
  %20 = getelementptr inbounds %struct.mid8250, %struct.mid8250* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %21, 2
  %23 = add nsw i32 %22, 1
  %24 = call i32 @hsu_dma_get_status(%struct.hsu_dma_chip* %18, i32 %23, i32* %6)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %1
  %28 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %29 = call i32 @serial8250_rx_dma_flush(%struct.uart_8250_port* %28)
  %30 = load i32, i32* %7, align 4
  %31 = or i32 %30, 1
  store i32 %31, i32* %7, align 4
  br label %47

32:                                               ; preds = %1
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %32
  %36 = load %struct.hsu_dma_chip*, %struct.hsu_dma_chip** %5, align 8
  %37 = load %struct.mid8250*, %struct.mid8250** %3, align 8
  %38 = getelementptr inbounds %struct.mid8250, %struct.mid8250* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %39, 2
  %41 = add nsw i32 %40, 1
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @hsu_dma_do_irq(%struct.hsu_dma_chip* %36, i32 %41, i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %35, %32
  br label %47

47:                                               ; preds = %46, %27
  %48 = load %struct.hsu_dma_chip*, %struct.hsu_dma_chip** %5, align 8
  %49 = load %struct.mid8250*, %struct.mid8250** %3, align 8
  %50 = getelementptr inbounds %struct.mid8250, %struct.mid8250* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %51, 2
  %53 = call i32 @hsu_dma_get_status(%struct.hsu_dma_chip* %48, i32 %52, i32* %6)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %73

59:                                               ; preds = %47
  %60 = load i32, i32* %8, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %59
  %63 = load %struct.hsu_dma_chip*, %struct.hsu_dma_chip** %5, align 8
  %64 = load %struct.mid8250*, %struct.mid8250** %3, align 8
  %65 = getelementptr inbounds %struct.mid8250, %struct.mid8250* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %66, 2
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @hsu_dma_do_irq(%struct.hsu_dma_chip* %63, i32 %67, i32 %68)
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %62, %59
  br label %73

73:                                               ; preds = %72, %56
  %74 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %75 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %76 = load i32, i32* @UART_IIR, align 4
  %77 = call i32 @serial_port_in(%struct.uart_port* %75, i32 %76)
  %78 = call i32 @serial8250_handle_irq(%struct.uart_port* %74, i32 %77)
  %79 = load i32, i32* %7, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @IRQ_RETVAL(i32 %81)
  ret i32 %82
}

declare dso_local %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port*) #1

declare dso_local %struct.hsu_dma_chip* @pci_get_drvdata(i32) #1

declare dso_local i32 @hsu_dma_get_status(%struct.hsu_dma_chip*, i32, i32*) #1

declare dso_local i32 @serial8250_rx_dma_flush(%struct.uart_8250_port*) #1

declare dso_local i32 @hsu_dma_do_irq(%struct.hsu_dma_chip*, i32, i32) #1

declare dso_local i32 @serial8250_handle_irq(%struct.uart_port*, i32) #1

declare dso_local i32 @serial_port_in(%struct.uart_port*, i32) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
