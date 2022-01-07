; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_omap-serial.c_serial_omap_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_omap-serial.c_serial_omap_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.ktermios = type { i32, i32, i8* }
%struct.uart_omap_port = type { i32, i32, i32, i32, i8, i32, i8, i8, i8, i8, i8, i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@CSIZE = common dso_local global i32 0, align 4
@UART_LCR_WLEN5 = common dso_local global i8 0, align 1
@UART_LCR_WLEN6 = common dso_local global i8 0, align 1
@UART_LCR_WLEN7 = common dso_local global i8 0, align 1
@UART_LCR_WLEN8 = common dso_local global i8 0, align 1
@CSTOPB = common dso_local global i32 0, align 4
@UART_LCR_STOP = common dso_local global i8 0, align 1
@PARENB = common dso_local global i32 0, align 4
@UART_LCR_PARITY = common dso_local global i8 0, align 1
@PARODD = common dso_local global i32 0, align 4
@UART_LCR_EPAR = common dso_local global i8 0, align 1
@CMSPAR = common dso_local global i32 0, align 4
@UART_LCR_SPAR = common dso_local global i8 0, align 1
@USEC_PER_SEC = common dso_local global i32 0, align 4
@UART_OMAP_MDR1_DISABLE = common dso_local global i8 0, align 1
@UART_FCR_R_TRIG_01 = common dso_local global i32 0, align 4
@UART_FCR_T_TRIG_01 = common dso_local global i32 0, align 4
@UART_FCR_ENABLE_FIFO = common dso_local global i32 0, align 4
@UART_LSR_OE = common dso_local global i32 0, align 4
@UART_LSR_THRE = common dso_local global i32 0, align 4
@UART_LSR_DR = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@UART_LSR_FE = common dso_local global i32 0, align 4
@UART_LSR_PE = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@UART_LSR_BI = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@UART_IER_MSI = common dso_local global i8 0, align 1
@UART_IER = common dso_local global i32 0, align 4
@UART_LCR = common dso_local global i32 0, align 4
@UART_LCR_CONF_MODE_A = common dso_local global i8 0, align 1
@UART_DLL = common dso_local global i32 0, align 4
@UART_DLM = common dso_local global i32 0, align 4
@UART_LCR_CONF_MODE_B = common dso_local global i8 0, align 1
@UART_EFR = common dso_local global i32 0, align 4
@UART_EFR_ECB = common dso_local global i8 0, align 1
@UART_EFR_SCD = common dso_local global i8 0, align 1
@UART_MCR = common dso_local global i32 0, align 4
@UART_MCR_TCRTLR = common dso_local global i8 0, align 1
@OMAP_UART_SCR_RX_TRIG_GRANU1_MASK = common dso_local global i8 0, align 1
@OMAP_UART_FCR_RX_FIFO_TRIG_MASK = common dso_local global i32 0, align 4
@OMAP_UART_FCR_TX_FIFO_TRIG_MASK = common dso_local global i32 0, align 4
@UART_FCR6_R_TRIGGER_16 = common dso_local global i32 0, align 4
@UART_FCR6_T_TRIGGER_24 = common dso_local global i32 0, align 4
@UART_FCR = common dso_local global i32 0, align 4
@UART_OMAP_SCR = common dso_local global i32 0, align 4
@UART_ERRATA_i202_MDR1_ACCESS = common dso_local global i32 0, align 4
@UART_OMAP_MDR1 = common dso_local global i32 0, align 4
@UART_OMAP_MDR1_13X_MODE = common dso_local global i8 0, align 1
@UART_OMAP_MDR1_16X_MODE = common dso_local global i8 0, align 1
@UART_XON1 = common dso_local global i32 0, align 4
@VSTART = common dso_local global i64 0, align 8
@UART_XOFF1 = common dso_local global i32 0, align 4
@VSTOP = common dso_local global i64 0, align 8
@UART_TI752_TCR = common dso_local global i32 0, align 4
@OMAP_UART_TCR_TRIG = common dso_local global i8 0, align 1
@UPSTAT_AUTOCTS = common dso_local global i32 0, align 4
@UPSTAT_AUTORTS = common dso_local global i32 0, align 4
@UPSTAT_AUTOXOFF = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@UPF_HARD_FLOW = common dso_local global i32 0, align 4
@UART_EFR_CTS = common dso_local global i32 0, align 4
@UART_EFR_RTS = common dso_local global i32 0, align 4
@UPF_SOFT_FLOW = common dso_local global i32 0, align 4
@OMAP_UART_SW_CLR = common dso_local global i32 0, align 4
@IXON = common dso_local global i32 0, align 4
@OMAP_UART_SW_RX = common dso_local global i32 0, align 4
@IXOFF = common dso_local global i32 0, align 4
@OMAP_UART_SW_TX = common dso_local global i32 0, align 4
@IXANY = common dso_local global i32 0, align 4
@UART_MCR_XONANY = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [28 x i8] c"serial_omap_set_termios+%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @serial_omap_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial_omap_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca %struct.uart_omap_port*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %12 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %13 = call %struct.uart_omap_port* @to_uart_omap_port(%struct.uart_port* %12)
  store %struct.uart_omap_port* %13, %struct.uart_omap_port** %7, align 8
  store i8 0, i8* %8, align 1
  store i64 0, i64* %9, align 8
  %14 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %15 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @CSIZE, align 4
  %18 = and i32 %16, %17
  switch i32 %18, label %25 [
    i32 131, label %19
    i32 130, label %21
    i32 129, label %23
    i32 128, label %26
  ]

19:                                               ; preds = %3
  %20 = load i8, i8* @UART_LCR_WLEN5, align 1
  store i8 %20, i8* %8, align 1
  br label %28

21:                                               ; preds = %3
  %22 = load i8, i8* @UART_LCR_WLEN6, align 1
  store i8 %22, i8* %8, align 1
  br label %28

23:                                               ; preds = %3
  %24 = load i8, i8* @UART_LCR_WLEN7, align 1
  store i8 %24, i8* %8, align 1
  br label %28

25:                                               ; preds = %3
  br label %26

26:                                               ; preds = %3, %25
  %27 = load i8, i8* @UART_LCR_WLEN8, align 1
  store i8 %27, i8* %8, align 1
  br label %28

28:                                               ; preds = %26, %23, %21, %19
  %29 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %30 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @CSTOPB, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %28
  %36 = load i8, i8* @UART_LCR_STOP, align 1
  %37 = zext i8 %36 to i32
  %38 = load i8, i8* %8, align 1
  %39 = zext i8 %38 to i32
  %40 = or i32 %39, %37
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %8, align 1
  br label %42

42:                                               ; preds = %35, %28
  %43 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %44 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @PARENB, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %42
  %50 = load i8, i8* @UART_LCR_PARITY, align 1
  %51 = zext i8 %50 to i32
  %52 = load i8, i8* %8, align 1
  %53 = zext i8 %52 to i32
  %54 = or i32 %53, %51
  %55 = trunc i32 %54 to i8
  store i8 %55, i8* %8, align 1
  br label %56

56:                                               ; preds = %49, %42
  %57 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %58 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @PARODD, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %56
  %64 = load i8, i8* @UART_LCR_EPAR, align 1
  %65 = zext i8 %64 to i32
  %66 = load i8, i8* %8, align 1
  %67 = zext i8 %66 to i32
  %68 = or i32 %67, %65
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %8, align 1
  br label %70

70:                                               ; preds = %63, %56
  %71 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %72 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @CMSPAR, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %70
  %78 = load i8, i8* @UART_LCR_SPAR, align 1
  %79 = zext i8 %78 to i32
  %80 = load i8, i8* %8, align 1
  %81 = zext i8 %80 to i32
  %82 = or i32 %81, %79
  %83 = trunc i32 %82 to i8
  store i8 %83, i8* %8, align 1
  br label %84

84:                                               ; preds = %77, %70
  %85 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %86 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %87 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %88 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %89 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = sdiv i32 %90, 13
  %92 = call i32 @uart_get_baud_rate(%struct.uart_port* %85, %struct.ktermios* %86, %struct.ktermios* %87, i32 0, i32 %91)
  store i32 %92, i32* %10, align 4
  %93 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @serial_omap_get_divisor(%struct.uart_port* %93, i32 %94)
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* @USEC_PER_SEC, align 4
  %97 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %98 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %97, i32 0, i32 12
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = mul i32 %96, %100
  %102 = load i32, i32* %10, align 4
  %103 = udiv i32 %102, 8
  %104 = udiv i32 %101, %103
  %105 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %106 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 4
  %107 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %108 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %111 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %113 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %112, i32 0, i32 14
  %114 = call i32 @schedule_work(i32* %113)
  %115 = load i32, i32* %11, align 4
  %116 = and i32 %115, 255
  %117 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %118 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* %11, align 4
  %120 = lshr i32 %119, 8
  %121 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %122 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %121, i32 0, i32 3
  store i32 %120, i32* %122, align 4
  %123 = load i8, i8* @UART_OMAP_MDR1_DISABLE, align 1
  %124 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %125 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %124, i32 0, i32 4
  store i8 %123, i8* %125, align 4
  %126 = load i32, i32* @UART_FCR_R_TRIG_01, align 4
  %127 = load i32, i32* @UART_FCR_T_TRIG_01, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @UART_FCR_ENABLE_FIFO, align 4
  %130 = or i32 %128, %129
  %131 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %132 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %131, i32 0, i32 5
  store i32 %130, i32* %132, align 4
  %133 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %134 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %133, i32 0, i32 13
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @pm_runtime_get_sync(i32 %135)
  %137 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %138 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %137, i32 0, i32 12
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 7
  %140 = load i64, i64* %9, align 8
  %141 = call i32 @spin_lock_irqsave(i32* %139, i64 %140)
  %142 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %143 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %144 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* %10, align 4
  %147 = call i32 @uart_update_timeout(%struct.uart_port* %142, i32 %145, i32 %146)
  %148 = load i32, i32* @UART_LSR_OE, align 4
  %149 = load i32, i32* @UART_LSR_THRE, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* @UART_LSR_DR, align 4
  %152 = or i32 %150, %151
  %153 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %154 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %153, i32 0, i32 12
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 1
  store i32 %152, i32* %155, align 4
  %156 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %157 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @INPCK, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %171

162:                                              ; preds = %84
  %163 = load i32, i32* @UART_LSR_FE, align 4
  %164 = load i32, i32* @UART_LSR_PE, align 4
  %165 = or i32 %163, %164
  %166 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %167 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %166, i32 0, i32 12
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = or i32 %169, %165
  store i32 %170, i32* %168, align 4
  br label %171

171:                                              ; preds = %162, %84
  %172 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %173 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @BRKINT, align 4
  %176 = load i32, i32* @PARMRK, align 4
  %177 = or i32 %175, %176
  %178 = and i32 %174, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %187

180:                                              ; preds = %171
  %181 = load i32, i32* @UART_LSR_BI, align 4
  %182 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %183 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %182, i32 0, i32 12
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = or i32 %185, %181
  store i32 %186, i32* %184, align 4
  br label %187

187:                                              ; preds = %180, %171
  %188 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %189 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %188, i32 0, i32 12
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 2
  store i32 0, i32* %190, align 4
  %191 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %192 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @IGNPAR, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %206

197:                                              ; preds = %187
  %198 = load i32, i32* @UART_LSR_PE, align 4
  %199 = load i32, i32* @UART_LSR_FE, align 4
  %200 = or i32 %198, %199
  %201 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %202 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %201, i32 0, i32 12
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = or i32 %204, %200
  store i32 %205, i32* %203, align 4
  br label %206

206:                                              ; preds = %197, %187
  %207 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %208 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @IGNBRK, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %234

213:                                              ; preds = %206
  %214 = load i32, i32* @UART_LSR_BI, align 4
  %215 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %216 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %215, i32 0, i32 12
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 4
  %219 = or i32 %218, %214
  store i32 %219, i32* %217, align 4
  %220 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %221 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @IGNPAR, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %233

226:                                              ; preds = %213
  %227 = load i32, i32* @UART_LSR_OE, align 4
  %228 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %229 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %228, i32 0, i32 12
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = or i32 %231, %227
  store i32 %232, i32* %230, align 4
  br label %233

233:                                              ; preds = %226, %213
  br label %234

234:                                              ; preds = %233, %206
  %235 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %236 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* @CREAD, align 4
  %239 = and i32 %237, %238
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %248

241:                                              ; preds = %234
  %242 = load i32, i32* @UART_LSR_DR, align 4
  %243 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %244 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %243, i32 0, i32 12
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 4
  %247 = or i32 %246, %242
  store i32 %247, i32* %245, align 4
  br label %248

248:                                              ; preds = %241, %234
  %249 = load i8, i8* @UART_IER_MSI, align 1
  %250 = zext i8 %249 to i32
  %251 = xor i32 %250, -1
  %252 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %253 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %252, i32 0, i32 6
  %254 = load i8, i8* %253, align 4
  %255 = zext i8 %254 to i32
  %256 = and i32 %255, %251
  %257 = trunc i32 %256 to i8
  store i8 %257, i8* %253, align 4
  %258 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %259 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %258, i32 0, i32 12
  %260 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %261 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = call i64 @UART_ENABLE_MS(%struct.TYPE_3__* %259, i32 %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %274

265:                                              ; preds = %248
  %266 = load i8, i8* @UART_IER_MSI, align 1
  %267 = zext i8 %266 to i32
  %268 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %269 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %268, i32 0, i32 6
  %270 = load i8, i8* %269, align 4
  %271 = zext i8 %270 to i32
  %272 = or i32 %271, %267
  %273 = trunc i32 %272 to i8
  store i8 %273, i8* %269, align 4
  br label %274

274:                                              ; preds = %265, %248
  %275 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %276 = load i32, i32* @UART_IER, align 4
  %277 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %278 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %277, i32 0, i32 6
  %279 = load i8, i8* %278, align 4
  %280 = call i32 @serial_out(%struct.uart_omap_port* %275, i32 %276, i8 zeroext %279)
  %281 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %282 = load i32, i32* @UART_LCR, align 4
  %283 = load i8, i8* %8, align 1
  %284 = call i32 @serial_out(%struct.uart_omap_port* %281, i32 %282, i8 zeroext %283)
  %285 = load i8, i8* %8, align 1
  %286 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %287 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %286, i32 0, i32 7
  store i8 %285, i8* %287, align 1
  %288 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %289 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %288, i32 0, i32 8
  store i8 0, i8* %289, align 2
  %290 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %291 = load i32, i32* @UART_LCR, align 4
  %292 = load i8, i8* @UART_LCR_CONF_MODE_A, align 1
  %293 = call i32 @serial_out(%struct.uart_omap_port* %290, i32 %291, i8 zeroext %292)
  %294 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %295 = load i32, i32* @UART_DLL, align 4
  %296 = call i32 @serial_out(%struct.uart_omap_port* %294, i32 %295, i8 zeroext 0)
  %297 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %298 = load i32, i32* @UART_DLM, align 4
  %299 = call i32 @serial_out(%struct.uart_omap_port* %297, i32 %298, i8 zeroext 0)
  %300 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %301 = load i32, i32* @UART_LCR, align 4
  %302 = call i32 @serial_out(%struct.uart_omap_port* %300, i32 %301, i8 zeroext 0)
  %303 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %304 = load i32, i32* @UART_LCR, align 4
  %305 = load i8, i8* @UART_LCR_CONF_MODE_B, align 1
  %306 = call i32 @serial_out(%struct.uart_omap_port* %303, i32 %304, i8 zeroext %305)
  %307 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %308 = load i32, i32* @UART_EFR, align 4
  %309 = call zeroext i8 @serial_in(%struct.uart_omap_port* %307, i32 %308)
  %310 = zext i8 %309 to i32
  %311 = load i8, i8* @UART_EFR_ECB, align 1
  %312 = zext i8 %311 to i32
  %313 = xor i32 %312, -1
  %314 = and i32 %310, %313
  %315 = trunc i32 %314 to i8
  %316 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %317 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %316, i32 0, i32 9
  store i8 %315, i8* %317, align 1
  %318 = load i8, i8* @UART_EFR_SCD, align 1
  %319 = zext i8 %318 to i32
  %320 = xor i32 %319, -1
  %321 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %322 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %321, i32 0, i32 9
  %323 = load i8, i8* %322, align 1
  %324 = zext i8 %323 to i32
  %325 = and i32 %324, %320
  %326 = trunc i32 %325 to i8
  store i8 %326, i8* %322, align 1
  %327 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %328 = load i32, i32* @UART_EFR, align 4
  %329 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %330 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %329, i32 0, i32 9
  %331 = load i8, i8* %330, align 1
  %332 = zext i8 %331 to i32
  %333 = load i8, i8* @UART_EFR_ECB, align 1
  %334 = zext i8 %333 to i32
  %335 = or i32 %332, %334
  %336 = trunc i32 %335 to i8
  %337 = call i32 @serial_out(%struct.uart_omap_port* %327, i32 %328, i8 zeroext %336)
  %338 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %339 = load i32, i32* @UART_LCR, align 4
  %340 = load i8, i8* @UART_LCR_CONF_MODE_A, align 1
  %341 = call i32 @serial_out(%struct.uart_omap_port* %338, i32 %339, i8 zeroext %340)
  %342 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %343 = load i32, i32* @UART_MCR, align 4
  %344 = call zeroext i8 @serial_in(%struct.uart_omap_port* %342, i32 %343)
  %345 = zext i8 %344 to i32
  %346 = load i8, i8* @UART_MCR_TCRTLR, align 1
  %347 = zext i8 %346 to i32
  %348 = xor i32 %347, -1
  %349 = and i32 %345, %348
  %350 = trunc i32 %349 to i8
  %351 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %352 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %351, i32 0, i32 10
  store i8 %350, i8* %352, align 4
  %353 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %354 = load i32, i32* @UART_MCR, align 4
  %355 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %356 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %355, i32 0, i32 10
  %357 = load i8, i8* %356, align 4
  %358 = zext i8 %357 to i32
  %359 = load i8, i8* @UART_MCR_TCRTLR, align 1
  %360 = zext i8 %359 to i32
  %361 = or i32 %358, %360
  %362 = trunc i32 %361 to i8
  %363 = call i32 @serial_out(%struct.uart_omap_port* %353, i32 %354, i8 zeroext %362)
  %364 = load i8, i8* @OMAP_UART_SCR_RX_TRIG_GRANU1_MASK, align 1
  %365 = zext i8 %364 to i32
  %366 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %367 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %366, i32 0, i32 8
  %368 = load i8, i8* %367, align 2
  %369 = zext i8 %368 to i32
  %370 = or i32 %369, %365
  %371 = trunc i32 %370 to i8
  store i8 %371, i8* %367, align 2
  %372 = load i32, i32* @OMAP_UART_FCR_RX_FIFO_TRIG_MASK, align 4
  %373 = xor i32 %372, -1
  %374 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %375 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %374, i32 0, i32 5
  %376 = load i32, i32* %375, align 4
  %377 = and i32 %376, %373
  store i32 %377, i32* %375, align 4
  %378 = load i32, i32* @OMAP_UART_FCR_TX_FIFO_TRIG_MASK, align 4
  %379 = xor i32 %378, -1
  %380 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %381 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %380, i32 0, i32 5
  %382 = load i32, i32* %381, align 4
  %383 = and i32 %382, %379
  store i32 %383, i32* %381, align 4
  %384 = load i32, i32* @UART_FCR6_R_TRIGGER_16, align 4
  %385 = load i32, i32* @UART_FCR6_T_TRIGGER_24, align 4
  %386 = or i32 %384, %385
  %387 = load i32, i32* @UART_FCR_ENABLE_FIFO, align 4
  %388 = or i32 %386, %387
  %389 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %390 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %389, i32 0, i32 5
  %391 = load i32, i32* %390, align 4
  %392 = or i32 %391, %388
  store i32 %392, i32* %390, align 4
  %393 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %394 = load i32, i32* @UART_FCR, align 4
  %395 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %396 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %395, i32 0, i32 5
  %397 = load i32, i32* %396, align 4
  %398 = trunc i32 %397 to i8
  %399 = call i32 @serial_out(%struct.uart_omap_port* %393, i32 %394, i8 zeroext %398)
  %400 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %401 = load i32, i32* @UART_LCR, align 4
  %402 = load i8, i8* @UART_LCR_CONF_MODE_B, align 1
  %403 = call i32 @serial_out(%struct.uart_omap_port* %400, i32 %401, i8 zeroext %402)
  %404 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %405 = load i32, i32* @UART_OMAP_SCR, align 4
  %406 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %407 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %406, i32 0, i32 8
  %408 = load i8, i8* %407, align 2
  %409 = call i32 @serial_out(%struct.uart_omap_port* %404, i32 %405, i8 zeroext %408)
  %410 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %411 = load i32, i32* @UART_LCR, align 4
  %412 = load i8, i8* @UART_LCR_CONF_MODE_A, align 1
  %413 = call i32 @serial_out(%struct.uart_omap_port* %410, i32 %411, i8 zeroext %412)
  %414 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %415 = load i32, i32* @UART_MCR, align 4
  %416 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %417 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %416, i32 0, i32 10
  %418 = load i8, i8* %417, align 4
  %419 = call i32 @serial_out(%struct.uart_omap_port* %414, i32 %415, i8 zeroext %418)
  %420 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %421 = load i32, i32* @UART_LCR, align 4
  %422 = load i8, i8* @UART_LCR_CONF_MODE_B, align 1
  %423 = call i32 @serial_out(%struct.uart_omap_port* %420, i32 %421, i8 zeroext %422)
  %424 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %425 = load i32, i32* @UART_EFR, align 4
  %426 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %427 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %426, i32 0, i32 9
  %428 = load i8, i8* %427, align 1
  %429 = call i32 @serial_out(%struct.uart_omap_port* %424, i32 %425, i8 zeroext %428)
  %430 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %431 = load i32, i32* @UART_LCR, align 4
  %432 = load i8, i8* @UART_LCR_CONF_MODE_A, align 1
  %433 = call i32 @serial_out(%struct.uart_omap_port* %430, i32 %431, i8 zeroext %432)
  %434 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %435 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %434, i32 0, i32 11
  %436 = load i32, i32* %435, align 4
  %437 = load i32, i32* @UART_ERRATA_i202_MDR1_ACCESS, align 4
  %438 = and i32 %436, %437
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %440, label %446

440:                                              ; preds = %274
  %441 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %442 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %443 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %442, i32 0, i32 4
  %444 = load i8, i8* %443, align 4
  %445 = call i32 @serial_omap_mdr1_errataset(%struct.uart_omap_port* %441, i8 zeroext %444)
  br label %453

446:                                              ; preds = %274
  %447 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %448 = load i32, i32* @UART_OMAP_MDR1, align 4
  %449 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %450 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %449, i32 0, i32 4
  %451 = load i8, i8* %450, align 4
  %452 = call i32 @serial_out(%struct.uart_omap_port* %447, i32 %448, i8 zeroext %451)
  br label %453

453:                                              ; preds = %446, %440
  %454 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %455 = load i32, i32* @UART_LCR, align 4
  %456 = load i8, i8* @UART_LCR_CONF_MODE_B, align 1
  %457 = call i32 @serial_out(%struct.uart_omap_port* %454, i32 %455, i8 zeroext %456)
  %458 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %459 = load i32, i32* @UART_EFR, align 4
  %460 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %461 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %460, i32 0, i32 9
  %462 = load i8, i8* %461, align 1
  %463 = zext i8 %462 to i32
  %464 = load i8, i8* @UART_EFR_ECB, align 1
  %465 = zext i8 %464 to i32
  %466 = or i32 %463, %465
  %467 = trunc i32 %466 to i8
  %468 = call i32 @serial_out(%struct.uart_omap_port* %458, i32 %459, i8 zeroext %467)
  %469 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %470 = load i32, i32* @UART_LCR, align 4
  %471 = call i32 @serial_out(%struct.uart_omap_port* %469, i32 %470, i8 zeroext 0)
  %472 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %473 = load i32, i32* @UART_IER, align 4
  %474 = call i32 @serial_out(%struct.uart_omap_port* %472, i32 %473, i8 zeroext 0)
  %475 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %476 = load i32, i32* @UART_LCR, align 4
  %477 = load i8, i8* @UART_LCR_CONF_MODE_B, align 1
  %478 = call i32 @serial_out(%struct.uart_omap_port* %475, i32 %476, i8 zeroext %477)
  %479 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %480 = load i32, i32* @UART_DLL, align 4
  %481 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %482 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %481, i32 0, i32 2
  %483 = load i32, i32* %482, align 4
  %484 = trunc i32 %483 to i8
  %485 = call i32 @serial_out(%struct.uart_omap_port* %479, i32 %480, i8 zeroext %484)
  %486 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %487 = load i32, i32* @UART_DLM, align 4
  %488 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %489 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %488, i32 0, i32 3
  %490 = load i32, i32* %489, align 4
  %491 = trunc i32 %490 to i8
  %492 = call i32 @serial_out(%struct.uart_omap_port* %486, i32 %487, i8 zeroext %491)
  %493 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %494 = load i32, i32* @UART_LCR, align 4
  %495 = call i32 @serial_out(%struct.uart_omap_port* %493, i32 %494, i8 zeroext 0)
  %496 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %497 = load i32, i32* @UART_IER, align 4
  %498 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %499 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %498, i32 0, i32 6
  %500 = load i8, i8* %499, align 4
  %501 = call i32 @serial_out(%struct.uart_omap_port* %496, i32 %497, i8 zeroext %500)
  %502 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %503 = load i32, i32* @UART_LCR, align 4
  %504 = load i8, i8* @UART_LCR_CONF_MODE_B, align 1
  %505 = call i32 @serial_out(%struct.uart_omap_port* %502, i32 %503, i8 zeroext %504)
  %506 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %507 = load i32, i32* @UART_EFR, align 4
  %508 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %509 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %508, i32 0, i32 9
  %510 = load i8, i8* %509, align 1
  %511 = call i32 @serial_out(%struct.uart_omap_port* %506, i32 %507, i8 zeroext %510)
  %512 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %513 = load i32, i32* @UART_LCR, align 4
  %514 = load i8, i8* %8, align 1
  %515 = call i32 @serial_out(%struct.uart_omap_port* %512, i32 %513, i8 zeroext %514)
  %516 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %517 = load i32, i32* %10, align 4
  %518 = call i32 @serial_omap_baud_is_mode16(%struct.uart_port* %516, i32 %517)
  %519 = icmp ne i32 %518, 0
  br i1 %519, label %524, label %520

520:                                              ; preds = %453
  %521 = load i8, i8* @UART_OMAP_MDR1_13X_MODE, align 1
  %522 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %523 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %522, i32 0, i32 4
  store i8 %521, i8* %523, align 4
  br label %528

524:                                              ; preds = %453
  %525 = load i8, i8* @UART_OMAP_MDR1_16X_MODE, align 1
  %526 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %527 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %526, i32 0, i32 4
  store i8 %525, i8* %527, align 4
  br label %528

528:                                              ; preds = %524, %520
  %529 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %530 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %529, i32 0, i32 11
  %531 = load i32, i32* %530, align 4
  %532 = load i32, i32* @UART_ERRATA_i202_MDR1_ACCESS, align 4
  %533 = and i32 %531, %532
  %534 = icmp ne i32 %533, 0
  br i1 %534, label %535, label %541

535:                                              ; preds = %528
  %536 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %537 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %538 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %537, i32 0, i32 4
  %539 = load i8, i8* %538, align 4
  %540 = call i32 @serial_omap_mdr1_errataset(%struct.uart_omap_port* %536, i8 zeroext %539)
  br label %548

541:                                              ; preds = %528
  %542 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %543 = load i32, i32* @UART_OMAP_MDR1, align 4
  %544 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %545 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %544, i32 0, i32 4
  %546 = load i8, i8* %545, align 4
  %547 = call i32 @serial_out(%struct.uart_omap_port* %542, i32 %543, i8 zeroext %546)
  br label %548

548:                                              ; preds = %541, %535
  %549 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %550 = load i32, i32* @UART_LCR, align 4
  %551 = load i8, i8* @UART_LCR_CONF_MODE_B, align 1
  %552 = call i32 @serial_out(%struct.uart_omap_port* %549, i32 %550, i8 zeroext %551)
  %553 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %554 = load i32, i32* @UART_XON1, align 4
  %555 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %556 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %555, i32 0, i32 2
  %557 = load i8*, i8** %556, align 8
  %558 = load i64, i64* @VSTART, align 8
  %559 = getelementptr inbounds i8, i8* %557, i64 %558
  %560 = load i8, i8* %559, align 1
  %561 = call i32 @serial_out(%struct.uart_omap_port* %553, i32 %554, i8 zeroext %560)
  %562 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %563 = load i32, i32* @UART_XOFF1, align 4
  %564 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %565 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %564, i32 0, i32 2
  %566 = load i8*, i8** %565, align 8
  %567 = load i64, i64* @VSTOP, align 8
  %568 = getelementptr inbounds i8, i8* %566, i64 %567
  %569 = load i8, i8* %568, align 1
  %570 = call i32 @serial_out(%struct.uart_omap_port* %562, i32 %563, i8 zeroext %569)
  %571 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %572 = load i32, i32* @UART_EFR, align 4
  %573 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %574 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %573, i32 0, i32 9
  %575 = load i8, i8* %574, align 1
  %576 = zext i8 %575 to i32
  %577 = load i8, i8* @UART_EFR_ECB, align 1
  %578 = zext i8 %577 to i32
  %579 = or i32 %576, %578
  %580 = trunc i32 %579 to i8
  %581 = call i32 @serial_out(%struct.uart_omap_port* %571, i32 %572, i8 zeroext %580)
  %582 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %583 = load i32, i32* @UART_LCR, align 4
  %584 = load i8, i8* @UART_LCR_CONF_MODE_A, align 1
  %585 = call i32 @serial_out(%struct.uart_omap_port* %582, i32 %583, i8 zeroext %584)
  %586 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %587 = load i32, i32* @UART_MCR, align 4
  %588 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %589 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %588, i32 0, i32 10
  %590 = load i8, i8* %589, align 4
  %591 = zext i8 %590 to i32
  %592 = load i8, i8* @UART_MCR_TCRTLR, align 1
  %593 = zext i8 %592 to i32
  %594 = or i32 %591, %593
  %595 = trunc i32 %594 to i8
  %596 = call i32 @serial_out(%struct.uart_omap_port* %586, i32 %587, i8 zeroext %595)
  %597 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %598 = load i32, i32* @UART_TI752_TCR, align 4
  %599 = load i8, i8* @OMAP_UART_TCR_TRIG, align 1
  %600 = call i32 @serial_out(%struct.uart_omap_port* %597, i32 %598, i8 zeroext %599)
  %601 = load i32, i32* @UPSTAT_AUTOCTS, align 4
  %602 = load i32, i32* @UPSTAT_AUTORTS, align 4
  %603 = or i32 %601, %602
  %604 = load i32, i32* @UPSTAT_AUTOXOFF, align 4
  %605 = or i32 %603, %604
  %606 = xor i32 %605, -1
  %607 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %608 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %607, i32 0, i32 12
  %609 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %608, i32 0, i32 3
  %610 = load i32, i32* %609, align 4
  %611 = and i32 %610, %606
  store i32 %611, i32* %609, align 4
  %612 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %613 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %612, i32 0, i32 0
  %614 = load i32, i32* %613, align 8
  %615 = load i32, i32* @CRTSCTS, align 4
  %616 = and i32 %614, %615
  %617 = icmp ne i32 %616, 0
  br i1 %617, label %618, label %642

618:                                              ; preds = %548
  %619 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %620 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %619, i32 0, i32 12
  %621 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %620, i32 0, i32 4
  %622 = load i32, i32* %621, align 4
  %623 = load i32, i32* @UPF_HARD_FLOW, align 4
  %624 = and i32 %622, %623
  %625 = icmp ne i32 %624, 0
  br i1 %625, label %626, label %642

626:                                              ; preds = %618
  %627 = load i32, i32* @UPSTAT_AUTOCTS, align 4
  %628 = load i32, i32* @UPSTAT_AUTORTS, align 4
  %629 = or i32 %627, %628
  %630 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %631 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %630, i32 0, i32 12
  %632 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %631, i32 0, i32 3
  %633 = load i32, i32* %632, align 4
  %634 = or i32 %633, %629
  store i32 %634, i32* %632, align 4
  %635 = load i32, i32* @UART_EFR_CTS, align 4
  %636 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %637 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %636, i32 0, i32 9
  %638 = load i8, i8* %637, align 1
  %639 = zext i8 %638 to i32
  %640 = or i32 %639, %635
  %641 = trunc i32 %640 to i8
  store i8 %641, i8* %637, align 1
  br label %653

642:                                              ; preds = %618, %548
  %643 = load i32, i32* @UART_EFR_CTS, align 4
  %644 = load i32, i32* @UART_EFR_RTS, align 4
  %645 = or i32 %643, %644
  %646 = xor i32 %645, -1
  %647 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %648 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %647, i32 0, i32 9
  %649 = load i8, i8* %648, align 1
  %650 = zext i8 %649 to i32
  %651 = and i32 %650, %646
  %652 = trunc i32 %651 to i8
  store i8 %652, i8* %648, align 1
  br label %653

653:                                              ; preds = %642, %626
  %654 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %655 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %654, i32 0, i32 12
  %656 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %655, i32 0, i32 4
  %657 = load i32, i32* %656, align 4
  %658 = load i32, i32* @UPF_SOFT_FLOW, align 4
  %659 = and i32 %657, %658
  %660 = icmp ne i32 %659, 0
  br i1 %660, label %661, label %731

661:                                              ; preds = %653
  %662 = load i32, i32* @OMAP_UART_SW_CLR, align 4
  %663 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %664 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %663, i32 0, i32 9
  %665 = load i8, i8* %664, align 1
  %666 = zext i8 %665 to i32
  %667 = and i32 %666, %662
  %668 = trunc i32 %667 to i8
  store i8 %668, i8* %664, align 1
  %669 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %670 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %669, i32 0, i32 1
  %671 = load i32, i32* %670, align 4
  %672 = load i32, i32* @IXON, align 4
  %673 = and i32 %671, %672
  %674 = icmp ne i32 %673, 0
  br i1 %674, label %675, label %683

675:                                              ; preds = %661
  %676 = load i32, i32* @OMAP_UART_SW_RX, align 4
  %677 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %678 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %677, i32 0, i32 9
  %679 = load i8, i8* %678, align 1
  %680 = zext i8 %679 to i32
  %681 = or i32 %680, %676
  %682 = trunc i32 %681 to i8
  store i8 %682, i8* %678, align 1
  br label %683

683:                                              ; preds = %675, %661
  %684 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %685 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %684, i32 0, i32 1
  %686 = load i32, i32* %685, align 4
  %687 = load i32, i32* @IXOFF, align 4
  %688 = and i32 %686, %687
  %689 = icmp ne i32 %688, 0
  br i1 %689, label %690, label %704

690:                                              ; preds = %683
  %691 = load i32, i32* @UPSTAT_AUTOXOFF, align 4
  %692 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %693 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %692, i32 0, i32 12
  %694 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %693, i32 0, i32 3
  %695 = load i32, i32* %694, align 4
  %696 = or i32 %695, %691
  store i32 %696, i32* %694, align 4
  %697 = load i32, i32* @OMAP_UART_SW_TX, align 4
  %698 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %699 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %698, i32 0, i32 9
  %700 = load i8, i8* %699, align 1
  %701 = zext i8 %700 to i32
  %702 = or i32 %701, %697
  %703 = trunc i32 %702 to i8
  store i8 %703, i8* %699, align 1
  br label %704

704:                                              ; preds = %690, %683
  %705 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %706 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %705, i32 0, i32 1
  %707 = load i32, i32* %706, align 4
  %708 = load i32, i32* @IXANY, align 4
  %709 = and i32 %707, %708
  %710 = icmp ne i32 %709, 0
  br i1 %710, label %711, label %720

711:                                              ; preds = %704
  %712 = load i8, i8* @UART_MCR_XONANY, align 1
  %713 = zext i8 %712 to i32
  %714 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %715 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %714, i32 0, i32 10
  %716 = load i8, i8* %715, align 4
  %717 = zext i8 %716 to i32
  %718 = or i32 %717, %713
  %719 = trunc i32 %718 to i8
  store i8 %719, i8* %715, align 4
  br label %730

720:                                              ; preds = %704
  %721 = load i8, i8* @UART_MCR_XONANY, align 1
  %722 = zext i8 %721 to i32
  %723 = xor i32 %722, -1
  %724 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %725 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %724, i32 0, i32 10
  %726 = load i8, i8* %725, align 4
  %727 = zext i8 %726 to i32
  %728 = and i32 %727, %723
  %729 = trunc i32 %728 to i8
  store i8 %729, i8* %725, align 4
  br label %730

730:                                              ; preds = %720, %711
  br label %731

731:                                              ; preds = %730, %653
  %732 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %733 = load i32, i32* @UART_MCR, align 4
  %734 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %735 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %734, i32 0, i32 10
  %736 = load i8, i8* %735, align 4
  %737 = call i32 @serial_out(%struct.uart_omap_port* %732, i32 %733, i8 zeroext %736)
  %738 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %739 = load i32, i32* @UART_LCR, align 4
  %740 = load i8, i8* @UART_LCR_CONF_MODE_B, align 1
  %741 = call i32 @serial_out(%struct.uart_omap_port* %738, i32 %739, i8 zeroext %740)
  %742 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %743 = load i32, i32* @UART_EFR, align 4
  %744 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %745 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %744, i32 0, i32 9
  %746 = load i8, i8* %745, align 1
  %747 = call i32 @serial_out(%struct.uart_omap_port* %742, i32 %743, i8 zeroext %746)
  %748 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %749 = load i32, i32* @UART_LCR, align 4
  %750 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %751 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %750, i32 0, i32 7
  %752 = load i8, i8* %751, align 1
  %753 = call i32 @serial_out(%struct.uart_omap_port* %748, i32 %749, i8 zeroext %752)
  %754 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %755 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %754, i32 0, i32 12
  %756 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %757 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %756, i32 0, i32 12
  %758 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %757, i32 0, i32 8
  %759 = load i32, i32* %758, align 4
  %760 = call i32 @serial_omap_set_mctrl(%struct.TYPE_3__* %755, i32 %759)
  %761 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %762 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %761, i32 0, i32 12
  %763 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %762, i32 0, i32 7
  %764 = load i64, i64* %9, align 8
  %765 = call i32 @spin_unlock_irqrestore(i32* %763, i64 %764)
  %766 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %767 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %766, i32 0, i32 13
  %768 = load i32, i32* %767, align 4
  %769 = call i32 @pm_runtime_mark_last_busy(i32 %768)
  %770 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %771 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %770, i32 0, i32 13
  %772 = load i32, i32* %771, align 4
  %773 = call i32 @pm_runtime_put_autosuspend(i32 %772)
  %774 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %775 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %774, i32 0, i32 12
  %776 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %775, i32 0, i32 6
  %777 = load i32, i32* %776, align 4
  %778 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %779 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %778, i32 0, i32 12
  %780 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %779, i32 0, i32 5
  %781 = load i32, i32* %780, align 4
  %782 = call i32 @dev_dbg(i32 %777, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %781)
  ret void
}

declare dso_local %struct.uart_omap_port* @to_uart_omap_port(%struct.uart_port*) #1

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @serial_omap_get_divisor(%struct.uart_port*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i64 @UART_ENABLE_MS(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @serial_out(%struct.uart_omap_port*, i32, i8 zeroext) #1

declare dso_local zeroext i8 @serial_in(%struct.uart_omap_port*, i32) #1

declare dso_local i32 @serial_omap_mdr1_errataset(%struct.uart_omap_port*, i8 zeroext) #1

declare dso_local i32 @serial_omap_baud_is_mode16(%struct.uart_port*, i32) #1

declare dso_local i32 @serial_omap_set_mctrl(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
