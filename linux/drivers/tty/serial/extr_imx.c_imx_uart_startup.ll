; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.imx_port = type { %struct.TYPE_2__, i64, i64, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@TXTL_DEFAULT = common dso_local global i32 0, align 4
@RXTL_DEFAULT = common dso_local global i32 0, align 4
@UCR4 = common dso_local global i32 0, align 4
@UCR4_CTSTL_MASK = common dso_local global i32 0, align 4
@UCR4_CTSTL_SHF = common dso_local global i32 0, align 4
@CTSTL = common dso_local global i32 0, align 4
@UCR4_DREN = common dso_local global i32 0, align 4
@UCR2 = common dso_local global i32 0, align 4
@UCR2_SRST = common dso_local global i32 0, align 4
@USR1_RTSD = common dso_local global i32 0, align 4
@USR1_DTRD = common dso_local global i32 0, align 4
@USR1 = common dso_local global i32 0, align 4
@USR2_ORE = common dso_local global i32 0, align 4
@USR2 = common dso_local global i32 0, align 4
@UCR1 = common dso_local global i32 0, align 4
@UCR1_RRDYEN = common dso_local global i32 0, align 4
@UCR1_UARTEN = common dso_local global i32 0, align 4
@UCR1_RTSDEN = common dso_local global i32 0, align 4
@UCR4_OREN = common dso_local global i32 0, align 4
@UCR2_ATEN = common dso_local global i32 0, align 4
@UCR2_RXEN = common dso_local global i32 0, align 4
@UCR2_TXEN = common dso_local global i32 0, align 4
@UCR2_IRTS = common dso_local global i32 0, align 4
@UCR2_RTSEN = common dso_local global i32 0, align 4
@UCR3 = common dso_local global i32 0, align 4
@UCR3_DTRDEN = common dso_local global i32 0, align 4
@UCR3_RI = common dso_local global i32 0, align 4
@UCR3_DCD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @imx_uart_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_uart_startup(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.imx_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %13 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %14 = bitcast %struct.uart_port* %13 to %struct.imx_port*
  store %struct.imx_port* %14, %struct.imx_port** %4, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %16 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @clk_prepare_enable(i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %255

23:                                               ; preds = %1
  %24 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %25 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @clk_prepare_enable(i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %32 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @clk_disable_unprepare(i32 %33)
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %255

36:                                               ; preds = %23
  %37 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %38 = load i32, i32* @TXTL_DEFAULT, align 4
  %39 = load i32, i32* @RXTL_DEFAULT, align 4
  %40 = call i32 @imx_uart_setup_ufcr(%struct.imx_port* %37, i32 %38, i32 %39)
  %41 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %42 = load i32, i32* @UCR4, align 4
  %43 = call i32 @imx_uart_readl(%struct.imx_port* %41, i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* @UCR4_CTSTL_MASK, align 4
  %45 = load i32, i32* @UCR4_CTSTL_SHF, align 4
  %46 = shl i32 %44, %45
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %11, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* @CTSTL, align 4
  %51 = load i32, i32* @UCR4_CTSTL_SHF, align 4
  %52 = shl i32 %50, %51
  %53 = load i32, i32* %11, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %11, align 4
  %55 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @UCR4_DREN, align 4
  %58 = xor i32 %57, -1
  %59 = and i32 %56, %58
  %60 = load i32, i32* @UCR4, align 4
  %61 = call i32 @imx_uart_writel(%struct.imx_port* %55, i32 %59, i32 %60)
  %62 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %63 = call i32 @uart_console(%struct.uart_port* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %36
  %66 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %67 = call i64 @imx_uart_dma_init(%struct.imx_port* %66)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 1, i32* %8, align 4
  br label %70

70:                                               ; preds = %69, %65, %36
  %71 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %72 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %7, align 8
  %75 = call i32 @spin_lock_irqsave(i32* %73, i64 %74)
  store i32 100, i32* %6, align 4
  %76 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %77 = load i32, i32* @UCR2, align 4
  %78 = call i32 @imx_uart_readl(%struct.imx_port* %76, i32 %77)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* @UCR2_SRST, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %10, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %10, align 4
  %83 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @UCR2, align 4
  %86 = call i32 @imx_uart_writel(%struct.imx_port* %83, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %100, %70
  %88 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %89 = load i32, i32* @UCR2, align 4
  %90 = call i32 @imx_uart_readl(%struct.imx_port* %88, i32 %89)
  %91 = load i32, i32* @UCR2_SRST, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %87
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %6, align 4
  %97 = icmp sgt i32 %96, 0
  br label %98

98:                                               ; preds = %94, %87
  %99 = phi i1 [ false, %87 ], [ %97, %94 ]
  br i1 %99, label %100, label %102

100:                                              ; preds = %98
  %101 = call i32 @udelay(i32 1)
  br label %87

102:                                              ; preds = %98
  %103 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %104 = load i32, i32* @USR1_RTSD, align 4
  %105 = load i32, i32* @USR1_DTRD, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @USR1, align 4
  %108 = call i32 @imx_uart_writel(%struct.imx_port* %103, i32 %106, i32 %107)
  %109 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %110 = load i32, i32* @USR2_ORE, align 4
  %111 = load i32, i32* @USR2, align 4
  %112 = call i32 @imx_uart_writel(%struct.imx_port* %109, i32 %110, i32 %111)
  %113 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %114 = load i32, i32* @UCR1, align 4
  %115 = call i32 @imx_uart_readl(%struct.imx_port* %113, i32 %114)
  %116 = load i32, i32* @UCR1_RRDYEN, align 4
  %117 = xor i32 %116, -1
  %118 = and i32 %115, %117
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* @UCR1_UARTEN, align 4
  %120 = load i32, i32* %9, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %9, align 4
  %122 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %123 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %102
  %127 = load i32, i32* @UCR1_RTSDEN, align 4
  %128 = load i32, i32* %9, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %9, align 4
  br label %130

130:                                              ; preds = %126, %102
  %131 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* @UCR1, align 4
  %134 = call i32 @imx_uart_writel(%struct.imx_port* %131, i32 %132, i32 %133)
  %135 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %136 = load i32, i32* @UCR4, align 4
  %137 = call i32 @imx_uart_readl(%struct.imx_port* %135, i32 %136)
  %138 = load i32, i32* @UCR4_OREN, align 4
  %139 = xor i32 %138, -1
  %140 = and i32 %137, %139
  store i32 %140, i32* %11, align 4
  %141 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %142 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %149, label %145

145:                                              ; preds = %130
  %146 = load i32, i32* @UCR4_OREN, align 4
  %147 = load i32, i32* %11, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %11, align 4
  br label %149

149:                                              ; preds = %145, %130
  %150 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %151 = load i32, i32* %11, align 4
  %152 = load i32, i32* @UCR4, align 4
  %153 = call i32 @imx_uart_writel(%struct.imx_port* %150, i32 %151, i32 %152)
  %154 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %155 = load i32, i32* @UCR2, align 4
  %156 = call i32 @imx_uart_readl(%struct.imx_port* %154, i32 %155)
  %157 = load i32, i32* @UCR2_ATEN, align 4
  %158 = xor i32 %157, -1
  %159 = and i32 %156, %158
  store i32 %159, i32* %10, align 4
  %160 = load i32, i32* @UCR2_RXEN, align 4
  %161 = load i32, i32* @UCR2_TXEN, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* %10, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %10, align 4
  %165 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %166 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %173, label %169

169:                                              ; preds = %149
  %170 = load i32, i32* @UCR2_IRTS, align 4
  %171 = load i32, i32* %10, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %10, align 4
  br label %173

173:                                              ; preds = %169, %149
  %174 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %175 = call i32 @imx_uart_is_imx1(%struct.imx_port* %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %182, label %177

177:                                              ; preds = %173
  %178 = load i32, i32* @UCR2_RTSEN, align 4
  %179 = xor i32 %178, -1
  %180 = load i32, i32* %10, align 4
  %181 = and i32 %180, %179
  store i32 %181, i32* %10, align 4
  br label %182

182:                                              ; preds = %177, %173
  %183 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %184 = load i32, i32* %10, align 4
  %185 = load i32, i32* @UCR2, align 4
  %186 = call i32 @imx_uart_writel(%struct.imx_port* %183, i32 %184, i32 %185)
  %187 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %188 = call i32 @imx_uart_is_imx1(%struct.imx_port* %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %217, label %190

190:                                              ; preds = %182
  %191 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %192 = load i32, i32* @UCR3, align 4
  %193 = call i32 @imx_uart_readl(%struct.imx_port* %191, i32 %192)
  store i32 %193, i32* %12, align 4
  %194 = load i32, i32* @UCR3_DTRDEN, align 4
  %195 = load i32, i32* @UCR3_RI, align 4
  %196 = or i32 %194, %195
  %197 = load i32, i32* @UCR3_DCD, align 4
  %198 = or i32 %196, %197
  %199 = load i32, i32* %12, align 4
  %200 = or i32 %199, %198
  store i32 %200, i32* %12, align 4
  %201 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %202 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %212

205:                                              ; preds = %190
  %206 = load i32, i32* @UCR3_RI, align 4
  %207 = load i32, i32* @UCR3_DCD, align 4
  %208 = or i32 %206, %207
  %209 = xor i32 %208, -1
  %210 = load i32, i32* %12, align 4
  %211 = and i32 %210, %209
  store i32 %211, i32* %12, align 4
  br label %212

212:                                              ; preds = %205, %190
  %213 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %214 = load i32, i32* %12, align 4
  %215 = load i32, i32* @UCR3, align 4
  %216 = call i32 @imx_uart_writel(%struct.imx_port* %213, i32 %214, i32 %215)
  br label %217

217:                                              ; preds = %212, %182
  %218 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %219 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %218, i32 0, i32 0
  %220 = call i32 @imx_uart_enable_ms(%struct.TYPE_2__* %219)
  %221 = load i32, i32* %8, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %228

223:                                              ; preds = %217
  %224 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %225 = call i32 @imx_uart_enable_dma(%struct.imx_port* %224)
  %226 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %227 = call i32 @imx_uart_start_rx_dma(%struct.imx_port* %226)
  br label %249

228:                                              ; preds = %217
  %229 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %230 = load i32, i32* @UCR1, align 4
  %231 = call i32 @imx_uart_readl(%struct.imx_port* %229, i32 %230)
  store i32 %231, i32* %9, align 4
  %232 = load i32, i32* @UCR1_RRDYEN, align 4
  %233 = load i32, i32* %9, align 4
  %234 = or i32 %233, %232
  store i32 %234, i32* %9, align 4
  %235 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %236 = load i32, i32* %9, align 4
  %237 = load i32, i32* @UCR1, align 4
  %238 = call i32 @imx_uart_writel(%struct.imx_port* %235, i32 %236, i32 %237)
  %239 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %240 = load i32, i32* @UCR2, align 4
  %241 = call i32 @imx_uart_readl(%struct.imx_port* %239, i32 %240)
  store i32 %241, i32* %10, align 4
  %242 = load i32, i32* @UCR2_ATEN, align 4
  %243 = load i32, i32* %10, align 4
  %244 = or i32 %243, %242
  store i32 %244, i32* %10, align 4
  %245 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %246 = load i32, i32* %10, align 4
  %247 = load i32, i32* @UCR2, align 4
  %248 = call i32 @imx_uart_writel(%struct.imx_port* %245, i32 %246, i32 %247)
  br label %249

249:                                              ; preds = %228, %223
  %250 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %251 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %251, i32 0, i32 0
  %253 = load i64, i64* %7, align 8
  %254 = call i32 @spin_unlock_irqrestore(i32* %252, i64 %253)
  store i32 0, i32* %2, align 4
  br label %255

255:                                              ; preds = %249, %30, %21
  %256 = load i32, i32* %2, align 4
  ret i32 %256
}

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @imx_uart_setup_ufcr(%struct.imx_port*, i32, i32) #1

declare dso_local i32 @imx_uart_readl(%struct.imx_port*, i32) #1

declare dso_local i32 @imx_uart_writel(%struct.imx_port*, i32, i32) #1

declare dso_local i32 @uart_console(%struct.uart_port*) #1

declare dso_local i64 @imx_uart_dma_init(%struct.imx_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @imx_uart_is_imx1(%struct.imx_port*) #1

declare dso_local i32 @imx_uart_enable_ms(%struct.TYPE_2__*) #1

declare dso_local i32 @imx_uart_enable_dma(%struct.imx_port*) #1

declare dso_local i32 @imx_uart_start_rx_dma(%struct.imx_port*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
