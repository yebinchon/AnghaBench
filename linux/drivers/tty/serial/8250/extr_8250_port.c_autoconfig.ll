; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_autoconfig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_autoconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8, i32, i32 }
%struct.uart_8250_port = type { i32, i32, i32, %struct.uart_port, i64 }
%struct.uart_port = type { i32, i64, i64, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"%s: autoconf (0x%04lx, 0x%p): \00", align 1
@UPF_BUGGY_UART = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"IER test failed (%02x, %02x) \00", align 1
@UART_LCR = common dso_local global i32 0, align 4
@UPF_SKIP_TEST = common dso_local global i32 0, align 4
@UART_MCR_LOOP = common dso_local global i32 0, align 4
@UART_MSR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"LOOP test failed (%02x) \00", align 1
@UART_LCR_CONF_MODE_B = common dso_local global i8 0, align 1
@UART_EFR = common dso_local global i32 0, align 4
@UART_FCR = common dso_local global i32 0, align 4
@UART_FCR_ENABLE_FIFO = common dso_local global i8 0, align 1
@UART_IIR = common dso_local global i32 0, align 4
@PORT_UNKNOWN = common dso_local global i64 0, align 8
@PORT_16550 = common dso_local global i64 0, align 8
@uart_config = common dso_local global %struct.TYPE_2__* null, align 8
@UART_RX = common dso_local global i32 0, align 4
@UART_CAP_UUE = common dso_local global i32 0, align 4
@UART_IER_UUE = common dso_local global i8 0, align 1
@PORT_16550A = common dso_local global i64 0, align 8
@UPIO_PORT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"%s: detected caps %08x should be %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"iir=%d \00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"type=%s\0A\00", align 1
@PORT_RSA = common dso_local global i64 0, align 8
@UART_PROBE_RSA = common dso_local global i32 0, align 4
@UART_RSA_FRR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_8250_port*)* @autoconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @autoconfig(%struct.uart_8250_port* %0) #0 {
  %2 = alloca %struct.uart_8250_port*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca %struct.uart_port*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.uart_8250_port* %0, %struct.uart_8250_port** %2, align 8
  %12 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %13 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %12, i32 0, i32 3
  store %struct.uart_port* %13, %struct.uart_port** %9, align 8
  %14 = load %struct.uart_port*, %struct.uart_port** %9, align 8
  %15 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %1
  %19 = load %struct.uart_port*, %struct.uart_port** %9, align 8
  %20 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %19, i32 0, i32 8
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %18
  %24 = load %struct.uart_port*, %struct.uart_port** %9, align 8
  %25 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  br label %284

29:                                               ; preds = %23, %18, %1
  %30 = load %struct.uart_port*, %struct.uart_port** %9, align 8
  %31 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = trunc i32 %32 to i8
  %34 = load %struct.uart_port*, %struct.uart_port** %9, align 8
  %35 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.uart_port*, %struct.uart_port** %9, align 8
  %38 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i8*, i8, ...) @DEBUG_AUTOCONF(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8 zeroext %33, i32 %36, i32 %39)
  %41 = load %struct.uart_port*, %struct.uart_port** %9, align 8
  %42 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %41, i32 0, i32 4
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @spin_lock_irqsave(i32* %42, i64 %43)
  %45 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %46 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %45, i32 0, i32 0
  store i32 0, i32* %46, align 8
  %47 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %48 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %47, i32 0, i32 4
  store i64 0, i64* %48, align 8
  %49 = load %struct.uart_port*, %struct.uart_port** %9, align 8
  %50 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @UPF_BUGGY_UART, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %97, label %55

55:                                               ; preds = %29
  %56 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %57 = load i32, i32* @UART_IER, align 4
  %58 = call i32 @serial_in(%struct.uart_8250_port* %56, i32 %57)
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %4, align 1
  %60 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %61 = load i32, i32* @UART_IER, align 4
  %62 = call i32 @serial_out(%struct.uart_8250_port* %60, i32 %61, i8 zeroext 0)
  %63 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %64 = load i32, i32* @UART_IER, align 4
  %65 = call i32 @serial_in(%struct.uart_8250_port* %63, i32 %64)
  %66 = and i32 %65, 15
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %5, align 1
  %68 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %69 = load i32, i32* @UART_IER, align 4
  %70 = call i32 @serial_out(%struct.uart_8250_port* %68, i32 %69, i8 zeroext 15)
  %71 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %72 = load i32, i32* @UART_IER, align 4
  %73 = call i32 @serial_in(%struct.uart_8250_port* %71, i32 %72)
  %74 = and i32 %73, 15
  %75 = trunc i32 %74 to i8
  store i8 %75, i8* %6, align 1
  %76 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %77 = load i32, i32* @UART_IER, align 4
  %78 = load i8, i8* %4, align 1
  %79 = call i32 @serial_out(%struct.uart_8250_port* %76, i32 %77, i8 zeroext %78)
  %80 = load i8, i8* %5, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %55
  %84 = load i8, i8* %6, align 1
  %85 = zext i8 %84 to i32
  %86 = icmp ne i32 %85, 15
  br i1 %86, label %87, label %96

87:                                               ; preds = %83, %55
  %88 = load %struct.uart_port*, %struct.uart_port** %9, align 8
  %89 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %88, i32 0, i32 4
  %90 = load i64, i64* %10, align 8
  %91 = call i32 @spin_unlock_irqrestore(i32* %89, i64 %90)
  %92 = load i8, i8* %5, align 1
  %93 = load i8, i8* %6, align 1
  %94 = zext i8 %93 to i32
  %95 = call i32 (i8*, i8, ...) @DEBUG_AUTOCONF(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %92, i32 %94)
  br label %273

96:                                               ; preds = %83
  br label %97

97:                                               ; preds = %96, %29
  %98 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %99 = call zeroext i8 @serial8250_in_MCR(%struct.uart_8250_port* %98)
  store i8 %99, i8* %8, align 1
  %100 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %101 = load i32, i32* @UART_LCR, align 4
  %102 = call i32 @serial_in(%struct.uart_8250_port* %100, i32 %101)
  %103 = trunc i32 %102 to i8
  store i8 %103, i8* %7, align 1
  %104 = load %struct.uart_port*, %struct.uart_port** %9, align 8
  %105 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @UPF_SKIP_TEST, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %135, label %110

110:                                              ; preds = %97
  %111 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %112 = load i32, i32* @UART_MCR_LOOP, align 4
  %113 = or i32 %112, 10
  %114 = trunc i32 %113 to i8
  %115 = call i32 @serial8250_out_MCR(%struct.uart_8250_port* %111, i8 zeroext %114)
  %116 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %117 = load i32, i32* @UART_MSR, align 4
  %118 = call i32 @serial_in(%struct.uart_8250_port* %116, i32 %117)
  %119 = and i32 %118, 240
  %120 = trunc i32 %119 to i8
  store i8 %120, i8* %3, align 1
  %121 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %122 = load i8, i8* %8, align 1
  %123 = call i32 @serial8250_out_MCR(%struct.uart_8250_port* %121, i8 zeroext %122)
  %124 = load i8, i8* %3, align 1
  %125 = zext i8 %124 to i32
  %126 = icmp ne i32 %125, 144
  br i1 %126, label %127, label %134

127:                                              ; preds = %110
  %128 = load %struct.uart_port*, %struct.uart_port** %9, align 8
  %129 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %128, i32 0, i32 4
  %130 = load i64, i64* %10, align 8
  %131 = call i32 @spin_unlock_irqrestore(i32* %129, i64 %130)
  %132 = load i8, i8* %3, align 1
  %133 = call i32 (i8*, i8, ...) @DEBUG_AUTOCONF(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8 zeroext %132)
  br label %273

134:                                              ; preds = %110
  br label %135

135:                                              ; preds = %134, %97
  %136 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %137 = load i32, i32* @UART_LCR, align 4
  %138 = load i8, i8* @UART_LCR_CONF_MODE_B, align 1
  %139 = call i32 @serial_out(%struct.uart_8250_port* %136, i32 %137, i8 zeroext %138)
  %140 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %141 = load i32, i32* @UART_EFR, align 4
  %142 = call i32 @serial_out(%struct.uart_8250_port* %140, i32 %141, i8 zeroext 0)
  %143 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %144 = load i32, i32* @UART_LCR, align 4
  %145 = call i32 @serial_out(%struct.uart_8250_port* %143, i32 %144, i8 zeroext 0)
  %146 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %147 = load i32, i32* @UART_FCR, align 4
  %148 = load i8, i8* @UART_FCR_ENABLE_FIFO, align 1
  %149 = call i32 @serial_out(%struct.uart_8250_port* %146, i32 %147, i8 zeroext %148)
  %150 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %151 = load i32, i32* @UART_IIR, align 4
  %152 = call i32 @serial_in(%struct.uart_8250_port* %150, i32 %151)
  %153 = ashr i32 %152, 6
  %154 = trunc i32 %153 to i8
  store i8 %154, i8* %4, align 1
  %155 = load i8, i8* %4, align 1
  %156 = zext i8 %155 to i32
  switch i32 %156, label %171 [
    i32 0, label %157
    i32 1, label %160
    i32 2, label %164
    i32 3, label %168
  ]

157:                                              ; preds = %135
  %158 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %159 = call i32 @autoconfig_8250(%struct.uart_8250_port* %158)
  br label %171

160:                                              ; preds = %135
  %161 = load i64, i64* @PORT_UNKNOWN, align 8
  %162 = load %struct.uart_port*, %struct.uart_port** %9, align 8
  %163 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %162, i32 0, i32 1
  store i64 %161, i64* %163, align 8
  br label %171

164:                                              ; preds = %135
  %165 = load i64, i64* @PORT_16550, align 8
  %166 = load %struct.uart_port*, %struct.uart_port** %9, align 8
  %167 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %166, i32 0, i32 1
  store i64 %165, i64* %167, align 8
  br label %171

168:                                              ; preds = %135
  %169 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %170 = call i32 @autoconfig_16550a(%struct.uart_8250_port* %169)
  br label %171

171:                                              ; preds = %135, %168, %164, %160, %157
  %172 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %173 = load i32, i32* @UART_LCR, align 4
  %174 = load i8, i8* %7, align 1
  %175 = call i32 @serial_out(%struct.uart_8250_port* %172, i32 %173, i8 zeroext %174)
  %176 = load %struct.TYPE_2__*, %struct.TYPE_2__** @uart_config, align 8
  %177 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %178 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.uart_port*, %struct.uart_port** %9, align 8
  %185 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %184, i32 0, i32 5
  store i32 %183, i32* %185, align 8
  %186 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %187 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  store i32 %188, i32* %11, align 4
  %189 = load %struct.TYPE_2__*, %struct.TYPE_2__** @uart_config, align 8
  %190 = load %struct.uart_port*, %struct.uart_port** %9, align 8
  %191 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %197 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %196, i32 0, i32 0
  store i32 %195, i32* %197, align 8
  %198 = load %struct.TYPE_2__*, %struct.TYPE_2__** @uart_config, align 8
  %199 = load %struct.uart_port*, %struct.uart_port** %9, align 8
  %200 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %206 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %205, i32 0, i32 2
  store i32 %204, i32* %206, align 8
  %207 = load %struct.uart_port*, %struct.uart_port** %9, align 8
  %208 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @PORT_UNKNOWN, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %212, label %213

212:                                              ; preds = %171
  br label %238

213:                                              ; preds = %171
  %214 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %215 = load i8, i8* %8, align 1
  %216 = call i32 @serial8250_out_MCR(%struct.uart_8250_port* %214, i8 zeroext %215)
  %217 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %218 = call i32 @serial8250_clear_fifos(%struct.uart_8250_port* %217)
  %219 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %220 = load i32, i32* @UART_RX, align 4
  %221 = call i32 @serial_in(%struct.uart_8250_port* %219, i32 %220)
  %222 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %223 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @UART_CAP_UUE, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %233

228:                                              ; preds = %213
  %229 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %230 = load i32, i32* @UART_IER, align 4
  %231 = load i8, i8* @UART_IER_UUE, align 1
  %232 = call i32 @serial_out(%struct.uart_8250_port* %229, i32 %230, i8 zeroext %231)
  br label %237

233:                                              ; preds = %213
  %234 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %235 = load i32, i32* @UART_IER, align 4
  %236 = call i32 @serial_out(%struct.uart_8250_port* %234, i32 %235, i8 zeroext 0)
  br label %237

237:                                              ; preds = %233, %228
  br label %238

238:                                              ; preds = %237, %212
  %239 = load %struct.uart_port*, %struct.uart_port** %9, align 8
  %240 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %239, i32 0, i32 4
  %241 = load i64, i64* %10, align 8
  %242 = call i32 @spin_unlock_irqrestore(i32* %240, i64 %241)
  %243 = load %struct.uart_port*, %struct.uart_port** %9, align 8
  %244 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @PORT_16550A, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %248, label %257

248:                                              ; preds = %238
  %249 = load %struct.uart_port*, %struct.uart_port** %9, align 8
  %250 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %249, i32 0, i32 2
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* @UPIO_PORT, align 8
  %253 = icmp eq i64 %251, %252
  br i1 %253, label %254, label %257

254:                                              ; preds = %248
  %255 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %256 = call i32 @fintek_8250_probe(%struct.uart_8250_port* %255)
  br label %257

257:                                              ; preds = %254, %248, %238
  %258 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %259 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = load i32, i32* %11, align 4
  %262 = icmp ne i32 %260, %261
  br i1 %262, label %263, label %272

263:                                              ; preds = %257
  %264 = load %struct.uart_port*, %struct.uart_port** %9, align 8
  %265 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 8
  %267 = load i32, i32* %11, align 4
  %268 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %269 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = call i32 @pr_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %266, i32 %267, i32 %270)
  br label %272

272:                                              ; preds = %263, %257
  br label %273

273:                                              ; preds = %272, %127, %87
  %274 = load i8, i8* %4, align 1
  %275 = call i32 (i8*, i8, ...) @DEBUG_AUTOCONF(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8 zeroext %274)
  %276 = load %struct.TYPE_2__*, %struct.TYPE_2__** @uart_config, align 8
  %277 = load %struct.uart_port*, %struct.uart_port** %9, align 8
  %278 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %277, i32 0, i32 1
  %279 = load i64, i64* %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %276, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %280, i32 0, i32 1
  %282 = load i8, i8* %281, align 4
  %283 = call i32 (i8*, i8, ...) @DEBUG_AUTOCONF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8 zeroext %282)
  br label %284

284:                                              ; preds = %273, %28
  ret void
}

declare dso_local i32 @DEBUG_AUTOCONF(i8*, i8 zeroext, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @serial_in(%struct.uart_8250_port*, i32) #1

declare dso_local i32 @serial_out(%struct.uart_8250_port*, i32, i8 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local zeroext i8 @serial8250_in_MCR(%struct.uart_8250_port*) #1

declare dso_local i32 @serial8250_out_MCR(%struct.uart_8250_port*, i8 zeroext) #1

declare dso_local i32 @autoconfig_8250(%struct.uart_8250_port*) #1

declare dso_local i32 @autoconfig_16550a(%struct.uart_8250_port*) #1

declare dso_local i32 @serial8250_clear_fifos(%struct.uart_8250_port*) #1

declare dso_local i32 @fintek_8250_probe(%struct.uart_8250_port*) #1

declare dso_local i32 @pr_warn(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
