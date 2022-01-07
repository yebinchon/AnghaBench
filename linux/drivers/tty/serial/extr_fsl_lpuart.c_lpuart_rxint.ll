; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_fsl_lpuart.c_lpuart_rxint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_fsl_lpuart.c_lpuart_rxint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpuart_port = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8, i8, i32, i64, %struct.TYPE_5__, i64, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.tty_port }
%struct.tty_port = type { i32 }

@UARTSFIFO = common dso_local global i64 0, align 8
@UARTSFIFO_RXEMPT = common dso_local global i8 0, align 1
@TTY_NORMAL = common dso_local global i32 0, align 4
@UARTSR1 = common dso_local global i64 0, align 8
@UARTDR = common dso_local global i64 0, align 8
@UARTSR1_PE = common dso_local global i8 0, align 1
@UARTSR1_OR = common dso_local global i8 0, align 1
@UARTSR1_FE = common dso_local global i8 0, align 1
@TTY_PARITY = common dso_local global i32 0, align 4
@TTY_FRAME = common dso_local global i32 0, align 4
@TTY_OVERRUN = common dso_local global i32 0, align 4
@UARTCFIFO_RXFLUSH = common dso_local global i32 0, align 4
@UARTCFIFO = common dso_local global i64 0, align 8
@UARTSFIFO_RXOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpuart_port*)* @lpuart_rxint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpuart_rxint(%struct.lpuart_port* %0) #0 {
  %2 = alloca %struct.lpuart_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.tty_port*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store %struct.lpuart_port* %0, %struct.lpuart_port** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %10 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %11 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 6
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.tty_port* %14, %struct.tty_port** %6, align 8
  %15 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %16 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  br label %20

20:                                               ; preds = %168, %129, %61, %1
  %21 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %22 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @UARTSFIFO, align 8
  %26 = add nsw i64 %24, %25
  %27 = call zeroext i8 @readb(i64 %26)
  %28 = zext i8 %27 to i32
  %29 = load i8, i8* @UARTSFIFO_RXEMPT, align 1
  %30 = zext i8 %29 to i32
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br i1 %33, label %34, label %173

34:                                               ; preds = %20
  %35 = load i32, i32* @TTY_NORMAL, align 4
  store i32 %35, i32* %3, align 4
  %36 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %37 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  %42 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %43 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @UARTSR1, align 8
  %47 = add nsw i64 %45, %46
  %48 = call zeroext i8 @readb(i64 %47)
  store i8 %48, i8* %9, align 1
  %49 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %50 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @UARTDR, align 8
  %54 = add nsw i64 %52, %53
  %55 = call zeroext i8 @readb(i64 %54)
  store i8 %55, i8* %8, align 1
  %56 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %57 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %56, i32 0, i32 0
  %58 = load i8, i8* %8, align 1
  %59 = call i64 @uart_handle_sysrq_char(%struct.TYPE_6__* %57, i8 zeroext %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %34
  br label %20

62:                                               ; preds = %34
  %63 = load i8, i8* %9, align 1
  %64 = zext i8 %63 to i32
  %65 = load i8, i8* @UARTSR1_PE, align 1
  %66 = zext i8 %65 to i32
  %67 = load i8, i8* @UARTSR1_OR, align 1
  %68 = zext i8 %67 to i32
  %69 = or i32 %66, %68
  %70 = load i8, i8* @UARTSR1_FE, align 1
  %71 = zext i8 %70 to i32
  %72 = or i32 %69, %71
  %73 = and i32 %64, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %168

75:                                               ; preds = %62
  %76 = load i8, i8* %9, align 1
  %77 = zext i8 %76 to i32
  %78 = load i8, i8* @UARTSR1_PE, align 1
  %79 = zext i8 %78 to i32
  %80 = and i32 %77, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %75
  %83 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %84 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 8
  br label %104

89:                                               ; preds = %75
  %90 = load i8, i8* %9, align 1
  %91 = zext i8 %90 to i32
  %92 = load i8, i8* @UARTSR1_FE, align 1
  %93 = zext i8 %92 to i32
  %94 = and i32 %91, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %89
  %97 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %98 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %96, %89
  br label %104

104:                                              ; preds = %103, %82
  %105 = load i8, i8* %9, align 1
  %106 = zext i8 %105 to i32
  %107 = load i8, i8* @UARTSR1_OR, align 1
  %108 = zext i8 %107 to i32
  %109 = and i32 %106, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %104
  %112 = load i32, i32* %5, align 4
  %113 = add i32 %112, 1
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %111, %104
  %115 = load i8, i8* %9, align 1
  %116 = zext i8 %115 to i32
  %117 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %118 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i8, i8* %119, align 8
  %121 = zext i8 %120 to i32
  %122 = and i32 %116, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %114
  %125 = load i32, i32* %4, align 4
  %126 = add i32 %125, 1
  store i32 %126, i32* %4, align 4
  %127 = icmp ugt i32 %126, 100
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  br label %174

129:                                              ; preds = %124
  br label %20

130:                                              ; preds = %114
  %131 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %132 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  %134 = load i8, i8* %133, align 1
  %135 = zext i8 %134 to i32
  %136 = load i8, i8* %9, align 1
  %137 = zext i8 %136 to i32
  %138 = and i32 %137, %135
  %139 = trunc i32 %138 to i8
  store i8 %139, i8* %9, align 1
  %140 = load i8, i8* %9, align 1
  %141 = zext i8 %140 to i32
  %142 = load i8, i8* @UARTSR1_PE, align 1
  %143 = zext i8 %142 to i32
  %144 = and i32 %141, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %130
  %147 = load i32, i32* @TTY_PARITY, align 4
  store i32 %147, i32* %3, align 4
  br label %158

148:                                              ; preds = %130
  %149 = load i8, i8* %9, align 1
  %150 = zext i8 %149 to i32
  %151 = load i8, i8* @UARTSR1_FE, align 1
  %152 = zext i8 %151 to i32
  %153 = and i32 %150, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %148
  %156 = load i32, i32* @TTY_FRAME, align 4
  store i32 %156, i32* %3, align 4
  br label %157

157:                                              ; preds = %155, %148
  br label %158

158:                                              ; preds = %157, %146
  %159 = load i8, i8* %9, align 1
  %160 = zext i8 %159 to i32
  %161 = load i8, i8* @UARTSR1_OR, align 1
  %162 = zext i8 %161 to i32
  %163 = and i32 %160, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %158
  %166 = load i32, i32* @TTY_OVERRUN, align 4
  store i32 %166, i32* %3, align 4
  br label %167

167:                                              ; preds = %165, %158
  br label %168

168:                                              ; preds = %167, %62
  %169 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %170 = load i8, i8* %8, align 1
  %171 = load i32, i32* %3, align 4
  %172 = call i32 @tty_insert_flip_char(%struct.tty_port* %169, i8 zeroext %170, i32 %171)
  br label %20

173:                                              ; preds = %20
  br label %174

174:                                              ; preds = %173, %128
  %175 = load i32, i32* %5, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %201

177:                                              ; preds = %174
  %178 = load i32, i32* %5, align 4
  %179 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %180 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 4
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = add i32 %183, %178
  store i32 %184, i32* %182, align 8
  %185 = load i32, i32* @UARTCFIFO_RXFLUSH, align 4
  %186 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %187 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 3
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @UARTCFIFO, align 8
  %191 = add nsw i64 %189, %190
  %192 = call i32 @writeb(i32 %185, i64 %191)
  %193 = load i32, i32* @UARTSFIFO_RXOF, align 4
  %194 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %195 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 3
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @UARTSFIFO, align 8
  %199 = add nsw i64 %197, %198
  %200 = call i32 @writeb(i32 %193, i64 %199)
  br label %201

201:                                              ; preds = %177, %174
  %202 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %203 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 2
  %205 = load i64, i64* %7, align 8
  %206 = call i32 @spin_unlock_irqrestore(i32* %204, i64 %205)
  %207 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %208 = call i32 @tty_flip_buffer_push(%struct.tty_port* %207)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local zeroext i8 @readb(i64) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.TYPE_6__*, i8 zeroext) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_port*, i8 zeroext, i32) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
