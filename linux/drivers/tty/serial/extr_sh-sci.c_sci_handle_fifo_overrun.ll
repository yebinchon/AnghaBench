; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sh-sci.c_sci_handle_fifo_overrun.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sh-sci.c_sci_handle_fifo_overrun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { %struct.tty_port }
%struct.tty_port = type { i32 }
%struct.sci_port = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.plat_sci_reg = type { i32 }

@TTY_OVERRUN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"overrun error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @sci_handle_fifo_overrun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sci_handle_fifo_overrun(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.tty_port*, align 8
  %5 = alloca %struct.sci_port*, align 8
  %6 = alloca %struct.plat_sci_reg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %10 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %9, i32 0, i32 2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store %struct.tty_port* %12, %struct.tty_port** %4, align 8
  %13 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %14 = call %struct.sci_port* @to_sci_port(%struct.uart_port* %13)
  store %struct.sci_port* %14, %struct.sci_port** %5, align 8
  store i32 0, i32* %7, align 4
  %15 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %16 = load %struct.sci_port*, %struct.sci_port** %5, align 8
  %17 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.plat_sci_reg* @sci_getreg(%struct.uart_port* %15, i32 %20)
  store %struct.plat_sci_reg* %21, %struct.plat_sci_reg** %6, align 8
  %22 = load %struct.plat_sci_reg*, %struct.plat_sci_reg** %6, align 8
  %23 = getelementptr inbounds %struct.plat_sci_reg, %struct.plat_sci_reg* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %78

27:                                               ; preds = %1
  %28 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %29 = load %struct.sci_port*, %struct.sci_port** %5, align 8
  %30 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @serial_port_in(%struct.uart_port* %28, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.sci_port*, %struct.sci_port** %5, align 8
  %37 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %35, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %76

43:                                               ; preds = %27
  %44 = load %struct.sci_port*, %struct.sci_port** %5, align 8
  %45 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %8, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %8, align 4
  %52 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %53 = load %struct.sci_port*, %struct.sci_port** %5, align 8
  %54 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @serial_port_out(%struct.uart_port* %52, i32 %57, i32 %58)
  %60 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %61 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  %65 = load %struct.tty_port*, %struct.tty_port** %4, align 8
  %66 = load i32, i32* @TTY_OVERRUN, align 4
  %67 = call i32 @tty_insert_flip_char(%struct.tty_port* %65, i32 0, i32 %66)
  %68 = load %struct.tty_port*, %struct.tty_port** %4, align 8
  %69 = call i32 @tty_flip_buffer_push(%struct.tty_port* %68)
  %70 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %71 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @dev_dbg(i32 %72, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %43, %27
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %76, %26
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.sci_port* @to_sci_port(%struct.uart_port*) #1

declare dso_local %struct.plat_sci_reg* @sci_getreg(%struct.uart_port*, i32) #1

declare dso_local i32 @serial_port_in(%struct.uart_port*, i32) #1

declare dso_local i32 @serial_port_out(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_port*, i32, i32) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_port*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
