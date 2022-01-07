; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_port_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_port_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.uart_state = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8* }
%struct.uart_port = type { i64, %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_5__ = type { i32 (%struct.uart_port*)* }

@PORT_UNKNOWN = common dso_local global i64 0, align 8
@UART_PM_STATE_ON = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.uart_state*, i32)* @uart_port_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_port_startup(%struct.tty_struct* %0, %struct.uart_state* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca %struct.uart_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.uart_port*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store %struct.uart_state* %1, %struct.uart_state** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.uart_state*, %struct.uart_state** %6, align 8
  %13 = call %struct.uart_port* @uart_port_check(%struct.uart_state* %12)
  store %struct.uart_port* %13, %struct.uart_port** %8, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %15 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PORT_UNKNOWN, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %116

20:                                               ; preds = %3
  %21 = load %struct.uart_state*, %struct.uart_state** %6, align 8
  %22 = load i32, i32* @UART_PM_STATE_ON, align 4
  %23 = call i32 @uart_change_pm(%struct.uart_state* %21, i32 %22)
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i64 @get_zeroed_page(i32 %24)
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %9, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %116

31:                                               ; preds = %20
  %32 = load %struct.uart_state*, %struct.uart_state** %6, align 8
  %33 = load i64, i64* %10, align 8
  %34 = call i32 @uart_port_lock(%struct.uart_state* %32, i64 %33)
  %35 = load %struct.uart_state*, %struct.uart_state** %6, align 8
  %36 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %52, label %40

40:                                               ; preds = %31
  %41 = load i64, i64* %9, align 8
  %42 = inttoptr i64 %41 to i8*
  %43 = load %struct.uart_state*, %struct.uart_state** %6, align 8
  %44 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  store i8* %42, i8** %45, align 8
  %46 = load %struct.uart_state*, %struct.uart_state** %6, align 8
  %47 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %46, i32 0, i32 0
  %48 = call i32 @uart_circ_clear(%struct.TYPE_8__* %47)
  %49 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %50 = load i64, i64* %10, align 8
  %51 = call i32 @uart_port_unlock(%struct.uart_port* %49, i64 %50)
  br label %58

52:                                               ; preds = %31
  %53 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %54 = load i64, i64* %10, align 8
  %55 = call i32 @uart_port_unlock(%struct.uart_port* %53, i64 %54)
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @free_page(i64 %56)
  br label %58

58:                                               ; preds = %52, %40
  %59 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %60 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %59, i32 0, i32 2
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)** %62, align 8
  %64 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %65 = call i32 %63(%struct.uart_port* %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %106

68:                                               ; preds = %58
  %69 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %70 = call i64 @uart_console(%struct.uart_port* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %92

72:                                               ; preds = %68
  %73 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %74 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %73, i32 0, i32 1
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %72
  %80 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %81 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %80, i32 0, i32 1
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %86 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  store i64 %84, i64* %87, align 8
  %88 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %89 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %88, i32 0, i32 1
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  store i64 0, i64* %91, align 8
  br label %92

92:                                               ; preds = %79, %72, %68
  %93 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %94 = load %struct.uart_state*, %struct.uart_state** %6, align 8
  %95 = call i32 @uart_change_speed(%struct.tty_struct* %93, %struct.uart_state* %94, i32* null)
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %92
  %99 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %100 = call i64 @C_BAUD(%struct.tty_struct* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %104 = call i32 @uart_port_dtr_rts(%struct.uart_port* %103, i32 1)
  br label %105

105:                                              ; preds = %102, %98, %92
  br label %106

106:                                              ; preds = %105, %58
  %107 = load i32, i32* %11, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %106
  %110 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %111 = call i64 @capable(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  store i32 1, i32* %4, align 4
  br label %116

114:                                              ; preds = %109, %106
  %115 = load i32, i32* %11, align 4
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %114, %113, %28, %19
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local %struct.uart_port* @uart_port_check(%struct.uart_state*) #1

declare dso_local i32 @uart_change_pm(%struct.uart_state*, i32) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @uart_port_lock(%struct.uart_state*, i64) #1

declare dso_local i32 @uart_circ_clear(%struct.TYPE_8__*) #1

declare dso_local i32 @uart_port_unlock(%struct.uart_port*, i64) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i64 @uart_console(%struct.uart_port*) #1

declare dso_local i32 @uart_change_speed(%struct.tty_struct*, %struct.uart_state*, i32*) #1

declare dso_local i64 @C_BAUD(%struct.tty_struct*) #1

declare dso_local i32 @uart_port_dtr_rts(%struct.uart_port*, i32) #1

declare dso_local i64 @capable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
