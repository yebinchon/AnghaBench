; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_vr41xx_siu.c_receive_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_vr41xx_siu.c_receive_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@RX_MAX_COUNT = common dso_local global i32 0, align 4
@UART_RX = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i8 0, align 1
@UART_LSR_BI = common dso_local global i32 0, align 4
@UART_LSR_FE = common dso_local global i32 0, align 4
@UART_LSR_PE = common dso_local global i32 0, align 4
@UART_LSR_OE = common dso_local global i32 0, align 4
@TTY_BREAK = common dso_local global i8 0, align 1
@TTY_FRAME = common dso_local global i8 0, align 1
@TTY_PARITY = common dso_local global i8 0, align 1
@UART_LSR = common dso_local global i32 0, align 4
@UART_LSR_DR = common dso_local global i32 0, align 4
@lsr_break_flag = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32*)* @receive_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @receive_chars(%struct.uart_port* %0, i32* %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32, i32* @RX_MAX_COUNT, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  br label %12

12:                                               ; preds = %141, %2
  %13 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %14 = load i32, i32* @UART_RX, align 4
  %15 = call i32 @siu_read(%struct.uart_port* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %17 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 8
  %21 = load i8, i8* @TTY_NORMAL, align 1
  store i8 %21, i8* %7, align 1
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @UART_LSR_BI, align 4
  %24 = load i32, i32* @UART_LSR_FE, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @UART_LSR_PE, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @UART_LSR_OE, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %22, %29
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %115

33:                                               ; preds = %12
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @UART_LSR_BI, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %33
  %39 = load i32, i32* @UART_LSR_FE, align 4
  %40 = load i32, i32* @UART_LSR_PE, align 4
  %41 = or i32 %39, %40
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %5, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %5, align 4
  %45 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %46 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %51 = call i64 @uart_handle_break(%struct.uart_port* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %38
  br label %128

54:                                               ; preds = %38
  br label %55

55:                                               ; preds = %54, %33
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @UART_LSR_FE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %62 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %60, %55
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @UART_LSR_PE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %73 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %71, %66
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @UART_LSR_OE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %84 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 8
  br label %88

88:                                               ; preds = %82, %77
  %89 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %90 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = and i32 %92, %91
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @UART_LSR_BI, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %88
  %99 = load i8, i8* @TTY_BREAK, align 1
  store i8 %99, i8* %7, align 1
  br label %100

100:                                              ; preds = %98, %88
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @UART_LSR_FE, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = load i8, i8* @TTY_FRAME, align 1
  store i8 %106, i8* %7, align 1
  br label %107

107:                                              ; preds = %105, %100
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* @UART_LSR_PE, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = load i8, i8* @TTY_PARITY, align 1
  store i8 %113, i8* %7, align 1
  br label %114

114:                                              ; preds = %112, %107
  br label %115

115:                                              ; preds = %114, %12
  %116 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %117 = load i32, i32* %6, align 4
  %118 = call i64 @uart_handle_sysrq_char(%struct.uart_port* %116, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  br label %128

121:                                              ; preds = %115
  %122 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* @UART_LSR_OE, align 4
  %125 = load i32, i32* %6, align 4
  %126 = load i8, i8* %7, align 1
  %127 = call i32 @uart_insert_char(%struct.uart_port* %122, i32 %123, i32 %124, i32 %125, i8 signext %126)
  br label %128

128:                                              ; preds = %121, %120, %53
  %129 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %130 = load i32, i32* @UART_LSR, align 4
  %131 = call i32 @siu_read(%struct.uart_port* %129, i32 %130)
  store i32 %131, i32* %5, align 4
  br label %132

132:                                              ; preds = %128
  %133 = load i32, i32* %5, align 4
  %134 = load i32, i32* @UART_LSR_DR, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %132
  %138 = load i32, i32* %8, align 4
  %139 = add nsw i32 %138, -1
  store i32 %139, i32* %8, align 4
  %140 = icmp sgt i32 %138, 0
  br label %141

141:                                              ; preds = %137, %132
  %142 = phi i1 [ false, %132 ], [ %140, %137 ]
  br i1 %142, label %12, label %143

143:                                              ; preds = %141
  %144 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %145 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %144, i32 0, i32 2
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = call i32 @tty_flip_buffer_push(i32* %147)
  %149 = load i32, i32* %5, align 4
  %150 = load i32*, i32** %4, align 8
  store i32 %149, i32* %150, align 4
  ret void
}

declare dso_local i32 @siu_read(%struct.uart_port*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @uart_handle_break(%struct.uart_port*) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.uart_port*, i32) #1

declare dso_local i32 @uart_insert_char(%struct.uart_port*, i32, i32, i32, i8 signext) #1

declare dso_local i32 @tty_flip_buffer_push(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
