; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_meson_uart.c_meson_receive_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_meson_uart.c_meson_receive_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32, %struct.TYPE_4__, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.tty_port }
%struct.tty_port = type { i32 }

@TTY_NORMAL = common dso_local global i8 0, align 1
@AML_UART_STATUS = common dso_local global i64 0, align 8
@AML_UART_ERR = common dso_local global i32 0, align 4
@AML_UART_TX_FIFO_WERR = common dso_local global i32 0, align 4
@AML_UART_FRAME_ERR = common dso_local global i32 0, align 4
@AML_UART_PARITY_ERR = common dso_local global i32 0, align 4
@AML_UART_CONTROL = common dso_local global i64 0, align 8
@AML_UART_CLEAR_ERR = common dso_local global i32 0, align 4
@TTY_FRAME = common dso_local global i8 0, align 1
@TTY_PARITY = common dso_local global i8 0, align 1
@AML_UART_RFIFO = common dso_local global i64 0, align 8
@TTY_BREAK = common dso_local global i8 0, align 1
@TTY_OVERRUN = common dso_local global i8 0, align 1
@AML_UART_RX_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @meson_receive_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_receive_chars(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.tty_port*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %10 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %9, i32 0, i32 5
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.tty_port* %12, %struct.tty_port** %3, align 8
  br label %13

13:                                               ; preds = %169, %1
  %14 = load i8, i8* @TTY_NORMAL, align 1
  store i8 %14, i8* %4, align 1
  %15 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %16 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  %20 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %21 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @AML_UART_STATUS, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @readl(i64 %24)
  store i32 %25, i32* %6, align 4
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @AML_UART_ERR, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %113

30:                                               ; preds = %13
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @AML_UART_TX_FIFO_WERR, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %37 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  br label %65

41:                                               ; preds = %30
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @AML_UART_FRAME_ERR, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %48 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  br label %64

52:                                               ; preds = %41
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @AML_UART_PARITY_ERR, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %59 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %57, %52
  br label %64

64:                                               ; preds = %63, %46
  br label %65

65:                                               ; preds = %64, %35
  %66 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %67 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @AML_UART_CONTROL, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @readl(i64 %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* @AML_UART_CLEAR_ERR, align 4
  %73 = load i32, i32* %8, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %77 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @AML_UART_CONTROL, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @writel(i32 %75, i64 %80)
  %82 = load i32, i32* @AML_UART_CLEAR_ERR, align 4
  %83 = xor i32 %82, -1
  %84 = load i32, i32* %8, align 4
  %85 = and i32 %84, %83
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %88 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %87, i32 0, i32 4
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @AML_UART_CONTROL, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @writel(i32 %86, i64 %91)
  %93 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %94 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @AML_UART_FRAME_ERR, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %65
  %103 = load i8, i8* @TTY_FRAME, align 1
  store i8 %103, i8* %4, align 1
  br label %112

104:                                              ; preds = %65
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @AML_UART_PARITY_ERR, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = load i8, i8* @TTY_PARITY, align 1
  store i8 %110, i8* %4, align 1
  br label %111

111:                                              ; preds = %109, %104
  br label %112

112:                                              ; preds = %111, %102
  br label %113

113:                                              ; preds = %112, %13
  %114 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %115 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @AML_UART_RFIFO, align 8
  %118 = add nsw i64 %116, %117
  %119 = call i32 @readl(i64 %118)
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %7, align 4
  %121 = and i32 %120, 255
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* @AML_UART_FRAME_ERR, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %141

126:                                              ; preds = %113
  %127 = load i32, i32* %7, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %141

129:                                              ; preds = %126
  %130 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %131 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 4
  %135 = load i8, i8* @TTY_BREAK, align 1
  store i8 %135, i8* %4, align 1
  %136 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %137 = call i64 @uart_handle_break(%struct.uart_port* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %129
  br label %169

140:                                              ; preds = %129
  br label %141

141:                                              ; preds = %140, %126, %113
  %142 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %143 = load i32, i32* %7, align 4
  %144 = call i64 @uart_handle_sysrq_char(%struct.uart_port* %142, i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %141
  br label %169

147:                                              ; preds = %141
  %148 = load i32, i32* %6, align 4
  %149 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %150 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = and i32 %148, %151
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %147
  %155 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %156 = load i32, i32* %7, align 4
  %157 = load i8, i8* %4, align 1
  %158 = call i32 @tty_insert_flip_char(%struct.tty_port* %155, i32 %156, i8 signext %157)
  br label %159

159:                                              ; preds = %154, %147
  %160 = load i32, i32* %6, align 4
  %161 = load i32, i32* @AML_UART_TX_FIFO_WERR, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %159
  %165 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %166 = load i8, i8* @TTY_OVERRUN, align 1
  %167 = call i32 @tty_insert_flip_char(%struct.tty_port* %165, i32 0, i8 signext %166)
  br label %168

168:                                              ; preds = %164, %159
  br label %169

169:                                              ; preds = %168, %146, %139
  %170 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %171 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %170, i32 0, i32 4
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @AML_UART_STATUS, align 8
  %174 = add nsw i64 %172, %173
  %175 = call i32 @readl(i64 %174)
  %176 = load i32, i32* @AML_UART_RX_EMPTY, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  %179 = xor i1 %178, true
  br i1 %179, label %13, label %180

180:                                              ; preds = %169
  %181 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %182 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %181, i32 0, i32 2
  %183 = call i32 @spin_unlock(i32* %182)
  %184 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %185 = call i32 @tty_flip_buffer_push(%struct.tty_port* %184)
  %186 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %187 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %186, i32 0, i32 2
  %188 = call i32 @spin_lock(i32* %187)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @uart_handle_break(%struct.uart_port*) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.uart_port*, i32) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_port*, i32, i8 signext) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_port*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
