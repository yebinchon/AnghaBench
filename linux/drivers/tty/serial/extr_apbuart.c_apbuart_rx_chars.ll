; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_apbuart.c_apbuart_rx_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_apbuart.c_apbuart_rx_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@TTY_NORMAL = common dso_local global i32 0, align 4
@UART_DUMMY_RSR_RX = common dso_local global i32 0, align 4
@UART_STATUS_ERR = common dso_local global i32 0, align 4
@UART_STATUS_BR = common dso_local global i32 0, align 4
@UART_STATUS_FE = common dso_local global i32 0, align 4
@UART_STATUS_PE = common dso_local global i32 0, align 4
@UART_STATUS_OE = common dso_local global i32 0, align 4
@TTY_PARITY = common dso_local global i32 0, align 4
@TTY_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @apbuart_rx_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apbuart_rx_chars(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %8 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %9 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %7, align 4
  %11 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %12 = call i32 @UART_GET_STATUS(%struct.uart_port* %11)
  store i32 %12, i32* %3, align 4
  br label %13

13:                                               ; preds = %133, %1
  %14 = load i32, i32* %3, align 4
  %15 = call i64 @UART_RX_DATA(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i32, i32* %7, align 4
  %19 = add i32 %18, -1
  store i32 %19, i32* %7, align 4
  %20 = icmp ne i32 %18, 0
  br label %21

21:                                               ; preds = %17, %13
  %22 = phi i1 [ false, %13 ], [ %20, %17 ]
  br i1 %22, label %23, label %136

23:                                               ; preds = %21
  %24 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %25 = call i32 @UART_GET_CHAR(%struct.uart_port* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* @TTY_NORMAL, align 4
  store i32 %26, i32* %6, align 4
  %27 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %28 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 8
  %32 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %33 = call i32 @UART_GET_STATUS(%struct.uart_port* %32)
  %34 = load i32, i32* @UART_DUMMY_RSR_RX, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %5, align 4
  %36 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %37 = call i32 @UART_PUT_STATUS(%struct.uart_port* %36, i32 0)
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @UART_STATUS_ERR, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %120

42:                                               ; preds = %23
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @UART_STATUS_BR, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %42
  %48 = load i32, i32* @UART_STATUS_FE, align 4
  %49 = load i32, i32* @UART_STATUS_PE, align 4
  %50 = or i32 %48, %49
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %5, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %5, align 4
  %54 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %55 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  %59 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %60 = call i64 @uart_handle_break(%struct.uart_port* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %47
  br label %133

63:                                               ; preds = %47
  br label %88

64:                                               ; preds = %42
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @UART_STATUS_PE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %71 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 8
  br label %87

75:                                               ; preds = %64
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @UART_STATUS_FE, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %82 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %80, %75
  br label %87

87:                                               ; preds = %86, %69
  br label %88

88:                                               ; preds = %87, %63
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @UART_STATUS_OE, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %95 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 8
  br label %99

99:                                               ; preds = %93, %88
  %100 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %101 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %5, align 4
  %104 = and i32 %103, %102
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @UART_STATUS_PE, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %99
  %110 = load i32, i32* @TTY_PARITY, align 4
  store i32 %110, i32* %6, align 4
  br label %119

111:                                              ; preds = %99
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* @UART_STATUS_FE, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = load i32, i32* @TTY_FRAME, align 4
  store i32 %117, i32* %6, align 4
  br label %118

118:                                              ; preds = %116, %111
  br label %119

119:                                              ; preds = %118, %109
  br label %120

120:                                              ; preds = %119, %23
  %121 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %122 = load i32, i32* %4, align 4
  %123 = call i64 @uart_handle_sysrq_char(%struct.uart_port* %121, i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  br label %133

126:                                              ; preds = %120
  %127 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* @UART_STATUS_OE, align 4
  %130 = load i32, i32* %4, align 4
  %131 = load i32, i32* %6, align 4
  %132 = call i32 @uart_insert_char(%struct.uart_port* %127, i32 %128, i32 %129, i32 %130, i32 %131)
  br label %133

133:                                              ; preds = %126, %125, %62
  %134 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %135 = call i32 @UART_GET_STATUS(%struct.uart_port* %134)
  store i32 %135, i32* %3, align 4
  br label %13

136:                                              ; preds = %21
  %137 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %138 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %137, i32 0, i32 2
  %139 = call i32 @spin_unlock(i32* %138)
  %140 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %141 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %140, i32 0, i32 3
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = call i32 @tty_flip_buffer_push(i32* %143)
  %145 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %146 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %145, i32 0, i32 2
  %147 = call i32 @spin_lock(i32* %146)
  ret void
}

declare dso_local i32 @UART_GET_STATUS(%struct.uart_port*) #1

declare dso_local i64 @UART_RX_DATA(i32) #1

declare dso_local i32 @UART_GET_CHAR(%struct.uart_port*) #1

declare dso_local i32 @UART_PUT_STATUS(%struct.uart_port*, i32) #1

declare dso_local i64 @uart_handle_break(%struct.uart_port*) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.uart_port*, i32) #1

declare dso_local i32 @uart_insert_char(%struct.uart_port*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @tty_flip_buffer_push(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
