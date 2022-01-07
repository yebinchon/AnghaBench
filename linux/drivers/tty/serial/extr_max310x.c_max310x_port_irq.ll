; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_max310x.c_max310x_port_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_max310x.c_max310x_port_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max310x_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.uart_port }
%struct.uart_port = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@MAX310X_IRQSTS_REG = common dso_local global i32 0, align 4
@MAX310X_RXFIFOLVL_REG = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@MAX310X_IRQ_CTS_BIT = common dso_local global i32 0, align 4
@MAX310X_LSR_IRQSTS_REG = common dso_local global i32 0, align 4
@MAX310X_LSR_CTS_BIT = common dso_local global i32 0, align 4
@MAX310X_IRQ_TXEMPTY_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max310x_port*, i32)* @max310x_port_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max310x_port_irq(%struct.max310x_port* %0, i32 %1) #0 {
  %3 = alloca %struct.max310x_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uart_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.max310x_port* %0, %struct.max310x_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.max310x_port*, %struct.max310x_port** %3, align 8
  %11 = getelementptr inbounds %struct.max310x_port, %struct.max310x_port* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.uart_port* %16, %struct.uart_port** %5, align 8
  %17 = load i32, i32* @IRQ_NONE, align 4
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %66, %2
  %19 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %20 = load i32, i32* @MAX310X_IRQSTS_REG, align 4
  %21 = call i32 @max310x_port_read(%struct.uart_port* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %23 = load i32, i32* @MAX310X_RXFIFOLVL_REG, align 4
  %24 = call i32 @max310x_port_read(%struct.uart_port* %22, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %18
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  br label %67

31:                                               ; preds = %27, %18
  %32 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @MAX310X_IRQ_CTS_BIT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %31
  %38 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %39 = load i32, i32* @MAX310X_LSR_IRQSTS_REG, align 4
  %40 = call i32 @max310x_port_read(%struct.uart_port* %38, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @MAX310X_LSR_CTS_BIT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @uart_handle_cts_change(%struct.uart_port* %41, i32 %48)
  br label %50

50:                                               ; preds = %37, %31
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @max310x_handle_rx(%struct.uart_port* %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %50
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @MAX310X_IRQ_TXEMPTY_BIT, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %64 = call i32 @max310x_start_tx(%struct.uart_port* %63)
  br label %65

65:                                               ; preds = %62, %57
  br label %66

66:                                               ; preds = %65
  br i1 true, label %18, label %67

67:                                               ; preds = %66, %30
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i32 @max310x_port_read(%struct.uart_port*, i32) #1

declare dso_local i32 @uart_handle_cts_change(%struct.uart_port*, i32) #1

declare dso_local i32 @max310x_handle_rx(%struct.uart_port*, i32) #1

declare dso_local i32 @max310x_start_tx(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
