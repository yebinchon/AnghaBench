; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_mid.c_dnv_handle_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_mid.c_dnv_handle_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { %struct.mid8250* }
%struct.mid8250 = type { i32 }
%struct.uart_8250_port = type { i32 }

@INTEL_MID_UART_FISR = common dso_local global i32 0, align 4
@UART_IIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @dnv_handle_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dnv_handle_irq(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.mid8250*, align 8
  %4 = alloca %struct.uart_8250_port*, align 8
  %5 = alloca i32, align 4
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
  %14 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %15 = load i32, i32* @INTEL_MID_UART_FISR, align 4
  %16 = call i32 @serial_port_in(%struct.uart_port* %14, i32 %15)
  store i32 %16, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @BIT(i32 2)
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %44

21:                                               ; preds = %1
  %22 = load %struct.mid8250*, %struct.mid8250** %3, align 8
  %23 = getelementptr inbounds %struct.mid8250, %struct.mid8250* %22, i32 0, i32 0
  %24 = call i32 @hsu_dma_get_status(i32* %23, i32 1, i32* %6)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %29 = call i32 @serial8250_rx_dma_flush(%struct.uart_8250_port* %28)
  %30 = load i32, i32* %7, align 4
  %31 = or i32 %30, 1
  store i32 %31, i32* %7, align 4
  br label %43

32:                                               ; preds = %21
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load %struct.mid8250*, %struct.mid8250** %3, align 8
  %37 = getelementptr inbounds %struct.mid8250, %struct.mid8250* %36, i32 0, i32 0
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @hsu_dma_do_irq(i32* %37, i32 1, i32 %38)
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %35, %32
  br label %43

43:                                               ; preds = %42, %27
  br label %44

44:                                               ; preds = %43, %1
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @BIT(i32 1)
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %70

49:                                               ; preds = %44
  %50 = load %struct.mid8250*, %struct.mid8250** %3, align 8
  %51 = getelementptr inbounds %struct.mid8250, %struct.mid8250* %50, i32 0, i32 0
  %52 = call i32 @hsu_dma_get_status(i32* %51, i32 0, i32* %6)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32, i32* %7, align 4
  %57 = or i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %69

58:                                               ; preds = %49
  %59 = load i32, i32* %8, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load %struct.mid8250*, %struct.mid8250** %3, align 8
  %63 = getelementptr inbounds %struct.mid8250, %struct.mid8250* %62, i32 0, i32 0
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @hsu_dma_do_irq(i32* %63, i32 0, i32 %64)
  %66 = load i32, i32* %7, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %61, %58
  br label %69

69:                                               ; preds = %68, %55
  br label %70

70:                                               ; preds = %69, %44
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @BIT(i32 0)
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %77 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %78 = load i32, i32* @UART_IIR, align 4
  %79 = call i32 @serial_port_in(%struct.uart_port* %77, i32 %78)
  %80 = call i32 @serial8250_handle_irq(%struct.uart_port* %76, i32 %79)
  %81 = load i32, i32* %7, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %75, %70
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @IRQ_RETVAL(i32 %84)
  ret i32 %85
}

declare dso_local %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port*) #1

declare dso_local i32 @serial_port_in(%struct.uart_port*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @hsu_dma_get_status(i32*, i32, i32*) #1

declare dso_local i32 @serial8250_rx_dma_flush(%struct.uart_8250_port*) #1

declare dso_local i32 @hsu_dma_do_irq(i32*, i32, i32) #1

declare dso_local i32 @serial8250_handle_irq(%struct.uart_port*, i32) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
