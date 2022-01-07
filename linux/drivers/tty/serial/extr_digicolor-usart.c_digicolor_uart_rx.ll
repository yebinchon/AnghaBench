; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_digicolor-usart.c_digicolor_uart_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_digicolor-usart.c_digicolor_uart_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@UA_EMI_REC = common dso_local global i64 0, align 8
@UA_STATUS = common dso_local global i64 0, align 8
@TTY_NORMAL = common dso_local global i32 0, align 4
@UA_STATUS_PARITY_ERR = common dso_local global i32 0, align 4
@UA_STATUS_FRAME_ERR = common dso_local global i32 0, align 4
@UA_STATUS_OVERRUN_ERR = common dso_local global i32 0, align 4
@TTY_PARITY = common dso_local global i32 0, align 4
@TTY_FRAME = common dso_local global i32 0, align 4
@TTY_OVERRUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @digicolor_uart_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @digicolor_uart_rx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %8 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %7, i32 0, i32 3
  %9 = load i64, i64* %3, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  br label %11

11:                                               ; preds = %1, %108, %109
  %12 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %13 = call i64 @digicolor_uart_rx_empty(%struct.uart_port* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %116

16:                                               ; preds = %11
  %17 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %18 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @UA_EMI_REC, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @readb_relaxed(i64 %21)
  store i32 %22, i32* %5, align 4
  %23 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %24 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @UA_STATUS, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @readb_relaxed(i64 %27)
  store i32 %28, i32* %4, align 4
  %29 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %30 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = load i32, i32* @TTY_NORMAL, align 4
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %101

37:                                               ; preds = %16
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @UA_STATUS_PARITY_ERR, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %44 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  br label %72

48:                                               ; preds = %37
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @UA_STATUS_FRAME_ERR, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %55 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  br label %71

59:                                               ; preds = %48
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @UA_STATUS_OVERRUN_ERR, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %66 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %64, %59
  br label %71

71:                                               ; preds = %70, %53
  br label %72

72:                                               ; preds = %71, %42
  %73 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %74 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %4, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @UA_STATUS_PARITY_ERR, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %72
  %83 = load i32, i32* @TTY_PARITY, align 4
  store i32 %83, i32* %6, align 4
  br label %100

84:                                               ; preds = %72
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @UA_STATUS_FRAME_ERR, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = load i32, i32* @TTY_FRAME, align 4
  store i32 %90, i32* %6, align 4
  br label %99

91:                                               ; preds = %84
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @UA_STATUS_OVERRUN_ERR, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i32, i32* @TTY_OVERRUN, align 4
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %96, %91
  br label %99

99:                                               ; preds = %98, %89
  br label %100

100:                                              ; preds = %99, %82
  br label %101

101:                                              ; preds = %100, %16
  %102 = load i32, i32* %4, align 4
  %103 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %104 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %102, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %101
  br label %11

109:                                              ; preds = %101
  %110 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* @UA_STATUS_OVERRUN_ERR, align 4
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @uart_insert_char(%struct.uart_port* %110, i32 %111, i32 %112, i32 %113, i32 %114)
  br label %11

116:                                              ; preds = %15
  %117 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %118 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %117, i32 0, i32 3
  %119 = load i64, i64* %3, align 8
  %120 = call i32 @spin_unlock_irqrestore(i32* %118, i64 %119)
  %121 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %122 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %121, i32 0, i32 2
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = call i32 @tty_flip_buffer_push(i32* %124)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @digicolor_uart_rx_empty(%struct.uart_port*) #1

declare dso_local i32 @readb_relaxed(i64) #1

declare dso_local i32 @uart_insert_char(%struct.uart_port*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tty_flip_buffer_push(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
