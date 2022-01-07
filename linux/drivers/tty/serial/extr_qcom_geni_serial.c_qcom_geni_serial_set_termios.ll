; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_qcom_geni_serial.c_qcom_geni_serial_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_qcom_geni_serial.c_qcom_geni_serial_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64, i64 }
%struct.ktermios = type { i32 }
%struct.qcom_geni_serial_port = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@UART_OVERSAMPLING = common dso_local global i32 0, align 4
@SER_CLK_EN = common dso_local global i32 0, align 4
@CLK_DIV_SHFT = common dso_local global i32 0, align 4
@SE_UART_TX_TRANS_CFG = common dso_local global i64 0, align 8
@SE_UART_TX_PARITY_CFG = common dso_local global i64 0, align 8
@SE_UART_RX_TRANS_CFG = common dso_local global i64 0, align 8
@SE_UART_RX_PARITY_CFG = common dso_local global i64 0, align 8
@PARENB = common dso_local global i32 0, align 4
@UART_TX_PAR_EN = common dso_local global i32 0, align 4
@UART_RX_PAR_EN = common dso_local global i32 0, align 4
@PAR_CALC_EN = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@PAR_ODD = common dso_local global i32 0, align 4
@CMSPAR = common dso_local global i32 0, align 4
@PAR_SPACE = common dso_local global i32 0, align 4
@PAR_EVEN = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@TX_STOP_BIT_LEN_2 = common dso_local global i32 0, align 4
@TX_STOP_BIT_LEN_1 = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@UART_CTS_MASK = common dso_local global i32 0, align 4
@SE_UART_LOOPBACK_CFG = common dso_local global i64 0, align 8
@SE_UART_TX_WORD_LEN = common dso_local global i64 0, align 8
@SE_UART_RX_WORD_LEN = common dso_local global i64 0, align 8
@SE_UART_TX_STOP_BIT_LEN = common dso_local global i64 0, align 8
@GENI_SER_M_CLK_CFG = common dso_local global i64 0, align 8
@GENI_SER_S_CLK_CFG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @qcom_geni_serial_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qcom_geni_serial_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.qcom_geni_serial_port*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %20 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %21 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %22 = call %struct.qcom_geni_serial_port* @to_dev_port(%struct.uart_port* %20, %struct.uart_port* %21)
  store %struct.qcom_geni_serial_port* %22, %struct.qcom_geni_serial_port** %16, align 8
  %23 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %24 = call i32 @qcom_geni_serial_stop_rx(%struct.uart_port* %23)
  %25 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %26 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %27 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %28 = call i32 @uart_get_baud_rate(%struct.uart_port* %25, %struct.ktermios* %26, %struct.ktermios* %27, i32 300, i32 4000000)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** %16, align 8
  %31 = getelementptr inbounds %struct.qcom_geni_serial_port, %struct.qcom_geni_serial_port* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @UART_OVERSAMPLING, align 4
  store i32 %32, i32* %19, align 4
  %33 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** %16, align 8
  %34 = getelementptr inbounds %struct.qcom_geni_serial_port, %struct.qcom_geni_serial_port* %33, i32 0, i32 2
  %35 = call i32 @geni_se_get_qup_hw_version(%struct.TYPE_2__* %34)
  store i32 %35, i32* %18, align 4
  %36 = load i32, i32* %18, align 4
  %37 = call i32 @GENI_SE_VERSION_MAJOR(i32 %36)
  %38 = icmp sge i32 %37, 2
  br i1 %38, label %39, label %46

39:                                               ; preds = %3
  %40 = load i32, i32* %18, align 4
  %41 = call i32 @GENI_SE_VERSION_MINOR(i32 %40)
  %42 = icmp sge i32 %41, 5
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* %19, align 4
  %45 = sdiv i32 %44, 2
  store i32 %45, i32* %19, align 4
  br label %46

46:                                               ; preds = %43, %39, %3
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %19, align 4
  %49 = call i64 @get_clk_div_rate(i32 %47, i32 %48, i32* %14)
  store i64 %49, i64* %17, align 8
  %50 = load i64, i64* %17, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %46
  br label %291

53:                                               ; preds = %46
  %54 = load i64, i64* %17, align 8
  %55 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %56 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** %16, align 8
  %58 = getelementptr inbounds %struct.qcom_geni_serial_port, %struct.qcom_geni_serial_port* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i64, i64* %17, align 8
  %62 = call i32 @clk_set_rate(i32 %60, i64 %61)
  %63 = load i32, i32* @SER_CLK_EN, align 4
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* @CLK_DIV_SHFT, align 4
  %66 = shl i32 %64, %65
  %67 = load i32, i32* %15, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %15, align 4
  %69 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %70 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @SE_UART_TX_TRANS_CFG, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @readl(i64 %73)
  store i32 %74, i32* %9, align 4
  %75 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %76 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @SE_UART_TX_PARITY_CFG, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @readl(i64 %79)
  store i32 %80, i32* %10, align 4
  %81 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %82 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @SE_UART_RX_TRANS_CFG, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @readl(i64 %85)
  store i32 %86, i32* %11, align 4
  %87 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %88 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @SE_UART_RX_PARITY_CFG, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @readl(i64 %91)
  store i32 %92, i32* %12, align 4
  %93 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %94 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @PARENB, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %148

99:                                               ; preds = %53
  %100 = load i32, i32* @UART_TX_PAR_EN, align 4
  %101 = load i32, i32* %9, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* @UART_RX_PAR_EN, align 4
  %104 = load i32, i32* %11, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* @PAR_CALC_EN, align 4
  %107 = load i32, i32* %10, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* @PAR_CALC_EN, align 4
  %110 = load i32, i32* %12, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %12, align 4
  %112 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %113 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @PARODD, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %99
  %119 = load i32, i32* @PAR_ODD, align 4
  %120 = load i32, i32* %10, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* @PAR_ODD, align 4
  %123 = load i32, i32* %12, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %12, align 4
  br label %147

125:                                              ; preds = %99
  %126 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %127 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @CMSPAR, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %125
  %133 = load i32, i32* @PAR_SPACE, align 4
  %134 = load i32, i32* %10, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %10, align 4
  %136 = load i32, i32* @PAR_SPACE, align 4
  %137 = load i32, i32* %12, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %12, align 4
  br label %146

139:                                              ; preds = %125
  %140 = load i32, i32* @PAR_EVEN, align 4
  %141 = load i32, i32* %10, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %10, align 4
  %143 = load i32, i32* @PAR_EVEN, align 4
  %144 = load i32, i32* %12, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %12, align 4
  br label %146

146:                                              ; preds = %139, %132
  br label %147

147:                                              ; preds = %146, %118
  br label %165

148:                                              ; preds = %53
  %149 = load i32, i32* @UART_TX_PAR_EN, align 4
  %150 = xor i32 %149, -1
  %151 = load i32, i32* %9, align 4
  %152 = and i32 %151, %150
  store i32 %152, i32* %9, align 4
  %153 = load i32, i32* @UART_RX_PAR_EN, align 4
  %154 = xor i32 %153, -1
  %155 = load i32, i32* %11, align 4
  %156 = and i32 %155, %154
  store i32 %156, i32* %11, align 4
  %157 = load i32, i32* @PAR_CALC_EN, align 4
  %158 = xor i32 %157, -1
  %159 = load i32, i32* %10, align 4
  %160 = and i32 %159, %158
  store i32 %160, i32* %10, align 4
  %161 = load i32, i32* @PAR_CALC_EN, align 4
  %162 = xor i32 %161, -1
  %163 = load i32, i32* %12, align 4
  %164 = and i32 %163, %162
  store i32 %164, i32* %12, align 4
  br label %165

165:                                              ; preds = %148, %147
  %166 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %167 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @CSIZE, align 4
  %170 = and i32 %168, %169
  switch i32 %170, label %175 [
    i32 131, label %171
    i32 130, label %172
    i32 129, label %173
    i32 128, label %174
  ]

171:                                              ; preds = %165
  store i32 5, i32* %8, align 4
  br label %176

172:                                              ; preds = %165
  store i32 6, i32* %8, align 4
  br label %176

173:                                              ; preds = %165
  store i32 7, i32* %8, align 4
  br label %176

174:                                              ; preds = %165
  br label %175

175:                                              ; preds = %165, %174
  store i32 8, i32* %8, align 4
  br label %176

176:                                              ; preds = %175, %173, %172, %171
  %177 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %178 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @CSTOPB, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %176
  %184 = load i32, i32* @TX_STOP_BIT_LEN_2, align 4
  store i32 %184, i32* %13, align 4
  br label %187

185:                                              ; preds = %176
  %186 = load i32, i32* @TX_STOP_BIT_LEN_1, align 4
  store i32 %186, i32* %13, align 4
  br label %187

187:                                              ; preds = %185, %183
  %188 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %189 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @CRTSCTS, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %187
  %195 = load i32, i32* @UART_CTS_MASK, align 4
  %196 = xor i32 %195, -1
  %197 = load i32, i32* %9, align 4
  %198 = and i32 %197, %196
  store i32 %198, i32* %9, align 4
  br label %203

199:                                              ; preds = %187
  %200 = load i32, i32* @UART_CTS_MASK, align 4
  %201 = load i32, i32* %9, align 4
  %202 = or i32 %201, %200
  store i32 %202, i32* %9, align 4
  br label %203

203:                                              ; preds = %199, %194
  %204 = load i32, i32* %7, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %213

206:                                              ; preds = %203
  %207 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %208 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %209 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* %7, align 4
  %212 = call i32 @uart_update_timeout(%struct.uart_port* %207, i32 %210, i32 %211)
  br label %213

213:                                              ; preds = %206, %203
  %214 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %215 = call i32 @uart_console(%struct.uart_port* %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %227, label %217

217:                                              ; preds = %213
  %218 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** %16, align 8
  %219 = getelementptr inbounds %struct.qcom_geni_serial_port, %struct.qcom_geni_serial_port* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %222 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @SE_UART_LOOPBACK_CFG, align 8
  %225 = add nsw i64 %223, %224
  %226 = call i32 @writel(i32 %220, i64 %225)
  br label %227

227:                                              ; preds = %217, %213
  %228 = load i32, i32* %9, align 4
  %229 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %230 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* @SE_UART_TX_TRANS_CFG, align 8
  %233 = add nsw i64 %231, %232
  %234 = call i32 @writel(i32 %228, i64 %233)
  %235 = load i32, i32* %10, align 4
  %236 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %237 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* @SE_UART_TX_PARITY_CFG, align 8
  %240 = add nsw i64 %238, %239
  %241 = call i32 @writel(i32 %235, i64 %240)
  %242 = load i32, i32* %11, align 4
  %243 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %244 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @SE_UART_RX_TRANS_CFG, align 8
  %247 = add nsw i64 %245, %246
  %248 = call i32 @writel(i32 %242, i64 %247)
  %249 = load i32, i32* %12, align 4
  %250 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %251 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %250, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @SE_UART_RX_PARITY_CFG, align 8
  %254 = add nsw i64 %252, %253
  %255 = call i32 @writel(i32 %249, i64 %254)
  %256 = load i32, i32* %8, align 4
  %257 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %258 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %257, i32 0, i32 1
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* @SE_UART_TX_WORD_LEN, align 8
  %261 = add nsw i64 %259, %260
  %262 = call i32 @writel(i32 %256, i64 %261)
  %263 = load i32, i32* %8, align 4
  %264 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %265 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %264, i32 0, i32 1
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* @SE_UART_RX_WORD_LEN, align 8
  %268 = add nsw i64 %266, %267
  %269 = call i32 @writel(i32 %263, i64 %268)
  %270 = load i32, i32* %13, align 4
  %271 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %272 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %271, i32 0, i32 1
  %273 = load i64, i64* %272, align 8
  %274 = load i64, i64* @SE_UART_TX_STOP_BIT_LEN, align 8
  %275 = add nsw i64 %273, %274
  %276 = call i32 @writel(i32 %270, i64 %275)
  %277 = load i32, i32* %15, align 4
  %278 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %279 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %278, i32 0, i32 1
  %280 = load i64, i64* %279, align 8
  %281 = load i64, i64* @GENI_SER_M_CLK_CFG, align 8
  %282 = add nsw i64 %280, %281
  %283 = call i32 @writel(i32 %277, i64 %282)
  %284 = load i32, i32* %15, align 4
  %285 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %286 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %285, i32 0, i32 1
  %287 = load i64, i64* %286, align 8
  %288 = load i64, i64* @GENI_SER_S_CLK_CFG, align 8
  %289 = add nsw i64 %287, %288
  %290 = call i32 @writel(i32 %284, i64 %289)
  br label %291

291:                                              ; preds = %227, %52
  %292 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %293 = call i32 @qcom_geni_serial_start_rx(%struct.uart_port* %292)
  ret void
}

declare dso_local %struct.qcom_geni_serial_port* @to_dev_port(%struct.uart_port*, %struct.uart_port*) #1

declare dso_local i32 @qcom_geni_serial_stop_rx(%struct.uart_port*) #1

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @geni_se_get_qup_hw_version(%struct.TYPE_2__*) #1

declare dso_local i32 @GENI_SE_VERSION_MAJOR(i32) #1

declare dso_local i32 @GENI_SE_VERSION_MINOR(i32) #1

declare dso_local i64 @get_clk_div_rate(i32, i32, i32*) #1

declare dso_local i32 @clk_set_rate(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @uart_console(%struct.uart_port*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @qcom_geni_serial_start_rx(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
