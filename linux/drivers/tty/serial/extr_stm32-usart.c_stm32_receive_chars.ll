; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_stm32-usart.c_stm32_receive_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_stm32-usart.c_stm32_receive_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, %struct.TYPE_8__, i32, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.tty_port }
%struct.tty_port = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.stm32_port = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.stm32_usart_offsets }
%struct.stm32_usart_offsets = type { i64 }

@USART_SR_DUMMY_RX = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i8 0, align 1
@USART_SR_ERR_MASK = common dso_local global i32 0, align 4
@UNDEF_REG = common dso_local global i64 0, align 8
@USART_ICR_ORECF = common dso_local global i32 0, align 4
@USART_ICR_PECF = common dso_local global i32 0, align 4
@USART_ICR_FECF = common dso_local global i32 0, align 4
@USART_SR_ORE = common dso_local global i32 0, align 4
@USART_SR_PE = common dso_local global i32 0, align 4
@USART_SR_FE = common dso_local global i32 0, align 4
@TTY_PARITY = common dso_local global i8 0, align 1
@TTY_BREAK = common dso_local global i8 0, align 1
@TTY_FRAME = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @stm32_receive_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_receive_chars(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_port*, align 8
  %6 = alloca %struct.stm32_port*, align 8
  %7 = alloca %struct.stm32_usart_offsets*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %12 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %11, i32 0, i32 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store %struct.tty_port* %14, %struct.tty_port** %5, align 8
  %15 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %16 = call %struct.stm32_port* @to_stm32_port(%struct.uart_port* %15)
  store %struct.stm32_port* %16, %struct.stm32_port** %6, align 8
  %17 = load %struct.stm32_port*, %struct.stm32_port** %6, align 8
  %18 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store %struct.stm32_usart_offsets* %20, %struct.stm32_usart_offsets** %7, align 8
  %21 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %22 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @irq_get_irq_data(i32 %23)
  %25 = call i64 @irqd_is_wakeup_set(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %2
  %28 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %29 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @pm_wakeup_event(i32 %32, i32 0)
  br label %34

34:                                               ; preds = %27, %2
  br label %35

35:                                               ; preds = %165, %164, %121, %34
  %36 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %37 = load %struct.stm32_port*, %struct.stm32_port** %6, align 8
  %38 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %37, i32 0, i32 0
  %39 = load i32, i32* %4, align 4
  %40 = call i64 @stm32_pending_rx(%struct.uart_port* %36, i32* %9, i32* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %172

42:                                               ; preds = %35
  %43 = load i32, i32* @USART_SR_DUMMY_RX, align 4
  %44 = load i32, i32* %9, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %9, align 4
  %46 = load i8, i8* @TTY_NORMAL, align 1
  store i8 %46, i8* %10, align 1
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @USART_SR_ERR_MASK, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %42
  %52 = load %struct.stm32_usart_offsets*, %struct.stm32_usart_offsets** %7, align 8
  %53 = getelementptr inbounds %struct.stm32_usart_offsets, %struct.stm32_usart_offsets* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @UNDEF_REG, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %51
  %58 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %59 = load %struct.stm32_usart_offsets*, %struct.stm32_usart_offsets** %7, align 8
  %60 = getelementptr inbounds %struct.stm32_usart_offsets, %struct.stm32_usart_offsets* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* @USART_ICR_ORECF, align 4
  %63 = load i32, i32* @USART_ICR_PECF, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @USART_ICR_FECF, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @stm32_clr_bits(%struct.uart_port* %58, i64 %61, i32 %66)
  br label %68

68:                                               ; preds = %57, %51, %42
  %69 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %70 = load %struct.stm32_port*, %struct.stm32_port** %6, align 8
  %71 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %70, i32 0, i32 0
  %72 = call i64 @stm32_get_char(%struct.uart_port* %69, i32* %9, i32* %71)
  store i64 %72, i64* %8, align 8
  %73 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %74 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @USART_SR_ERR_MASK, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %159

82:                                               ; preds = %68
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @USART_SR_ORE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %89 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  br label %132

93:                                               ; preds = %82
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @USART_SR_PE, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %93
  %99 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %100 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 8
  br label %131

104:                                              ; preds = %93
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* @USART_SR_FE, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %130

109:                                              ; preds = %104
  %110 = load i64, i64* %8, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %123, label %112

112:                                              ; preds = %109
  %113 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %114 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 4
  %118 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %119 = call i64 @uart_handle_break(%struct.uart_port* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %112
  br label %35

122:                                              ; preds = %112
  br label %129

123:                                              ; preds = %109
  %124 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %125 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 8
  br label %129

129:                                              ; preds = %123, %122
  br label %130

130:                                              ; preds = %129, %104
  br label %131

131:                                              ; preds = %130, %98
  br label %132

132:                                              ; preds = %131, %87
  %133 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %134 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* %9, align 4
  %137 = and i32 %136, %135
  store i32 %137, i32* %9, align 4
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* @USART_SR_PE, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %132
  %143 = load i8, i8* @TTY_PARITY, align 1
  store i8 %143, i8* %10, align 1
  br label %158

144:                                              ; preds = %132
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* @USART_SR_FE, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %157

149:                                              ; preds = %144
  %150 = load i64, i64* %8, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %154, label %152

152:                                              ; preds = %149
  %153 = load i8, i8* @TTY_BREAK, align 1
  store i8 %153, i8* %10, align 1
  br label %156

154:                                              ; preds = %149
  %155 = load i8, i8* @TTY_FRAME, align 1
  store i8 %155, i8* %10, align 1
  br label %156

156:                                              ; preds = %154, %152
  br label %157

157:                                              ; preds = %156, %144
  br label %158

158:                                              ; preds = %157, %142
  br label %159

159:                                              ; preds = %158, %68
  %160 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %161 = load i64, i64* %8, align 8
  %162 = call i64 @uart_handle_sysrq_char(%struct.uart_port* %160, i64 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %159
  br label %35

165:                                              ; preds = %159
  %166 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* @USART_SR_ORE, align 4
  %169 = load i64, i64* %8, align 8
  %170 = load i8, i8* %10, align 1
  %171 = call i32 @uart_insert_char(%struct.uart_port* %166, i32 %167, i32 %168, i64 %169, i8 signext %170)
  br label %35

172:                                              ; preds = %35
  %173 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %174 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %173, i32 0, i32 1
  %175 = call i32 @spin_unlock(i32* %174)
  %176 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %177 = call i32 @tty_flip_buffer_push(%struct.tty_port* %176)
  %178 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %179 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %178, i32 0, i32 1
  %180 = call i32 @spin_lock(i32* %179)
  ret void
}

declare dso_local %struct.stm32_port* @to_stm32_port(%struct.uart_port*) #1

declare dso_local i64 @irqd_is_wakeup_set(i32) #1

declare dso_local i32 @irq_get_irq_data(i32) #1

declare dso_local i32 @pm_wakeup_event(i32, i32) #1

declare dso_local i64 @stm32_pending_rx(%struct.uart_port*, i32*, i32*, i32) #1

declare dso_local i32 @stm32_clr_bits(%struct.uart_port*, i64, i32) #1

declare dso_local i64 @stm32_get_char(%struct.uart_port*, i32*, i32*) #1

declare dso_local i64 @uart_handle_break(%struct.uart_port*) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.uart_port*, i64) #1

declare dso_local i32 @uart_insert_char(%struct.uart_port*, i32, i32, i64, i8 signext) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_port*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
