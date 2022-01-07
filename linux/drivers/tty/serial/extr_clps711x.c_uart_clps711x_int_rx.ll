; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_clps711x.c_uart_clps711x_int_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_clps711x.c_uart_clps711x_int_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__, i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.clps711x_port = type { i32 }

@SYSFLG_OFFSET = common dso_local global i32 0, align 4
@SYSFLG_URXFE = common dso_local global i32 0, align 4
@UARTDR_OFFSET = common dso_local global i64 0, align 8
@UARTDR_FRMERR = common dso_local global i32 0, align 4
@UARTDR_PARERR = common dso_local global i32 0, align 4
@UARTDR_OVERR = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i32 0, align 4
@TTY_PARITY = common dso_local global i32 0, align 4
@TTY_FRAME = common dso_local global i32 0, align 4
@TTY_OVERRUN = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @uart_clps711x_int_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_clps711x_int_rx(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.uart_port*, align 8
  %6 = alloca %struct.clps711x_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.uart_port*
  store %struct.uart_port* %12, %struct.uart_port** %5, align 8
  %13 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %14 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.clps711x_port* @dev_get_drvdata(i32 %15)
  store %struct.clps711x_port* %16, %struct.clps711x_port** %6, align 8
  br label %17

17:                                               ; preds = %131, %130, %122, %2
  store i32 0, i32* %10, align 4
  %18 = load %struct.clps711x_port*, %struct.clps711x_port** %6, align 8
  %19 = getelementptr inbounds %struct.clps711x_port, %struct.clps711x_port* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @SYSFLG_OFFSET, align 4
  %22 = call i32 @regmap_read(i32 %20, i32 %21, i32* %10)
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @SYSFLG_URXFE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  br label %138

28:                                               ; preds = %17
  %29 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %30 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @UARTDR_OFFSET, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @readw(i64 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @UARTDR_FRMERR, align 4
  %37 = load i32, i32* @UARTDR_PARERR, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @UARTDR_OVERR, align 4
  %40 = or i32 %38, %39
  %41 = and i32 %35, %40
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %9, align 4
  %43 = and i32 %42, 255
  store i32 %43, i32* %9, align 4
  %44 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %45 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* @TTY_NORMAL, align 4
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %117

53:                                               ; preds = %28
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @UARTDR_PARERR, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %60 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  br label %88

64:                                               ; preds = %53
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @UARTDR_FRMERR, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %71 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  br label %87

75:                                               ; preds = %64
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @UARTDR_OVERR, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %82 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 8
  br label %86

86:                                               ; preds = %80, %75
  br label %87

87:                                               ; preds = %86, %69
  br label %88

88:                                               ; preds = %87, %58
  %89 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %90 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = and i32 %92, %91
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @UARTDR_PARERR, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %88
  %99 = load i32, i32* @TTY_PARITY, align 4
  store i32 %99, i32* %8, align 4
  br label %116

100:                                              ; preds = %88
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @UARTDR_FRMERR, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = load i32, i32* @TTY_FRAME, align 4
  store i32 %106, i32* %8, align 4
  br label %115

107:                                              ; preds = %100
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @UARTDR_OVERR, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = load i32, i32* @TTY_OVERRUN, align 4
  store i32 %113, i32* %8, align 4
  br label %114

114:                                              ; preds = %112, %107
  br label %115

115:                                              ; preds = %114, %105
  br label %116

116:                                              ; preds = %115, %98
  br label %117

117:                                              ; preds = %116, %28
  %118 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %119 = load i32, i32* %9, align 4
  %120 = call i64 @uart_handle_sysrq_char(%struct.uart_port* %118, i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  br label %17

123:                                              ; preds = %117
  %124 = load i32, i32* %7, align 4
  %125 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %126 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %124, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %123
  br label %17

131:                                              ; preds = %123
  %132 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* @UARTDR_OVERR, align 4
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* %8, align 4
  %137 = call i32 @uart_insert_char(%struct.uart_port* %132, i32 %133, i32 %134, i32 %135, i32 %136)
  br label %17

138:                                              ; preds = %27
  %139 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %140 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %139, i32 0, i32 2
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = call i32 @tty_flip_buffer_push(i32* %142)
  %144 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %144
}

declare dso_local %struct.clps711x_port* @dev_get_drvdata(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @readw(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.uart_port*, i32) #1

declare dso_local i32 @uart_insert_char(%struct.uart_port*, i32, i32, i32, i32) #1

declare dso_local i32 @tty_flip_buffer_push(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
