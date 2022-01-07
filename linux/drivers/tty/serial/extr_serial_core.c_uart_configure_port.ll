; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_configure_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_configure_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_driver = type { i32 }
%struct.uart_state = type { i32 }
%struct.uart_port = type { i32, i64, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.uart_port*, i32)*, i32 (%struct.uart_port*, i32)* }

@UPF_AUTO_IRQ = common dso_local global i32 0, align 4
@UART_CONFIG_IRQ = common dso_local global i32 0, align 4
@UPF_BOOT_AUTOCONF = common dso_local global i32 0, align 4
@UPF_FIXED_TYPE = common dso_local global i32 0, align 4
@PORT_UNKNOWN = common dso_local global i64 0, align 8
@UART_CONFIG_TYPE = common dso_local global i32 0, align 4
@UART_PM_STATE_ON = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@CON_ENABLED = common dso_local global i32 0, align 4
@UART_PM_STATE_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_driver*, %struct.uart_state*, %struct.uart_port*)* @uart_configure_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uart_configure_port(%struct.uart_driver* %0, %struct.uart_state* %1, %struct.uart_port* %2) #0 {
  %4 = alloca %struct.uart_driver*, align 8
  %5 = alloca %struct.uart_state*, align 8
  %6 = alloca %struct.uart_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.uart_driver* %0, %struct.uart_driver** %4, align 8
  store %struct.uart_state* %1, %struct.uart_state** %5, align 8
  store %struct.uart_port* %2, %struct.uart_port** %6, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %10 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %9, i32 0, i32 8
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %3
  %14 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %15 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %20 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  br label %125

24:                                               ; preds = %18, %13, %3
  store i32 0, i32* %7, align 4
  %25 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %26 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @UPF_AUTO_IRQ, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load i32, i32* @UART_CONFIG_IRQ, align 4
  %33 = load i32, i32* %7, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %31, %24
  %36 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %37 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @UPF_BOOT_AUTOCONF, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %65

42:                                               ; preds = %35
  %43 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %44 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @UPF_FIXED_TYPE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %42
  %50 = load i64, i64* @PORT_UNKNOWN, align 8
  %51 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %52 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  %53 = load i32, i32* @UART_CONFIG_TYPE, align 4
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %49, %42
  %57 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %58 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %57, i32 0, i32 5
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32 (%struct.uart_port*, i32)*, i32 (%struct.uart_port*, i32)** %60, align 8
  %62 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 %61(%struct.uart_port* %62, i32 %63)
  br label %65

65:                                               ; preds = %56, %35
  %66 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %67 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @PORT_UNKNOWN, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %125

71:                                               ; preds = %65
  %72 = load %struct.uart_driver*, %struct.uart_driver** %4, align 8
  %73 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %74 = call i32 @uart_report_port(%struct.uart_driver* %72, %struct.uart_port* %73)
  %75 = load %struct.uart_state*, %struct.uart_state** %5, align 8
  %76 = load i32, i32* @UART_PM_STATE_ON, align 4
  %77 = call i32 @uart_change_pm(%struct.uart_state* %75, i32 %76)
  %78 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %79 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %78, i32 0, i32 4
  %80 = load i64, i64* %8, align 8
  %81 = call i32 @spin_lock_irqsave(i32* %79, i64 %80)
  %82 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %83 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %82, i32 0, i32 5
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32 (%struct.uart_port*, i32)*, i32 (%struct.uart_port*, i32)** %85, align 8
  %87 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %88 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %89 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @TIOCM_DTR, align 4
  %92 = and i32 %90, %91
  %93 = call i32 %86(%struct.uart_port* %87, i32 %92)
  %94 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %95 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %94, i32 0, i32 4
  %96 = load i64, i64* %8, align 8
  %97 = call i32 @spin_unlock_irqrestore(i32* %95, i64 %96)
  %98 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %99 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %98, i32 0, i32 3
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = icmp ne %struct.TYPE_4__* %100, null
  br i1 %101, label %102, label %116

102:                                              ; preds = %71
  %103 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %104 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %103, i32 0, i32 3
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @CON_ENABLED, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %102
  %112 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %113 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %112, i32 0, i32 3
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = call i32 @register_console(%struct.TYPE_4__* %114)
  br label %116

116:                                              ; preds = %111, %102, %71
  %117 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %118 = call i32 @uart_console(%struct.uart_port* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %116
  %121 = load %struct.uart_state*, %struct.uart_state** %5, align 8
  %122 = load i32, i32* @UART_PM_STATE_OFF, align 4
  %123 = call i32 @uart_change_pm(%struct.uart_state* %121, i32 %122)
  br label %124

124:                                              ; preds = %120, %116
  br label %125

125:                                              ; preds = %23, %124, %65
  ret void
}

declare dso_local i32 @uart_report_port(%struct.uart_driver*, %struct.uart_port*) #1

declare dso_local i32 @uart_change_pm(%struct.uart_state*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @register_console(%struct.TYPE_4__*) #1

declare dso_local i32 @uart_console(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
