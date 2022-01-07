; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_do_autoconfig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_do_autoconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.uart_state = type { %struct.tty_port }
%struct.tty_port = type { i32 }
%struct.uart_port = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.uart_port*, i32)*, i32 (%struct.uart_port*)* }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@PORT_UNKNOWN = common dso_local global i64 0, align 8
@UART_CONFIG_TYPE = common dso_local global i32 0, align 4
@UPF_AUTO_IRQ = common dso_local global i32 0, align 4
@UART_CONFIG_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.uart_state*)* @uart_do_autoconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_do_autoconfig(%struct.tty_struct* %0, %struct.uart_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.uart_state*, align 8
  %6 = alloca %struct.tty_port*, align 8
  %7 = alloca %struct.uart_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.uart_state* %1, %struct.uart_state** %5, align 8
  %10 = load %struct.uart_state*, %struct.uart_state** %5, align 8
  %11 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %10, i32 0, i32 0
  store %struct.tty_port* %11, %struct.tty_port** %6, align 8
  %12 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %13 = call i32 @capable(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EPERM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %104

18:                                               ; preds = %2
  %19 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %20 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %19, i32 0, i32 0
  %21 = call i64 @mutex_lock_interruptible(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @ERESTARTSYS, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %104

26:                                               ; preds = %18
  %27 = load %struct.uart_state*, %struct.uart_state** %5, align 8
  %28 = call %struct.uart_port* @uart_port_check(%struct.uart_state* %27)
  store %struct.uart_port* %28, %struct.uart_port** %7, align 8
  %29 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %30 = icmp ne %struct.uart_port* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %9, align 4
  br label %99

34:                                               ; preds = %26
  %35 = load i32, i32* @EBUSY, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %9, align 4
  %37 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %38 = call i32 @tty_port_users(%struct.tty_port* %37)
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %98

40:                                               ; preds = %34
  %41 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %42 = load %struct.uart_state*, %struct.uart_state** %5, align 8
  %43 = call i32 @uart_shutdown(%struct.tty_struct* %41, %struct.uart_state* %42)
  %44 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %45 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @PORT_UNKNOWN, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %40
  %50 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %51 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)** %53, align 8
  %55 = icmp ne i32 (%struct.uart_port*)* %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %49
  %57 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %58 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %57, i32 0, i32 2
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)** %60, align 8
  %62 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %63 = call i32 %61(%struct.uart_port* %62)
  br label %64

64:                                               ; preds = %56, %49, %40
  %65 = load i32, i32* @UART_CONFIG_TYPE, align 4
  store i32 %65, i32* %8, align 4
  %66 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %67 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @UPF_AUTO_IRQ, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %64
  %73 = load i32, i32* @UART_CONFIG_IRQ, align 4
  %74 = load i32, i32* %8, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %72, %64
  %77 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %78 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %77, i32 0, i32 2
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32 (%struct.uart_port*, i32)*, i32 (%struct.uart_port*, i32)** %80, align 8
  %82 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call i32 %81(%struct.uart_port* %82, i32 %83)
  %85 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %86 = load %struct.uart_state*, %struct.uart_state** %5, align 8
  %87 = call i32 @uart_startup(%struct.tty_struct* %85, %struct.uart_state* %86, i32 1)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %76
  %91 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %92 = call i32 @tty_port_set_initialized(%struct.tty_port* %91, i32 1)
  br label %93

93:                                               ; preds = %90, %76
  %94 = load i32, i32* %9, align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  store i32 0, i32* %9, align 4
  br label %97

97:                                               ; preds = %96, %93
  br label %98

98:                                               ; preds = %97, %34
  br label %99

99:                                               ; preds = %98, %31
  %100 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %101 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %100, i32 0, i32 0
  %102 = call i32 @mutex_unlock(i32* %101)
  %103 = load i32, i32* %9, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %99, %23, %15
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @capable(i32) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local %struct.uart_port* @uart_port_check(%struct.uart_state*) #1

declare dso_local i32 @tty_port_users(%struct.tty_port*) #1

declare dso_local i32 @uart_shutdown(%struct.tty_struct*, %struct.uart_state*) #1

declare dso_local i32 @uart_startup(%struct.tty_struct*, %struct.uart_state*, i32) #1

declare dso_local i32 @tty_port_set_initialized(%struct.tty_port*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
