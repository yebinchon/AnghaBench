; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_st-asc.c_asc_receive_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_st-asc.c_asc_receive_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64, %struct.TYPE_6__, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.tty_port }
%struct.tty_port = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@ASC_CTL = common dso_local global i32 0, align 4
@ASC_CTL_MODE_MSK = common dso_local global i64 0, align 8
@ASC_CTL_MODE_8BIT = common dso_local global i64 0, align 8
@ASC_CTL_MODE_8BIT_PAR = common dso_local global i64 0, align 8
@ASC_STA = common dso_local global i32 0, align 4
@ASC_STA_RBF = common dso_local global i64 0, align 8
@ASC_RXBUF = common dso_local global i32 0, align 4
@ASC_RXBUF_DUMMY_RX = common dso_local global i64 0, align 8
@TTY_NORMAL = common dso_local global i8 0, align 1
@ASC_STA_OE = common dso_local global i64 0, align 8
@ASC_RXBUF_FE = common dso_local global i64 0, align 8
@ASC_RXBUF_PE = common dso_local global i64 0, align 8
@ASC_RXBUF_DUMMY_BE = common dso_local global i64 0, align 8
@ASC_RXBUF_DUMMY_OE = common dso_local global i64 0, align 8
@TTY_BREAK = common dso_local global i8 0, align 1
@TTY_PARITY = common dso_local global i8 0, align 1
@TTY_FRAME = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @asc_receive_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asc_receive_chars(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.tty_port*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %10 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %9, i32 0, i32 3
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store %struct.tty_port* %12, %struct.tty_port** %3, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %14 = load i32, i32* @ASC_CTL, align 4
  %15 = call i64 @asc_in(%struct.uart_port* %13, i32 %14)
  %16 = load i64, i64* @ASC_CTL_MODE_MSK, align 8
  %17 = and i64 %15, %16
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @ASC_CTL_MODE_8BIT, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %1
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @ASC_CTL_MODE_8BIT_PAR, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %1
  store i32 1, i32* %8, align 4
  br label %26

26:                                               ; preds = %25, %21
  %27 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %28 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @irq_get_irq_data(i32 %29)
  %31 = call i64 @irqd_is_wakeup_set(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %26
  %34 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %35 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @pm_wakeup_event(i32 %38, i32 0)
  br label %40

40:                                               ; preds = %33, %26
  br label %41

41:                                               ; preds = %171, %170, %97, %40
  %42 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %43 = load i32, i32* @ASC_STA, align 4
  %44 = call i64 @asc_in(%struct.uart_port* %42, i32 %43)
  store i64 %44, i64* %4, align 8
  %45 = load i64, i64* @ASC_STA_RBF, align 8
  %46 = and i64 %44, %45
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %179

48:                                               ; preds = %41
  %49 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %50 = load i32, i32* @ASC_RXBUF, align 4
  %51 = call i64 @asc_in(%struct.uart_port* %49, i32 %50)
  %52 = load i64, i64* @ASC_RXBUF_DUMMY_RX, align 8
  %53 = or i64 %51, %52
  store i64 %53, i64* %6, align 8
  %54 = load i8, i8* @TTY_NORMAL, align 1
  store i8 %54, i8* %7, align 1
  %55 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %56 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  %60 = load i64, i64* %4, align 8
  %61 = load i64, i64* @ASC_STA_OE, align 8
  %62 = and i64 %60, %61
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %77, label %64

64:                                               ; preds = %48
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* @ASC_RXBUF_FE, align 8
  %67 = and i64 %65, %66
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %64
  %70 = load i64, i64* %6, align 8
  %71 = load i64, i64* @ASC_RXBUF_PE, align 8
  %72 = and i64 %70, %71
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %164

74:                                               ; preds = %69
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %164, label %77

77:                                               ; preds = %74, %64, %48
  %78 = load i64, i64* %6, align 8
  %79 = load i64, i64* @ASC_RXBUF_FE, align 8
  %80 = and i64 %78, %79
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %109

82:                                               ; preds = %77
  %83 = load i64, i64* %6, align 8
  %84 = load i64, i64* @ASC_RXBUF_FE, align 8
  %85 = load i64, i64* @ASC_RXBUF_DUMMY_RX, align 8
  %86 = or i64 %84, %85
  %87 = icmp eq i64 %83, %86
  br i1 %87, label %88, label %102

88:                                               ; preds = %82
  %89 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %90 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  %94 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %95 = call i64 @uart_handle_break(%struct.uart_port* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %88
  br label %41

98:                                               ; preds = %88
  %99 = load i64, i64* @ASC_RXBUF_DUMMY_BE, align 8
  %100 = load i64, i64* %6, align 8
  %101 = or i64 %100, %99
  store i64 %101, i64* %6, align 8
  br label %108

102:                                              ; preds = %82
  %103 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %104 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 8
  br label %108

108:                                              ; preds = %102, %98
  br label %121

109:                                              ; preds = %77
  %110 = load i64, i64* %6, align 8
  %111 = load i64, i64* @ASC_RXBUF_PE, align 8
  %112 = and i64 %110, %111
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %109
  %115 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %116 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %114, %109
  br label %121

121:                                              ; preds = %120, %108
  %122 = load i64, i64* %4, align 8
  %123 = load i64, i64* @ASC_STA_OE, align 8
  %124 = and i64 %122, %123
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %121
  %127 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %128 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 8
  %132 = load i64, i64* @ASC_RXBUF_DUMMY_OE, align 8
  %133 = load i64, i64* %6, align 8
  %134 = or i64 %133, %132
  store i64 %134, i64* %6, align 8
  br label %135

135:                                              ; preds = %126, %121
  %136 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %137 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* %6, align 8
  %140 = and i64 %139, %138
  store i64 %140, i64* %6, align 8
  %141 = load i64, i64* %6, align 8
  %142 = load i64, i64* @ASC_RXBUF_DUMMY_BE, align 8
  %143 = and i64 %141, %142
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %135
  %146 = load i8, i8* @TTY_BREAK, align 1
  store i8 %146, i8* %7, align 1
  br label %163

147:                                              ; preds = %135
  %148 = load i64, i64* %6, align 8
  %149 = load i64, i64* @ASC_RXBUF_PE, align 8
  %150 = and i64 %148, %149
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %147
  %153 = load i8, i8* @TTY_PARITY, align 1
  store i8 %153, i8* %7, align 1
  br label %162

154:                                              ; preds = %147
  %155 = load i64, i64* %6, align 8
  %156 = load i64, i64* @ASC_RXBUF_FE, align 8
  %157 = and i64 %155, %156
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %154
  %160 = load i8, i8* @TTY_FRAME, align 1
  store i8 %160, i8* %7, align 1
  br label %161

161:                                              ; preds = %159, %154
  br label %162

162:                                              ; preds = %161, %152
  br label %163

163:                                              ; preds = %162, %145
  br label %164

164:                                              ; preds = %163, %74, %69
  %165 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %166 = load i64, i64* %6, align 8
  %167 = and i64 %166, 255
  %168 = call i64 @uart_handle_sysrq_char(%struct.uart_port* %165, i64 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %164
  br label %41

171:                                              ; preds = %164
  %172 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %173 = load i64, i64* %6, align 8
  %174 = load i64, i64* @ASC_RXBUF_DUMMY_OE, align 8
  %175 = load i64, i64* %6, align 8
  %176 = and i64 %175, 255
  %177 = load i8, i8* %7, align 1
  %178 = call i32 @uart_insert_char(%struct.uart_port* %172, i64 %173, i64 %174, i64 %176, i8 signext %177)
  br label %41

179:                                              ; preds = %41
  %180 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %181 = call i32 @tty_flip_buffer_push(%struct.tty_port* %180)
  ret void
}

declare dso_local i64 @asc_in(%struct.uart_port*, i32) #1

declare dso_local i64 @irqd_is_wakeup_set(i32) #1

declare dso_local i32 @irq_get_irq_data(i32) #1

declare dso_local i32 @pm_wakeup_event(i32, i32) #1

declare dso_local i64 @uart_handle_break(%struct.uart_port*) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.uart_port*, i64) #1

declare dso_local i32 @uart_insert_char(%struct.uart_port*, i64, i64, i64, i8 signext) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
