; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_txx9.c_serial_txx9_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_txx9.c_serial_txx9_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.ktermios = type { i32, i32 }
%struct.uart_txx9_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@HUPCL = common dso_local global i32 0, align 4
@CMSPAR = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@TXX9_SILCR = common dso_local global i32 0, align 4
@TXX9_SILCR_UMODE_MASK = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@TXX9_SILCR_UMODE_7BIT = common dso_local global i32 0, align 4
@TXX9_SILCR_UMODE_8BIT = common dso_local global i32 0, align 4
@TXX9_SILCR_USBL_MASK = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@TXX9_SILCR_USBL_2BIT = common dso_local global i32 0, align 4
@TXX9_SILCR_USBL_1BIT = common dso_local global i32 0, align 4
@TXX9_SILCR_UPEN = common dso_local global i32 0, align 4
@TXX9_SILCR_UEPS = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@TXX9_SIFCR_TDIL_MAX = common dso_local global i32 0, align 4
@TXX9_SIFCR_RDIL_1 = common dso_local global i32 0, align 4
@TXX9_SIDISR_UOER = common dso_local global i32 0, align 4
@TXX9_SIDISR_TDIS = common dso_local global i32 0, align 4
@TXX9_SIDISR_RDIS = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@TXX9_SIDISR_UFER = common dso_local global i32 0, align 4
@TXX9_SIDISR_UPER = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@TXX9_SIDISR_UBRK = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@UPF_TXX9_HAVE_CTS_LINE = common dso_local global i32 0, align 4
@TXX9_SIFLCR = common dso_local global i32 0, align 4
@TXX9_SIFLCR_RCS = common dso_local global i32 0, align 4
@TXX9_SIFLCR_TES = common dso_local global i32 0, align 4
@TXX9_SIFCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @serial_txx9_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial_txx9_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca %struct.uart_txx9_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %13 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %14 = call %struct.uart_txx9_port* @to_uart_txx9_port(%struct.uart_port* %13)
  store %struct.uart_txx9_port* %14, %struct.uart_txx9_port** %7, align 8
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* @HUPCL, align 4
  %16 = load i32, i32* @CMSPAR, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %20 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* @CLOCAL, align 4
  %24 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %25 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %7, align 8
  %29 = load i32, i32* @TXX9_SILCR, align 4
  %30 = call i32 @sio_in(%struct.uart_txx9_port* %28, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* @TXX9_SILCR_UMODE_MASK, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %8, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %8, align 4
  %35 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %36 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @CSIZE, align 4
  %39 = and i32 %37, %38
  switch i32 %39, label %44 [
    i32 129, label %40
    i32 131, label %45
    i32 130, label %45
    i32 128, label %45
  ]

40:                                               ; preds = %3
  %41 = load i32, i32* @TXX9_SILCR_UMODE_7BIT, align 4
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  br label %49

44:                                               ; preds = %3
  br label %45

45:                                               ; preds = %3, %3, %3, %44
  %46 = load i32, i32* @TXX9_SILCR_UMODE_8BIT, align 4
  %47 = load i32, i32* %8, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %45, %40
  %50 = load i32, i32* @TXX9_SILCR_USBL_MASK, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %8, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %8, align 4
  %54 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %55 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @CSTOPB, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %49
  %61 = load i32, i32* @TXX9_SILCR_USBL_2BIT, align 4
  %62 = load i32, i32* %8, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %8, align 4
  br label %68

64:                                               ; preds = %49
  %65 = load i32, i32* @TXX9_SILCR_USBL_1BIT, align 4
  %66 = load i32, i32* %8, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %64, %60
  %69 = load i32, i32* @TXX9_SILCR_UPEN, align 4
  %70 = load i32, i32* @TXX9_SILCR_UEPS, align 4
  %71 = or i32 %69, %70
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %8, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %8, align 4
  %75 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %76 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @PARENB, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %68
  %82 = load i32, i32* @TXX9_SILCR_UPEN, align 4
  %83 = load i32, i32* %8, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %81, %68
  %86 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %87 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @PARODD, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %85
  %93 = load i32, i32* @TXX9_SILCR_UEPS, align 4
  %94 = load i32, i32* %8, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %8, align 4
  br label %96

96:                                               ; preds = %92, %85
  %97 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %98 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %99 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %100 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %101 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = sdiv i32 %102, 16
  %104 = sdiv i32 %103, 2
  %105 = call i32 @uart_get_baud_rate(%struct.uart_port* %97, %struct.ktermios* %98, %struct.ktermios* %99, i32 0, i32 %104)
  store i32 %105, i32* %11, align 4
  %106 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @uart_get_divisor(%struct.uart_port* %106, i32 %107)
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* @TXX9_SIFCR_TDIL_MAX, align 4
  %110 = load i32, i32* @TXX9_SIFCR_RDIL_1, align 4
  %111 = or i32 %109, %110
  store i32 %111, i32* %9, align 4
  %112 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %7, align 8
  %113 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 3
  %115 = load i64, i64* %10, align 8
  %116 = call i32 @spin_lock_irqsave(i32* %114, i64 %115)
  %117 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %118 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %119 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %11, align 4
  %122 = call i32 @uart_update_timeout(%struct.uart_port* %117, i32 %120, i32 %121)
  %123 = load i32, i32* @TXX9_SIDISR_UOER, align 4
  %124 = load i32, i32* @TXX9_SIDISR_TDIS, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @TXX9_SIDISR_RDIS, align 4
  %127 = or i32 %125, %126
  %128 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %7, align 8
  %129 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  store i32 %127, i32* %130, align 4
  %131 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %132 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @INPCK, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %96
  %138 = load i32, i32* @TXX9_SIDISR_UFER, align 4
  %139 = load i32, i32* @TXX9_SIDISR_UPER, align 4
  %140 = or i32 %138, %139
  %141 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %7, align 8
  %142 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, %140
  store i32 %145, i32* %143, align 4
  br label %146

146:                                              ; preds = %137, %96
  %147 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %148 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @IGNBRK, align 4
  %151 = load i32, i32* @BRKINT, align 4
  %152 = or i32 %150, %151
  %153 = load i32, i32* @PARMRK, align 4
  %154 = or i32 %152, %153
  %155 = and i32 %149, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %146
  %158 = load i32, i32* @TXX9_SIDISR_UBRK, align 4
  %159 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %7, align 8
  %160 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = or i32 %162, %158
  store i32 %163, i32* %161, align 4
  br label %164

164:                                              ; preds = %157, %146
  %165 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %7, align 8
  %166 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 1
  store i32 0, i32* %167, align 4
  %168 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %169 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @IGNPAR, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %183

174:                                              ; preds = %164
  %175 = load i32, i32* @TXX9_SIDISR_UPER, align 4
  %176 = load i32, i32* @TXX9_SIDISR_UFER, align 4
  %177 = or i32 %175, %176
  %178 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %7, align 8
  %179 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = or i32 %181, %177
  store i32 %182, i32* %180, align 4
  br label %183

183:                                              ; preds = %174, %164
  %184 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %185 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @IGNBRK, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %211

190:                                              ; preds = %183
  %191 = load i32, i32* @TXX9_SIDISR_UBRK, align 4
  %192 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %7, align 8
  %193 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = or i32 %195, %191
  store i32 %196, i32* %194, align 4
  %197 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %198 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @IGNPAR, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %210

203:                                              ; preds = %190
  %204 = load i32, i32* @TXX9_SIDISR_UOER, align 4
  %205 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %7, align 8
  %206 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = or i32 %208, %204
  store i32 %209, i32* %207, align 4
  br label %210

210:                                              ; preds = %203, %190
  br label %211

211:                                              ; preds = %210, %183
  %212 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %213 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @CREAD, align 4
  %216 = and i32 %214, %215
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %225

218:                                              ; preds = %211
  %219 = load i32, i32* @TXX9_SIDISR_RDIS, align 4
  %220 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %7, align 8
  %221 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = or i32 %223, %219
  store i32 %224, i32* %222, align 4
  br label %225

225:                                              ; preds = %218, %211
  %226 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %227 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @CRTSCTS, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %247

232:                                              ; preds = %225
  %233 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %7, align 8
  %234 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* @UPF_TXX9_HAVE_CTS_LINE, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %247

240:                                              ; preds = %232
  %241 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %7, align 8
  %242 = load i32, i32* @TXX9_SIFLCR, align 4
  %243 = load i32, i32* @TXX9_SIFLCR_RCS, align 4
  %244 = load i32, i32* @TXX9_SIFLCR_TES, align 4
  %245 = or i32 %243, %244
  %246 = call i32 @sio_set(%struct.uart_txx9_port* %241, i32 %242, i32 %245)
  br label %254

247:                                              ; preds = %232, %225
  %248 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %7, align 8
  %249 = load i32, i32* @TXX9_SIFLCR, align 4
  %250 = load i32, i32* @TXX9_SIFLCR_RCS, align 4
  %251 = load i32, i32* @TXX9_SIFLCR_TES, align 4
  %252 = or i32 %250, %251
  %253 = call i32 @sio_mask(%struct.uart_txx9_port* %248, i32 %249, i32 %252)
  br label %254

254:                                              ; preds = %247, %240
  %255 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %7, align 8
  %256 = load i32, i32* @TXX9_SILCR, align 4
  %257 = load i32, i32* %8, align 4
  %258 = call i32 @sio_out(%struct.uart_txx9_port* %255, i32 %256, i32 %257)
  %259 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %7, align 8
  %260 = load i32, i32* %12, align 4
  %261 = call i32 @sio_quot_set(%struct.uart_txx9_port* %259, i32 %260)
  %262 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %7, align 8
  %263 = load i32, i32* @TXX9_SIFCR, align 4
  %264 = load i32, i32* %9, align 4
  %265 = call i32 @sio_out(%struct.uart_txx9_port* %262, i32 %263, i32 %264)
  %266 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %7, align 8
  %267 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %266, i32 0, i32 0
  %268 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %7, align 8
  %269 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %269, i32 0, i32 4
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @serial_txx9_set_mctrl(%struct.TYPE_2__* %267, i32 %271)
  %273 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %7, align 8
  %274 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %274, i32 0, i32 3
  %276 = load i64, i64* %10, align 8
  %277 = call i32 @spin_unlock_irqrestore(i32* %275, i64 %276)
  ret void
}

declare dso_local %struct.uart_txx9_port* @to_uart_txx9_port(%struct.uart_port*) #1

declare dso_local i32 @sio_in(%struct.uart_txx9_port*, i32) #1

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @uart_get_divisor(%struct.uart_port*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @sio_set(%struct.uart_txx9_port*, i32, i32) #1

declare dso_local i32 @sio_mask(%struct.uart_txx9_port*, i32, i32) #1

declare dso_local i32 @sio_out(%struct.uart_txx9_port*, i32, i32) #1

declare dso_local i32 @sio_quot_set(%struct.uart_txx9_port*, i32) #1

declare dso_local i32 @serial_txx9_set_mctrl(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
