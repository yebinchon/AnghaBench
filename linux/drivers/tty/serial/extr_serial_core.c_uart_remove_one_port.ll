; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_remove_one_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_remove_one_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_driver = type { i32, %struct.uart_state* }
%struct.uart_state = type { i32*, i32, i32, %struct.tty_port }
%struct.tty_port = type { i32, i32 }
%struct.uart_port = type { i64, i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.uart_port*)* }
%struct.tty_struct = type { i32 }

@port_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Removing wrong port: %p != %p\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@UPF_DEAD = common dso_local global i32 0, align 4
@PORT_UNKNOWN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uart_remove_one_port(%struct.uart_driver* %0, %struct.uart_port* %1) #0 {
  %3 = alloca %struct.uart_driver*, align 8
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.uart_state*, align 8
  %6 = alloca %struct.tty_port*, align 8
  %7 = alloca %struct.uart_port*, align 8
  %8 = alloca %struct.tty_struct*, align 8
  %9 = alloca i32, align 4
  store %struct.uart_driver* %0, %struct.uart_driver** %3, align 8
  store %struct.uart_port* %1, %struct.uart_port** %4, align 8
  %10 = load %struct.uart_driver*, %struct.uart_driver** %3, align 8
  %11 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %10, i32 0, i32 1
  %12 = load %struct.uart_state*, %struct.uart_state** %11, align 8
  %13 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %14 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %12, i64 %16
  store %struct.uart_state* %17, %struct.uart_state** %5, align 8
  %18 = load %struct.uart_state*, %struct.uart_state** %5, align 8
  %19 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %18, i32 0, i32 3
  store %struct.tty_port* %19, %struct.tty_port** %6, align 8
  store i32 0, i32* %9, align 4
  %20 = call i32 (...) @in_interrupt()
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = call i32 @mutex_lock(i32* @port_mutex)
  %23 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %24 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.uart_state*, %struct.uart_state** %5, align 8
  %27 = call %struct.uart_port* @uart_port_check(%struct.uart_state* %26)
  store %struct.uart_port* %27, %struct.uart_port** %7, align 8
  %28 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %29 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %30 = icmp ne %struct.uart_port* %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %2
  %32 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %33 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %36 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %37 = call i32 @dev_alert(i32 %34, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.uart_port* %35, %struct.uart_port* %36)
  br label %38

38:                                               ; preds = %31, %2
  %39 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %40 = icmp ne %struct.uart_port* %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %43 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %42, i32 0, i32 0
  %44 = call i32 @mutex_unlock(i32* %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %9, align 4
  br label %141

47:                                               ; preds = %38
  %48 = load i32, i32* @UPF_DEAD, align 4
  %49 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %50 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %54 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %57 = load %struct.uart_driver*, %struct.uart_driver** %3, align 8
  %58 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %61 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @tty_port_unregister_device(%struct.tty_port* %56, i32 %59, i32 %62)
  %64 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %65 = call %struct.tty_struct* @tty_port_tty_get(%struct.tty_port* %64)
  store %struct.tty_struct* %65, %struct.tty_struct** %8, align 8
  %66 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %67 = icmp ne %struct.tty_struct* %66, null
  br i1 %67, label %68, label %75

68:                                               ; preds = %47
  %69 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %70 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @tty_vhangup(i32 %71)
  %73 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %74 = call i32 @tty_kref_put(%struct.tty_struct* %73)
  br label %75

75:                                               ; preds = %68, %47
  %76 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %77 = call i64 @uart_console(%struct.uart_port* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %81 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @unregister_console(i32 %82)
  br label %84

84:                                               ; preds = %79, %75
  %85 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %86 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @PORT_UNKNOWN, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %105

90:                                               ; preds = %84
  %91 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %92 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %91, i32 0, i32 3
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)** %94, align 8
  %96 = icmp ne i32 (%struct.uart_port*)* %95, null
  br i1 %96, label %97, label %105

97:                                               ; preds = %90
  %98 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %99 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %98, i32 0, i32 3
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)** %101, align 8
  %103 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %104 = call i32 %102(%struct.uart_port* %103)
  br label %105

105:                                              ; preds = %97, %90, %84
  %106 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %107 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @kfree(i32 %108)
  %110 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %111 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @kfree(i32 %112)
  %114 = load i64, i64* @PORT_UNKNOWN, align 8
  %115 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %116 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  %117 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %118 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %117, i32 0, i32 0
  %119 = call i32 @mutex_lock(i32* %118)
  %120 = load %struct.uart_state*, %struct.uart_state** %5, align 8
  %121 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %120, i32 0, i32 1
  %122 = call i64 @atomic_dec_return(i32* %121)
  %123 = icmp slt i64 %122, 0
  %124 = zext i1 %123 to i32
  %125 = call i32 @WARN_ON(i32 %124)
  %126 = load %struct.uart_state*, %struct.uart_state** %5, align 8
  %127 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.uart_state*, %struct.uart_state** %5, align 8
  %130 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %129, i32 0, i32 1
  %131 = call i32 @atomic_read(i32* %130)
  %132 = icmp ne i32 %131, 0
  %133 = xor i1 %132, true
  %134 = zext i1 %133 to i32
  %135 = call i32 @wait_event(i32 %128, i32 %134)
  %136 = load %struct.uart_state*, %struct.uart_state** %5, align 8
  %137 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %136, i32 0, i32 0
  store i32* null, i32** %137, align 8
  %138 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %139 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %138, i32 0, i32 0
  %140 = call i32 @mutex_unlock(i32* %139)
  br label %141

141:                                              ; preds = %105, %41
  %142 = call i32 @mutex_unlock(i32* @port_mutex)
  %143 = load i32, i32* %9, align 4
  ret i32 %143
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.uart_port* @uart_port_check(%struct.uart_state*) #1

declare dso_local i32 @dev_alert(i32, i8*, %struct.uart_port*, %struct.uart_port*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @tty_port_unregister_device(%struct.tty_port*, i32, i32) #1

declare dso_local %struct.tty_struct* @tty_port_tty_get(%struct.tty_port*) #1

declare dso_local i32 @tty_vhangup(i32) #1

declare dso_local i32 @tty_kref_put(%struct.tty_struct*) #1

declare dso_local i64 @uart_console(%struct.uart_port*) #1

declare dso_local i32 @unregister_console(i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @atomic_dec_return(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
