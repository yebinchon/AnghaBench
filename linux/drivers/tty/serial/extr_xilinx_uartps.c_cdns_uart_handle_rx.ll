; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_xilinx_uartps.c_cdns_uart_handle_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_xilinx_uartps.c_cdns_uart_handle_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__, i64, %struct.cdns_uart* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.cdns_uart = type { i32 }

@TTY_NORMAL = common dso_local global i8 0, align 1
@CDNS_UART_RXBS_SUPPORT = common dso_local global i32 0, align 4
@CDNS_UART_SR = common dso_local global i64 0, align 8
@CDNS_UART_SR_RXEMPTY = common dso_local global i32 0, align 4
@CDNS_UART_RXBS = common dso_local global i64 0, align 8
@CDNS_UART_FIFO = common dso_local global i64 0, align 8
@CDNS_UART_IXR_FRAMING = common dso_local global i32 0, align 4
@CDNS_UART_IXR_BRK = common dso_local global i32 0, align 4
@CDNS_UART_RXBS_BRK = common dso_local global i32 0, align 4
@TTY_BREAK = common dso_local global i8 0, align 1
@CDNS_UART_RXBS_PARITY = common dso_local global i32 0, align 4
@CDNS_UART_IXR_PARITY = common dso_local global i32 0, align 4
@TTY_PARITY = common dso_local global i8 0, align 1
@CDNS_UART_RXBS_FRAMING = common dso_local global i32 0, align 4
@TTY_FRAME = common dso_local global i8 0, align 1
@CDNS_UART_IXR_OVERRUN = common dso_local global i32 0, align 4
@TTY_OVERRUN = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @cdns_uart_handle_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdns_uart_handle_rx(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uart_port*, align 8
  %6 = alloca %struct.cdns_uart*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = bitcast i8* %13 to %struct.uart_port*
  store %struct.uart_port* %14, %struct.uart_port** %5, align 8
  %15 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %16 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %15, i32 0, i32 6
  %17 = load %struct.cdns_uart*, %struct.cdns_uart** %16, align 8
  store %struct.cdns_uart* %17, %struct.cdns_uart** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %18 = load i8, i8* @TTY_NORMAL, align 1
  store i8 %18, i8* %11, align 1
  %19 = load %struct.cdns_uart*, %struct.cdns_uart** %6, align 8
  %20 = getelementptr inbounds %struct.cdns_uart, %struct.cdns_uart* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CDNS_UART_RXBS_SUPPORT, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %12, align 4
  br label %24

24:                                               ; preds = %230, %146, %139, %92, %67, %2
  %25 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %26 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %25, i32 0, i32 5
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @CDNS_UART_SR, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @readl(i64 %29)
  %31 = load i32, i32* @CDNS_UART_SR_RXEMPTY, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @CDNS_UART_SR_RXEMPTY, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %238

35:                                               ; preds = %24
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %40 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @CDNS_UART_RXBS, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @readl(i64 %43)
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %38, %35
  %46 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %47 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %46, i32 0, i32 5
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @CDNS_UART_FIFO, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @readl(i64 %50)
  store i32 %51, i32* %7, align 4
  %52 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %53 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %74, label %59

59:                                               ; preds = %45
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @CDNS_UART_IXR_FRAMING, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %59
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* @CDNS_UART_IXR_BRK, align 4
  %69 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %70 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  store i32 1, i32* %10, align 4
  br label %24

73:                                               ; preds = %64
  br label %74

74:                                               ; preds = %73, %59, %45
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %94

77:                                               ; preds = %74
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @CDNS_UART_RXBS_BRK, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %77
  %83 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %84 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  %88 = load i8, i8* @TTY_BREAK, align 1
  store i8 %88, i8* %11, align 1
  %89 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %90 = call i64 @uart_handle_break(%struct.uart_port* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %82
  br label %24

93:                                               ; preds = %82
  br label %94

94:                                               ; preds = %93, %77, %74
  %95 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %96 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %4, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %4, align 4
  %100 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %101 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = xor i32 %102, -1
  %104 = load i32, i32* %4, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %4, align 4
  %106 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %107 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  store i32 %108, i32* %9, align 4
  %109 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %110 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = xor i32 %111, -1
  %113 = load i32, i32* %9, align 4
  %114 = and i32 %113, %112
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %7, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %141

117:                                              ; preds = %94
  %118 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %119 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @CDNS_UART_IXR_BRK, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %141

124:                                              ; preds = %117
  %125 = load i32, i32* @CDNS_UART_IXR_BRK, align 4
  %126 = xor i32 %125, -1
  %127 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %128 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = and i32 %129, %126
  store i32 %130, i32* %128, align 8
  %131 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %132 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %133, align 4
  %136 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %137 = call i64 @uart_handle_break(%struct.uart_port* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %124
  br label %24

140:                                              ; preds = %124
  br label %141

141:                                              ; preds = %140, %117, %94
  %142 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %143 = load i32, i32* %7, align 4
  %144 = call i64 @uart_handle_sysrq_char(%struct.uart_port* %142, i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %141
  br label %24

147:                                              ; preds = %141
  %148 = load i32, i32* %12, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %185

150:                                              ; preds = %147
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* @CDNS_UART_RXBS_PARITY, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %167

155:                                              ; preds = %150
  %156 = load i32, i32* %9, align 4
  %157 = load i32, i32* @CDNS_UART_IXR_PARITY, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %155
  %161 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %162 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %161, i32 0, i32 4
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %163, align 8
  %166 = load i8, i8* @TTY_PARITY, align 1
  store i8 %166, i8* %11, align 1
  br label %167

167:                                              ; preds = %160, %155, %150
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* @CDNS_UART_RXBS_FRAMING, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %184

172:                                              ; preds = %167
  %173 = load i32, i32* %9, align 4
  %174 = load i32, i32* @CDNS_UART_IXR_PARITY, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %184

177:                                              ; preds = %172
  %178 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %179 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %178, i32 0, i32 4
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %180, align 4
  %183 = load i8, i8* @TTY_FRAME, align 1
  store i8 %183, i8* %11, align 1
  br label %184

184:                                              ; preds = %177, %172, %167
  br label %213

185:                                              ; preds = %147
  %186 = load i32, i32* %4, align 4
  %187 = load i32, i32* @CDNS_UART_IXR_PARITY, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %197

190:                                              ; preds = %185
  %191 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %192 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %191, i32 0, i32 4
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %193, align 8
  %196 = load i8, i8* @TTY_PARITY, align 1
  store i8 %196, i8* %11, align 1
  br label %197

197:                                              ; preds = %190, %185
  %198 = load i32, i32* %4, align 4
  %199 = load i32, i32* @CDNS_UART_IXR_FRAMING, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %212

202:                                              ; preds = %197
  %203 = load i32, i32* %10, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %212, label %205

205:                                              ; preds = %202
  %206 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %207 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %206, i32 0, i32 4
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %208, align 4
  %211 = load i8, i8* @TTY_FRAME, align 1
  store i8 %211, i8* %11, align 1
  br label %212

212:                                              ; preds = %205, %202, %197
  br label %213

213:                                              ; preds = %212, %184
  %214 = load i32, i32* %4, align 4
  %215 = load i32, i32* @CDNS_UART_IXR_OVERRUN, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %230

218:                                              ; preds = %213
  %219 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %220 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %219, i32 0, i32 4
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %221, align 8
  %224 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %225 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %224, i32 0, i32 3
  %226 = load %struct.TYPE_4__*, %struct.TYPE_4__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 0
  %228 = load i8, i8* @TTY_OVERRUN, align 1
  %229 = call i32 @tty_insert_flip_char(i32* %227, i32 0, i8 signext %228)
  br label %230

230:                                              ; preds = %218, %213
  %231 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %232 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %231, i32 0, i32 3
  %233 = load %struct.TYPE_4__*, %struct.TYPE_4__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 0
  %235 = load i32, i32* %7, align 4
  %236 = load i8, i8* %11, align 1
  %237 = call i32 @tty_insert_flip_char(i32* %234, i32 %235, i8 signext %236)
  store i32 0, i32* %4, align 4
  br label %24

238:                                              ; preds = %24
  %239 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %240 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %239, i32 0, i32 2
  %241 = call i32 @spin_unlock(i32* %240)
  %242 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %243 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %242, i32 0, i32 3
  %244 = load %struct.TYPE_4__*, %struct.TYPE_4__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 0
  %246 = call i32 @tty_flip_buffer_push(i32* %245)
  %247 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %248 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %247, i32 0, i32 2
  %249 = call i32 @spin_lock(i32* %248)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @uart_handle_break(%struct.uart_port*) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.uart_port*, i32) #1

declare dso_local i32 @tty_insert_flip_char(i32*, i32, i8 signext) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @tty_flip_buffer_push(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
