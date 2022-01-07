; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_max310x.c_max310x_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_max310x.c_max310x_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.max310x_port = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.uart_port*, i32)* }

@MAX310X_MODE1_REG = common dso_local global i32 0, align 4
@MAX310X_MODE1_TRNSCVCTRL_BIT = common dso_local global i32 0, align 4
@MAX310X_MODE2_RXEMPTINV_BIT = common dso_local global i32 0, align 4
@MAX310X_MODE2_FIFORST_BIT = common dso_local global i32 0, align 4
@MAX310X_MODE2_REG = common dso_local global i32 0, align 4
@MAX310X_HDPIXDELAY_REG = common dso_local global i32 0, align 4
@SER_RS485_ENABLED = common dso_local global i32 0, align 4
@SER_RS485_RX_DURING_TX = common dso_local global i32 0, align 4
@MAX310X_MODE2_ECHOSUPR_BIT = common dso_local global i32 0, align 4
@MAX310X_FLOWLVL_REG = common dso_local global i32 0, align 4
@MAX310X_IRQSTS_REG = common dso_local global i32 0, align 4
@MAX310X_IRQ_RXEMPTY_BIT = common dso_local global i32 0, align 4
@MAX310X_IRQ_TXEMPTY_BIT = common dso_local global i32 0, align 4
@MAX310X_IRQEN_REG = common dso_local global i32 0, align 4
@MAX310X_IRQ_CTS_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @max310x_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max310x_startup(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.max310x_port*, align 8
  %4 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.max310x_port* @dev_get_drvdata(i32 %7)
  store %struct.max310x_port* %8, %struct.max310x_port** %3, align 8
  %9 = load %struct.max310x_port*, %struct.max310x_port** %3, align 8
  %10 = getelementptr inbounds %struct.max310x_port, %struct.max310x_port* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32 (%struct.uart_port*, i32)*, i32 (%struct.uart_port*, i32)** %12, align 8
  %14 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %15 = call i32 %13(%struct.uart_port* %14, i32 1)
  %16 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %17 = load i32, i32* @MAX310X_MODE1_REG, align 4
  %18 = load i32, i32* @MAX310X_MODE1_TRNSCVCTRL_BIT, align 4
  %19 = call i32 @max310x_port_update(%struct.uart_port* %16, i32 %17, i32 %18, i32 0)
  %20 = load i32, i32* @MAX310X_MODE2_RXEMPTINV_BIT, align 4
  %21 = load i32, i32* @MAX310X_MODE2_FIFORST_BIT, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %4, align 4
  %23 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %24 = load i32, i32* @MAX310X_MODE2_REG, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @max310x_port_write(%struct.uart_port* %23, i32 %24, i32 %25)
  %27 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %28 = load i32, i32* @MAX310X_MODE2_REG, align 4
  %29 = load i32, i32* @MAX310X_MODE2_FIFORST_BIT, align 4
  %30 = call i32 @max310x_port_update(%struct.uart_port* %27, i32 %28, i32 %29, i32 0)
  %31 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %32 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @clamp(i32 %34, i32 0, i32 15)
  %36 = shl i32 %35, 4
  %37 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %38 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @clamp(i32 %40, i32 0, i32 15)
  %42 = or i32 %36, %41
  store i32 %42, i32* %4, align 4
  %43 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %44 = load i32, i32* @MAX310X_HDPIXDELAY_REG, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @max310x_port_write(%struct.uart_port* %43, i32 %44, i32 %45)
  %47 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %48 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @SER_RS485_ENABLED, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %74

54:                                               ; preds = %1
  %55 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %56 = load i32, i32* @MAX310X_MODE1_REG, align 4
  %57 = load i32, i32* @MAX310X_MODE1_TRNSCVCTRL_BIT, align 4
  %58 = load i32, i32* @MAX310X_MODE1_TRNSCVCTRL_BIT, align 4
  %59 = call i32 @max310x_port_update(%struct.uart_port* %55, i32 %56, i32 %57, i32 %58)
  %60 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %61 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @SER_RS485_RX_DURING_TX, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %54
  %68 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %69 = load i32, i32* @MAX310X_MODE2_REG, align 4
  %70 = load i32, i32* @MAX310X_MODE2_ECHOSUPR_BIT, align 4
  %71 = load i32, i32* @MAX310X_MODE2_ECHOSUPR_BIT, align 4
  %72 = call i32 @max310x_port_update(%struct.uart_port* %68, i32 %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %67, %54
  br label %74

74:                                               ; preds = %73, %1
  %75 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %76 = load i32, i32* @MAX310X_FLOWLVL_REG, align 4
  %77 = call i32 @MAX310X_FLOWLVL_RES(i32 48)
  %78 = call i32 @MAX310X_FLOWLVL_HALT(i32 96)
  %79 = or i32 %77, %78
  %80 = call i32 @max310x_port_write(%struct.uart_port* %75, i32 %76, i32 %79)
  %81 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %82 = load i32, i32* @MAX310X_IRQSTS_REG, align 4
  %83 = call i32 @max310x_port_read(%struct.uart_port* %81, i32 %82)
  %84 = load i32, i32* @MAX310X_IRQ_RXEMPTY_BIT, align 4
  %85 = load i32, i32* @MAX310X_IRQ_TXEMPTY_BIT, align 4
  %86 = or i32 %84, %85
  store i32 %86, i32* %4, align 4
  %87 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %88 = load i32, i32* @MAX310X_IRQEN_REG, align 4
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @MAX310X_IRQ_CTS_BIT, align 4
  %91 = or i32 %89, %90
  %92 = call i32 @max310x_port_write(%struct.uart_port* %87, i32 %88, i32 %91)
  ret i32 0
}

declare dso_local %struct.max310x_port* @dev_get_drvdata(i32) #1

declare dso_local i32 @max310x_port_update(%struct.uart_port*, i32, i32, i32) #1

declare dso_local i32 @max310x_port_write(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @clamp(i32, i32, i32) #1

declare dso_local i32 @MAX310X_FLOWLVL_RES(i32) #1

declare dso_local i32 @MAX310X_FLOWLVL_HALT(i32) #1

declare dso_local i32 @max310x_port_read(%struct.uart_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
