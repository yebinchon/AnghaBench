; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_vr41xx_siu.c_siu_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_vr41xx_siu.c_siu_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64, i32, i32, i32, i32* }

@ENODEV = common dso_local global i32 0, align 4
@UART_LSR = common dso_local global i32 0, align 4
@UART_RX = common dso_local global i32 0, align 4
@UART_IIR = common dso_local global i32 0, align 4
@UART_MSR = common dso_local global i32 0, align 4
@siu_interrupt = common dso_local global i32 0, align 4
@PORT_VR41XX_DSIU = common dso_local global i64 0, align 8
@DSIUINT_ALL = common dso_local global i32 0, align 4
@UART_LCR = common dso_local global i32 0, align 4
@UART_LCR_WLEN8 = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i32 0, align 4
@UART_IER_RLSI = common dso_local global i32 0, align 4
@UART_IER_RDI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @siu_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siu_startup(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %6 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %5, i32 0, i32 4
  %7 = load i32*, i32** %6, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %90

12:                                               ; preds = %1
  %13 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %14 = call i32 @siu_clear_fifo(%struct.uart_port* %13)
  %15 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %16 = load i32, i32* @UART_LSR, align 4
  %17 = call i32 @siu_read(%struct.uart_port* %15, i32 %16)
  %18 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %19 = load i32, i32* @UART_RX, align 4
  %20 = call i32 @siu_read(%struct.uart_port* %18, i32 %19)
  %21 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %22 = load i32, i32* @UART_IIR, align 4
  %23 = call i32 @siu_read(%struct.uart_port* %21, i32 %22)
  %24 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %25 = load i32, i32* @UART_MSR, align 4
  %26 = call i32 @siu_read(%struct.uart_port* %24, i32 %25)
  %27 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %28 = load i32, i32* @UART_LSR, align 4
  %29 = call i32 @siu_read(%struct.uart_port* %27, i32 %28)
  %30 = icmp eq i32 %29, 255
  br i1 %30, label %31, label %34

31:                                               ; preds = %12
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %90

34:                                               ; preds = %12
  %35 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %36 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @siu_interrupt, align 4
  %39 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %40 = call i32 @siu_type_name(%struct.uart_port* %39)
  %41 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %42 = call i32 @request_irq(i32 %37, i32 %38, i32 0, i32 %40, %struct.uart_port* %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %34
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %90

47:                                               ; preds = %34
  %48 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %49 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @PORT_VR41XX_DSIU, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* @DSIUINT_ALL, align 4
  %55 = call i32 @vr41xx_enable_dsiuint(i32 %54)
  br label %56

56:                                               ; preds = %53, %47
  %57 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %58 = load i32, i32* @UART_LCR, align 4
  %59 = load i32, i32* @UART_LCR_WLEN8, align 4
  %60 = call i32 @siu_write(%struct.uart_port* %57, i32 %58, i32 %59)
  %61 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %62 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %61, i32 0, i32 1
  %63 = call i32 @spin_lock_irq(i32* %62)
  %64 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %65 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %66 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @siu_set_mctrl(%struct.uart_port* %64, i32 %67)
  %69 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %70 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %69, i32 0, i32 1
  %71 = call i32 @spin_unlock_irq(i32* %70)
  %72 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %73 = load i32, i32* @UART_IER, align 4
  %74 = load i32, i32* @UART_IER_RLSI, align 4
  %75 = load i32, i32* @UART_IER_RDI, align 4
  %76 = or i32 %74, %75
  %77 = call i32 @siu_write(%struct.uart_port* %72, i32 %73, i32 %76)
  %78 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %79 = load i32, i32* @UART_LSR, align 4
  %80 = call i32 @siu_read(%struct.uart_port* %78, i32 %79)
  %81 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %82 = load i32, i32* @UART_RX, align 4
  %83 = call i32 @siu_read(%struct.uart_port* %81, i32 %82)
  %84 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %85 = load i32, i32* @UART_IIR, align 4
  %86 = call i32 @siu_read(%struct.uart_port* %84, i32 %85)
  %87 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %88 = load i32, i32* @UART_MSR, align 4
  %89 = call i32 @siu_read(%struct.uart_port* %87, i32 %88)
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %56, %45, %31, %9
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @siu_clear_fifo(%struct.uart_port*) #1

declare dso_local i32 @siu_read(%struct.uart_port*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.uart_port*) #1

declare dso_local i32 @siu_type_name(%struct.uart_port*) #1

declare dso_local i32 @vr41xx_enable_dsiuint(i32) #1

declare dso_local i32 @siu_write(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @siu_set_mctrl(%struct.uart_port*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
