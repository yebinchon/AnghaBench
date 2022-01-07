; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sunsu.c_sunsu_autoconfig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sunsu.c_sunsu_autoconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.uart_sunsu_port = type { i64, i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i32, i32, i32 }

@SU_PORT_NONE = common dso_local global i64 0, align 8
@PORT_UNKNOWN = common dso_local global i8* null, align 8
@UPIO_MEM = common dso_local global i32 0, align 4
@UPF_BUGGY_UART = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i32 0, align 4
@UART_MCR = common dso_local global i32 0, align 4
@UART_LCR = common dso_local global i32 0, align 4
@UPF_SKIP_TEST = common dso_local global i32 0, align 4
@UART_MCR_LOOP = common dso_local global i32 0, align 4
@UART_MSR = common dso_local global i32 0, align 4
@UART_EFR = common dso_local global i32 0, align 4
@UART_FCR = common dso_local global i32 0, align 4
@UART_FCR_ENABLE_FIFO = common dso_local global i8 0, align 1
@UART_IIR = common dso_local global i32 0, align 4
@PORT_16450 = common dso_local global i64 0, align 8
@PORT_16550 = common dso_local global i64 0, align 8
@PORT_16550A = common dso_local global i64 0, align 8
@UART_LCR_DLAB = common dso_local global i8 0, align 1
@PORT_16650 = common dso_local global i64 0, align 8
@PORT_16650V2 = common dso_local global i64 0, align 8
@UART_FCR7_64BYTE = common dso_local global i8 0, align 1
@PORT_16750 = common dso_local global i64 0, align 8
@UART_SCR = common dso_local global i32 0, align 4
@PORT_8250 = common dso_local global i64 0, align 8
@uart_config = common dso_local global %struct.TYPE_4__* null, align 8
@UART_FCR_CLEAR_RCVR = common dso_local global i8 0, align 1
@UART_FCR_CLEAR_XMIT = common dso_local global i8 0, align 1
@UART_RX = common dso_local global i32 0, align 4
@PORT_RSA = common dso_local global i8* null, align 8
@UART_RSA_FRR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_sunsu_port*)* @sunsu_autoconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sunsu_autoconfig(%struct.uart_sunsu_port* %0) #0 {
  %2 = alloca %struct.uart_sunsu_port*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i64, align 8
  store %struct.uart_sunsu_port* %0, %struct.uart_sunsu_port** %2, align 8
  %11 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %12 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SU_PORT_NONE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %360

17:                                               ; preds = %1
  %18 = load i8*, i8** @PORT_UNKNOWN, align 8
  %19 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %20 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  %21 = load i32, i32* @UPIO_MEM, align 4
  %22 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %23 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 4
  store i32 %21, i32* %24, align 8
  %25 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %26 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load i64, i64* %10, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %31 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @UPF_BUGGY_UART, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %69, label %37

37:                                               ; preds = %17
  %38 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %39 = load i32, i32* @UART_IER, align 4
  %40 = call i32 @serial_inp(%struct.uart_sunsu_port* %38, i32 %39)
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %5, align 1
  %42 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %43 = load i32, i32* @UART_IER, align 4
  %44 = call i32 @serial_outp(%struct.uart_sunsu_port* %42, i32 %43, i8 zeroext 0)
  %45 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %46 = load i32, i32* @UART_IER, align 4
  %47 = call i32 @serial_inp(%struct.uart_sunsu_port* %45, i32 %46)
  %48 = trunc i32 %47 to i8
  store i8 %48, i8* %6, align 1
  %49 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %50 = load i32, i32* @UART_IER, align 4
  %51 = call i32 @serial_outp(%struct.uart_sunsu_port* %49, i32 %50, i8 zeroext 15)
  %52 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %53 = load i32, i32* @UART_IER, align 4
  %54 = call i32 @serial_inp(%struct.uart_sunsu_port* %52, i32 %53)
  %55 = trunc i32 %54 to i8
  store i8 %55, i8* %7, align 1
  %56 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %57 = load i32, i32* @UART_IER, align 4
  %58 = load i8, i8* %5, align 1
  %59 = call i32 @serial_outp(%struct.uart_sunsu_port* %56, i32 %57, i8 zeroext %58)
  %60 = load i8, i8* %6, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %37
  %64 = load i8, i8* %7, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp ne i32 %65, 15
  br i1 %66, label %67, label %68

67:                                               ; preds = %63, %37
  br label %354

68:                                               ; preds = %63
  br label %69

69:                                               ; preds = %68, %17
  %70 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %71 = load i32, i32* @UART_MCR, align 4
  %72 = call i32 @serial_in(%struct.uart_sunsu_port* %70, i32 %71)
  %73 = trunc i32 %72 to i8
  store i8 %73, i8* %9, align 1
  %74 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %75 = load i32, i32* @UART_LCR, align 4
  %76 = call i32 @serial_in(%struct.uart_sunsu_port* %74, i32 %75)
  %77 = trunc i32 %76 to i8
  store i8 %77, i8* %8, align 1
  %78 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %79 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @UPF_SKIP_TEST, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %106, label %85

85:                                               ; preds = %69
  %86 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %87 = load i32, i32* @UART_MCR, align 4
  %88 = load i32, i32* @UART_MCR_LOOP, align 4
  %89 = or i32 %88, 10
  %90 = trunc i32 %89 to i8
  %91 = call i32 @serial_outp(%struct.uart_sunsu_port* %86, i32 %87, i8 zeroext %90)
  %92 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %93 = load i32, i32* @UART_MSR, align 4
  %94 = call i32 @serial_inp(%struct.uart_sunsu_port* %92, i32 %93)
  %95 = and i32 %94, 240
  %96 = trunc i32 %95 to i8
  store i8 %96, i8* %3, align 1
  %97 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %98 = load i32, i32* @UART_MCR, align 4
  %99 = load i8, i8* %9, align 1
  %100 = call i32 @serial_outp(%struct.uart_sunsu_port* %97, i32 %98, i8 zeroext %99)
  %101 = load i8, i8* %3, align 1
  %102 = zext i8 %101 to i32
  %103 = icmp ne i32 %102, 144
  br i1 %103, label %104, label %105

104:                                              ; preds = %85
  br label %354

105:                                              ; preds = %85
  br label %106

106:                                              ; preds = %105, %69
  %107 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %108 = load i32, i32* @UART_LCR, align 4
  %109 = call i32 @serial_outp(%struct.uart_sunsu_port* %107, i32 %108, i8 zeroext -65)
  %110 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %111 = load i32, i32* @UART_EFR, align 4
  %112 = call i32 @serial_outp(%struct.uart_sunsu_port* %110, i32 %111, i8 zeroext 0)
  %113 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %114 = load i32, i32* @UART_LCR, align 4
  %115 = call i32 @serial_outp(%struct.uart_sunsu_port* %113, i32 %114, i8 zeroext 0)
  %116 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %117 = load i32, i32* @UART_FCR, align 4
  %118 = load i8, i8* @UART_FCR_ENABLE_FIFO, align 1
  %119 = call i32 @serial_outp(%struct.uart_sunsu_port* %116, i32 %117, i8 zeroext %118)
  %120 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %121 = load i32, i32* @UART_IIR, align 4
  %122 = call i32 @serial_in(%struct.uart_sunsu_port* %120, i32 %121)
  %123 = ashr i32 %122, 6
  %124 = trunc i32 %123 to i8
  store i8 %124, i8* %5, align 1
  %125 = load i8, i8* %5, align 1
  %126 = zext i8 %125 to i32
  switch i32 %126, label %148 [
    i32 0, label %127
    i32 1, label %132
    i32 2, label %138
    i32 3, label %143
  ]

127:                                              ; preds = %106
  %128 = load i64, i64* @PORT_16450, align 8
  %129 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %130 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 1
  store i64 %128, i64* %131, align 8
  br label %148

132:                                              ; preds = %106
  %133 = load i8*, i8** @PORT_UNKNOWN, align 8
  %134 = ptrtoint i8* %133 to i64
  %135 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %136 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 1
  store i64 %134, i64* %137, align 8
  br label %148

138:                                              ; preds = %106
  %139 = load i64, i64* @PORT_16550, align 8
  %140 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %141 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 1
  store i64 %139, i64* %142, align 8
  br label %148

143:                                              ; preds = %106
  %144 = load i64, i64* @PORT_16550A, align 8
  %145 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %146 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 1
  store i64 %144, i64* %147, align 8
  br label %148

148:                                              ; preds = %106, %143, %138, %132, %127
  %149 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %150 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @PORT_16550A, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %184

155:                                              ; preds = %148
  %156 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %157 = load i32, i32* @UART_LCR, align 4
  %158 = load i8, i8* @UART_LCR_DLAB, align 1
  %159 = call i32 @serial_outp(%struct.uart_sunsu_port* %156, i32 %157, i8 zeroext %158)
  %160 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %161 = load i32, i32* @UART_EFR, align 4
  %162 = call i32 @serial_in(%struct.uart_sunsu_port* %160, i32 %161)
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %155
  %165 = load i64, i64* @PORT_16650, align 8
  %166 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %167 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 1
  store i64 %165, i64* %168, align 8
  br label %183

169:                                              ; preds = %155
  %170 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %171 = load i32, i32* @UART_LCR, align 4
  %172 = call i32 @serial_outp(%struct.uart_sunsu_port* %170, i32 %171, i8 zeroext -65)
  %173 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %174 = load i32, i32* @UART_EFR, align 4
  %175 = call i32 @serial_in(%struct.uart_sunsu_port* %173, i32 %174)
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %169
  %178 = load i64, i64* @PORT_16650V2, align 8
  %179 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %180 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 1
  store i64 %178, i64* %181, align 8
  br label %182

182:                                              ; preds = %177, %169
  br label %183

183:                                              ; preds = %182, %164
  br label %184

184:                                              ; preds = %183, %148
  %185 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %186 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @PORT_16550A, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %254

191:                                              ; preds = %184
  %192 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %193 = load i32, i32* @UART_LCR, align 4
  %194 = load i8, i8* %8, align 1
  %195 = zext i8 %194 to i32
  %196 = load i8, i8* @UART_LCR_DLAB, align 1
  %197 = zext i8 %196 to i32
  %198 = or i32 %195, %197
  %199 = trunc i32 %198 to i8
  %200 = call i32 @serial_outp(%struct.uart_sunsu_port* %192, i32 %193, i8 zeroext %199)
  %201 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %202 = load i32, i32* @UART_FCR, align 4
  %203 = load i8, i8* @UART_FCR_ENABLE_FIFO, align 1
  %204 = zext i8 %203 to i32
  %205 = load i8, i8* @UART_FCR7_64BYTE, align 1
  %206 = zext i8 %205 to i32
  %207 = or i32 %204, %206
  %208 = trunc i32 %207 to i8
  %209 = call i32 @serial_outp(%struct.uart_sunsu_port* %201, i32 %202, i8 zeroext %208)
  %210 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %211 = load i32, i32* @UART_IIR, align 4
  %212 = call i32 @serial_in(%struct.uart_sunsu_port* %210, i32 %211)
  %213 = ashr i32 %212, 5
  %214 = trunc i32 %213 to i8
  store i8 %214, i8* %5, align 1
  %215 = load i8, i8* %5, align 1
  %216 = zext i8 %215 to i32
  %217 = icmp eq i32 %216, 7
  br i1 %217, label %218, label %249

218:                                              ; preds = %191
  %219 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %220 = load i32, i32* @UART_FCR, align 4
  %221 = load i8, i8* @UART_FCR_ENABLE_FIFO, align 1
  %222 = call i32 @serial_outp(%struct.uart_sunsu_port* %219, i32 %220, i8 zeroext %221)
  %223 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %224 = load i32, i32* @UART_LCR, align 4
  %225 = call i32 @serial_outp(%struct.uart_sunsu_port* %223, i32 %224, i8 zeroext 0)
  %226 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %227 = load i32, i32* @UART_FCR, align 4
  %228 = load i8, i8* @UART_FCR_ENABLE_FIFO, align 1
  %229 = zext i8 %228 to i32
  %230 = load i8, i8* @UART_FCR7_64BYTE, align 1
  %231 = zext i8 %230 to i32
  %232 = or i32 %229, %231
  %233 = trunc i32 %232 to i8
  %234 = call i32 @serial_outp(%struct.uart_sunsu_port* %226, i32 %227, i8 zeroext %233)
  %235 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %236 = load i32, i32* @UART_IIR, align 4
  %237 = call i32 @serial_in(%struct.uart_sunsu_port* %235, i32 %236)
  %238 = ashr i32 %237, 5
  %239 = trunc i32 %238 to i8
  store i8 %239, i8* %5, align 1
  %240 = load i8, i8* %5, align 1
  %241 = zext i8 %240 to i32
  %242 = icmp eq i32 %241, 6
  br i1 %242, label %243, label %248

243:                                              ; preds = %218
  %244 = load i64, i64* @PORT_16750, align 8
  %245 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %246 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %245, i32 0, i32 2
  %247 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %246, i32 0, i32 1
  store i64 %244, i64* %247, align 8
  br label %248

248:                                              ; preds = %243, %218
  br label %249

249:                                              ; preds = %248, %191
  %250 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %251 = load i32, i32* @UART_FCR, align 4
  %252 = load i8, i8* @UART_FCR_ENABLE_FIFO, align 1
  %253 = call i32 @serial_outp(%struct.uart_sunsu_port* %250, i32 %251, i8 zeroext %252)
  br label %254

254:                                              ; preds = %249, %184
  %255 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %256 = load i32, i32* @UART_LCR, align 4
  %257 = load i8, i8* %8, align 1
  %258 = call i32 @serial_outp(%struct.uart_sunsu_port* %255, i32 %256, i8 zeroext %257)
  %259 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %260 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %259, i32 0, i32 2
  %261 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @PORT_16450, align 8
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %265, label %301

265:                                              ; preds = %254
  %266 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %267 = load i32, i32* @UART_SCR, align 4
  %268 = call i32 @serial_in(%struct.uart_sunsu_port* %266, i32 %267)
  %269 = trunc i32 %268 to i8
  store i8 %269, i8* %5, align 1
  %270 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %271 = load i32, i32* @UART_SCR, align 4
  %272 = call i32 @serial_outp(%struct.uart_sunsu_port* %270, i32 %271, i8 zeroext -91)
  %273 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %274 = load i32, i32* @UART_SCR, align 4
  %275 = call i32 @serial_in(%struct.uart_sunsu_port* %273, i32 %274)
  %276 = trunc i32 %275 to i8
  store i8 %276, i8* %3, align 1
  %277 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %278 = load i32, i32* @UART_SCR, align 4
  %279 = call i32 @serial_outp(%struct.uart_sunsu_port* %277, i32 %278, i8 zeroext 90)
  %280 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %281 = load i32, i32* @UART_SCR, align 4
  %282 = call i32 @serial_in(%struct.uart_sunsu_port* %280, i32 %281)
  %283 = trunc i32 %282 to i8
  store i8 %283, i8* %4, align 1
  %284 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %285 = load i32, i32* @UART_SCR, align 4
  %286 = load i8, i8* %5, align 1
  %287 = call i32 @serial_outp(%struct.uart_sunsu_port* %284, i32 %285, i8 zeroext %286)
  %288 = load i8, i8* %3, align 1
  %289 = zext i8 %288 to i32
  %290 = icmp ne i32 %289, 165
  br i1 %290, label %295, label %291

291:                                              ; preds = %265
  %292 = load i8, i8* %4, align 1
  %293 = zext i8 %292 to i32
  %294 = icmp ne i32 %293, 90
  br i1 %294, label %295, label %300

295:                                              ; preds = %291, %265
  %296 = load i64, i64* @PORT_8250, align 8
  %297 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %298 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %297, i32 0, i32 2
  %299 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %298, i32 0, i32 1
  store i64 %296, i64* %299, align 8
  br label %300

300:                                              ; preds = %295, %291
  br label %301

301:                                              ; preds = %300, %254
  %302 = load %struct.TYPE_4__*, %struct.TYPE_4__** @uart_config, align 8
  %303 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %304 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %303, i32 0, i32 2
  %305 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %304, i32 0, i32 1
  %306 = load i64, i64* %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %302, i64 %306
  %308 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %311 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %310, i32 0, i32 2
  %312 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %311, i32 0, i32 3
  store i32 %309, i32* %312, align 4
  %313 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %314 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %313, i32 0, i32 2
  %315 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %314, i32 0, i32 1
  %316 = load i64, i64* %315, align 8
  %317 = inttoptr i64 %316 to i8*
  %318 = load i8*, i8** @PORT_UNKNOWN, align 8
  %319 = icmp eq i8* %317, %318
  br i1 %319, label %320, label %321

320:                                              ; preds = %301
  br label %354

321:                                              ; preds = %301
  %322 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %323 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %322, i32 0, i32 2
  %324 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %323, i32 0, i32 1
  %325 = load i64, i64* %324, align 8
  %326 = inttoptr i64 %325 to i8*
  %327 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %328 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %327, i32 0, i32 1
  store i8* %326, i8** %328, align 8
  %329 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %330 = load i32, i32* @UART_MCR, align 4
  %331 = load i8, i8* %9, align 1
  %332 = call i32 @serial_outp(%struct.uart_sunsu_port* %329, i32 %330, i8 zeroext %331)
  %333 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %334 = load i32, i32* @UART_FCR, align 4
  %335 = load i8, i8* @UART_FCR_ENABLE_FIFO, align 1
  %336 = zext i8 %335 to i32
  %337 = load i8, i8* @UART_FCR_CLEAR_RCVR, align 1
  %338 = zext i8 %337 to i32
  %339 = or i32 %336, %338
  %340 = load i8, i8* @UART_FCR_CLEAR_XMIT, align 1
  %341 = zext i8 %340 to i32
  %342 = or i32 %339, %341
  %343 = trunc i32 %342 to i8
  %344 = call i32 @serial_outp(%struct.uart_sunsu_port* %333, i32 %334, i8 zeroext %343)
  %345 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %346 = load i32, i32* @UART_FCR, align 4
  %347 = call i32 @serial_outp(%struct.uart_sunsu_port* %345, i32 %346, i8 zeroext 0)
  %348 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %349 = load i32, i32* @UART_RX, align 4
  %350 = call i32 @serial_in(%struct.uart_sunsu_port* %348, i32 %349)
  %351 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %352 = load i32, i32* @UART_IER, align 4
  %353 = call i32 @serial_outp(%struct.uart_sunsu_port* %351, i32 %352, i8 zeroext 0)
  br label %354

354:                                              ; preds = %321, %320, %104, %67
  %355 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %356 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %355, i32 0, i32 2
  %357 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %356, i32 0, i32 2
  %358 = load i64, i64* %10, align 8
  %359 = call i32 @spin_unlock_irqrestore(i32* %357, i64 %358)
  br label %360

360:                                              ; preds = %354, %16
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @serial_inp(%struct.uart_sunsu_port*, i32) #1

declare dso_local i32 @serial_outp(%struct.uart_sunsu_port*, i32, i8 zeroext) #1

declare dso_local i32 @serial_in(%struct.uart_sunsu_port*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
