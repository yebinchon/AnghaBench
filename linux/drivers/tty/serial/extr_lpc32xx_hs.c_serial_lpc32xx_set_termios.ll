; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_lpc32xx_hs.c_serial_lpc32xx_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_lpc32xx_hs.c_serial_lpc32xx_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32 }
%struct.ktermios = type { i32 }

@CSIZE = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@CS8 = common dso_local global i32 0, align 4
@HUPCL = common dso_local global i32 0, align 4
@CMSPAR = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@LPC32XX_HSU_RX_INT_EN = common dso_local global i32 0, align 4
@LPC32XX_HSU_ERR_INT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @serial_lpc32xx_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial_lpc32xx_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %11 = load i32, i32* @CSIZE, align 4
  %12 = load i32, i32* @CSTOPB, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @PARENB, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @PARODD, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %20 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* @CS8, align 4
  %24 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %25 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* @HUPCL, align 4
  %29 = load i32, i32* @CMSPAR, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @CLOCAL, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @CRTSCTS, align 4
  %34 = or i32 %32, %33
  %35 = xor i32 %34, -1
  %36 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %37 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %41 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %42 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %43 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %44 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sdiv i32 %45, 14
  %47 = call i32 @uart_get_baud_rate(%struct.uart_port* %40, %struct.ktermios* %41, %struct.ktermios* %42, i32 0, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %49 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @__serial_get_clock_div(i32 %50, i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %54 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %53, i32 0, i32 1
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @spin_lock_irqsave(i32* %54, i64 %55)
  %57 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %58 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @LPC32XX_HSUART_CTRL(i32 %59)
  %61 = call i32 @readl(i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %63 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @CREAD, align 4
  %66 = and i32 %64, %65
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %3
  %69 = load i32, i32* @LPC32XX_HSU_RX_INT_EN, align 4
  %70 = load i32, i32* @LPC32XX_HSU_ERR_INT_EN, align 4
  %71 = or i32 %69, %70
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %10, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %10, align 4
  br label %81

75:                                               ; preds = %3
  %76 = load i32, i32* @LPC32XX_HSU_RX_INT_EN, align 4
  %77 = load i32, i32* @LPC32XX_HSU_ERR_INT_EN, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* %10, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %10, align 4
  br label %81

81:                                               ; preds = %75, %68
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %84 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @LPC32XX_HSUART_CTRL(i32 %85)
  %87 = call i32 @writel(i32 %82, i32 %86)
  %88 = load i32, i32* %9, align 4
  %89 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %90 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @LPC32XX_HSUART_RATE(i32 %91)
  %93 = call i32 @writel(i32 %88, i32 %92)
  %94 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %95 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %96 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @uart_update_timeout(%struct.uart_port* %94, i32 %97, i32 %98)
  %100 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %101 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %100, i32 0, i32 1
  %102 = load i64, i64* %7, align 8
  %103 = call i32 @spin_unlock_irqrestore(i32* %101, i64 %102)
  %104 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %105 = call i64 @tty_termios_baud_rate(%struct.ktermios* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %81
  %108 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @tty_termios_encode_baud_rate(%struct.ktermios* %108, i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %107, %81
  ret void
}

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @__serial_get_clock_div(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @LPC32XX_HSUART_CTRL(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @LPC32XX_HSUART_RATE(i32) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @tty_termios_baud_rate(%struct.ktermios*) #1

declare dso_local i32 @tty_termios_encode_baud_rate(%struct.ktermios*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
