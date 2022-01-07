; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mxs-auart.c_mxs_auart_settermios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mxs-auart.c_mxs_auart_settermios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32 }
%struct.ktermios = type { i32, i32 }
%struct.mxs_auart_port = type { i32, i32 }

@AUART_LINECTRL_FEN = common dso_local global i32 0, align 4
@REG_CTRL2 = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@AUART_LINECTRL_PEN = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@AUART_LINECTRL_EPS = common dso_local global i32 0, align 4
@CMSPAR = common dso_local global i32 0, align 4
@AUART_LINECTRL_SPS = common dso_local global i32 0, align 4
@AUART_STAT_OERR = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@AUART_STAT_PERR = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@AUART_STAT_BERR = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@AUART_CTRL2_RXE = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@AUART_LINECTRL_STP2 = common dso_local global i32 0, align 4
@AUART_CTRL2_CTSEN = common dso_local global i32 0, align 4
@AUART_CTRL2_RTSEN = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@MXS_AUART_RTSCTS = common dso_local global i32 0, align 4
@AUART_CTRL2_TXDMAE = common dso_local global i32 0, align 4
@AUART_CTRL2_RXDMAE = common dso_local global i32 0, align 4
@AUART_CTRL2_DMAONERR = common dso_local global i32 0, align 4
@AUART_LINECTRL_BAUD_DIV_MAX = common dso_local global i32 0, align 4
@AUART_LINECTRL_BAUD_DIV_MIN = common dso_local global i32 0, align 4
@REG_LINECTRL = common dso_local global i32 0, align 4
@MXS_AUART_DMA_RX_READY = common dso_local global i32 0, align 4
@AUART_INTR_RXIEN = common dso_local global i32 0, align 4
@AUART_INTR_RTIEN = common dso_local global i32 0, align 4
@REG_INTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"We can not start up the DMA.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @mxs_auart_settermios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxs_auart_settermios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca %struct.mxs_auart_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %16 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %17 = call %struct.mxs_auart_port* @to_auart_port(%struct.uart_port* %16)
  store %struct.mxs_auart_port* %17, %struct.mxs_auart_port** %7, align 8
  %18 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %19 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* @AUART_LINECTRL_FEN, align 4
  store i32 %21, i32* %9, align 4
  %22 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %7, align 8
  %23 = load i32, i32* @REG_CTRL2, align 4
  %24 = call i32 @mxs_read(%struct.mxs_auart_port* %22, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* @CSIZE, align 4
  %27 = and i32 %25, %26
  switch i32 %27, label %32 [
    i32 131, label %28
    i32 130, label %29
    i32 129, label %30
    i32 128, label %31
  ]

28:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %33

29:                                               ; preds = %3
  store i32 1, i32* %8, align 4
  br label %33

30:                                               ; preds = %3
  store i32 2, i32* %8, align 4
  br label %33

31:                                               ; preds = %3
  store i32 3, i32* %8, align 4
  br label %33

32:                                               ; preds = %3
  br label %321

33:                                               ; preds = %31, %30, %29, %28
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @AUART_LINECTRL_WLEN(i32 %34)
  %36 = load i32, i32* %9, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @PARENB, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %64

42:                                               ; preds = %33
  %43 = load i32, i32* @AUART_LINECTRL_PEN, align 4
  %44 = load i32, i32* %9, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @PARODD, align 4
  %48 = and i32 %46, %47
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = load i32, i32* @AUART_LINECTRL_EPS, align 4
  %52 = load i32, i32* %9, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %50, %42
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* @CMSPAR, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i32, i32* @AUART_LINECTRL_SPS, align 4
  %61 = load i32, i32* %9, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %59, %54
  br label %64

64:                                               ; preds = %63, %33
  %65 = load i32, i32* @AUART_STAT_OERR, align 4
  %66 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %67 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  %68 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %69 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @INPCK, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %64
  %75 = load i32, i32* @AUART_STAT_PERR, align 4
  %76 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %77 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %74, %64
  %81 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %82 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @IGNBRK, align 4
  %85 = load i32, i32* @BRKINT, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @PARMRK, align 4
  %88 = or i32 %86, %87
  %89 = and i32 %83, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %80
  %92 = load i32, i32* @AUART_STAT_BERR, align 4
  %93 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %94 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %91, %80
  %98 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %99 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %98, i32 0, i32 1
  store i32 0, i32* %99, align 4
  %100 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %101 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @IGNPAR, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %97
  %107 = load i32, i32* @AUART_STAT_PERR, align 4
  %108 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %109 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 4
  br label %112

112:                                              ; preds = %106, %97
  %113 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %114 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @IGNBRK, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %138

119:                                              ; preds = %112
  %120 = load i32, i32* @AUART_STAT_BERR, align 4
  %121 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %122 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 4
  %125 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %126 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @IGNPAR, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %119
  %132 = load i32, i32* @AUART_STAT_OERR, align 4
  %133 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %134 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 4
  br label %137

137:                                              ; preds = %131, %119
  br label %138

138:                                              ; preds = %137, %112
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* @CREAD, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %138
  %144 = load i32, i32* @AUART_CTRL2_RXE, align 4
  %145 = load i32, i32* %10, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %10, align 4
  br label %152

147:                                              ; preds = %138
  %148 = load i32, i32* @AUART_CTRL2_RXE, align 4
  %149 = xor i32 %148, -1
  %150 = load i32, i32* %10, align 4
  %151 = and i32 %150, %149
  store i32 %151, i32* %10, align 4
  br label %152

152:                                              ; preds = %147, %143
  %153 = load i32, i32* %12, align 4
  %154 = load i32, i32* @CSTOPB, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %152
  %158 = load i32, i32* @AUART_LINECTRL_STP2, align 4
  %159 = load i32, i32* %9, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %9, align 4
  br label %161

161:                                              ; preds = %157, %152
  %162 = load i32, i32* @AUART_CTRL2_CTSEN, align 4
  %163 = load i32, i32* @AUART_CTRL2_RTSEN, align 4
  %164 = or i32 %162, %163
  %165 = xor i32 %164, -1
  %166 = load i32, i32* %10, align 4
  %167 = and i32 %166, %165
  store i32 %167, i32* %10, align 4
  %168 = load i32, i32* %12, align 4
  %169 = load i32, i32* @CRTSCTS, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %206

172:                                              ; preds = %161
  %173 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %7, align 8
  %174 = call i64 @is_imx28_auart(%struct.mxs_auart_port* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %195

176:                                              ; preds = %172
  %177 = load i32, i32* @MXS_AUART_RTSCTS, align 4
  %178 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %7, align 8
  %179 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %178, i32 0, i32 1
  %180 = call i64 @test_bit(i32 %177, i32* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %195

182:                                              ; preds = %176
  %183 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %7, align 8
  %184 = call i32 @mxs_auart_dma_init(%struct.mxs_auart_port* %183)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %194, label %186

186:                                              ; preds = %182
  %187 = load i32, i32* @AUART_CTRL2_TXDMAE, align 4
  %188 = load i32, i32* @AUART_CTRL2_RXDMAE, align 4
  %189 = or i32 %187, %188
  %190 = load i32, i32* @AUART_CTRL2_DMAONERR, align 4
  %191 = or i32 %189, %190
  %192 = load i32, i32* %10, align 4
  %193 = or i32 %192, %191
  store i32 %193, i32* %10, align 4
  br label %194

194:                                              ; preds = %186, %182
  br label %195

195:                                              ; preds = %194, %176, %172
  %196 = load i32, i32* @AUART_CTRL2_RTSEN, align 4
  %197 = load i32, i32* %10, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %10, align 4
  %199 = call i64 (...) @CTS_AT_AUART()
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %195
  %202 = load i32, i32* @AUART_CTRL2_CTSEN, align 4
  %203 = load i32, i32* %10, align 4
  %204 = or i32 %203, %202
  store i32 %204, i32* %10, align 4
  br label %205

205:                                              ; preds = %201, %195
  br label %206

206:                                              ; preds = %205, %161
  %207 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %7, align 8
  %208 = call i64 @is_asm9260_auart(%struct.mxs_auart_port* %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %230

210:                                              ; preds = %206
  %211 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %212 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %213 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %214 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %215 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = mul nsw i32 %216, 4
  %218 = sdiv i32 %217, 4194303
  %219 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %220 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = sdiv i32 %221, 16
  %223 = call i32 @uart_get_baud_rate(%struct.uart_port* %211, %struct.ktermios* %212, %struct.ktermios* %213, i32 %218, i32 %222)
  store i32 %223, i32* %13, align 4
  %224 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %225 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = mul nsw i32 %226, 4
  %228 = load i32, i32* %13, align 4
  %229 = udiv i32 %227, %228
  store i32 %229, i32* %11, align 4
  br label %255

230:                                              ; preds = %206
  %231 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %232 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = mul nsw i32 %233, 32
  %235 = load i32, i32* @AUART_LINECTRL_BAUD_DIV_MAX, align 4
  %236 = call i32 @DIV_ROUND_UP(i32 %234, i32 %235)
  store i32 %236, i32* %14, align 4
  %237 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %238 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = mul nsw i32 %239, 32
  %241 = load i32, i32* @AUART_LINECTRL_BAUD_DIV_MIN, align 4
  %242 = sdiv i32 %240, %241
  store i32 %242, i32* %15, align 4
  %243 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %244 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %245 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %246 = load i32, i32* %14, align 4
  %247 = load i32, i32* %15, align 4
  %248 = call i32 @uart_get_baud_rate(%struct.uart_port* %243, %struct.ktermios* %244, %struct.ktermios* %245, i32 %246, i32 %247)
  store i32 %248, i32* %13, align 4
  %249 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %250 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = mul nsw i32 %251, 32
  %253 = load i32, i32* %13, align 4
  %254 = call i32 @DIV_ROUND_CLOSEST(i32 %252, i32 %253)
  store i32 %254, i32* %11, align 4
  br label %255

255:                                              ; preds = %230, %210
  %256 = load i32, i32* %11, align 4
  %257 = and i32 %256, 63
  %258 = call i32 @AUART_LINECTRL_BAUD_DIVFRAC(i32 %257)
  %259 = load i32, i32* %9, align 4
  %260 = or i32 %259, %258
  store i32 %260, i32* %9, align 4
  %261 = load i32, i32* %11, align 4
  %262 = ashr i32 %261, 6
  %263 = call i32 @AUART_LINECTRL_BAUD_DIVINT(i32 %262)
  %264 = load i32, i32* %9, align 4
  %265 = or i32 %264, %263
  store i32 %265, i32* %9, align 4
  %266 = load i32, i32* %9, align 4
  %267 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %7, align 8
  %268 = load i32, i32* @REG_LINECTRL, align 4
  %269 = call i32 @mxs_write(i32 %266, %struct.mxs_auart_port* %267, i32 %268)
  %270 = load i32, i32* %10, align 4
  %271 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %7, align 8
  %272 = load i32, i32* @REG_CTRL2, align 4
  %273 = call i32 @mxs_write(i32 %270, %struct.mxs_auart_port* %271, i32 %272)
  %274 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %275 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %276 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* %13, align 4
  %279 = call i32 @uart_update_timeout(%struct.uart_port* %274, i32 %277, i32 %278)
  %280 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %7, align 8
  %281 = call i64 @auart_dma_enabled(%struct.mxs_auart_port* %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %308

283:                                              ; preds = %255
  %284 = load i32, i32* @MXS_AUART_DMA_RX_READY, align 4
  %285 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %7, align 8
  %286 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %285, i32 0, i32 1
  %287 = call i32 @test_and_set_bit(i32 %284, i32* %286)
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %308, label %289

289:                                              ; preds = %283
  %290 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %7, align 8
  %291 = call i32 @mxs_auart_dma_prep_rx(%struct.mxs_auart_port* %290)
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %300, label %293

293:                                              ; preds = %289
  %294 = load i32, i32* @AUART_INTR_RXIEN, align 4
  %295 = load i32, i32* @AUART_INTR_RTIEN, align 4
  %296 = or i32 %294, %295
  %297 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %7, align 8
  %298 = load i32, i32* @REG_INTR, align 4
  %299 = call i32 @mxs_clr(i32 %296, %struct.mxs_auart_port* %297, i32 %298)
  br label %307

300:                                              ; preds = %289
  %301 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %7, align 8
  %302 = call i32 @mxs_auart_dma_exit(%struct.mxs_auart_port* %301)
  %303 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %7, align 8
  %304 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 4
  %306 = call i32 @dev_err(i32 %305, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %307

307:                                              ; preds = %300, %293
  br label %308

308:                                              ; preds = %307, %283, %255
  %309 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %310 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %311 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 4
  %313 = call i64 @UART_ENABLE_MS(%struct.uart_port* %309, i32 %312)
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %318

315:                                              ; preds = %308
  %316 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %317 = call i32 @mxs_auart_enable_ms(%struct.uart_port* %316)
  br label %321

318:                                              ; preds = %308
  %319 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %320 = call i32 @mxs_auart_disable_ms(%struct.uart_port* %319)
  br label %321

321:                                              ; preds = %32, %318, %315
  ret void
}

declare dso_local %struct.mxs_auart_port* @to_auart_port(%struct.uart_port*) #1

declare dso_local i32 @mxs_read(%struct.mxs_auart_port*, i32) #1

declare dso_local i32 @AUART_LINECTRL_WLEN(i32) #1

declare dso_local i64 @is_imx28_auart(%struct.mxs_auart_port*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mxs_auart_dma_init(%struct.mxs_auart_port*) #1

declare dso_local i64 @CTS_AT_AUART(...) #1

declare dso_local i64 @is_asm9260_auart(%struct.mxs_auart_port*) #1

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @AUART_LINECTRL_BAUD_DIVFRAC(i32) #1

declare dso_local i32 @AUART_LINECTRL_BAUD_DIVINT(i32) #1

declare dso_local i32 @mxs_write(i32, %struct.mxs_auart_port*, i32) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i64 @auart_dma_enabled(%struct.mxs_auart_port*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @mxs_auart_dma_prep_rx(%struct.mxs_auart_port*) #1

declare dso_local i32 @mxs_clr(i32, %struct.mxs_auart_port*, i32) #1

declare dso_local i32 @mxs_auart_dma_exit(%struct.mxs_auart_port*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @UART_ENABLE_MS(%struct.uart_port*, i32) #1

declare dso_local i32 @mxs_auart_enable_ms(%struct.uart_port*) #1

declare dso_local i32 @mxs_auart_disable_ms(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
