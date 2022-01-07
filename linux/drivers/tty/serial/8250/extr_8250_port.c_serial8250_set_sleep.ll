; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_serial8250_set_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_serial8250_set_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { i32 }

@UART_CAP_SLEEP = common dso_local global i32 0, align 4
@UART_CAP_EFR = common dso_local global i32 0, align 4
@UART_LCR = common dso_local global i32 0, align 4
@UART_EFR = common dso_local global i32 0, align 4
@UART_LCR_CONF_MODE_B = common dso_local global i8 0, align 1
@UART_EFR_ECB = common dso_local global i8 0, align 1
@UART_IER = common dso_local global i32 0, align 4
@UART_IERX_SLEEP = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_8250_port*, i32)* @serial8250_set_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial8250_set_sleep(%struct.uart_8250_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_8250_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct.uart_8250_port* %0, %struct.uart_8250_port** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8 0, i8* %5, align 1
  store i8 0, i8* %6, align 1
  %7 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %8 = call i32 @serial8250_rpm_get(%struct.uart_8250_port* %7)
  %9 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %10 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @UART_CAP_SLEEP, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %73

15:                                               ; preds = %2
  %16 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %17 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @UART_CAP_EFR, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %15
  %23 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %24 = load i32, i32* @UART_LCR, align 4
  %25 = call zeroext i8 @serial_in(%struct.uart_8250_port* %23, i32 %24)
  store i8 %25, i8* %5, align 1
  %26 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %27 = load i32, i32* @UART_EFR, align 4
  %28 = call zeroext i8 @serial_in(%struct.uart_8250_port* %26, i32 %27)
  store i8 %28, i8* %6, align 1
  %29 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %30 = load i32, i32* @UART_LCR, align 4
  %31 = load i8, i8* @UART_LCR_CONF_MODE_B, align 1
  %32 = call i32 @serial_out(%struct.uart_8250_port* %29, i32 %30, i8 zeroext %31)
  %33 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %34 = load i32, i32* @UART_EFR, align 4
  %35 = load i8, i8* @UART_EFR_ECB, align 1
  %36 = call i32 @serial_out(%struct.uart_8250_port* %33, i32 %34, i8 zeroext %35)
  %37 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %38 = load i32, i32* @UART_LCR, align 4
  %39 = call i32 @serial_out(%struct.uart_8250_port* %37, i32 %38, i8 zeroext 0)
  br label %40

40:                                               ; preds = %22, %15
  %41 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %42 = load i32, i32* @UART_IER, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i8, i8* @UART_IERX_SLEEP, align 1
  %47 = zext i8 %46 to i32
  br label %49

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48, %45
  %50 = phi i32 [ %47, %45 ], [ 0, %48 ]
  %51 = trunc i32 %50 to i8
  %52 = call i32 @serial_out(%struct.uart_8250_port* %41, i32 %42, i8 zeroext %51)
  %53 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %54 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @UART_CAP_EFR, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %49
  %60 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %61 = load i32, i32* @UART_LCR, align 4
  %62 = load i8, i8* @UART_LCR_CONF_MODE_B, align 1
  %63 = call i32 @serial_out(%struct.uart_8250_port* %60, i32 %61, i8 zeroext %62)
  %64 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %65 = load i32, i32* @UART_EFR, align 4
  %66 = load i8, i8* %6, align 1
  %67 = call i32 @serial_out(%struct.uart_8250_port* %64, i32 %65, i8 zeroext %66)
  %68 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %69 = load i32, i32* @UART_LCR, align 4
  %70 = load i8, i8* %5, align 1
  %71 = call i32 @serial_out(%struct.uart_8250_port* %68, i32 %69, i8 zeroext %70)
  br label %72

72:                                               ; preds = %59, %49
  br label %73

73:                                               ; preds = %72, %2
  %74 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %75 = call i32 @serial8250_rpm_put(%struct.uart_8250_port* %74)
  ret void
}

declare dso_local i32 @serial8250_rpm_get(%struct.uart_8250_port*) #1

declare dso_local zeroext i8 @serial_in(%struct.uart_8250_port*, i32) #1

declare dso_local i32 @serial_out(%struct.uart_8250_port*, i32, i8 zeroext) #1

declare dso_local i32 @serial8250_rpm_put(%struct.uart_8250_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
