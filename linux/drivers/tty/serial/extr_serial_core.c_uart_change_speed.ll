; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_change_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_change_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.ktermios }
%struct.ktermios = type { i32 }
%struct.uart_state = type { i32 }
%struct.uart_port = type { i64, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)*, i32 (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* }

@PORT_UNKNOWN = common dso_local global i64 0, align 8
@CRTSCTS = common dso_local global i32 0, align 4
@UPSTAT_CTS_ENABLE = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@UPSTAT_DCD_ENABLE = common dso_local global i32 0, align 4
@TIOCM_CTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.uart_state*, %struct.ktermios*)* @uart_change_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uart_change_speed(%struct.tty_struct* %0, %struct.uart_state* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.uart_state*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca %struct.uart_port*, align 8
  %8 = alloca %struct.ktermios*, align 8
  %9 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.uart_state* %1, %struct.uart_state** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %10 = load %struct.uart_state*, %struct.uart_state** %5, align 8
  %11 = call %struct.uart_port* @uart_port_check(%struct.uart_state* %10)
  store %struct.uart_port* %11, %struct.uart_port** %7, align 8
  %12 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %13 = icmp ne %struct.tty_struct* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %16 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PORT_UNKNOWN, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %3
  br label %126

21:                                               ; preds = %14
  %22 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %23 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %22, i32 0, i32 0
  store %struct.ktermios* %23, %struct.ktermios** %8, align 8
  %24 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %25 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %24, i32 0, i32 3
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32 (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)*, i32 (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)** %27, align 8
  %29 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %30 = load %struct.ktermios*, %struct.ktermios** %8, align 8
  %31 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %32 = call i32 %28(%struct.uart_port* %29, %struct.ktermios* %30, %struct.ktermios* %31)
  %33 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %34 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %33, i32 0, i32 2
  %35 = call i32 @spin_lock_irq(i32* %34)
  %36 = load %struct.ktermios*, %struct.ktermios** %8, align 8
  %37 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @CRTSCTS, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %21
  %43 = load i32, i32* @UPSTAT_CTS_ENABLE, align 4
  %44 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %45 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  br label %55

48:                                               ; preds = %21
  %49 = load i32, i32* @UPSTAT_CTS_ENABLE, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %52 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %48, %42
  %56 = load %struct.ktermios*, %struct.ktermios** %8, align 8
  %57 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @CLOCAL, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %55
  %63 = load i32, i32* @UPSTAT_DCD_ENABLE, align 4
  %64 = xor i32 %63, -1
  %65 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %66 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = and i32 %67, %64
  store i32 %68, i32* %66, align 8
  br label %75

69:                                               ; preds = %55
  %70 = load i32, i32* @UPSTAT_DCD_ENABLE, align 4
  %71 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %72 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 8
  br label %75

75:                                               ; preds = %69, %62
  %76 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %77 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %9, align 4
  %79 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %80 = call i64 @uart_softcts_mode(%struct.uart_port* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %75
  %83 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %84 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %83, i32 0, i32 3
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)** %86, align 8
  %88 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %89 = call i32 %87(%struct.uart_port* %88)
  %90 = load i32, i32* @TIOCM_CTS, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  br label %94

94:                                               ; preds = %82, %75
  %95 = phi i1 [ false, %75 ], [ %93, %82 ]
  %96 = zext i1 %95 to i32
  %97 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %98 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 8
  %99 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %100 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %94
  %104 = load i32, i32* %9, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %114, label %106

106:                                              ; preds = %103
  %107 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %108 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %107, i32 0, i32 3
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  %111 = load i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)** %110, align 8
  %112 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %113 = call i32 %111(%struct.uart_port* %112)
  br label %114

114:                                              ; preds = %106, %103
  br label %122

115:                                              ; preds = %94
  %116 = load i32, i32* %9, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %120 = call i32 @__uart_start(%struct.tty_struct* %119)
  br label %121

121:                                              ; preds = %118, %115
  br label %122

122:                                              ; preds = %121, %114
  %123 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %124 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %123, i32 0, i32 2
  %125 = call i32 @spin_unlock_irq(i32* %124)
  br label %126

126:                                              ; preds = %122, %20
  ret void
}

declare dso_local %struct.uart_port* @uart_port_check(%struct.uart_state*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @uart_softcts_mode(%struct.uart_port*) #1

declare dso_local i32 @__uart_start(%struct.tty_struct*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
