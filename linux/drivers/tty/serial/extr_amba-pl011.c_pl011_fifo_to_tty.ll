; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_amba-pl011.c_pl011_fifo_to_tty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_amba-pl011.c_pl011_fifo_to_tty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_amba_port = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }

@REG_FR = common dso_local global i32 0, align 4
@UART01x_FR_RXFE = common dso_local global i32 0, align 4
@REG_DR = common dso_local global i32 0, align 4
@UART_DUMMY_DR_RX = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i32 0, align 4
@UART_DR_ERROR = common dso_local global i32 0, align 4
@UART011_DR_BE = common dso_local global i32 0, align 4
@UART011_DR_FE = common dso_local global i32 0, align 4
@UART011_DR_PE = common dso_local global i32 0, align 4
@UART011_DR_OE = common dso_local global i32 0, align 4
@TTY_BREAK = common dso_local global i32 0, align 4
@TTY_PARITY = common dso_local global i32 0, align 4
@TTY_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_amba_port*)* @pl011_fifo_to_tty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl011_fifo_to_tty(%struct.uart_amba_port* %0) #0 {
  %2 = alloca %struct.uart_amba_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uart_amba_port* %0, %struct.uart_amba_port** %2, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %145, %1
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 256
  br i1 %9, label %10, label %148

10:                                               ; preds = %7
  %11 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %12 = load i32, i32* @REG_FR, align 4
  %13 = call i32 @pl011_read(%struct.uart_amba_port* %11, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @UART01x_FR_RXFE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  br label %148

19:                                               ; preds = %10
  %20 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %21 = load i32, i32* @REG_DR, align 4
  %22 = call i32 @pl011_read(%struct.uart_amba_port* %20, i32 %21)
  %23 = load i32, i32* @UART_DUMMY_DR_RX, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* @TTY_NORMAL, align 4
  store i32 %25, i32* %5, align 4
  %26 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %27 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @UART_DR_ERROR, align 4
  %34 = and i32 %32, %33
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %129

37:                                               ; preds = %19
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @UART011_DR_BE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %61

42:                                               ; preds = %37
  %43 = load i32, i32* @UART011_DR_FE, align 4
  %44 = load i32, i32* @UART011_DR_PE, align 4
  %45 = or i32 %43, %44
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %4, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %4, align 4
  %49 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %50 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  %55 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %56 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %55, i32 0, i32 0
  %57 = call i64 @uart_handle_break(%struct.TYPE_6__* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %42
  br label %145

60:                                               ; preds = %42
  br label %87

61:                                               ; preds = %37
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @UART011_DR_PE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %68 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  br label %86

73:                                               ; preds = %61
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @UART011_DR_FE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %73
  %79 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %80 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %78, %73
  br label %86

86:                                               ; preds = %85, %66
  br label %87

87:                                               ; preds = %86, %60
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @UART011_DR_OE, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %87
  %93 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %94 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %92, %87
  %100 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %101 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %4, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %4, align 4
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* @UART011_DR_BE, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %99
  %111 = load i32, i32* @TTY_BREAK, align 4
  store i32 %111, i32* %5, align 4
  br label %128

112:                                              ; preds = %99
  %113 = load i32, i32* %4, align 4
  %114 = load i32, i32* @UART011_DR_PE, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %112
  %118 = load i32, i32* @TTY_PARITY, align 4
  store i32 %118, i32* %5, align 4
  br label %127

119:                                              ; preds = %112
  %120 = load i32, i32* %4, align 4
  %121 = load i32, i32* @UART011_DR_FE, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %119
  %125 = load i32, i32* @TTY_FRAME, align 4
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %124, %119
  br label %127

127:                                              ; preds = %126, %117
  br label %128

128:                                              ; preds = %127, %110
  br label %129

129:                                              ; preds = %128, %19
  %130 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %131 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %130, i32 0, i32 0
  %132 = load i32, i32* %4, align 4
  %133 = and i32 %132, 255
  %134 = call i64 @uart_handle_sysrq_char(%struct.TYPE_6__* %131, i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %129
  br label %145

137:                                              ; preds = %129
  %138 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %139 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %138, i32 0, i32 0
  %140 = load i32, i32* %4, align 4
  %141 = load i32, i32* @UART011_DR_OE, align 4
  %142 = load i32, i32* %4, align 4
  %143 = load i32, i32* %5, align 4
  %144 = call i32 @uart_insert_char(%struct.TYPE_6__* %139, i32 %140, i32 %141, i32 %142, i32 %143)
  br label %145

145:                                              ; preds = %137, %136, %59
  %146 = load i32, i32* %6, align 4
  %147 = add i32 %146, 1
  store i32 %147, i32* %6, align 4
  br label %7

148:                                              ; preds = %18, %7
  %149 = load i32, i32* %6, align 4
  ret i32 %149
}

declare dso_local i32 @pl011_read(%struct.uart_amba_port*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @uart_handle_break(%struct.TYPE_6__*) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @uart_insert_char(%struct.TYPE_6__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
