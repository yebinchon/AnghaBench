; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.uart_state = type { %struct.TYPE_6__, %struct.tty_port }
%struct.TYPE_6__ = type { i8* }
%struct.tty_port = type { i32 }
%struct.uart_port = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@TTY_IO_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.uart_state*)* @uart_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uart_shutdown(%struct.tty_struct* %0, %struct.uart_state* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.uart_state*, align 8
  %5 = alloca %struct.uart_port*, align 8
  %6 = alloca %struct.tty_port*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.uart_state* %1, %struct.uart_state** %4, align 8
  %9 = load %struct.uart_state*, %struct.uart_state** %4, align 8
  %10 = call %struct.uart_port* @uart_port_check(%struct.uart_state* %9)
  store %struct.uart_port* %10, %struct.uart_port** %5, align 8
  %11 = load %struct.uart_state*, %struct.uart_state** %4, align 8
  %12 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %11, i32 0, i32 1
  store %struct.tty_port* %12, %struct.tty_port** %6, align 8
  store i64 0, i64* %7, align 8
  store i8* null, i8** %8, align 8
  %13 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %14 = icmp ne %struct.tty_struct* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i32, i32* @TTY_IO_ERROR, align 4
  %17 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %18 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %17, i32 0, i32 1
  %19 = call i32 @set_bit(i32 %16, i32* %18)
  br label %20

20:                                               ; preds = %15, %2
  %21 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %22 = call i64 @tty_port_initialized(%struct.tty_port* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %58

24:                                               ; preds = %20
  %25 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %26 = call i32 @tty_port_set_initialized(%struct.tty_port* %25, i32 0)
  %27 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %28 = icmp ne %struct.uart_port* %27, null
  br i1 %28, label %29, label %45

29:                                               ; preds = %24
  %30 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %31 = call i64 @uart_console(%struct.uart_port* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %29
  %34 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %35 = icmp ne %struct.tty_struct* %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %38 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %42 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 %40, i32* %44, align 4
  br label %45

45:                                               ; preds = %36, %33, %29, %24
  %46 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %47 = icmp ne %struct.tty_struct* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %50 = call i64 @C_HUPCL(%struct.tty_struct* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48, %45
  %53 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %54 = call i32 @uart_port_dtr_rts(%struct.uart_port* %53, i32 0)
  br label %55

55:                                               ; preds = %52, %48
  %56 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %57 = call i32 @uart_port_shutdown(%struct.tty_port* %56)
  br label %58

58:                                               ; preds = %55, %20
  %59 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %60 = call i32 @tty_port_set_suspended(%struct.tty_port* %59, i32 0)
  %61 = load %struct.uart_state*, %struct.uart_state** %4, align 8
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @uart_port_lock(%struct.uart_state* %61, i64 %62)
  %64 = load %struct.uart_state*, %struct.uart_state** %4, align 8
  %65 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  store i8* %67, i8** %8, align 8
  %68 = load %struct.uart_state*, %struct.uart_state** %4, align 8
  %69 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  store i8* null, i8** %70, align 8
  %71 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %72 = load i64, i64* %7, align 8
  %73 = call i32 @uart_port_unlock(%struct.uart_port* %71, i64 %72)
  %74 = load i8*, i8** %8, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %58
  %77 = load i8*, i8** %8, align 8
  %78 = ptrtoint i8* %77 to i64
  %79 = call i32 @free_page(i64 %78)
  br label %80

80:                                               ; preds = %76, %58
  ret void
}

declare dso_local %struct.uart_port* @uart_port_check(%struct.uart_state*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @tty_port_initialized(%struct.tty_port*) #1

declare dso_local i32 @tty_port_set_initialized(%struct.tty_port*, i32) #1

declare dso_local i64 @uart_console(%struct.uart_port*) #1

declare dso_local i64 @C_HUPCL(%struct.tty_struct*) #1

declare dso_local i32 @uart_port_dtr_rts(%struct.uart_port*, i32) #1

declare dso_local i32 @uart_port_shutdown(%struct.tty_port*) #1

declare dso_local i32 @tty_port_set_suspended(%struct.tty_port*, i32) #1

declare dso_local i32 @uart_port_lock(%struct.uart_state*, i64) #1

declare dso_local i32 @uart_port_unlock(%struct.uart_port*, i64) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
