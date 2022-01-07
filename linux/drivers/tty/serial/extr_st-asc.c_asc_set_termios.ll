; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_st-asc.c_asc_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_st-asc.c_asc_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.device_node* }
%struct.device_node = type { i32, i32 }
%struct.ktermios = type { i32, i32 }
%struct.asc_port = type { %struct.TYPE_4__, i32, %struct.gpio_desc*, i64*, i32, i32, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.gpio_desc = type { i32 }

@CMSPAR = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@ASC_CTL = common dso_local global i32 0, align 4
@ASC_CTL_RUN = common dso_local global i32 0, align 4
@ASC_CTL_RXENABLE = common dso_local global i32 0, align 4
@ASC_CTL_FIFOENABLE = common dso_local global i32 0, align 4
@ASC_TXRESET = common dso_local global i32 0, align 4
@ASC_RXRESET = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@CS7 = common dso_local global i32 0, align 4
@ASC_CTL_MODE_7BIT_PAR = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@ASC_CTL_MODE_8BIT_PAR = common dso_local global i32 0, align 4
@ASC_CTL_MODE_8BIT = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@ASC_CTL_STOP_2BIT = common dso_local global i32 0, align 4
@ASC_CTL_STOP_1BIT = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@ASC_CTL_PARITYODD = common dso_local global i32 0, align 4
@ASC_CTL_CTSENABLE = common dso_local global i32 0, align 4
@DEFAULT = common dso_local global i64 0, align 8
@NO_HW_FLOWCTRL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"rts\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@ASC_BAUDRATE = common dso_local global i32 0, align 4
@ASC_CTL_BAUDMODE = common dso_local global i32 0, align 4
@ASC_RXBUF_DUMMY_OE = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@ASC_RXBUF_FE = common dso_local global i32 0, align 4
@ASC_RXBUF_PE = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@ASC_RXBUF_DUMMY_BE = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@ASC_RXBUF_DUMMY_RX = common dso_local global i32 0, align 4
@ASC_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @asc_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asc_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca %struct.asc_port*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.gpio_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %15 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %16 = call %struct.asc_port* @to_asc_port(%struct.uart_port* %15)
  store %struct.asc_port* %16, %struct.asc_port** %7, align 8
  %17 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %18 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %17, i32 0, i32 2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.device_node*, %struct.device_node** %20, align 8
  store %struct.device_node* %21, %struct.device_node** %8, align 8
  %22 = load i32, i32* @CMSPAR, align 4
  %23 = load %struct.asc_port*, %struct.asc_port** %7, align 8
  %24 = getelementptr inbounds %struct.asc_port, %struct.asc_port* %23, i32 0, i32 6
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %30

28:                                               ; preds = %3
  %29 = load i32, i32* @CRTSCTS, align 4
  br label %30

30:                                               ; preds = %28, %27
  %31 = phi i32 [ 0, %27 ], [ %29, %28 ]
  %32 = or i32 %22, %31
  %33 = xor i32 %32, -1
  %34 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %35 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load %struct.asc_port*, %struct.asc_port** %7, align 8
  %39 = getelementptr inbounds %struct.asc_port, %struct.asc_port* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @clk_get_rate(i32 %40)
  %42 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %43 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %45 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %46 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %47 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %48 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sdiv i32 %49, 16
  %51 = call i32 @uart_get_baud_rate(%struct.uart_port* %44, %struct.ktermios* %45, %struct.ktermios* %46, i32 0, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %53 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %12, align 4
  %55 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %56 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %55, i32 0, i32 1
  %57 = load i64, i64* %13, align 8
  %58 = call i32 @spin_lock_irqsave(i32* %56, i64 %57)
  %59 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %60 = load i32, i32* @ASC_CTL, align 4
  %61 = call i32 @asc_in(%struct.uart_port* %59, i32 %60)
  store i32 %61, i32* %11, align 4
  %62 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %63 = load i32, i32* @ASC_CTL, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @ASC_CTL_RUN, align 4
  %66 = xor i32 %65, -1
  %67 = and i32 %64, %66
  %68 = call i32 @asc_out(%struct.uart_port* %62, i32 %63, i32 %67)
  %69 = load i32, i32* @ASC_CTL_RXENABLE, align 4
  %70 = load i32, i32* @ASC_CTL_FIFOENABLE, align 4
  %71 = or i32 %69, %70
  store i32 %71, i32* %11, align 4
  %72 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %73 = load i32, i32* @ASC_TXRESET, align 4
  %74 = call i32 @asc_out(%struct.uart_port* %72, i32 %73, i32 1)
  %75 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %76 = load i32, i32* @ASC_RXRESET, align 4
  %77 = call i32 @asc_out(%struct.uart_port* %75, i32 %76, i32 1)
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* @CSIZE, align 4
  %80 = and i32 %78, %79
  %81 = load i32, i32* @CS7, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %30
  %84 = load i32, i32* @ASC_CTL_MODE_7BIT_PAR, align 4
  %85 = load i32, i32* %11, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %11, align 4
  br label %100

87:                                               ; preds = %30
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* @PARENB, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = load i32, i32* @ASC_CTL_MODE_8BIT_PAR, align 4
  br label %96

94:                                               ; preds = %87
  %95 = load i32, i32* @ASC_CTL_MODE_8BIT, align 4
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i32 [ %93, %92 ], [ %95, %94 ]
  %98 = load i32, i32* %11, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %11, align 4
  br label %100

100:                                              ; preds = %96, %83
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* @CSTOPB, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = load i32, i32* @ASC_CTL_STOP_2BIT, align 4
  br label %109

107:                                              ; preds = %100
  %108 = load i32, i32* @ASC_CTL_STOP_1BIT, align 4
  br label %109

109:                                              ; preds = %107, %105
  %110 = phi i32 [ %106, %105 ], [ %108, %107 ]
  %111 = load i32, i32* %11, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* @PARODD, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %109
  %118 = load i32, i32* @ASC_CTL_PARITYODD, align 4
  %119 = load i32, i32* %11, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %11, align 4
  br label %121

121:                                              ; preds = %117, %109
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* @CRTSCTS, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %155

126:                                              ; preds = %121
  %127 = load i32, i32* @ASC_CTL_CTSENABLE, align 4
  %128 = load i32, i32* %11, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %11, align 4
  %130 = load %struct.asc_port*, %struct.asc_port** %7, align 8
  %131 = getelementptr inbounds %struct.asc_port, %struct.asc_port* %130, i32 0, i32 2
  %132 = load %struct.gpio_desc*, %struct.gpio_desc** %131, align 8
  %133 = icmp ne %struct.gpio_desc* %132, null
  br i1 %133, label %134, label %154

134:                                              ; preds = %126
  %135 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %136 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %135, i32 0, i32 2
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %136, align 8
  %138 = load %struct.asc_port*, %struct.asc_port** %7, align 8
  %139 = getelementptr inbounds %struct.asc_port, %struct.asc_port* %138, i32 0, i32 2
  %140 = load %struct.gpio_desc*, %struct.gpio_desc** %139, align 8
  %141 = call i32 @devm_gpiod_put(%struct.TYPE_5__* %137, %struct.gpio_desc* %140)
  %142 = load %struct.asc_port*, %struct.asc_port** %7, align 8
  %143 = getelementptr inbounds %struct.asc_port, %struct.asc_port* %142, i32 0, i32 2
  store %struct.gpio_desc* null, %struct.gpio_desc** %143, align 8
  %144 = load %struct.asc_port*, %struct.asc_port** %7, align 8
  %145 = getelementptr inbounds %struct.asc_port, %struct.asc_port* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.asc_port*, %struct.asc_port** %7, align 8
  %148 = getelementptr inbounds %struct.asc_port, %struct.asc_port* %147, i32 0, i32 3
  %149 = load i64*, i64** %148, align 8
  %150 = load i64, i64* @DEFAULT, align 8
  %151 = getelementptr inbounds i64, i64* %149, i64 %150
  %152 = load i64, i64* %151, align 8
  %153 = call i32 @pinctrl_select_state(i32 %146, i64 %152)
  br label %154

154:                                              ; preds = %134, %126
  br label %198

155:                                              ; preds = %121
  %156 = load %struct.asc_port*, %struct.asc_port** %7, align 8
  %157 = getelementptr inbounds %struct.asc_port, %struct.asc_port* %156, i32 0, i32 2
  %158 = load %struct.gpio_desc*, %struct.gpio_desc** %157, align 8
  %159 = icmp ne %struct.gpio_desc* %158, null
  br i1 %159, label %197, label %160

160:                                              ; preds = %155
  %161 = load %struct.asc_port*, %struct.asc_port** %7, align 8
  %162 = getelementptr inbounds %struct.asc_port, %struct.asc_port* %161, i32 0, i32 3
  %163 = load i64*, i64** %162, align 8
  %164 = load i64, i64* @NO_HW_FLOWCTRL, align 8
  %165 = getelementptr inbounds i64, i64* %163, i64 %164
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %197

168:                                              ; preds = %160
  %169 = load %struct.asc_port*, %struct.asc_port** %7, align 8
  %170 = getelementptr inbounds %struct.asc_port, %struct.asc_port* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.asc_port*, %struct.asc_port** %7, align 8
  %173 = getelementptr inbounds %struct.asc_port, %struct.asc_port* %172, i32 0, i32 3
  %174 = load i64*, i64** %173, align 8
  %175 = load i64, i64* @NO_HW_FLOWCTRL, align 8
  %176 = getelementptr inbounds i64, i64* %174, i64 %175
  %177 = load i64, i64* %176, align 8
  %178 = call i32 @pinctrl_select_state(i32 %171, i64 %177)
  %179 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %180 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %179, i32 0, i32 2
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %180, align 8
  %182 = load %struct.device_node*, %struct.device_node** %8, align 8
  %183 = getelementptr inbounds %struct.device_node, %struct.device_node* %182, i32 0, i32 1
  %184 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %185 = load %struct.device_node*, %struct.device_node** %8, align 8
  %186 = getelementptr inbounds %struct.device_node, %struct.device_node* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call %struct.gpio_desc* @devm_fwnode_get_gpiod_from_child(%struct.TYPE_5__* %181, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %183, i32 %184, i32 %187)
  store %struct.gpio_desc* %188, %struct.gpio_desc** %9, align 8
  %189 = load %struct.gpio_desc*, %struct.gpio_desc** %9, align 8
  %190 = call i32 @IS_ERR(%struct.gpio_desc* %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %196, label %192

192:                                              ; preds = %168
  %193 = load %struct.gpio_desc*, %struct.gpio_desc** %9, align 8
  %194 = load %struct.asc_port*, %struct.asc_port** %7, align 8
  %195 = getelementptr inbounds %struct.asc_port, %struct.asc_port* %194, i32 0, i32 2
  store %struct.gpio_desc* %193, %struct.gpio_desc** %195, align 8
  br label %196

196:                                              ; preds = %192, %168
  br label %197

197:                                              ; preds = %196, %160, %155
  br label %198

198:                                              ; preds = %197, %154
  %199 = load i32, i32* %10, align 4
  %200 = icmp ult i32 %199, 19200
  br i1 %200, label %201, label %216

201:                                              ; preds = %198
  %202 = load %struct.asc_port*, %struct.asc_port** %7, align 8
  %203 = getelementptr inbounds %struct.asc_port, %struct.asc_port* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %216, label %206

206:                                              ; preds = %201
  %207 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %208 = load i32, i32* @ASC_BAUDRATE, align 4
  %209 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %210 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* %10, align 4
  %213 = mul i32 16, %212
  %214 = udiv i32 %211, %213
  %215 = call i32 @asc_out(%struct.uart_port* %207, i32 %208, i32 %214)
  br label %232

216:                                              ; preds = %201, %198
  %217 = load i32, i32* %10, align 4
  %218 = mul nsw i32 %217, 65536
  store i32 %218, i32* %14, align 4
  %219 = load i32, i32* %14, align 4
  %220 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %221 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = sdiv i32 %222, 16
  %224 = call i32 @do_div(i32 %219, i32 %223)
  %225 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %226 = load i32, i32* @ASC_BAUDRATE, align 4
  %227 = load i32, i32* %14, align 4
  %228 = call i32 @asc_out(%struct.uart_port* %225, i32 %226, i32 %227)
  %229 = load i32, i32* @ASC_CTL_BAUDMODE, align 4
  %230 = load i32, i32* %11, align 4
  %231 = or i32 %230, %229
  store i32 %231, i32* %11, align 4
  br label %232

232:                                              ; preds = %216, %206
  %233 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %234 = load i32, i32* %12, align 4
  %235 = load i32, i32* %10, align 4
  %236 = call i32 @uart_update_timeout(%struct.uart_port* %233, i32 %234, i32 %235)
  %237 = load i32, i32* @ASC_RXBUF_DUMMY_OE, align 4
  %238 = load %struct.asc_port*, %struct.asc_port** %7, align 8
  %239 = getelementptr inbounds %struct.asc_port, %struct.asc_port* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 0
  store i32 %237, i32* %240, align 8
  %241 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %242 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @INPCK, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %256

247:                                              ; preds = %232
  %248 = load i32, i32* @ASC_RXBUF_FE, align 4
  %249 = load i32, i32* @ASC_RXBUF_PE, align 4
  %250 = or i32 %248, %249
  %251 = load %struct.asc_port*, %struct.asc_port** %7, align 8
  %252 = getelementptr inbounds %struct.asc_port, %struct.asc_port* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = or i32 %254, %250
  store i32 %255, i32* %253, align 8
  br label %256

256:                                              ; preds = %247, %232
  %257 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %258 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* @IGNBRK, align 4
  %261 = load i32, i32* @BRKINT, align 4
  %262 = or i32 %260, %261
  %263 = load i32, i32* @PARMRK, align 4
  %264 = or i32 %262, %263
  %265 = and i32 %259, %264
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %274

267:                                              ; preds = %256
  %268 = load i32, i32* @ASC_RXBUF_DUMMY_BE, align 4
  %269 = load %struct.asc_port*, %struct.asc_port** %7, align 8
  %270 = getelementptr inbounds %struct.asc_port, %struct.asc_port* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = or i32 %272, %268
  store i32 %273, i32* %271, align 8
  br label %274

274:                                              ; preds = %267, %256
  %275 = load %struct.asc_port*, %struct.asc_port** %7, align 8
  %276 = getelementptr inbounds %struct.asc_port, %struct.asc_port* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %276, i32 0, i32 1
  store i32 0, i32* %277, align 4
  %278 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %279 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* @IGNPAR, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %293

284:                                              ; preds = %274
  %285 = load i32, i32* @ASC_RXBUF_FE, align 4
  %286 = load i32, i32* @ASC_RXBUF_PE, align 4
  %287 = or i32 %285, %286
  %288 = load %struct.asc_port*, %struct.asc_port** %7, align 8
  %289 = getelementptr inbounds %struct.asc_port, %struct.asc_port* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = or i32 %291, %287
  store i32 %292, i32* %290, align 4
  br label %293

293:                                              ; preds = %284, %274
  %294 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %295 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* @IGNBRK, align 4
  %298 = and i32 %296, %297
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %321

300:                                              ; preds = %293
  %301 = load i32, i32* @ASC_RXBUF_DUMMY_BE, align 4
  %302 = load %struct.asc_port*, %struct.asc_port** %7, align 8
  %303 = getelementptr inbounds %struct.asc_port, %struct.asc_port* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = or i32 %305, %301
  store i32 %306, i32* %304, align 4
  %307 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %308 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* @IGNPAR, align 4
  %311 = and i32 %309, %310
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %320

313:                                              ; preds = %300
  %314 = load i32, i32* @ASC_RXBUF_DUMMY_OE, align 4
  %315 = load %struct.asc_port*, %struct.asc_port** %7, align 8
  %316 = getelementptr inbounds %struct.asc_port, %struct.asc_port* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = or i32 %318, %314
  store i32 %319, i32* %317, align 4
  br label %320

320:                                              ; preds = %313, %300
  br label %321

321:                                              ; preds = %320, %293
  %322 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %323 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 4
  %325 = load i32, i32* @CREAD, align 4
  %326 = and i32 %324, %325
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %335, label %328

328:                                              ; preds = %321
  %329 = load i32, i32* @ASC_RXBUF_DUMMY_RX, align 4
  %330 = load %struct.asc_port*, %struct.asc_port** %7, align 8
  %331 = getelementptr inbounds %struct.asc_port, %struct.asc_port* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = or i32 %333, %329
  store i32 %334, i32* %332, align 4
  br label %335

335:                                              ; preds = %328, %321
  %336 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %337 = load i32, i32* @ASC_TIMEOUT, align 4
  %338 = call i32 @asc_out(%struct.uart_port* %336, i32 %337, i32 20)
  %339 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %340 = load i32, i32* @ASC_CTL, align 4
  %341 = load i32, i32* %11, align 4
  %342 = load i32, i32* @ASC_CTL_RUN, align 4
  %343 = or i32 %341, %342
  %344 = call i32 @asc_out(%struct.uart_port* %339, i32 %340, i32 %343)
  %345 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %346 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %345, i32 0, i32 1
  %347 = load i64, i64* %13, align 8
  %348 = call i32 @spin_unlock_irqrestore(i32* %346, i64 %347)
  ret void
}

declare dso_local %struct.asc_port* @to_asc_port(%struct.uart_port*) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @asc_in(%struct.uart_port*, i32) #1

declare dso_local i32 @asc_out(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @devm_gpiod_put(%struct.TYPE_5__*, %struct.gpio_desc*) #1

declare dso_local i32 @pinctrl_select_state(i32, i64) #1

declare dso_local %struct.gpio_desc* @devm_fwnode_get_gpiod_from_child(%struct.TYPE_5__*, i8*, i32*, i32, i32) #1

declare dso_local i32 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
