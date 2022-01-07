; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sb1250-duart.c_sbd_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sb1250-duart.c_sbd_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32 }
%struct.ktermios = type { i32, i32 }
%struct.sbd_port = type { i64 }

@M_DUART_PARITY_MODE = common dso_local global i32 0, align 4
@M_DUART_PARITY_TYPE_ODD = common dso_local global i32 0, align 4
@M_DUART_BITS_PER_CHAR = common dso_local global i32 0, align 4
@M_DUART_STOP_BIT_LEN_2 = common dso_local global i32 0, align 4
@M_DUART_CTS_CHNG_ENA = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@V_DUART_BITS_PER_CHAR_7 = common dso_local global i32 0, align 4
@V_DUART_BITS_PER_CHAR_8 = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@M_DUART_STOP_BIT_LEN_1 = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@V_DUART_PARITY_MODE_ADD = common dso_local global i32 0, align 4
@V_DUART_PARITY_MODE_NONE = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@M_DUART_PARITY_TYPE_EVEN = common dso_local global i32 0, align 4
@M_DUART_CLK_COUNTER = common dso_local global i32 0, align 4
@M_DUART_OVRUN_ERR = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@M_DUART_FRM_ERR = common dso_local global i32 0, align 4
@M_DUART_PARITY_ERR = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@M_DUART_RCVD_BRK = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@M_DUART_RX_EN = common dso_local global i32 0, align 4
@M_DUART_RX_DIS = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@M_DUART_TX_DIS = common dso_local global i32 0, align 4
@M_DUART_TX_EN = common dso_local global i32 0, align 4
@R_DUART_MODE_REG_1 = common dso_local global i32 0, align 4
@R_DUART_MODE_REG_2 = common dso_local global i32 0, align 4
@R_DUART_AUXCTL_X = common dso_local global i32 0, align 4
@R_DUART_CMD = common dso_local global i32 0, align 4
@R_DUART_CLK_SEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @sbd_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbd_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca %struct.sbd_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %20 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %21 = call %struct.sbd_port* @to_sport(%struct.uart_port* %20)
  store %struct.sbd_port* %21, %struct.sbd_port** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %22 = load i32, i32* @M_DUART_PARITY_MODE, align 4
  %23 = load i32, i32* @M_DUART_PARITY_TYPE_ODD, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @M_DUART_BITS_PER_CHAR, align 4
  %26 = or i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %11, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* @M_DUART_STOP_BIT_LEN_2, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %12, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* @M_DUART_CTS_CHNG_ENA, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %13, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %13, align 4
  %38 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %39 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @CSIZE, align 4
  %42 = and i32 %40, %41
  switch i32 %42, label %52 [
    i32 131, label %43
    i32 130, label %43
    i32 129, label %47
    i32 128, label %51
  ]

43:                                               ; preds = %3, %3
  %44 = load i32, i32* @M_DUART_PARITY_MODE, align 4
  %45 = load i32, i32* %11, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %11, align 4
  br label %56

47:                                               ; preds = %3
  %48 = load i32, i32* @V_DUART_BITS_PER_CHAR_7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %8, align 4
  br label %56

51:                                               ; preds = %3
  br label %52

52:                                               ; preds = %3, %51
  %53 = load i32, i32* @V_DUART_BITS_PER_CHAR_8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %52, %47, %43
  %57 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %58 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @CSTOPB, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load i32, i32* @M_DUART_STOP_BIT_LEN_2, align 4
  %65 = load i32, i32* %9, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %9, align 4
  br label %71

67:                                               ; preds = %56
  %68 = load i32, i32* @M_DUART_STOP_BIT_LEN_1, align 4
  %69 = load i32, i32* %9, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %67, %63
  %72 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %73 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @PARENB, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %71
  %79 = load i32, i32* @V_DUART_PARITY_MODE_ADD, align 4
  %80 = load i32, i32* %8, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %8, align 4
  br label %86

82:                                               ; preds = %71
  %83 = load i32, i32* @V_DUART_PARITY_MODE_NONE, align 4
  %84 = load i32, i32* %8, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %82, %78
  %87 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %88 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @PARODD, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %86
  %94 = load i32, i32* @M_DUART_PARITY_TYPE_ODD, align 4
  %95 = load i32, i32* %8, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %8, align 4
  br label %101

97:                                               ; preds = %86
  %98 = load i32, i32* @M_DUART_PARITY_TYPE_EVEN, align 4
  %99 = load i32, i32* %8, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %97, %93
  %102 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %103 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %104 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %105 = call i32 @uart_get_baud_rate(%struct.uart_port* %102, %struct.ktermios* %103, %struct.ktermios* %104, i32 1200, i32 5000000)
  store i32 %105, i32* %17, align 4
  %106 = load i32, i32* %17, align 4
  %107 = call i32 @V_DUART_BAUD_RATE(i32 %106)
  store i32 %107, i32* %18, align 4
  %108 = load i32, i32* %18, align 4
  %109 = load i32, i32* @M_DUART_CLK_COUNTER, align 4
  %110 = icmp ugt i32 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %101
  %112 = load i32, i32* @M_DUART_CLK_COUNTER, align 4
  store i32 %112, i32* %18, align 4
  br label %113

113:                                              ; preds = %111, %101
  %114 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %115 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %116 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %17, align 4
  %119 = call i32 @uart_update_timeout(%struct.uart_port* %114, i32 %117, i32 %118)
  %120 = load i32, i32* @M_DUART_OVRUN_ERR, align 4
  %121 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %122 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 4
  %123 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %124 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @INPCK, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %113
  %130 = load i32, i32* @M_DUART_FRM_ERR, align 4
  %131 = load i32, i32* @M_DUART_PARITY_ERR, align 4
  %132 = or i32 %130, %131
  %133 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %134 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 4
  br label %137

137:                                              ; preds = %129, %113
  %138 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %139 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @IGNBRK, align 4
  %142 = load i32, i32* @BRKINT, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @PARMRK, align 4
  %145 = or i32 %143, %144
  %146 = and i32 %140, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %137
  %149 = load i32, i32* @M_DUART_RCVD_BRK, align 4
  %150 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %151 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = or i32 %152, %149
  store i32 %153, i32* %151, align 4
  br label %154

154:                                              ; preds = %148, %137
  %155 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %156 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %155, i32 0, i32 1
  store i32 0, i32* %156, align 4
  %157 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %158 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @IGNPAR, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %171

163:                                              ; preds = %154
  %164 = load i32, i32* @M_DUART_FRM_ERR, align 4
  %165 = load i32, i32* @M_DUART_PARITY_ERR, align 4
  %166 = or i32 %164, %165
  %167 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %168 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 4
  br label %171

171:                                              ; preds = %163, %154
  %172 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %173 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @IGNBRK, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %197

178:                                              ; preds = %171
  %179 = load i32, i32* @M_DUART_RCVD_BRK, align 4
  %180 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %181 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = or i32 %182, %179
  store i32 %183, i32* %181, align 4
  %184 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %185 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @IGNPAR, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %178
  %191 = load i32, i32* @M_DUART_OVRUN_ERR, align 4
  %192 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %193 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = or i32 %194, %191
  store i32 %195, i32* %193, align 4
  br label %196

196:                                              ; preds = %190, %178
  br label %197

197:                                              ; preds = %196, %171
  %198 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %199 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @CREAD, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %197
  %205 = load i32, i32* @M_DUART_RX_EN, align 4
  store i32 %205, i32* %19, align 4
  br label %208

206:                                              ; preds = %197
  %207 = load i32, i32* @M_DUART_RX_DIS, align 4
  store i32 %207, i32* %19, align 4
  br label %208

208:                                              ; preds = %206, %204
  %209 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %210 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @CRTSCTS, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %219

215:                                              ; preds = %208
  %216 = load i32, i32* @M_DUART_CTS_CHNG_ENA, align 4
  %217 = load i32, i32* %10, align 4
  %218 = or i32 %217, %216
  store i32 %218, i32* %10, align 4
  br label %224

219:                                              ; preds = %208
  %220 = load i32, i32* @M_DUART_CTS_CHNG_ENA, align 4
  %221 = xor i32 %220, -1
  %222 = load i32, i32* %10, align 4
  %223 = and i32 %222, %221
  store i32 %223, i32* %10, align 4
  br label %224

224:                                              ; preds = %219, %215
  %225 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %226 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %225, i32 0, i32 2
  %227 = call i32 @spin_lock(i32* %226)
  %228 = load %struct.sbd_port*, %struct.sbd_port** %7, align 8
  %229 = getelementptr inbounds %struct.sbd_port, %struct.sbd_port* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %236

232:                                              ; preds = %224
  %233 = load i32, i32* @M_DUART_TX_DIS, align 4
  %234 = load i32, i32* %19, align 4
  %235 = or i32 %234, %233
  store i32 %235, i32* %19, align 4
  br label %240

236:                                              ; preds = %224
  %237 = load i32, i32* @M_DUART_TX_EN, align 4
  %238 = load i32, i32* %19, align 4
  %239 = or i32 %238, %237
  store i32 %239, i32* %19, align 4
  br label %240

240:                                              ; preds = %236, %232
  %241 = load %struct.sbd_port*, %struct.sbd_port** %7, align 8
  %242 = load i32, i32* @R_DUART_MODE_REG_1, align 4
  %243 = call i32 @read_sbdchn(%struct.sbd_port* %241, i32 %242)
  %244 = load i32, i32* %11, align 4
  %245 = and i32 %243, %244
  store i32 %245, i32* %14, align 4
  %246 = load %struct.sbd_port*, %struct.sbd_port** %7, align 8
  %247 = load i32, i32* @R_DUART_MODE_REG_2, align 4
  %248 = call i32 @read_sbdchn(%struct.sbd_port* %246, i32 %247)
  %249 = load i32, i32* %12, align 4
  %250 = and i32 %248, %249
  store i32 %250, i32* %15, align 4
  %251 = load %struct.sbd_port*, %struct.sbd_port** %7, align 8
  %252 = load i32, i32* @R_DUART_AUXCTL_X, align 4
  %253 = call i32 @read_sbdchn(%struct.sbd_port* %251, i32 %252)
  %254 = load i32, i32* %13, align 4
  %255 = and i32 %253, %254
  store i32 %255, i32* %16, align 4
  %256 = load %struct.sbd_port*, %struct.sbd_port** %7, align 8
  %257 = getelementptr inbounds %struct.sbd_port, %struct.sbd_port* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %263, label %260

260:                                              ; preds = %240
  %261 = load %struct.sbd_port*, %struct.sbd_port** %7, align 8
  %262 = call i32 @sbd_line_drain(%struct.sbd_port* %261)
  br label %263

263:                                              ; preds = %260, %240
  %264 = load %struct.sbd_port*, %struct.sbd_port** %7, align 8
  %265 = load i32, i32* @R_DUART_CMD, align 4
  %266 = load i32, i32* @M_DUART_TX_DIS, align 4
  %267 = load i32, i32* @M_DUART_RX_DIS, align 4
  %268 = or i32 %266, %267
  %269 = call i32 @write_sbdchn(%struct.sbd_port* %264, i32 %265, i32 %268)
  %270 = load %struct.sbd_port*, %struct.sbd_port** %7, align 8
  %271 = load i32, i32* @R_DUART_MODE_REG_1, align 4
  %272 = load i32, i32* %8, align 4
  %273 = load i32, i32* %14, align 4
  %274 = or i32 %272, %273
  %275 = call i32 @write_sbdchn(%struct.sbd_port* %270, i32 %271, i32 %274)
  %276 = load %struct.sbd_port*, %struct.sbd_port** %7, align 8
  %277 = load i32, i32* @R_DUART_MODE_REG_2, align 4
  %278 = load i32, i32* %9, align 4
  %279 = load i32, i32* %15, align 4
  %280 = or i32 %278, %279
  %281 = call i32 @write_sbdchn(%struct.sbd_port* %276, i32 %277, i32 %280)
  %282 = load %struct.sbd_port*, %struct.sbd_port** %7, align 8
  %283 = load i32, i32* @R_DUART_CLK_SEL, align 4
  %284 = load i32, i32* %18, align 4
  %285 = call i32 @write_sbdchn(%struct.sbd_port* %282, i32 %283, i32 %284)
  %286 = load %struct.sbd_port*, %struct.sbd_port** %7, align 8
  %287 = load i32, i32* @R_DUART_AUXCTL_X, align 4
  %288 = load i32, i32* %10, align 4
  %289 = load i32, i32* %16, align 4
  %290 = or i32 %288, %289
  %291 = call i32 @write_sbdchn(%struct.sbd_port* %286, i32 %287, i32 %290)
  %292 = load %struct.sbd_port*, %struct.sbd_port** %7, align 8
  %293 = load i32, i32* @R_DUART_CMD, align 4
  %294 = load i32, i32* %19, align 4
  %295 = call i32 @write_sbdchn(%struct.sbd_port* %292, i32 %293, i32 %294)
  %296 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %297 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %296, i32 0, i32 2
  %298 = call i32 @spin_unlock(i32* %297)
  ret void
}

declare dso_local %struct.sbd_port* @to_sport(%struct.uart_port*) #1

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @V_DUART_BAUD_RATE(i32) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @read_sbdchn(%struct.sbd_port*, i32) #1

declare dso_local i32 @sbd_line_drain(%struct.sbd_port*) #1

declare dso_local i32 @write_sbdchn(%struct.sbd_port*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
