; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_serial8250_do_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_serial8250_do_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64 }
%struct.uart_port = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.uart_8250_port = type { i32, i64, i32, i32, i32*, i64, i64, %struct.TYPE_5__, %struct.TYPE_4__*, i64, i64, i64 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.uart_8250_port*)* }

@uart_config = common dso_local global %struct.TYPE_6__* null, align 8
@PORT_16C950 = common dso_local global i64 0, align 8
@UART_LCR = common dso_local global i32 0, align 4
@UART_LCR_CONF_MODE_B = common dso_local global i8 0, align 1
@UART_EFR = common dso_local global i32 0, align 4
@UART_EFR_ECB = common dso_local global i8 0, align 1
@UART_IER = common dso_local global i32 0, align 4
@UART_CSR = common dso_local global i32 0, align 4
@PORT_DA830 = common dso_local global i64 0, align 8
@UART_DA830_PWREMU_MGMT = common dso_local global i32 0, align 4
@UART_DA830_PWREMU_MGMT_UTRST = common dso_local global i8 0, align 1
@UART_DA830_PWREMU_MGMT_URRST = common dso_local global i8 0, align 1
@UART_DA830_PWREMU_MGMT_FREE = common dso_local global i8 0, align 1
@PORT_NPCM = common dso_local global i64 0, align 8
@UART_NPCM_TOR = common dso_local global i32 0, align 4
@UART_NPCM_TOIE = common dso_local global i32 0, align 4
@PORT_XR17V35X = common dso_local global i64 0, align 8
@UART_XR_EFR = common dso_local global i32 0, align 4
@UART_LSR = common dso_local global i32 0, align 4
@UART_RX = common dso_local global i32 0, align 4
@UART_IIR = common dso_local global i32 0, align 4
@UART_MSR = common dso_local global i32 0, align 4
@UPF_BUGGY_UART = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s: LSR safety check engaged!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@PORT_16850 = common dso_local global i64 0, align 8
@UART_FCTR = common dso_local global i32 0, align 4
@UART_FCTR_RX = common dso_local global i8 0, align 1
@UART_FCTR_TX = common dso_local global i8 0, align 1
@UART_FCTR_TRGD = common dso_local global i8 0, align 1
@UART_TRG = common dso_local global i32 0, align 4
@UART_TRG_96 = common dso_local global i8 0, align 1
@PORT_ALTR_16550_F32 = common dso_local global i64 0, align 8
@PORT_ALTR_16550_F64 = common dso_local global i64 0, align 8
@PORT_ALTR_16550_F128 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"%s TX FIFO Threshold errors, skipping\0A\00", align 1
@UART_ALTR_AFR = common dso_local global i32 0, align 4
@UART_ALTR_EN_TXFIFO_LW = common dso_local global i8 0, align 1
@UART_ALTR_TX_LOW = common dso_local global i32 0, align 4
@serial8250_tx_threshold_handle_irq = common dso_local global i32 0, align 4
@UPF_NO_THRE_TEST = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@UART_LSR_THRE = common dso_local global i32 0, align 4
@UART_IER_THRI = common dso_local global i8 0, align 1
@UART_IIR_NO_INT = common dso_local global i8 0, align 1
@UPF_BUG_THRE = common dso_local global i32 0, align 4
@UART_BUG_THRE = common dso_local global i32 0, align 4
@UART_LCR_WLEN8 = common dso_local global i8 0, align 1
@UPF_FOURPORT = common dso_local global i32 0, align 4
@TIOCM_OUT1 = common dso_local global i32 0, align 4
@TIOCM_OUT2 = common dso_local global i32 0, align 4
@UPQ_NO_TXEN_TEST = common dso_local global i32 0, align 4
@UART_LSR_TEMT = common dso_local global i8 0, align 1
@UART_BUG_TXEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"%s - enabling bad tx status workarounds\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"%s - failed to request DMA\0A\00", align 1
@UART_IER_RLSI = common dso_local global i32 0, align 4
@UART_IER_RDI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @serial8250_do_startup(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.uart_8250_port*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %11 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %12 = call %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port* %11)
  store %struct.uart_8250_port* %12, %struct.uart_8250_port** %3, align 8
  %13 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %14 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @uart_config, align 8
  %19 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %20 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %26 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  br label %27

27:                                               ; preds = %17, %1
  %28 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %29 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %27
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** @uart_config, align 8
  %34 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %35 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %41 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  br label %42

42:                                               ; preds = %32, %27
  %43 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %44 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %43, i32 0, i32 11
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %57, label %47

47:                                               ; preds = %42
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** @uart_config, align 8
  %49 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %50 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %56 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %55, i32 0, i32 11
  store i64 %54, i64* %56, align 8
  br label %57

57:                                               ; preds = %47, %42
  %58 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %59 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %58, i32 0, i32 10
  store i64 0, i64* %59, align 8
  %60 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %61 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %64 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %62, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %57
  %68 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %69 = call i32 @set_io_from_upio(%struct.uart_port* %68)
  br label %70

70:                                               ; preds = %67, %57
  %71 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %72 = call i32 @serial8250_rpm_get(%struct.uart_8250_port* %71)
  %73 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %74 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @PORT_16C950, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %109

78:                                               ; preds = %70
  %79 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %80 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %79, i32 0, i32 9
  store i64 0, i64* %80, align 8
  %81 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %82 = load i32, i32* @UART_LCR, align 4
  %83 = load i8, i8* @UART_LCR_CONF_MODE_B, align 1
  %84 = call i32 @serial_port_out(%struct.uart_port* %81, i32 %82, i8 zeroext %83)
  %85 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %86 = load i32, i32* @UART_EFR, align 4
  %87 = load i8, i8* @UART_EFR_ECB, align 1
  %88 = call i32 @serial_port_out(%struct.uart_port* %85, i32 %86, i8 zeroext %87)
  %89 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %90 = load i32, i32* @UART_IER, align 4
  %91 = call i32 @serial_port_out(%struct.uart_port* %89, i32 %90, i8 zeroext 0)
  %92 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %93 = load i32, i32* @UART_LCR, align 4
  %94 = call i32 @serial_port_out(%struct.uart_port* %92, i32 %93, i8 zeroext 0)
  %95 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %96 = load i32, i32* @UART_CSR, align 4
  %97 = call i32 @serial_icr_write(%struct.uart_8250_port* %95, i32 %96, i32 0)
  %98 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %99 = load i32, i32* @UART_LCR, align 4
  %100 = load i8, i8* @UART_LCR_CONF_MODE_B, align 1
  %101 = call i32 @serial_port_out(%struct.uart_port* %98, i32 %99, i8 zeroext %100)
  %102 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %103 = load i32, i32* @UART_EFR, align 4
  %104 = load i8, i8* @UART_EFR_ECB, align 1
  %105 = call i32 @serial_port_out(%struct.uart_port* %102, i32 %103, i8 zeroext %104)
  %106 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %107 = load i32, i32* @UART_LCR, align 4
  %108 = call i32 @serial_port_out(%struct.uart_port* %106, i32 %107, i8 zeroext 0)
  br label %109

109:                                              ; preds = %78, %70
  %110 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %111 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @PORT_DA830, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %135

115:                                              ; preds = %109
  %116 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %117 = load i32, i32* @UART_IER, align 4
  %118 = call i32 @serial_port_out(%struct.uart_port* %116, i32 %117, i8 zeroext 0)
  %119 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %120 = load i32, i32* @UART_DA830_PWREMU_MGMT, align 4
  %121 = call i32 @serial_port_out(%struct.uart_port* %119, i32 %120, i8 zeroext 0)
  %122 = call i32 @mdelay(i32 10)
  %123 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %124 = load i32, i32* @UART_DA830_PWREMU_MGMT, align 4
  %125 = load i8, i8* @UART_DA830_PWREMU_MGMT_UTRST, align 1
  %126 = zext i8 %125 to i32
  %127 = load i8, i8* @UART_DA830_PWREMU_MGMT_URRST, align 1
  %128 = zext i8 %127 to i32
  %129 = or i32 %126, %128
  %130 = load i8, i8* @UART_DA830_PWREMU_MGMT_FREE, align 1
  %131 = zext i8 %130 to i32
  %132 = or i32 %129, %131
  %133 = trunc i32 %132 to i8
  %134 = call i32 @serial_port_out(%struct.uart_port* %123, i32 %124, i8 zeroext %133)
  br label %135

135:                                              ; preds = %115, %109
  %136 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %137 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @PORT_NPCM, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %148

141:                                              ; preds = %135
  %142 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %143 = load i32, i32* @UART_NPCM_TOR, align 4
  %144 = load i32, i32* @UART_NPCM_TOIE, align 4
  %145 = or i32 %144, 32
  %146 = trunc i32 %145 to i8
  %147 = call i32 @serial_port_out(%struct.uart_port* %142, i32 %143, i8 zeroext %146)
  br label %148

148:                                              ; preds = %141, %135
  %149 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %150 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @PORT_XR17V35X, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %162

154:                                              ; preds = %148
  %155 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %156 = load i32, i32* @UART_XR_EFR, align 4
  %157 = load i8, i8* @UART_EFR_ECB, align 1
  %158 = call i32 @serial_port_out(%struct.uart_port* %155, i32 %156, i8 zeroext %157)
  %159 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %160 = load i32, i32* @UART_IER, align 4
  %161 = call i32 @serial_port_out(%struct.uart_port* %159, i32 %160, i8 zeroext 0)
  br label %162

162:                                              ; preds = %154, %148
  %163 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %164 = call i32 @serial8250_clear_fifos(%struct.uart_8250_port* %163)
  %165 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %166 = load i32, i32* @UART_LSR, align 4
  %167 = call i32 @serial_port_in(%struct.uart_port* %165, i32 %166)
  %168 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %169 = load i32, i32* @UART_RX, align 4
  %170 = call i32 @serial_port_in(%struct.uart_port* %168, i32 %169)
  %171 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %172 = load i32, i32* @UART_IIR, align 4
  %173 = call i32 @serial_port_in(%struct.uart_port* %171, i32 %172)
  %174 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %175 = load i32, i32* @UART_MSR, align 4
  %176 = call i32 @serial_port_in(%struct.uart_port* %174, i32 %175)
  %177 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %178 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @UPF_BUGGY_UART, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %195, label %183

183:                                              ; preds = %162
  %184 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %185 = load i32, i32* @UART_LSR, align 4
  %186 = call i32 @serial_port_in(%struct.uart_port* %184, i32 %185)
  %187 = icmp eq i32 %186, 255
  br i1 %187, label %188, label %195

188:                                              ; preds = %183
  %189 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %190 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %189, i32 0, i32 6
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @pr_info_ratelimited(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %191)
  %193 = load i32, i32* @ENODEV, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %7, align 4
  br label %600

195:                                              ; preds = %183, %162
  %196 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %197 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @PORT_16850, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %253

201:                                              ; preds = %195
  %202 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %203 = load i32, i32* @UART_LCR, align 4
  %204 = load i8, i8* @UART_LCR_CONF_MODE_B, align 1
  %205 = call i32 @serial_out(%struct.uart_8250_port* %202, i32 %203, i8 zeroext %204)
  %206 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %207 = load i32, i32* @UART_FCTR, align 4
  %208 = call zeroext i8 @serial_in(%struct.uart_8250_port* %206, i32 %207)
  %209 = zext i8 %208 to i32
  %210 = load i8, i8* @UART_FCTR_RX, align 1
  %211 = zext i8 %210 to i32
  %212 = load i8, i8* @UART_FCTR_TX, align 1
  %213 = zext i8 %212 to i32
  %214 = or i32 %211, %213
  %215 = xor i32 %214, -1
  %216 = and i32 %209, %215
  %217 = trunc i32 %216 to i8
  store i8 %217, i8* %8, align 1
  %218 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %219 = load i32, i32* @UART_FCTR, align 4
  %220 = load i8, i8* %8, align 1
  %221 = zext i8 %220 to i32
  %222 = load i8, i8* @UART_FCTR_TRGD, align 1
  %223 = zext i8 %222 to i32
  %224 = or i32 %221, %223
  %225 = load i8, i8* @UART_FCTR_RX, align 1
  %226 = zext i8 %225 to i32
  %227 = or i32 %224, %226
  %228 = trunc i32 %227 to i8
  %229 = call i32 @serial_port_out(%struct.uart_port* %218, i32 %219, i8 zeroext %228)
  %230 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %231 = load i32, i32* @UART_TRG, align 4
  %232 = load i8, i8* @UART_TRG_96, align 1
  %233 = call i32 @serial_port_out(%struct.uart_port* %230, i32 %231, i8 zeroext %232)
  %234 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %235 = load i32, i32* @UART_FCTR, align 4
  %236 = load i8, i8* %8, align 1
  %237 = zext i8 %236 to i32
  %238 = load i8, i8* @UART_FCTR_TRGD, align 1
  %239 = zext i8 %238 to i32
  %240 = or i32 %237, %239
  %241 = load i8, i8* @UART_FCTR_TX, align 1
  %242 = zext i8 %241 to i32
  %243 = or i32 %240, %242
  %244 = trunc i32 %243 to i8
  %245 = call i32 @serial_port_out(%struct.uart_port* %234, i32 %235, i8 zeroext %244)
  %246 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %247 = load i32, i32* @UART_TRG, align 4
  %248 = load i8, i8* @UART_TRG_96, align 1
  %249 = call i32 @serial_port_out(%struct.uart_port* %246, i32 %247, i8 zeroext %248)
  %250 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %251 = load i32, i32* @UART_LCR, align 4
  %252 = call i32 @serial_port_out(%struct.uart_port* %250, i32 %251, i8 zeroext 0)
  br label %253

253:                                              ; preds = %201, %195
  %254 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %255 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %254, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @PORT_ALTR_16550_F32, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %271, label %259

259:                                              ; preds = %253
  %260 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %261 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @PORT_ALTR_16550_F64, align 8
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %271, label %265

265:                                              ; preds = %259
  %266 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %267 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %266, i32 0, i32 1
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* @PORT_ALTR_16550_F128, align 8
  %270 = icmp eq i64 %268, %269
  br i1 %270, label %271, label %314

271:                                              ; preds = %265, %259, %253
  %272 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %273 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = icmp sgt i32 %274, 1
  br i1 %275, label %276, label %314

276:                                              ; preds = %271
  %277 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %278 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = icmp slt i32 %279, 2
  br i1 %280, label %289, label %281

281:                                              ; preds = %276
  %282 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %283 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %286 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = icmp sgt i32 %284, %287
  br i1 %288, label %289, label %294

289:                                              ; preds = %281, %276
  %290 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %291 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %290, i32 0, i32 6
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %292)
  br label %313

294:                                              ; preds = %281
  %295 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %296 = load i32, i32* @UART_ALTR_AFR, align 4
  %297 = load i8, i8* @UART_ALTR_EN_TXFIFO_LW, align 1
  %298 = call i32 @serial_port_out(%struct.uart_port* %295, i32 %296, i8 zeroext %297)
  %299 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %300 = load i32, i32* @UART_ALTR_TX_LOW, align 4
  %301 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %302 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %305 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = sub nsw i32 %303, %306
  %308 = trunc i32 %307 to i8
  %309 = call i32 @serial_port_out(%struct.uart_port* %299, i32 %300, i8 zeroext %308)
  %310 = load i32, i32* @serial8250_tx_threshold_handle_irq, align 4
  %311 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %312 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %311, i32 0, i32 10
  store i32 %310, i32* %312, align 8
  br label %313

313:                                              ; preds = %294, %289
  br label %314

314:                                              ; preds = %313, %271, %265
  %315 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %316 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %315, i32 0, i32 9
  %317 = load i64, i64* %316, align 8
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %416

319:                                              ; preds = %314
  %320 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %321 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %320, i32 0, i32 7
  %322 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = load i32, i32* @UPF_NO_THRE_TEST, align 4
  %325 = and i32 %323, %324
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %416, label %327

327:                                              ; preds = %319
  %328 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %329 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %328, i32 0, i32 7
  %330 = load i64, i64* %4, align 8
  %331 = call i32 @spin_lock_irqsave(i32* %329, i64 %330)
  %332 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %333 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %332, i32 0, i32 7
  %334 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = load i32, i32* @IRQF_SHARED, align 4
  %337 = and i32 %335, %336
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %344

339:                                              ; preds = %327
  %340 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %341 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %340, i32 0, i32 9
  %342 = load i64, i64* %341, align 8
  %343 = call i32 @disable_irq_nosync(i64 %342)
  br label %344

344:                                              ; preds = %339, %327
  %345 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %346 = load i32, i32* @UART_LSR_THRE, align 4
  %347 = call i32 @wait_for_xmitr(%struct.uart_8250_port* %345, i32 %346)
  %348 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %349 = load i32, i32* @UART_IER, align 4
  %350 = load i8, i8* @UART_IER_THRI, align 1
  %351 = call i32 @serial_port_out_sync(%struct.uart_port* %348, i32 %349, i8 zeroext %350)
  %352 = call i32 @udelay(i32 1)
  %353 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %354 = load i32, i32* @UART_IIR, align 4
  %355 = call i32 @serial_port_in(%struct.uart_port* %353, i32 %354)
  %356 = trunc i32 %355 to i8
  store i8 %356, i8* %9, align 1
  %357 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %358 = load i32, i32* @UART_IER, align 4
  %359 = call i32 @serial_port_out(%struct.uart_port* %357, i32 %358, i8 zeroext 0)
  %360 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %361 = load i32, i32* @UART_IER, align 4
  %362 = load i8, i8* @UART_IER_THRI, align 1
  %363 = call i32 @serial_port_out_sync(%struct.uart_port* %360, i32 %361, i8 zeroext %362)
  %364 = call i32 @udelay(i32 1)
  %365 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %366 = load i32, i32* @UART_IIR, align 4
  %367 = call i32 @serial_port_in(%struct.uart_port* %365, i32 %366)
  %368 = trunc i32 %367 to i8
  store i8 %368, i8* %6, align 1
  %369 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %370 = load i32, i32* @UART_IER, align 4
  %371 = call i32 @serial_port_out(%struct.uart_port* %369, i32 %370, i8 zeroext 0)
  %372 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %373 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %372, i32 0, i32 4
  %374 = load i32, i32* %373, align 4
  %375 = load i32, i32* @IRQF_SHARED, align 4
  %376 = and i32 %374, %375
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %383

378:                                              ; preds = %344
  %379 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %380 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %379, i32 0, i32 9
  %381 = load i64, i64* %380, align 8
  %382 = call i32 @enable_irq(i64 %381)
  br label %383

383:                                              ; preds = %378, %344
  %384 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %385 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %384, i32 0, i32 7
  %386 = load i64, i64* %4, align 8
  %387 = call i32 @spin_unlock_irqrestore(i32* %385, i64 %386)
  %388 = load i8, i8* %9, align 1
  %389 = zext i8 %388 to i32
  %390 = load i8, i8* @UART_IIR_NO_INT, align 1
  %391 = zext i8 %390 to i32
  %392 = and i32 %389, %391
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %401, label %394

394:                                              ; preds = %383
  %395 = load i8, i8* %6, align 1
  %396 = zext i8 %395 to i32
  %397 = load i8, i8* @UART_IIR_NO_INT, align 1
  %398 = zext i8 %397 to i32
  %399 = and i32 %396, %398
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %409, label %401

401:                                              ; preds = %394, %383
  %402 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %403 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %402, i32 0, i32 7
  %404 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 8
  %406 = load i32, i32* @UPF_BUG_THRE, align 4
  %407 = and i32 %405, %406
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %415

409:                                              ; preds = %401, %394
  %410 = load i32, i32* @UART_BUG_THRE, align 4
  %411 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %412 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %411, i32 0, i32 2
  %413 = load i32, i32* %412, align 8
  %414 = or i32 %413, %410
  store i32 %414, i32* %412, align 8
  br label %415

415:                                              ; preds = %409, %401
  br label %416

416:                                              ; preds = %415, %319, %314
  %417 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %418 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %417, i32 0, i32 8
  %419 = load %struct.TYPE_4__*, %struct.TYPE_4__** %418, align 8
  %420 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %419, i32 0, i32 0
  %421 = load i32 (%struct.uart_8250_port*)*, i32 (%struct.uart_8250_port*)** %420, align 8
  %422 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %423 = call i32 %421(%struct.uart_8250_port* %422)
  store i32 %423, i32* %7, align 4
  %424 = load i32, i32* %7, align 4
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %426, label %427

426:                                              ; preds = %416
  br label %600

427:                                              ; preds = %416
  %428 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %429 = load i32, i32* @UART_LCR, align 4
  %430 = load i8, i8* @UART_LCR_WLEN8, align 1
  %431 = call i32 @serial_port_out(%struct.uart_port* %428, i32 %429, i8 zeroext %430)
  %432 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %433 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %432, i32 0, i32 7
  %434 = load i64, i64* %4, align 8
  %435 = call i32 @spin_lock_irqsave(i32* %433, i64 %434)
  %436 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %437 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %436, i32 0, i32 7
  %438 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 8
  %440 = load i32, i32* @UPF_FOURPORT, align 4
  %441 = and i32 %439, %440
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %443, label %457

443:                                              ; preds = %427
  %444 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %445 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %444, i32 0, i32 7
  %446 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %445, i32 0, i32 4
  %447 = load i32, i32* %446, align 8
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %456, label %449

449:                                              ; preds = %443
  %450 = load i32, i32* @TIOCM_OUT1, align 4
  %451 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %452 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %451, i32 0, i32 7
  %453 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %452, i32 0, i32 3
  %454 = load i32, i32* %453, align 4
  %455 = or i32 %454, %450
  store i32 %455, i32* %453, align 4
  br label %456

456:                                              ; preds = %449, %443
  br label %470

457:                                              ; preds = %427
  %458 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %459 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %458, i32 0, i32 9
  %460 = load i64, i64* %459, align 8
  %461 = icmp ne i64 %460, 0
  br i1 %461, label %462, label %469

462:                                              ; preds = %457
  %463 = load i32, i32* @TIOCM_OUT2, align 4
  %464 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %465 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %464, i32 0, i32 7
  %466 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %465, i32 0, i32 3
  %467 = load i32, i32* %466, align 4
  %468 = or i32 %467, %463
  store i32 %468, i32* %466, align 4
  br label %469

469:                                              ; preds = %462, %457
  br label %470

470:                                              ; preds = %469, %456
  %471 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %472 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %473 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %472, i32 0, i32 8
  %474 = load i32, i32* %473, align 4
  %475 = call i32 @serial8250_set_mctrl(%struct.uart_port* %471, i32 %474)
  %476 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %477 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %476, i32 0, i32 7
  %478 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %477, i32 0, i32 2
  %479 = load i32, i32* %478, align 8
  %480 = load i32, i32* @UPQ_NO_TXEN_TEST, align 4
  %481 = and i32 %479, %480
  %482 = icmp ne i32 %481, 0
  br i1 %482, label %483, label %484

483:                                              ; preds = %470
  br label %539

484:                                              ; preds = %470
  %485 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %486 = load i32, i32* @UART_IER, align 4
  %487 = load i8, i8* @UART_IER_THRI, align 1
  %488 = call i32 @serial_port_out(%struct.uart_port* %485, i32 %486, i8 zeroext %487)
  %489 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %490 = load i32, i32* @UART_LSR, align 4
  %491 = call i32 @serial_port_in(%struct.uart_port* %489, i32 %490)
  %492 = trunc i32 %491 to i8
  store i8 %492, i8* %5, align 1
  %493 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %494 = load i32, i32* @UART_IIR, align 4
  %495 = call i32 @serial_port_in(%struct.uart_port* %493, i32 %494)
  %496 = trunc i32 %495 to i8
  store i8 %496, i8* %6, align 1
  %497 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %498 = load i32, i32* @UART_IER, align 4
  %499 = call i32 @serial_port_out(%struct.uart_port* %497, i32 %498, i8 zeroext 0)
  %500 = load i8, i8* %5, align 1
  %501 = zext i8 %500 to i32
  %502 = load i8, i8* @UART_LSR_TEMT, align 1
  %503 = zext i8 %502 to i32
  %504 = and i32 %501, %503
  %505 = icmp ne i32 %504, 0
  br i1 %505, label %506, label %531

506:                                              ; preds = %484
  %507 = load i8, i8* %6, align 1
  %508 = zext i8 %507 to i32
  %509 = load i8, i8* @UART_IIR_NO_INT, align 1
  %510 = zext i8 %509 to i32
  %511 = and i32 %508, %510
  %512 = icmp ne i32 %511, 0
  br i1 %512, label %513, label %531

513:                                              ; preds = %506
  %514 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %515 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %514, i32 0, i32 2
  %516 = load i32, i32* %515, align 8
  %517 = load i32, i32* @UART_BUG_TXEN, align 4
  %518 = and i32 %516, %517
  %519 = icmp ne i32 %518, 0
  br i1 %519, label %530, label %520

520:                                              ; preds = %513
  %521 = load i32, i32* @UART_BUG_TXEN, align 4
  %522 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %523 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %522, i32 0, i32 2
  %524 = load i32, i32* %523, align 8
  %525 = or i32 %524, %521
  store i32 %525, i32* %523, align 8
  %526 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %527 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %526, i32 0, i32 6
  %528 = load i32, i32* %527, align 4
  %529 = call i32 @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %528)
  br label %530

530:                                              ; preds = %520, %513
  br label %538

531:                                              ; preds = %506, %484
  %532 = load i32, i32* @UART_BUG_TXEN, align 4
  %533 = xor i32 %532, -1
  %534 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %535 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %534, i32 0, i32 2
  %536 = load i32, i32* %535, align 8
  %537 = and i32 %536, %533
  store i32 %537, i32* %535, align 8
  br label %538

538:                                              ; preds = %531, %530
  br label %539

539:                                              ; preds = %538, %483
  %540 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %541 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %540, i32 0, i32 7
  %542 = load i64, i64* %4, align 8
  %543 = call i32 @spin_unlock_irqrestore(i32* %541, i64 %542)
  %544 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %545 = load i32, i32* @UART_LSR, align 4
  %546 = call i32 @serial_port_in(%struct.uart_port* %544, i32 %545)
  %547 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %548 = load i32, i32* @UART_RX, align 4
  %549 = call i32 @serial_port_in(%struct.uart_port* %547, i32 %548)
  %550 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %551 = load i32, i32* @UART_IIR, align 4
  %552 = call i32 @serial_port_in(%struct.uart_port* %550, i32 %551)
  %553 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %554 = load i32, i32* @UART_MSR, align 4
  %555 = call i32 @serial_port_in(%struct.uart_port* %553, i32 %554)
  %556 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %557 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %556, i32 0, i32 6
  store i64 0, i64* %557, align 8
  %558 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %559 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %558, i32 0, i32 5
  store i64 0, i64* %559, align 8
  %560 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %561 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %560, i32 0, i32 4
  %562 = load i32*, i32** %561, align 8
  %563 = icmp ne i32* %562, null
  br i1 %563, label %564, label %577

564:                                              ; preds = %539
  %565 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %566 = call i32 @serial8250_request_dma(%struct.uart_8250_port* %565)
  store i32 %566, i32* %7, align 4
  %567 = load i32, i32* %7, align 4
  %568 = icmp ne i32 %567, 0
  br i1 %568, label %569, label %576

569:                                              ; preds = %564
  %570 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %571 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %570, i32 0, i32 6
  %572 = load i32, i32* %571, align 4
  %573 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %572)
  %574 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %575 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %574, i32 0, i32 4
  store i32* null, i32** %575, align 8
  br label %576

576:                                              ; preds = %569, %564
  br label %577

577:                                              ; preds = %576, %539
  %578 = load i32, i32* @UART_IER_RLSI, align 4
  %579 = load i32, i32* @UART_IER_RDI, align 4
  %580 = or i32 %578, %579
  %581 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %582 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %581, i32 0, i32 3
  store i32 %580, i32* %582, align 4
  %583 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %584 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %583, i32 0, i32 3
  %585 = load i32, i32* %584, align 8
  %586 = load i32, i32* @UPF_FOURPORT, align 4
  %587 = and i32 %585, %586
  %588 = icmp ne i32 %587, 0
  br i1 %588, label %589, label %599

589:                                              ; preds = %577
  %590 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %591 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %590, i32 0, i32 5
  %592 = load i32, i32* %591, align 8
  %593 = and i32 %592, 4064
  %594 = or i32 %593, 31
  store i32 %594, i32* %10, align 4
  %595 = load i32, i32* %10, align 4
  %596 = call i32 @outb_p(i32 128, i32 %595)
  %597 = load i32, i32* %10, align 4
  %598 = call i32 @inb_p(i32 %597)
  br label %599

599:                                              ; preds = %589, %577
  store i32 0, i32* %7, align 4
  br label %600

600:                                              ; preds = %599, %426, %188
  %601 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %602 = call i32 @serial8250_rpm_put(%struct.uart_8250_port* %601)
  %603 = load i32, i32* %7, align 4
  ret i32 %603
}

declare dso_local %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port*) #1

declare dso_local i32 @set_io_from_upio(%struct.uart_port*) #1

declare dso_local i32 @serial8250_rpm_get(%struct.uart_8250_port*) #1

declare dso_local i32 @serial_port_out(%struct.uart_port*, i32, i8 zeroext) #1

declare dso_local i32 @serial_icr_write(%struct.uart_8250_port*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @serial8250_clear_fifos(%struct.uart_8250_port*) #1

declare dso_local i32 @serial_port_in(%struct.uart_port*, i32) #1

declare dso_local i32 @pr_info_ratelimited(i8*, i32) #1

declare dso_local i32 @serial_out(%struct.uart_8250_port*, i32, i8 zeroext) #1

declare dso_local zeroext i8 @serial_in(%struct.uart_8250_port*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @disable_irq_nosync(i64) #1

declare dso_local i32 @wait_for_xmitr(%struct.uart_8250_port*, i32) #1

declare dso_local i32 @serial_port_out_sync(%struct.uart_port*, i32, i8 zeroext) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @enable_irq(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @serial8250_set_mctrl(%struct.uart_port*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @serial8250_request_dma(%struct.uart_8250_port*) #1

declare dso_local i32 @pr_warn_ratelimited(i8*, i32) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @inb_p(i32) #1

declare dso_local i32 @serial8250_rpm_put(%struct.uart_8250_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
