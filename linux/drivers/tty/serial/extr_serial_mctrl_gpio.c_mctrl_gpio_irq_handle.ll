; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_mctrl_gpio.c_mctrl_gpio_irq_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_mctrl_gpio.c_mctrl_gpio_irq_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mctrl_gpios = type { i32, %struct.uart_port* }
%struct.uart_port = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@MCTRL_ANY_DELTA = common dso_local global i32 0, align 4
@TIOCM_RI = common dso_local global i32 0, align 4
@TIOCM_DSR = common dso_local global i32 0, align 4
@TIOCM_CD = common dso_local global i32 0, align 4
@TIOCM_CTS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mctrl_gpio_irq_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mctrl_gpio_irq_handle(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mctrl_gpios*, align 8
  %6 = alloca %struct.uart_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.mctrl_gpios*
  store %struct.mctrl_gpios* %11, %struct.mctrl_gpios** %5, align 8
  %12 = load %struct.mctrl_gpios*, %struct.mctrl_gpios** %5, align 8
  %13 = getelementptr inbounds %struct.mctrl_gpios, %struct.mctrl_gpios* %12, i32 0, i32 1
  %14 = load %struct.uart_port*, %struct.uart_port** %13, align 8
  store %struct.uart_port* %14, %struct.uart_port** %6, align 8
  %15 = load %struct.mctrl_gpios*, %struct.mctrl_gpios** %5, align 8
  %16 = getelementptr inbounds %struct.mctrl_gpios, %struct.mctrl_gpios* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %7, align 4
  %18 = load %struct.mctrl_gpios*, %struct.mctrl_gpios** %5, align 8
  %19 = call i32 @mctrl_gpio_get(%struct.mctrl_gpios* %18, i32* %7)
  %20 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %21 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %20, i32 0, i32 0
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.mctrl_gpios*, %struct.mctrl_gpios** %5, align 8
  %26 = getelementptr inbounds %struct.mctrl_gpios, %struct.mctrl_gpios* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = xor i32 %24, %27
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.mctrl_gpios*, %struct.mctrl_gpios** %5, align 8
  %31 = getelementptr inbounds %struct.mctrl_gpios, %struct.mctrl_gpios* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @MCTRL_ANY_DELTA, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %96

36:                                               ; preds = %2
  %37 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %38 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = icmp ne %struct.TYPE_6__* %39, null
  br i1 %40, label %41, label %96

41:                                               ; preds = %36
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* @TIOCM_RI, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %41
  %49 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %50 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %48, %41
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %7, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @TIOCM_DSR, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %54
  %62 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %63 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 8
  br label %67

67:                                               ; preds = %61, %54
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @TIOCM_CD, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @TIOCM_CD, align 4
  %76 = and i32 %74, %75
  %77 = call i32 @uart_handle_dcd_change(%struct.uart_port* %73, i32 %76)
  br label %78

78:                                               ; preds = %72, %67
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @TIOCM_CTS, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @TIOCM_CTS, align 4
  %87 = and i32 %85, %86
  %88 = call i32 @uart_handle_cts_change(%struct.uart_port* %84, i32 %87)
  br label %89

89:                                               ; preds = %83, %78
  %90 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %91 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %90, i32 0, i32 1
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = call i32 @wake_up_interruptible(i32* %94)
  br label %96

96:                                               ; preds = %89, %36, %2
  %97 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %98 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %97, i32 0, i32 0
  %99 = load i64, i64* %9, align 8
  %100 = call i32 @spin_unlock_irqrestore(i32* %98, i64 %99)
  %101 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %101
}

declare dso_local i32 @mctrl_gpio_get(%struct.mctrl_gpios*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @uart_handle_dcd_change(%struct.uart_port*, i32) #1

declare dso_local i32 @uart_handle_cts_change(%struct.uart_port*, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
