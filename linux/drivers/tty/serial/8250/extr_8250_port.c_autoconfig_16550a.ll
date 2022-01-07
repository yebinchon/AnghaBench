; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_autoconfig_16550a.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_autoconfig_16550a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@PORT_16550A = common dso_local global i64 0, align 8
@UART_CAP_FIFO = common dso_local global i32 0, align 4
@UART_LCR = common dso_local global i32 0, align 4
@UART_LCR_CONF_MODE_A = common dso_local global i32 0, align 4
@UART_EFR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"EFRv1 \00", align 1
@PORT_16650 = common dso_local global i64 0, align 8
@UART_CAP_EFR = common dso_local global i32 0, align 4
@UART_CAP_SLEEP = common dso_local global i32 0, align 4
@UART_FCR = common dso_local global i32 0, align 4
@UART_FCR_ENABLE_FIFO = common dso_local global i32 0, align 4
@UART_FCR7_64BYTE = common dso_local global i32 0, align 4
@UART_IIR = common dso_local global i32 0, align 4
@PORT_16550A_FSL64 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Motorola 8xxx DUART \00", align 1
@UART_LCR_CONF_MODE_B = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"EFRv2 \00", align 1
@UART_MCR_LOOP = common dso_local global i8 0, align 1
@PORT_NS16550A = common dso_local global i64 0, align 8
@UART_NATSEMI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"iir1=%d iir2=%d \00", align 1
@PORT_16750 = common dso_local global i64 0, align 8
@UART_CAP_AFE = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i32 0, align 4
@UART_IER_UUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"Xscale \00", align 1
@PORT_XSCALE = common dso_local global i64 0, align 8
@UART_CAP_UUE = common dso_local global i32 0, align 4
@UART_CAP_RTOIE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"Couldn't force IER_UUE to 0 \00", align 1
@PORT_U6_16550A = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_8250_port*)* @autoconfig_16550a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @autoconfig_16550a(%struct.uart_8250_port* %0) #0 {
  %2 = alloca %struct.uart_8250_port*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  store %struct.uart_8250_port* %0, %struct.uart_8250_port** %2, align 8
  %7 = load i64, i64* @PORT_16550A, align 8
  %8 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %9 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i64 %7, i64* %10, align 8
  %11 = load i32, i32* @UART_CAP_FIFO, align 4
  %12 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %13 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 8
  %16 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %17 = load i32, i32* @UART_LCR, align 4
  %18 = load i32, i32* @UART_LCR_CONF_MODE_A, align 4
  %19 = call i32 @serial_out(%struct.uart_8250_port* %16, i32 %17, i32 %18)
  %20 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %21 = load i32, i32* @UART_EFR, align 4
  %22 = call i32 @serial_in(%struct.uart_8250_port* %20, i32 %21)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %81

24:                                               ; preds = %1
  %25 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %26 = load i32, i32* @UART_EFR, align 4
  %27 = call i32 @serial_out(%struct.uart_8250_port* %25, i32 %26, i32 168)
  %28 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %29 = load i32, i32* @UART_EFR, align 4
  %30 = call i32 @serial_in(%struct.uart_8250_port* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %24
  %33 = call i32 (i8*, ...) @DEBUG_AUTOCONF(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %34 = load i64, i64* @PORT_16650, align 8
  %35 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %36 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i64 %34, i64* %37, align 8
  %38 = load i32, i32* @UART_CAP_EFR, align 4
  %39 = load i32, i32* @UART_CAP_SLEEP, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %42 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  br label %77

45:                                               ; preds = %24
  %46 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %47 = load i32, i32* @UART_LCR, align 4
  %48 = call i32 @serial_out(%struct.uart_8250_port* %46, i32 %47, i32 0)
  %49 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %50 = load i32, i32* @UART_FCR, align 4
  %51 = load i32, i32* @UART_FCR_ENABLE_FIFO, align 4
  %52 = load i32, i32* @UART_FCR7_64BYTE, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @serial_out(%struct.uart_8250_port* %49, i32 %50, i32 %53)
  %55 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %56 = load i32, i32* @UART_IIR, align 4
  %57 = call i32 @serial_in(%struct.uart_8250_port* %55, i32 %56)
  %58 = lshr i32 %57, 5
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %3, align 1
  %60 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %61 = load i32, i32* @UART_FCR, align 4
  %62 = call i32 @serial_out(%struct.uart_8250_port* %60, i32 %61, i32 0)
  %63 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %64 = load i32, i32* @UART_LCR, align 4
  %65 = call i32 @serial_out(%struct.uart_8250_port* %63, i32 %64, i32 0)
  %66 = load i8, i8* %3, align 1
  %67 = zext i8 %66 to i32
  %68 = icmp eq i32 %67, 7
  br i1 %68, label %69, label %74

69:                                               ; preds = %45
  %70 = load i64, i64* @PORT_16550A_FSL64, align 8
  %71 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %72 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i64 %70, i64* %73, align 8
  br label %76

74:                                               ; preds = %45
  %75 = call i32 (i8*, ...) @DEBUG_AUTOCONF(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %69
  br label %77

77:                                               ; preds = %76, %32
  %78 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %79 = load i32, i32* @UART_EFR, align 4
  %80 = call i32 @serial_out(%struct.uart_8250_port* %78, i32 %79, i32 0)
  br label %322

81:                                               ; preds = %1
  %82 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %83 = load i32, i32* @UART_LCR, align 4
  %84 = load i32, i32* @UART_LCR_CONF_MODE_B, align 4
  %85 = call i32 @serial_out(%struct.uart_8250_port* %82, i32 %83, i32 %84)
  %86 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %87 = load i32, i32* @UART_EFR, align 4
  %88 = call i32 @serial_in(%struct.uart_8250_port* %86, i32 %87)
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %81
  %91 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %92 = call i32 @broken_efr(%struct.uart_8250_port* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %90
  %95 = call i32 (i8*, ...) @DEBUG_AUTOCONF(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %96 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %97 = call i32 @autoconfig_has_efr(%struct.uart_8250_port* %96)
  br label %322

98:                                               ; preds = %90, %81
  %99 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %100 = load i32, i32* @UART_LCR, align 4
  %101 = call i32 @serial_out(%struct.uart_8250_port* %99, i32 %100, i32 0)
  %102 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %103 = call zeroext i8 @serial8250_in_MCR(%struct.uart_8250_port* %102)
  store i8 %103, i8* %3, align 1
  %104 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %105 = load i32, i32* @UART_LCR, align 4
  %106 = call i32 @serial_out(%struct.uart_8250_port* %104, i32 %105, i32 224)
  %107 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %108 = call i32 @serial_in(%struct.uart_8250_port* %107, i32 2)
  %109 = trunc i32 %108 to i8
  store i8 %109, i8* %4, align 1
  %110 = load i8, i8* %4, align 1
  %111 = zext i8 %110 to i32
  %112 = load i8, i8* %3, align 1
  %113 = zext i8 %112 to i32
  %114 = xor i32 %111, %113
  %115 = load i8, i8* @UART_MCR_LOOP, align 1
  %116 = zext i8 %115 to i32
  %117 = and i32 %114, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %186, label %119

119:                                              ; preds = %98
  %120 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %121 = load i32, i32* @UART_LCR, align 4
  %122 = call i32 @serial_out(%struct.uart_8250_port* %120, i32 %121, i32 0)
  %123 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %124 = load i8, i8* %3, align 1
  %125 = zext i8 %124 to i32
  %126 = load i8, i8* @UART_MCR_LOOP, align 1
  %127 = zext i8 %126 to i32
  %128 = xor i32 %125, %127
  %129 = trunc i32 %128 to i8
  %130 = call i32 @serial8250_out_MCR(%struct.uart_8250_port* %123, i8 zeroext %129)
  %131 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %132 = load i32, i32* @UART_LCR, align 4
  %133 = call i32 @serial_out(%struct.uart_8250_port* %131, i32 %132, i32 224)
  %134 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %135 = call i32 @serial_in(%struct.uart_8250_port* %134, i32 2)
  %136 = trunc i32 %135 to i8
  store i8 %136, i8* %4, align 1
  %137 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %138 = load i32, i32* @UART_LCR, align 4
  %139 = call i32 @serial_out(%struct.uart_8250_port* %137, i32 %138, i32 0)
  %140 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %141 = load i8, i8* %3, align 1
  %142 = call i32 @serial8250_out_MCR(%struct.uart_8250_port* %140, i8 zeroext %141)
  %143 = load i8, i8* %4, align 1
  %144 = zext i8 %143 to i32
  %145 = load i8, i8* %3, align 1
  %146 = zext i8 %145 to i32
  %147 = xor i32 %144, %146
  %148 = load i8, i8* @UART_MCR_LOOP, align 1
  %149 = zext i8 %148 to i32
  %150 = and i32 %147, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %185

152:                                              ; preds = %119
  %153 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %154 = load i32, i32* @UART_LCR, align 4
  %155 = call i32 @serial_out(%struct.uart_8250_port* %153, i32 %154, i32 224)
  %156 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %157 = call zeroext i16 @serial_dl_read(%struct.uart_8250_port* %156)
  store i16 %157, i16* %6, align 2
  %158 = load i16, i16* %6, align 2
  %159 = zext i16 %158 to i32
  %160 = shl i32 %159, 3
  %161 = trunc i32 %160 to i16
  store i16 %161, i16* %6, align 2
  %162 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %163 = call i64 @ns16550a_goto_highspeed(%struct.uart_8250_port* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %152
  %166 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %167 = load i16, i16* %6, align 2
  %168 = call i32 @serial_dl_write(%struct.uart_8250_port* %166, i16 zeroext %167)
  br label %169

169:                                              ; preds = %165, %152
  %170 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %171 = load i32, i32* @UART_LCR, align 4
  %172 = call i32 @serial_out(%struct.uart_8250_port* %170, i32 %171, i32 0)
  %173 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %174 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 1
  store i32 14745600, i32* %175, align 8
  %176 = load i64, i64* @PORT_NS16550A, align 8
  %177 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %178 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 0
  store i64 %176, i64* %179, align 8
  %180 = load i32, i32* @UART_NATSEMI, align 4
  %181 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %182 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = or i32 %183, %180
  store i32 %184, i32* %182, align 8
  br label %322

185:                                              ; preds = %119
  br label %186

186:                                              ; preds = %185, %98
  %187 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %188 = load i32, i32* @UART_LCR, align 4
  %189 = call i32 @serial_out(%struct.uart_8250_port* %187, i32 %188, i32 0)
  %190 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %191 = load i32, i32* @UART_FCR, align 4
  %192 = load i32, i32* @UART_FCR_ENABLE_FIFO, align 4
  %193 = load i32, i32* @UART_FCR7_64BYTE, align 4
  %194 = or i32 %192, %193
  %195 = call i32 @serial_out(%struct.uart_8250_port* %190, i32 %191, i32 %194)
  %196 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %197 = load i32, i32* @UART_IIR, align 4
  %198 = call i32 @serial_in(%struct.uart_8250_port* %196, i32 %197)
  %199 = lshr i32 %198, 5
  %200 = trunc i32 %199 to i8
  store i8 %200, i8* %3, align 1
  %201 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %202 = load i32, i32* @UART_FCR, align 4
  %203 = load i32, i32* @UART_FCR_ENABLE_FIFO, align 4
  %204 = call i32 @serial_out(%struct.uart_8250_port* %201, i32 %202, i32 %203)
  %205 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %206 = load i32, i32* @UART_LCR, align 4
  %207 = load i32, i32* @UART_LCR_CONF_MODE_A, align 4
  %208 = call i32 @serial_out(%struct.uart_8250_port* %205, i32 %206, i32 %207)
  %209 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %210 = load i32, i32* @UART_FCR, align 4
  %211 = load i32, i32* @UART_FCR_ENABLE_FIFO, align 4
  %212 = load i32, i32* @UART_FCR7_64BYTE, align 4
  %213 = or i32 %211, %212
  %214 = call i32 @serial_out(%struct.uart_8250_port* %209, i32 %210, i32 %213)
  %215 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %216 = load i32, i32* @UART_IIR, align 4
  %217 = call i32 @serial_in(%struct.uart_8250_port* %215, i32 %216)
  %218 = lshr i32 %217, 5
  %219 = trunc i32 %218 to i8
  store i8 %219, i8* %4, align 1
  %220 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %221 = load i32, i32* @UART_FCR, align 4
  %222 = load i32, i32* @UART_FCR_ENABLE_FIFO, align 4
  %223 = call i32 @serial_out(%struct.uart_8250_port* %220, i32 %221, i32 %222)
  %224 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %225 = load i32, i32* @UART_LCR, align 4
  %226 = call i32 @serial_out(%struct.uart_8250_port* %224, i32 %225, i32 0)
  %227 = load i8, i8* %3, align 1
  %228 = zext i8 %227 to i32
  %229 = load i8, i8* %4, align 1
  %230 = zext i8 %229 to i32
  %231 = call i32 (i8*, ...) @DEBUG_AUTOCONF(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %228, i32 %230)
  %232 = load i8, i8* %3, align 1
  %233 = zext i8 %232 to i32
  %234 = icmp eq i32 %233, 6
  br i1 %234, label %235, label %251

235:                                              ; preds = %186
  %236 = load i8, i8* %4, align 1
  %237 = zext i8 %236 to i32
  %238 = icmp eq i32 %237, 7
  br i1 %238, label %239, label %251

239:                                              ; preds = %235
  %240 = load i64, i64* @PORT_16750, align 8
  %241 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %242 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %242, i32 0, i32 0
  store i64 %240, i64* %243, align 8
  %244 = load i32, i32* @UART_CAP_AFE, align 4
  %245 = load i32, i32* @UART_CAP_SLEEP, align 4
  %246 = or i32 %244, %245
  %247 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %248 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = or i32 %249, %246
  store i32 %250, i32* %248, align 8
  br label %322

251:                                              ; preds = %235, %186
  %252 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %253 = load i32, i32* @UART_IER, align 4
  %254 = call i32 @serial_in(%struct.uart_8250_port* %252, i32 %253)
  store i32 %254, i32* %5, align 4
  %255 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %256 = load i32, i32* @UART_IER, align 4
  %257 = load i32, i32* %5, align 4
  %258 = load i32, i32* @UART_IER_UUE, align 4
  %259 = xor i32 %258, -1
  %260 = and i32 %257, %259
  %261 = call i32 @serial_out(%struct.uart_8250_port* %255, i32 %256, i32 %260)
  %262 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %263 = load i32, i32* @UART_IER, align 4
  %264 = call i32 @serial_in(%struct.uart_8250_port* %262, i32 %263)
  %265 = load i32, i32* @UART_IER_UUE, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %295, label %268

268:                                              ; preds = %251
  %269 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %270 = load i32, i32* @UART_IER, align 4
  %271 = load i32, i32* %5, align 4
  %272 = load i32, i32* @UART_IER_UUE, align 4
  %273 = or i32 %271, %272
  %274 = call i32 @serial_out(%struct.uart_8250_port* %269, i32 %270, i32 %273)
  %275 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %276 = load i32, i32* @UART_IER, align 4
  %277 = call i32 @serial_in(%struct.uart_8250_port* %275, i32 %276)
  %278 = load i32, i32* @UART_IER_UUE, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %294

281:                                              ; preds = %268
  %282 = call i32 (i8*, ...) @DEBUG_AUTOCONF(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %283 = load i64, i64* @PORT_XSCALE, align 8
  %284 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %285 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %285, i32 0, i32 0
  store i64 %283, i64* %286, align 8
  %287 = load i32, i32* @UART_CAP_UUE, align 4
  %288 = load i32, i32* @UART_CAP_RTOIE, align 4
  %289 = or i32 %287, %288
  %290 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %291 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = or i32 %292, %289
  store i32 %293, i32* %291, align 8
  br label %322

294:                                              ; preds = %268
  br label %297

295:                                              ; preds = %251
  %296 = call i32 (i8*, ...) @DEBUG_AUTOCONF(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %297

297:                                              ; preds = %295, %294
  %298 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %299 = load i32, i32* @UART_IER, align 4
  %300 = load i32, i32* %5, align 4
  %301 = call i32 @serial_out(%struct.uart_8250_port* %298, i32 %299, i32 %300)
  %302 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %303 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %302, i32 0, i32 1
  %304 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = load i64, i64* @PORT_16550A, align 8
  %307 = icmp eq i64 %305, %306
  br i1 %307, label %308, label %322

308:                                              ; preds = %297
  %309 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %310 = call i32 @size_fifo(%struct.uart_8250_port* %309)
  %311 = icmp eq i32 %310, 64
  br i1 %311, label %312, label %322

312:                                              ; preds = %308
  %313 = load i64, i64* @PORT_U6_16550A, align 8
  %314 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %315 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %314, i32 0, i32 1
  %316 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %315, i32 0, i32 0
  store i64 %313, i64* %316, align 8
  %317 = load i32, i32* @UART_CAP_AFE, align 4
  %318 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %319 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = or i32 %320, %317
  store i32 %321, i32* %319, align 8
  br label %322

322:                                              ; preds = %77, %94, %169, %239, %281, %312, %308, %297
  ret void
}

declare dso_local i32 @serial_out(%struct.uart_8250_port*, i32, i32) #1

declare dso_local i32 @serial_in(%struct.uart_8250_port*, i32) #1

declare dso_local i32 @DEBUG_AUTOCONF(i8*, ...) #1

declare dso_local i32 @broken_efr(%struct.uart_8250_port*) #1

declare dso_local i32 @autoconfig_has_efr(%struct.uart_8250_port*) #1

declare dso_local zeroext i8 @serial8250_in_MCR(%struct.uart_8250_port*) #1

declare dso_local i32 @serial8250_out_MCR(%struct.uart_8250_port*, i8 zeroext) #1

declare dso_local zeroext i16 @serial_dl_read(%struct.uart_8250_port*) #1

declare dso_local i64 @ns16550a_goto_highspeed(%struct.uart_8250_port*) #1

declare dso_local i32 @serial_dl_write(%struct.uart_8250_port*, i16 zeroext) #1

declare dso_local i32 @size_fifo(%struct.uart_8250_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
