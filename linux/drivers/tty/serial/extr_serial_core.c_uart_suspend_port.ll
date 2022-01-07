; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_suspend_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_suspend_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_driver = type { %struct.uart_state* }
%struct.uart_state = type { %struct.tty_port }
%struct.tty_port = type { i32 }
%struct.uart_port = type { i32, i32, i32, i32, i32, i32, %struct.uart_ops*, i32 }
%struct.uart_ops = type { i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)*, i32 (%struct.uart_port*, i32)*, i32 (%struct.uart_port*)* }
%struct.device = type { i32 }
%struct.uart_match = type { %struct.uart_driver*, %struct.uart_port* }

@serial_match_port = common dso_local global i32 0, align 4
@console_suspend_enabled = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%s: Unable to drain transmitter\0A\00", align 1
@UART_PM_STATE_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uart_suspend_port(%struct.uart_driver* %0, %struct.uart_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uart_driver*, align 8
  %5 = alloca %struct.uart_port*, align 8
  %6 = alloca %struct.uart_state*, align 8
  %7 = alloca %struct.tty_port*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.uart_match, align 8
  %10 = alloca %struct.uart_ops*, align 8
  %11 = alloca i32, align 4
  store %struct.uart_driver* %0, %struct.uart_driver** %4, align 8
  store %struct.uart_port* %1, %struct.uart_port** %5, align 8
  %12 = load %struct.uart_driver*, %struct.uart_driver** %4, align 8
  %13 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %12, i32 0, i32 0
  %14 = load %struct.uart_state*, %struct.uart_state** %13, align 8
  %15 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %16 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %14, i64 %18
  store %struct.uart_state* %19, %struct.uart_state** %6, align 8
  %20 = load %struct.uart_state*, %struct.uart_state** %6, align 8
  %21 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %20, i32 0, i32 0
  store %struct.tty_port* %21, %struct.tty_port** %7, align 8
  %22 = getelementptr inbounds %struct.uart_match, %struct.uart_match* %9, i32 0, i32 0
  %23 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %24 = bitcast %struct.uart_port* %23 to %struct.uart_driver*
  store %struct.uart_driver* %24, %struct.uart_driver** %22, align 8
  %25 = getelementptr inbounds %struct.uart_match, %struct.uart_match* %9, i32 0, i32 1
  %26 = load %struct.uart_driver*, %struct.uart_driver** %4, align 8
  %27 = bitcast %struct.uart_driver* %26 to %struct.uart_port*
  store %struct.uart_port* %27, %struct.uart_port** %25, align 8
  %28 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %29 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %32 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @serial_match_port, align 4
  %35 = call %struct.device* @device_find_child(i32 %33, %struct.uart_match* %9, i32 %34)
  store %struct.device* %35, %struct.device** %8, align 8
  %36 = load %struct.device*, %struct.device** %8, align 8
  %37 = icmp ne %struct.device* %36, null
  br i1 %37, label %38, label %52

38:                                               ; preds = %2
  %39 = load %struct.device*, %struct.device** %8, align 8
  %40 = call i64 @device_may_wakeup(%struct.device* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %38
  %43 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %44 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @enable_irq_wake(i32 %45)
  %47 = load %struct.device*, %struct.device** %8, align 8
  %48 = call i32 @put_device(%struct.device* %47)
  %49 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %50 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %49, i32 0, i32 0
  %51 = call i32 @mutex_unlock(i32* %50)
  store i32 0, i32* %3, align 4
  br label %148

52:                                               ; preds = %38, %2
  %53 = load %struct.device*, %struct.device** %8, align 8
  %54 = call i32 @put_device(%struct.device* %53)
  %55 = load i32, i32* @console_suspend_enabled, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  %58 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %59 = call i64 @uart_console(%struct.uart_port* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %144

62:                                               ; preds = %57, %52
  %63 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %64 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %63, i32 0, i32 1
  store i32 1, i32* %64, align 4
  %65 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %66 = call i64 @tty_port_initialized(%struct.tty_port* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %131

68:                                               ; preds = %62
  %69 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %70 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %69, i32 0, i32 6
  %71 = load %struct.uart_ops*, %struct.uart_ops** %70, align 8
  store %struct.uart_ops* %71, %struct.uart_ops** %10, align 8
  %72 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %73 = call i32 @tty_port_set_suspended(%struct.tty_port* %72, i32 1)
  %74 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %75 = call i32 @tty_port_set_initialized(%struct.tty_port* %74, i32 0)
  %76 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %77 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %76, i32 0, i32 5
  %78 = call i32 @spin_lock_irq(i32* %77)
  %79 = load %struct.uart_ops*, %struct.uart_ops** %10, align 8
  %80 = getelementptr inbounds %struct.uart_ops, %struct.uart_ops* %79, i32 0, i32 4
  %81 = load i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)** %80, align 8
  %82 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %83 = call i32 %81(%struct.uart_port* %82)
  %84 = load %struct.uart_ops*, %struct.uart_ops** %10, align 8
  %85 = getelementptr inbounds %struct.uart_ops, %struct.uart_ops* %84, i32 0, i32 3
  %86 = load i32 (%struct.uart_port*, i32)*, i32 (%struct.uart_port*, i32)** %85, align 8
  %87 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %88 = call i32 %86(%struct.uart_port* %87, i32 0)
  %89 = load %struct.uart_ops*, %struct.uart_ops** %10, align 8
  %90 = getelementptr inbounds %struct.uart_ops, %struct.uart_ops* %89, i32 0, i32 2
  %91 = load i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)** %90, align 8
  %92 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %93 = call i32 %91(%struct.uart_port* %92)
  %94 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %95 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %94, i32 0, i32 5
  %96 = call i32 @spin_unlock_irq(i32* %95)
  store i32 3, i32* %11, align 4
  br label %97

97:                                               ; preds = %111, %68
  %98 = load %struct.uart_ops*, %struct.uart_ops** %10, align 8
  %99 = getelementptr inbounds %struct.uart_ops, %struct.uart_ops* %98, i32 0, i32 1
  %100 = load i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)** %99, align 8
  %101 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %102 = call i32 %100(%struct.uart_port* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %97
  %105 = load i32, i32* %11, align 4
  %106 = icmp ne i32 %105, 0
  br label %107

107:                                              ; preds = %104, %97
  %108 = phi i1 [ false, %97 ], [ %106, %104 ]
  br i1 %108, label %109, label %114

109:                                              ; preds = %107
  %110 = call i32 @msleep(i32 10)
  br label %111

111:                                              ; preds = %109
  %112 = load i32, i32* %11, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %11, align 4
  br label %97

114:                                              ; preds = %107
  %115 = load i32, i32* %11, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %125, label %117

117:                                              ; preds = %114
  %118 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %119 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %122 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @dev_err(i32 %120, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %123)
  br label %125

125:                                              ; preds = %117, %114
  %126 = load %struct.uart_ops*, %struct.uart_ops** %10, align 8
  %127 = getelementptr inbounds %struct.uart_ops, %struct.uart_ops* %126, i32 0, i32 0
  %128 = load i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)** %127, align 8
  %129 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %130 = call i32 %128(%struct.uart_port* %129)
  br label %131

131:                                              ; preds = %125, %62
  %132 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %133 = call i64 @uart_console(%struct.uart_port* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %131
  %136 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %137 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @console_stop(i32 %138)
  br label %140

140:                                              ; preds = %135, %131
  %141 = load %struct.uart_state*, %struct.uart_state** %6, align 8
  %142 = load i32, i32* @UART_PM_STATE_OFF, align 4
  %143 = call i32 @uart_change_pm(%struct.uart_state* %141, i32 %142)
  br label %144

144:                                              ; preds = %140, %61
  %145 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %146 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %145, i32 0, i32 0
  %147 = call i32 @mutex_unlock(i32* %146)
  store i32 0, i32* %3, align 4
  br label %148

148:                                              ; preds = %144, %42
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.device* @device_find_child(i32, %struct.uart_match*, i32) #1

declare dso_local i64 @device_may_wakeup(%struct.device*) #1

declare dso_local i32 @enable_irq_wake(i32) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @uart_console(%struct.uart_port*) #1

declare dso_local i64 @tty_port_initialized(%struct.tty_port*) #1

declare dso_local i32 @tty_port_set_suspended(%struct.tty_port*, i32) #1

declare dso_local i32 @tty_port_set_initialized(%struct.tty_port*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @console_stop(i32) #1

declare dso_local i32 @uart_change_pm(%struct.uart_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
