; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_get_icount.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_get_icount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.uart_state* }
%struct.uart_state = type { i32 }
%struct.serial_icounter_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.uart_port = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.serial_icounter_struct*)* @uart_get_icount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_get_icount(%struct.tty_struct* %0, %struct.serial_icounter_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.serial_icounter_struct*, align 8
  %6 = alloca %struct.uart_state*, align 8
  %7 = alloca %struct.uart_icount, align 4
  %8 = alloca %struct.uart_port*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.serial_icounter_struct* %1, %struct.serial_icounter_struct** %5, align 8
  %9 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 0
  %11 = load %struct.uart_state*, %struct.uart_state** %10, align 8
  store %struct.uart_state* %11, %struct.uart_state** %6, align 8
  %12 = load %struct.uart_state*, %struct.uart_state** %6, align 8
  %13 = call %struct.uart_port* @uart_port_ref(%struct.uart_state* %12)
  store %struct.uart_port* %13, %struct.uart_port** %8, align 8
  %14 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %15 = icmp ne %struct.uart_port* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %75

19:                                               ; preds = %2
  %20 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %21 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %20, i32 0, i32 0
  %22 = call i32 @spin_lock_irq(i32* %21)
  %23 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %24 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %23, i32 0, i32 1
  %25 = call i32 @memcpy(%struct.uart_icount* %7, i32* %24, i32 44)
  %26 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %27 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %26, i32 0, i32 0
  %28 = call i32 @spin_unlock_irq(i32* %27)
  %29 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %30 = call i32 @uart_port_deref(%struct.uart_port* %29)
  %31 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %7, i32 0, i32 10
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %5, align 8
  %34 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %33, i32 0, i32 10
  store i32 %32, i32* %34, align 4
  %35 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %7, i32 0, i32 9
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %5, align 8
  %38 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %37, i32 0, i32 9
  store i32 %36, i32* %38, align 4
  %39 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %7, i32 0, i32 8
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %5, align 8
  %42 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %41, i32 0, i32 8
  store i32 %40, i32* %42, align 4
  %43 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %7, i32 0, i32 7
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %5, align 8
  %46 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %45, i32 0, i32 7
  store i32 %44, i32* %46, align 4
  %47 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %7, i32 0, i32 6
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %5, align 8
  %50 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %49, i32 0, i32 6
  store i32 %48, i32* %50, align 4
  %51 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %7, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %5, align 8
  %54 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 4
  %55 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %7, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %5, align 8
  %58 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 4
  %59 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %7, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %5, align 8
  %62 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 4
  %63 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %7, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %5, align 8
  %66 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  %67 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %7, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %5, align 8
  %70 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %7, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %5, align 8
  %74 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %19, %16
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.uart_port* @uart_port_ref(%struct.uart_state*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @memcpy(%struct.uart_icount*, i32*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @uart_port_deref(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
