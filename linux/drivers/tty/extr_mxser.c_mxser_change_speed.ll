; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_mxser.c_mxser_change_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_mxser.c_mxser_change_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i64, i32, %struct.TYPE_3__, %struct.mxser_port* }
%struct.TYPE_3__ = type { i32 }
%struct.mxser_port = type { i64, i32, i32, i32, i32, i32, i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64 }

@mxser_set_baud_method = common dso_local global i64* null, align 8
@CSIZE = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@UART_LCR_PARITY = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@UART_LCR_EPAR = common dso_local global i32 0, align 4
@CMSPAR = common dso_local global i32 0, align 4
@UART_LCR_SPAR = common dso_local global i32 0, align 4
@PORT_8250 = common dso_local global i64 0, align 8
@PORT_16450 = common dso_local global i64 0, align 8
@UART_FCR_ENABLE_FIFO = common dso_local global i32 0, align 4
@MOXA_MUST_FCR_GDA_MODE_ENABLE = common dso_local global i32 0, align 4
@UART_FCR_TRIGGER_1 = common dso_local global i32 0, align 4
@UART_FCR_TRIGGER_4 = common dso_local global i32 0, align 4
@UART_FCR_TRIGGER_8 = common dso_local global i32 0, align 4
@UART_FCR_TRIGGER_14 = common dso_local global i32 0, align 4
@UART_IER_MSI = common dso_local global i32 0, align 4
@UART_MCR_AFE = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@PORT_16550A = common dso_local global i64 0, align 8
@UART_MSR = common dso_local global i64 0, align 8
@UART_MSR_CTS = common dso_local global i8 0, align 1
@UART_IER_THRI = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i64 0, align 8
@UART_MCR = common dso_local global i64 0, align 8
@CLOCAL = common dso_local global i32 0, align 4
@UART_LSR_OE = common dso_local global i32 0, align 4
@UART_LSR_THRE = common dso_local global i32 0, align 4
@UART_LSR_DR = common dso_local global i32 0, align 4
@UART_LSR_FE = common dso_local global i32 0, align 4
@UART_LSR_PE = common dso_local global i32 0, align 4
@UART_LSR_BI = common dso_local global i32 0, align 4
@UART_FCR = common dso_local global i64 0, align 8
@UART_LCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*)* @mxser_change_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxser_change_speed(%struct.tty_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.mxser_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  %10 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %11 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %10, i32 0, i32 3
  %12 = load %struct.mxser_port*, %struct.mxser_port** %11, align 8
  store %struct.mxser_port* %12, %struct.mxser_port** %4, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  %17 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %18 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %17, i32 0, i32 6
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %2, align 4
  br label %471

23:                                               ; preds = %1
  %24 = load i64*, i64** @mxser_set_baud_method, align 8
  %25 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %26 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i64, i64* %24, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %23
  %32 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %33 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %34 = call i32 @tty_get_baud_rate(%struct.tty_struct* %33)
  %35 = call i32 @mxser_set_baud(%struct.tty_struct* %32, i32 %34)
  br label %36

36:                                               ; preds = %31, %23
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @CSIZE, align 4
  %39 = and i32 %37, %38
  switch i32 %39, label %44 [
    i32 131, label %40
    i32 130, label %41
    i32 129, label %42
    i32 128, label %43
  ]

40:                                               ; preds = %36
  store i32 0, i32* %6, align 4
  br label %45

41:                                               ; preds = %36
  store i32 1, i32* %6, align 4
  br label %45

42:                                               ; preds = %36
  store i32 2, i32* %6, align 4
  br label %45

43:                                               ; preds = %36
  store i32 3, i32* %6, align 4
  br label %45

44:                                               ; preds = %36
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %44, %43, %42, %41, %40
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @CSTOPB, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* %6, align 4
  %52 = or i32 %51, 4
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %50, %45
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @PARENB, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i32, i32* @UART_LCR_PARITY, align 4
  %60 = load i32, i32* %6, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %58, %53
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @PARODD, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* @UART_LCR_EPAR, align 4
  %69 = load i32, i32* %6, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %67, %62
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @CMSPAR, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load i32, i32* @UART_LCR_SPAR, align 4
  %78 = load i32, i32* %6, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %76, %71
  %81 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %82 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @PORT_8250, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %92, label %86

86:                                               ; preds = %80
  %87 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %88 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @PORT_16450, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %108

92:                                               ; preds = %86, %80
  %93 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %94 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %93, i32 0, i32 7
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %92
  %100 = load i32, i32* @UART_FCR_ENABLE_FIFO, align 4
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* @MOXA_MUST_FCR_GDA_MODE_ENABLE, align 4
  %102 = load i32, i32* %7, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %7, align 4
  %104 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %105 = call i32 @mxser_set_must_fifo_value(%struct.mxser_port* %104)
  br label %107

106:                                              ; preds = %92
  store i32 0, i32* %7, align 4
  br label %107

107:                                              ; preds = %106, %99
  br label %144

108:                                              ; preds = %86
  %109 = load i32, i32* @UART_FCR_ENABLE_FIFO, align 4
  store i32 %109, i32* %7, align 4
  %110 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %111 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %110, i32 0, i32 7
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %108
  %117 = load i32, i32* @MOXA_MUST_FCR_GDA_MODE_ENABLE, align 4
  %118 = load i32, i32* %7, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %7, align 4
  %120 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %121 = call i32 @mxser_set_must_fifo_value(%struct.mxser_port* %120)
  br label %143

122:                                              ; preds = %108
  %123 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %124 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  switch i32 %125, label %138 [
    i32 1, label %126
    i32 4, label %130
    i32 8, label %134
  ]

126:                                              ; preds = %122
  %127 = load i32, i32* @UART_FCR_TRIGGER_1, align 4
  %128 = load i32, i32* %7, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %7, align 4
  br label %142

130:                                              ; preds = %122
  %131 = load i32, i32* @UART_FCR_TRIGGER_4, align 4
  %132 = load i32, i32* %7, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %7, align 4
  br label %142

134:                                              ; preds = %122
  %135 = load i32, i32* @UART_FCR_TRIGGER_8, align 4
  %136 = load i32, i32* %7, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %7, align 4
  br label %142

138:                                              ; preds = %122
  %139 = load i32, i32* @UART_FCR_TRIGGER_14, align 4
  %140 = load i32, i32* %7, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %7, align 4
  br label %142

142:                                              ; preds = %138, %134, %130, %126
  br label %143

143:                                              ; preds = %142, %116
  br label %144

144:                                              ; preds = %143, %107
  %145 = load i32, i32* @UART_IER_MSI, align 4
  %146 = xor i32 %145, -1
  %147 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %148 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = and i32 %149, %146
  store i32 %150, i32* %148, align 4
  %151 = load i32, i32* @UART_MCR_AFE, align 4
  %152 = xor i32 %151, -1
  %153 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %154 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = and i32 %155, %152
  store i32 %156, i32* %154, align 8
  %157 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %158 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %157, i32 0, i32 8
  %159 = load i32, i32* %5, align 4
  %160 = load i32, i32* @CRTSCTS, align 4
  %161 = and i32 %159, %160
  %162 = call i32 @tty_port_set_cts_flow(i32* %158, i32 %161)
  %163 = load i32, i32* %5, align 4
  %164 = load i32, i32* @CRTSCTS, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %297

167:                                              ; preds = %144
  %168 = load i32, i32* @UART_IER_MSI, align 4
  %169 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %170 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = or i32 %171, %168
  store i32 %172, i32* %170, align 4
  %173 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %174 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @PORT_16550A, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %185, label %178

178:                                              ; preds = %167
  %179 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %180 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %179, i32 0, i32 7
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %178, %167
  %186 = load i32, i32* @UART_MCR_AFE, align 4
  %187 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %188 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 8
  %190 = or i32 %189, %186
  store i32 %190, i32* %188, align 8
  br label %296

191:                                              ; preds = %178
  %192 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %193 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %192, i32 0, i32 6
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @UART_MSR, align 8
  %196 = add nsw i64 %194, %195
  %197 = call zeroext i8 @inb(i64 %196)
  store i8 %197, i8* %9, align 1
  %198 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %199 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %255

202:                                              ; preds = %191
  %203 = load i8, i8* %9, align 1
  %204 = zext i8 %203 to i32
  %205 = load i8, i8* @UART_MSR_CTS, align 1
  %206 = zext i8 %205 to i32
  %207 = and i32 %204, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %254

209:                                              ; preds = %202
  %210 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %211 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %210, i32 0, i32 1
  store i32 0, i32* %211, align 8
  %212 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %213 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @PORT_16550A, align 8
  %216 = icmp ne i64 %214, %215
  br i1 %216, label %217, label %251

217:                                              ; preds = %209
  %218 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %219 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %218, i32 0, i32 7
  %220 = load %struct.TYPE_4__*, %struct.TYPE_4__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %251, label %224

224:                                              ; preds = %217
  %225 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %226 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @UART_IER_THRI, align 4
  %229 = xor i32 %228, -1
  %230 = and i32 %227, %229
  %231 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %232 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %231, i32 0, i32 6
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @UART_IER, align 8
  %235 = add nsw i64 %233, %234
  %236 = call i32 @outb(i32 %230, i64 %235)
  %237 = load i32, i32* @UART_IER_THRI, align 4
  %238 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %239 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 4
  %241 = or i32 %240, %237
  store i32 %241, i32* %239, align 4
  %242 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %243 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %246 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %245, i32 0, i32 6
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @UART_IER, align 8
  %249 = add nsw i64 %247, %248
  %250 = call i32 @outb(i32 %244, i64 %249)
  br label %251

251:                                              ; preds = %224, %217, %209
  %252 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %253 = call i32 @tty_wakeup(%struct.tty_struct* %252)
  br label %254

254:                                              ; preds = %251, %202
  br label %295

255:                                              ; preds = %191
  %256 = load i8, i8* %9, align 1
  %257 = zext i8 %256 to i32
  %258 = load i8, i8* @UART_MSR_CTS, align 1
  %259 = zext i8 %258 to i32
  %260 = and i32 %257, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %294, label %262

262:                                              ; preds = %255
  %263 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %264 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %263, i32 0, i32 1
  store i32 1, i32* %264, align 8
  %265 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %266 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = load i64, i64* @PORT_16550A, align 8
  %269 = icmp ne i64 %267, %268
  br i1 %269, label %270, label %293

270:                                              ; preds = %262
  %271 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %272 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %271, i32 0, i32 7
  %273 = load %struct.TYPE_4__*, %struct.TYPE_4__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %293, label %277

277:                                              ; preds = %270
  %278 = load i32, i32* @UART_IER_THRI, align 4
  %279 = xor i32 %278, -1
  %280 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %281 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 4
  %283 = and i32 %282, %279
  store i32 %283, i32* %281, align 4
  %284 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %285 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %288 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %287, i32 0, i32 6
  %289 = load i64, i64* %288, align 8
  %290 = load i64, i64* @UART_IER, align 8
  %291 = add nsw i64 %289, %290
  %292 = call i32 @outb(i32 %286, i64 %291)
  br label %293

293:                                              ; preds = %277, %270, %262
  br label %294

294:                                              ; preds = %293, %255
  br label %295

295:                                              ; preds = %294, %254
  br label %296

296:                                              ; preds = %295, %185
  br label %297

297:                                              ; preds = %296, %144
  %298 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %299 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %298, i32 0, i32 3
  %300 = load i32, i32* %299, align 8
  %301 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %302 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %301, i32 0, i32 6
  %303 = load i64, i64* %302, align 8
  %304 = load i64, i64* @UART_MCR, align 8
  %305 = add nsw i64 %303, %304
  %306 = call i32 @outb(i32 %300, i64 %305)
  %307 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %308 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %307, i32 0, i32 8
  %309 = load i32, i32* %5, align 4
  %310 = xor i32 %309, -1
  %311 = load i32, i32* @CLOCAL, align 4
  %312 = and i32 %310, %311
  %313 = call i32 @tty_port_set_check_carrier(i32* %308, i32 %312)
  %314 = load i32, i32* %5, align 4
  %315 = xor i32 %314, -1
  %316 = load i32, i32* @CLOCAL, align 4
  %317 = and i32 %315, %316
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %325

319:                                              ; preds = %297
  %320 = load i32, i32* @UART_IER_MSI, align 4
  %321 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %322 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 4
  %324 = or i32 %323, %320
  store i32 %324, i32* %322, align 4
  br label %325

325:                                              ; preds = %319, %297
  %326 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %327 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %326, i32 0, i32 2
  %328 = load i32, i32* %327, align 4
  %329 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %330 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %329, i32 0, i32 6
  %331 = load i64, i64* %330, align 8
  %332 = load i64, i64* @UART_IER, align 8
  %333 = add nsw i64 %331, %332
  %334 = call i32 @outb(i32 %328, i64 %333)
  %335 = load i32, i32* @UART_LSR_OE, align 4
  %336 = load i32, i32* @UART_LSR_THRE, align 4
  %337 = or i32 %335, %336
  %338 = load i32, i32* @UART_LSR_DR, align 4
  %339 = or i32 %337, %338
  %340 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %341 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %340, i32 0, i32 4
  store i32 %339, i32* %341, align 4
  %342 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %343 = call i64 @I_INPCK(%struct.tty_struct* %342)
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %353

345:                                              ; preds = %325
  %346 = load i32, i32* @UART_LSR_FE, align 4
  %347 = load i32, i32* @UART_LSR_PE, align 4
  %348 = or i32 %346, %347
  %349 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %350 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %349, i32 0, i32 4
  %351 = load i32, i32* %350, align 4
  %352 = or i32 %351, %348
  store i32 %352, i32* %350, align 4
  br label %353

353:                                              ; preds = %345, %325
  %354 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %355 = call i64 @I_BRKINT(%struct.tty_struct* %354)
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %361, label %357

357:                                              ; preds = %353
  %358 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %359 = call i64 @I_PARMRK(%struct.tty_struct* %358)
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %361, label %367

361:                                              ; preds = %357, %353
  %362 = load i32, i32* @UART_LSR_BI, align 4
  %363 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %364 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %363, i32 0, i32 4
  %365 = load i32, i32* %364, align 4
  %366 = or i32 %365, %362
  store i32 %366, i32* %364, align 4
  br label %367

367:                                              ; preds = %361, %357
  %368 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %369 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %368, i32 0, i32 5
  store i32 0, i32* %369, align 8
  %370 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %371 = call i64 @I_IGNBRK(%struct.tty_struct* %370)
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %373, label %407

373:                                              ; preds = %367
  %374 = load i32, i32* @UART_LSR_BI, align 4
  %375 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %376 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %375, i32 0, i32 5
  %377 = load i32, i32* %376, align 8
  %378 = or i32 %377, %374
  store i32 %378, i32* %376, align 8
  %379 = load i32, i32* @UART_LSR_BI, align 4
  %380 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %381 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %380, i32 0, i32 4
  %382 = load i32, i32* %381, align 4
  %383 = or i32 %382, %379
  store i32 %383, i32* %381, align 4
  %384 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %385 = call i64 @I_IGNPAR(%struct.tty_struct* %384)
  %386 = icmp ne i64 %385, 0
  br i1 %386, label %387, label %406

387:                                              ; preds = %373
  %388 = load i32, i32* @UART_LSR_OE, align 4
  %389 = load i32, i32* @UART_LSR_PE, align 4
  %390 = or i32 %388, %389
  %391 = load i32, i32* @UART_LSR_FE, align 4
  %392 = or i32 %390, %391
  %393 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %394 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %393, i32 0, i32 5
  %395 = load i32, i32* %394, align 8
  %396 = or i32 %395, %392
  store i32 %396, i32* %394, align 8
  %397 = load i32, i32* @UART_LSR_OE, align 4
  %398 = load i32, i32* @UART_LSR_PE, align 4
  %399 = or i32 %397, %398
  %400 = load i32, i32* @UART_LSR_FE, align 4
  %401 = or i32 %399, %400
  %402 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %403 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %402, i32 0, i32 4
  %404 = load i32, i32* %403, align 4
  %405 = or i32 %404, %401
  store i32 %405, i32* %403, align 4
  br label %406

406:                                              ; preds = %387, %373
  br label %407

407:                                              ; preds = %406, %367
  %408 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %409 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %408, i32 0, i32 7
  %410 = load %struct.TYPE_4__*, %struct.TYPE_4__** %409, align 8
  %411 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %410, i32 0, i32 0
  %412 = load i64, i64* %411, align 8
  %413 = icmp ne i64 %412, 0
  br i1 %413, label %414, label %455

414:                                              ; preds = %407
  %415 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %416 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %415, i32 0, i32 6
  %417 = load i64, i64* %416, align 8
  %418 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %419 = call i32 @START_CHAR(%struct.tty_struct* %418)
  %420 = call i32 @mxser_set_must_xon1_value(i64 %417, i32 %419)
  %421 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %422 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %421, i32 0, i32 6
  %423 = load i64, i64* %422, align 8
  %424 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %425 = call i32 @STOP_CHAR(%struct.tty_struct* %424)
  %426 = call i32 @mxser_set_must_xoff1_value(i64 %423, i32 %425)
  %427 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %428 = call i64 @I_IXON(%struct.tty_struct* %427)
  %429 = icmp ne i64 %428, 0
  br i1 %429, label %430, label %435

430:                                              ; preds = %414
  %431 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %432 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %431, i32 0, i32 6
  %433 = load i64, i64* %432, align 8
  %434 = call i32 @mxser_enable_must_rx_software_flow_control(i64 %433)
  br label %440

435:                                              ; preds = %414
  %436 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %437 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %436, i32 0, i32 6
  %438 = load i64, i64* %437, align 8
  %439 = call i32 @mxser_disable_must_rx_software_flow_control(i64 %438)
  br label %440

440:                                              ; preds = %435, %430
  %441 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %442 = call i64 @I_IXOFF(%struct.tty_struct* %441)
  %443 = icmp ne i64 %442, 0
  br i1 %443, label %444, label %449

444:                                              ; preds = %440
  %445 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %446 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %445, i32 0, i32 6
  %447 = load i64, i64* %446, align 8
  %448 = call i32 @mxser_enable_must_tx_software_flow_control(i64 %447)
  br label %454

449:                                              ; preds = %440
  %450 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %451 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %450, i32 0, i32 6
  %452 = load i64, i64* %451, align 8
  %453 = call i32 @mxser_disable_must_tx_software_flow_control(i64 %452)
  br label %454

454:                                              ; preds = %449, %444
  br label %455

455:                                              ; preds = %454, %407
  %456 = load i32, i32* %7, align 4
  %457 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %458 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %457, i32 0, i32 6
  %459 = load i64, i64* %458, align 8
  %460 = load i64, i64* @UART_FCR, align 8
  %461 = add nsw i64 %459, %460
  %462 = call i32 @outb(i32 %456, i64 %461)
  %463 = load i32, i32* %6, align 4
  %464 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %465 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %464, i32 0, i32 6
  %466 = load i64, i64* %465, align 8
  %467 = load i64, i64* @UART_LCR, align 8
  %468 = add nsw i64 %466, %467
  %469 = call i32 @outb(i32 %463, i64 %468)
  %470 = load i32, i32* %8, align 4
  store i32 %470, i32* %2, align 4
  br label %471

471:                                              ; preds = %455, %21
  %472 = load i32, i32* %2, align 4
  ret i32 %472
}

declare dso_local i32 @mxser_set_baud(%struct.tty_struct*, i32) #1

declare dso_local i32 @tty_get_baud_rate(%struct.tty_struct*) #1

declare dso_local i32 @mxser_set_must_fifo_value(%struct.mxser_port*) #1

declare dso_local i32 @tty_port_set_cts_flow(i32*, i32) #1

declare dso_local zeroext i8 @inb(i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @tty_wakeup(%struct.tty_struct*) #1

declare dso_local i32 @tty_port_set_check_carrier(i32*, i32) #1

declare dso_local i64 @I_INPCK(%struct.tty_struct*) #1

declare dso_local i64 @I_BRKINT(%struct.tty_struct*) #1

declare dso_local i64 @I_PARMRK(%struct.tty_struct*) #1

declare dso_local i64 @I_IGNBRK(%struct.tty_struct*) #1

declare dso_local i64 @I_IGNPAR(%struct.tty_struct*) #1

declare dso_local i32 @mxser_set_must_xon1_value(i64, i32) #1

declare dso_local i32 @START_CHAR(%struct.tty_struct*) #1

declare dso_local i32 @mxser_set_must_xoff1_value(i64, i32) #1

declare dso_local i32 @STOP_CHAR(%struct.tty_struct*) #1

declare dso_local i64 @I_IXON(%struct.tty_struct*) #1

declare dso_local i32 @mxser_enable_must_rx_software_flow_control(i64) #1

declare dso_local i32 @mxser_disable_must_rx_software_flow_control(i64) #1

declare dso_local i64 @I_IXOFF(%struct.tty_struct*) #1

declare dso_local i32 @mxser_enable_must_tx_software_flow_control(i64) #1

declare dso_local i32 @mxser_disable_must_tx_software_flow_control(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
