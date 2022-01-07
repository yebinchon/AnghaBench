; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sc16is7xx.c_sc16is7xx_handle_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sc16is7xx.c_sc16is7xx_handle_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.sc16is7xx_port = type { i32* }

@SC16IS7XX_IIR_RLSE_SRC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"ttySC%i: Possible RX FIFO overrun: %d\0A\00", align 1
@SC16IS7XX_LSR_REG = common dso_local global i32 0, align 4
@SC16IS7XX_LSR_FIFOE_BIT = common dso_local global i32 0, align 4
@SC16IS7XX_RHR_REG = common dso_local global i32 0, align 4
@SC16IS7XX_LSR_BRK_ERROR_MASK = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i32 0, align 4
@SC16IS7XX_LSR_BI_BIT = common dso_local global i32 0, align 4
@SC16IS7XX_LSR_PE_BIT = common dso_local global i32 0, align 4
@SC16IS7XX_LSR_FE_BIT = common dso_local global i32 0, align 4
@SC16IS7XX_LSR_OE_BIT = common dso_local global i32 0, align 4
@TTY_BREAK = common dso_local global i32 0, align 4
@TTY_PARITY = common dso_local global i32 0, align 4
@TTY_FRAME = common dso_local global i32 0, align 4
@TTY_OVERRUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32, i32)* @sc16is7xx_handle_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sc16is7xx_handle_rx(%struct.uart_port* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sc16is7xx_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %15 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.sc16is7xx_port* @dev_get_drvdata(i32 %16)
  store %struct.sc16is7xx_port* %17, %struct.sc16is7xx_port** %7, align 8
  store i32 0, i32* %8, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @SC16IS7XX_IIR_RLSE_SRC, align 4
  %20 = icmp eq i32 %18, %19
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 1, i32 0
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = icmp uge i64 %24, 8
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %3
  %30 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %31 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %34 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @dev_warn_ratelimited(i32 %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %39 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  store i32 8, i32* %5, align 4
  br label %43

43:                                               ; preds = %29, %3
  br label %44

44:                                               ; preds = %217, %106, %43
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %221

47:                                               ; preds = %44
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %47
  %51 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %52 = load i32, i32* @SC16IS7XX_LSR_REG, align 4
  %53 = call i8* @sc16is7xx_port_read(%struct.uart_port* %51, i32 %52)
  %54 = ptrtoint i8* %53 to i32
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @SC16IS7XX_LSR_FIFOE_BIT, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %50
  store i32 0, i32* %13, align 4
  br label %60

60:                                               ; preds = %59, %50
  br label %62

61:                                               ; preds = %47
  store i32 0, i32* %8, align 4
  br label %62

62:                                               ; preds = %61, %60
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %62
  %66 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %67 = load i32, i32* @SC16IS7XX_RHR_REG, align 4
  %68 = call i8* @sc16is7xx_port_read(%struct.uart_port* %66, i32 %67)
  %69 = ptrtoint i8* %68 to i32
  %70 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %7, align 8
  %71 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  store i32 %69, i32* %73, align 4
  store i32 1, i32* %11, align 4
  br label %79

74:                                               ; preds = %62
  %75 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @sc16is7xx_fifo_read(%struct.uart_port* %75, i32 %76)
  %78 = load i32, i32* %5, align 4
  store i32 %78, i32* %11, align 4
  br label %79

79:                                               ; preds = %74, %65
  %80 = load i32, i32* @SC16IS7XX_LSR_BRK_ERROR_MASK, align 4
  %81 = load i32, i32* %8, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %8, align 4
  %83 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %84 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 8
  %88 = load i32, i32* @TTY_NORMAL, align 4
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i64 @unlikely(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %181

92:                                               ; preds = %79
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @SC16IS7XX_LSR_BI_BIT, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %92
  %98 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %99 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  %103 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %104 = call i64 @uart_handle_break(%struct.uart_port* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %97
  br label %44

107:                                              ; preds = %97
  br label %144

108:                                              ; preds = %92
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* @SC16IS7XX_LSR_PE_BIT, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %108
  %114 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %115 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 8
  br label %143

119:                                              ; preds = %108
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* @SC16IS7XX_LSR_FE_BIT, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %119
  %125 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %126 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 4
  br label %142

130:                                              ; preds = %119
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* @SC16IS7XX_LSR_OE_BIT, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %130
  %136 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %137 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 8
  br label %141

141:                                              ; preds = %135, %130
  br label %142

142:                                              ; preds = %141, %124
  br label %143

143:                                              ; preds = %142, %113
  br label %144

144:                                              ; preds = %143, %107
  %145 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %146 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* %8, align 4
  %149 = and i32 %148, %147
  store i32 %149, i32* %8, align 4
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* @SC16IS7XX_LSR_BI_BIT, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %144
  %155 = load i32, i32* @TTY_BREAK, align 4
  store i32 %155, i32* %10, align 4
  br label %180

156:                                              ; preds = %144
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* @SC16IS7XX_LSR_PE_BIT, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %156
  %162 = load i32, i32* @TTY_PARITY, align 4
  store i32 %162, i32* %10, align 4
  br label %179

163:                                              ; preds = %156
  %164 = load i32, i32* %8, align 4
  %165 = load i32, i32* @SC16IS7XX_LSR_FE_BIT, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %163
  %169 = load i32, i32* @TTY_FRAME, align 4
  store i32 %169, i32* %10, align 4
  br label %178

170:                                              ; preds = %163
  %171 = load i32, i32* %8, align 4
  %172 = load i32, i32* @SC16IS7XX_LSR_OE_BIT, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %170
  %176 = load i32, i32* @TTY_OVERRUN, align 4
  store i32 %176, i32* %10, align 4
  br label %177

177:                                              ; preds = %175, %170
  br label %178

178:                                              ; preds = %177, %168
  br label %179

179:                                              ; preds = %178, %161
  br label %180

180:                                              ; preds = %179, %154
  br label %181

181:                                              ; preds = %180, %79
  store i32 0, i32* %12, align 4
  br label %182

182:                                              ; preds = %214, %181
  %183 = load i32, i32* %12, align 4
  %184 = load i32, i32* %11, align 4
  %185 = icmp ult i32 %183, %184
  br i1 %185, label %186, label %217

186:                                              ; preds = %182
  %187 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %7, align 8
  %188 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %187, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %12, align 4
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32, i32* %192, align 4
  store i32 %193, i32* %9, align 4
  %194 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %195 = load i32, i32* %9, align 4
  %196 = call i64 @uart_handle_sysrq_char(%struct.uart_port* %194, i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %186
  br label %214

199:                                              ; preds = %186
  %200 = load i32, i32* %8, align 4
  %201 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %202 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = and i32 %200, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %199
  br label %214

207:                                              ; preds = %199
  %208 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %209 = load i32, i32* %8, align 4
  %210 = load i32, i32* @SC16IS7XX_LSR_OE_BIT, align 4
  %211 = load i32, i32* %9, align 4
  %212 = load i32, i32* %10, align 4
  %213 = call i32 @uart_insert_char(%struct.uart_port* %208, i32 %209, i32 %210, i32 %211, i32 %212)
  br label %214

214:                                              ; preds = %207, %206, %198
  %215 = load i32, i32* %12, align 4
  %216 = add i32 %215, 1
  store i32 %216, i32* %12, align 4
  br label %182

217:                                              ; preds = %182
  %218 = load i32, i32* %11, align 4
  %219 = load i32, i32* %5, align 4
  %220 = sub i32 %219, %218
  store i32 %220, i32* %5, align 4
  br label %44

221:                                              ; preds = %44
  %222 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %223 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %222, i32 0, i32 2
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 0
  %226 = call i32 @tty_flip_buffer_push(i32* %225)
  ret void
}

declare dso_local %struct.sc16is7xx_port* @dev_get_drvdata(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_warn_ratelimited(i32, i8*, i32, i32) #1

declare dso_local i8* @sc16is7xx_port_read(%struct.uart_port*, i32) #1

declare dso_local i32 @sc16is7xx_fifo_read(%struct.uart_port*, i32) #1

declare dso_local i64 @uart_handle_break(%struct.uart_port*) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.uart_port*, i32) #1

declare dso_local i32 @uart_insert_char(%struct.uart_port*, i32, i32, i32, i32) #1

declare dso_local i32 @tty_flip_buffer_push(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
