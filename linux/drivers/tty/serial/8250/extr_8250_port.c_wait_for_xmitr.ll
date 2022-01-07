; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_wait_for_xmitr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_wait_for_xmitr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@UART_LSR = common dso_local global i32 0, align 4
@LSR_SAVE_FLAGS = common dso_local global i32 0, align 4
@UPF_CONS_FLOW = common dso_local global i32 0, align 4
@UART_MSR = common dso_local global i32 0, align 4
@MSR_SAVE_FLAGS = common dso_local global i32 0, align 4
@UART_MSR_CTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_8250_port*, i32)* @wait_for_xmitr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wait_for_xmitr(%struct.uart_8250_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_8250_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.uart_8250_port* %0, %struct.uart_8250_port** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 10000, i32* %6, align 4
  br label %8

8:                                                ; preds = %30, %2
  %9 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %10 = load i32, i32* @UART_LSR, align 4
  %11 = call i32 @serial_in(%struct.uart_8250_port* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @LSR_SAVE_FLAGS, align 4
  %14 = and i32 %12, %13
  %15 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %16 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %8
  br label %33

25:                                               ; preds = %8
  %26 = load i32, i32* %6, align 4
  %27 = add i32 %26, -1
  store i32 %27, i32* %6, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %33

30:                                               ; preds = %25
  %31 = call i32 @udelay(i32 1)
  %32 = call i32 (...) @touch_nmi_watchdog()
  br label %8

33:                                               ; preds = %29, %24
  %34 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %35 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @UPF_CONS_FLOW, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %68

41:                                               ; preds = %33
  store i32 1000000, i32* %6, align 4
  br label %42

42:                                               ; preds = %64, %41
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %67

45:                                               ; preds = %42
  %46 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %47 = load i32, i32* @UART_MSR, align 4
  %48 = call i32 @serial_in(%struct.uart_8250_port* %46, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @MSR_SAVE_FLAGS, align 4
  %51 = and i32 %49, %50
  %52 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %53 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @UART_MSR_CTS, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %45
  br label %67

61:                                               ; preds = %45
  %62 = call i32 @udelay(i32 1)
  %63 = call i32 (...) @touch_nmi_watchdog()
  br label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %6, align 4
  %66 = add i32 %65, -1
  store i32 %66, i32* %6, align 4
  br label %42

67:                                               ; preds = %60, %42
  br label %68

68:                                               ; preds = %67, %33
  ret void
}

declare dso_local i32 @serial_in(%struct.uart_8250_port*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @touch_nmi_watchdog(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
