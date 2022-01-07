; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_omap.c_omap_8250_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_omap.c_omap_8250_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32 }
%struct.ktermios = type { i32, i32, i32* }
%struct.uart_8250_port = type { i8, i32, %struct.TYPE_2__, i32, i64, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, %struct.omap8250_priv* }
%struct.omap8250_priv = type { i32, i32, i32, i32, i32, i32, i32 }

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
@UART_DIV_MAX = common dso_local global i32 0, align 4
@UART_LSR_OE = common dso_local global i32 0, align 4
@UART_LSR_THRE = common dso_local global i32 0, align 4
@UART_LSR_DR = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@UART_LSR_FE = common dso_local global i32 0, align 4
@UART_LSR_PE = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@UART_LSR_BI = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@UART_IER_MSI = common dso_local global i32 0, align 4
@UART_FCR_ENABLE_FIFO = common dso_local global i32 0, align 4
@TX_TRIGGER = common dso_local global i32 0, align 4
@OMAP_UART_FCR_TX_TRIG = common dso_local global i32 0, align 4
@RX_TRIGGER = common dso_local global i32 0, align 4
@OMAP_UART_FCR_RX_TRIG = common dso_local global i32 0, align 4
@OMAP_UART_SCR_RX_TRIG_GRANU1_MASK = common dso_local global i32 0, align 4
@OMAP_UART_SCR_TX_EMPTY = common dso_local global i32 0, align 4
@OMAP_UART_SCR_TX_TRIG_GRANU1_MASK = common dso_local global i32 0, align 4
@OMAP_UART_SCR_DMAMODE_1 = common dso_local global i32 0, align 4
@OMAP_UART_SCR_DMAMODE_CTL = common dso_local global i32 0, align 4
@VSTART = common dso_local global i64 0, align 8
@VSTOP = common dso_local global i64 0, align 8
@UPSTAT_AUTOCTS = common dso_local global i32 0, align 4
@UPSTAT_AUTORTS = common dso_local global i32 0, align 4
@UPSTAT_AUTOXOFF = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@UPF_HARD_FLOW = common dso_local global i32 0, align 4
@UART_GPIO_RTS = common dso_local global i32 0, align 4
@UART_GPIO_CTS = common dso_local global i32 0, align 4
@UART_EFR_CTS = common dso_local global i32 0, align 4
@UPF_SOFT_FLOW = common dso_local global i32 0, align 4
@IXOFF = common dso_local global i32 0, align 4
@OMAP_UART_SW_TX = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @omap_8250_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_8250_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca %struct.uart_8250_port*, align 8
  %8 = alloca %struct.omap8250_priv*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %11 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %12 = call %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port* %11)
  store %struct.uart_8250_port* %12, %struct.uart_8250_port** %7, align 8
  %13 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %14 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 5
  %16 = load %struct.omap8250_priv*, %struct.omap8250_priv** %15, align 8
  store %struct.omap8250_priv* %16, %struct.omap8250_priv** %8, align 8
  store i8 0, i8* %9, align 1
  %17 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %18 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @CSIZE, align 4
  %21 = and i32 %19, %20
  switch i32 %21, label %28 [
    i32 131, label %22
    i32 130, label %24
    i32 129, label %26
    i32 128, label %29
  ]

22:                                               ; preds = %3
  %23 = load i8, i8* @UART_LCR_WLEN5, align 1
  store i8 %23, i8* %9, align 1
  br label %31

24:                                               ; preds = %3
  %25 = load i8, i8* @UART_LCR_WLEN6, align 1
  store i8 %25, i8* %9, align 1
  br label %31

26:                                               ; preds = %3
  %27 = load i8, i8* @UART_LCR_WLEN7, align 1
  store i8 %27, i8* %9, align 1
  br label %31

28:                                               ; preds = %3
  br label %29

29:                                               ; preds = %3, %28
  %30 = load i8, i8* @UART_LCR_WLEN8, align 1
  store i8 %30, i8* %9, align 1
  br label %31

31:                                               ; preds = %29, %26, %24, %22
  %32 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %33 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @CSTOPB, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = load i8, i8* @UART_LCR_STOP, align 1
  %40 = zext i8 %39 to i32
  %41 = load i8, i8* %9, align 1
  %42 = zext i8 %41 to i32
  %43 = or i32 %42, %40
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %9, align 1
  br label %45

45:                                               ; preds = %38, %31
  %46 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %47 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @PARENB, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %45
  %53 = load i8, i8* @UART_LCR_PARITY, align 1
  %54 = zext i8 %53 to i32
  %55 = load i8, i8* %9, align 1
  %56 = zext i8 %55 to i32
  %57 = or i32 %56, %54
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* %9, align 1
  br label %59

59:                                               ; preds = %52, %45
  %60 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %61 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @PARODD, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %59
  %67 = load i8, i8* @UART_LCR_EPAR, align 1
  %68 = zext i8 %67 to i32
  %69 = load i8, i8* %9, align 1
  %70 = zext i8 %69 to i32
  %71 = or i32 %70, %68
  %72 = trunc i32 %71 to i8
  store i8 %72, i8* %9, align 1
  br label %73

73:                                               ; preds = %66, %59
  %74 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %75 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @CMSPAR, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %73
  %81 = load i8, i8* @UART_LCR_SPAR, align 1
  %82 = zext i8 %81 to i32
  %83 = load i8, i8* %9, align 1
  %84 = zext i8 %83 to i32
  %85 = or i32 %84, %82
  %86 = trunc i32 %85 to i8
  store i8 %86, i8* %9, align 1
  br label %87

87:                                               ; preds = %80, %73
  %88 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %89 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %90 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %91 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %92 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = sdiv i32 %93, 16
  %95 = load i32, i32* @UART_DIV_MAX, align 4
  %96 = sdiv i32 %94, %95
  %97 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %98 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = sdiv i32 %99, 13
  %101 = call i32 @uart_get_baud_rate(%struct.uart_port* %88, %struct.ktermios* %89, %struct.ktermios* %90, i32 %96, i32 %100)
  store i32 %101, i32* %10, align 4
  %102 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %103 = load i32, i32* %10, align 4
  %104 = load %struct.omap8250_priv*, %struct.omap8250_priv** %8, align 8
  %105 = call i32 @omap_8250_get_divisor(%struct.uart_port* %102, i32 %103, %struct.omap8250_priv* %104)
  %106 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %107 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @pm_runtime_get_sync(i32 %108)
  %110 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %111 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %110, i32 0, i32 2
  %112 = call i32 @spin_lock_irq(i32* %111)
  %113 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %114 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %115 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @uart_update_timeout(%struct.uart_port* %113, i32 %116, i32 %117)
  %119 = load i32, i32* @UART_LSR_OE, align 4
  %120 = load i32, i32* @UART_LSR_THRE, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @UART_LSR_DR, align 4
  %123 = or i32 %121, %122
  %124 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %125 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  store i32 %123, i32* %126, align 8
  %127 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %128 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @INPCK, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %142

133:                                              ; preds = %87
  %134 = load i32, i32* @UART_LSR_FE, align 4
  %135 = load i32, i32* @UART_LSR_PE, align 4
  %136 = or i32 %134, %135
  %137 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %138 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = or i32 %140, %136
  store i32 %141, i32* %139, align 8
  br label %142

142:                                              ; preds = %133, %87
  %143 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %144 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @IGNBRK, align 4
  %147 = load i32, i32* @PARMRK, align 4
  %148 = or i32 %146, %147
  %149 = and i32 %145, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %142
  %152 = load i32, i32* @UART_LSR_BI, align 4
  %153 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %154 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = or i32 %156, %152
  store i32 %157, i32* %155, align 8
  br label %158

158:                                              ; preds = %151, %142
  %159 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %160 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 1
  store i32 0, i32* %161, align 4
  %162 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %163 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @IGNPAR, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %177

168:                                              ; preds = %158
  %169 = load i32, i32* @UART_LSR_PE, align 4
  %170 = load i32, i32* @UART_LSR_FE, align 4
  %171 = or i32 %169, %170
  %172 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %173 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = or i32 %175, %171
  store i32 %176, i32* %174, align 4
  br label %177

177:                                              ; preds = %168, %158
  %178 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %179 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @IGNBRK, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %205

184:                                              ; preds = %177
  %185 = load i32, i32* @UART_LSR_BI, align 4
  %186 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %187 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = or i32 %189, %185
  store i32 %190, i32* %188, align 4
  %191 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %192 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @IGNPAR, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %204

197:                                              ; preds = %184
  %198 = load i32, i32* @UART_LSR_OE, align 4
  %199 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %200 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = or i32 %202, %198
  store i32 %203, i32* %201, align 4
  br label %204

204:                                              ; preds = %197, %184
  br label %205

205:                                              ; preds = %204, %177
  %206 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %207 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @CREAD, align 4
  %210 = and i32 %208, %209
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %219

212:                                              ; preds = %205
  %213 = load i32, i32* @UART_LSR_DR, align 4
  %214 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %215 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = or i32 %217, %213
  store i32 %218, i32* %216, align 4
  br label %219

219:                                              ; preds = %212, %205
  %220 = load i32, i32* @UART_IER_MSI, align 4
  %221 = xor i32 %220, -1
  %222 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %223 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %222, i32 0, i32 5
  %224 = load i32, i32* %223, align 8
  %225 = and i32 %224, %221
  store i32 %225, i32* %223, align 8
  %226 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %227 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %226, i32 0, i32 2
  %228 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %229 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = call i64 @UART_ENABLE_MS(%struct.TYPE_2__* %227, i32 %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %239

233:                                              ; preds = %219
  %234 = load i32, i32* @UART_IER_MSI, align 4
  %235 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %236 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %235, i32 0, i32 5
  %237 = load i32, i32* %236, align 8
  %238 = or i32 %237, %234
  store i32 %238, i32* %236, align 8
  br label %239

239:                                              ; preds = %233, %219
  %240 = load i8, i8* %9, align 1
  %241 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %242 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %241, i32 0, i32 0
  store i8 %240, i8* %242, align 8
  %243 = load i32, i32* @UART_FCR_ENABLE_FIFO, align 4
  %244 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %245 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %244, i32 0, i32 1
  store i32 %243, i32* %245, align 4
  %246 = load i32, i32* @TX_TRIGGER, align 4
  %247 = call i32 @TRIGGER_FCR_MASK(i32 %246)
  %248 = load i32, i32* @OMAP_UART_FCR_TX_TRIG, align 4
  %249 = shl i32 %247, %248
  %250 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %251 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = or i32 %252, %249
  store i32 %253, i32* %251, align 4
  %254 = load i32, i32* @RX_TRIGGER, align 4
  %255 = call i32 @TRIGGER_FCR_MASK(i32 %254)
  %256 = load i32, i32* @OMAP_UART_FCR_RX_TRIG, align 4
  %257 = shl i32 %255, %256
  %258 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %259 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = or i32 %260, %257
  store i32 %261, i32* %259, align 4
  %262 = load i32, i32* @OMAP_UART_SCR_RX_TRIG_GRANU1_MASK, align 4
  %263 = load i32, i32* @OMAP_UART_SCR_TX_EMPTY, align 4
  %264 = or i32 %262, %263
  %265 = load i32, i32* @OMAP_UART_SCR_TX_TRIG_GRANU1_MASK, align 4
  %266 = or i32 %264, %265
  %267 = load %struct.omap8250_priv*, %struct.omap8250_priv** %8, align 8
  %268 = getelementptr inbounds %struct.omap8250_priv, %struct.omap8250_priv* %267, i32 0, i32 0
  store i32 %266, i32* %268, align 4
  %269 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %270 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %269, i32 0, i32 4
  %271 = load i64, i64* %270, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %281

273:                                              ; preds = %239
  %274 = load i32, i32* @OMAP_UART_SCR_DMAMODE_1, align 4
  %275 = load i32, i32* @OMAP_UART_SCR_DMAMODE_CTL, align 4
  %276 = or i32 %274, %275
  %277 = load %struct.omap8250_priv*, %struct.omap8250_priv** %8, align 8
  %278 = getelementptr inbounds %struct.omap8250_priv, %struct.omap8250_priv* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = or i32 %279, %276
  store i32 %280, i32* %278, align 4
  br label %281

281:                                              ; preds = %273, %239
  %282 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %283 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %282, i32 0, i32 2
  %284 = load i32*, i32** %283, align 8
  %285 = load i64, i64* @VSTART, align 8
  %286 = getelementptr inbounds i32, i32* %284, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = load %struct.omap8250_priv*, %struct.omap8250_priv** %8, align 8
  %289 = getelementptr inbounds %struct.omap8250_priv, %struct.omap8250_priv* %288, i32 0, i32 6
  store i32 %287, i32* %289, align 4
  %290 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %291 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %290, i32 0, i32 2
  %292 = load i32*, i32** %291, align 8
  %293 = load i64, i64* @VSTOP, align 8
  %294 = getelementptr inbounds i32, i32* %292, i64 %293
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.omap8250_priv*, %struct.omap8250_priv** %8, align 8
  %297 = getelementptr inbounds %struct.omap8250_priv, %struct.omap8250_priv* %296, i32 0, i32 5
  store i32 %295, i32* %297, align 4
  %298 = load %struct.omap8250_priv*, %struct.omap8250_priv** %8, align 8
  %299 = getelementptr inbounds %struct.omap8250_priv, %struct.omap8250_priv* %298, i32 0, i32 4
  store i32 0, i32* %299, align 4
  %300 = load i32, i32* @UPSTAT_AUTOCTS, align 4
  %301 = load i32, i32* @UPSTAT_AUTORTS, align 4
  %302 = or i32 %300, %301
  %303 = load i32, i32* @UPSTAT_AUTOXOFF, align 4
  %304 = or i32 %302, %303
  %305 = xor i32 %304, -1
  %306 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %307 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %306, i32 0, i32 2
  %308 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %307, i32 0, i32 2
  %309 = load i32, i32* %308, align 8
  %310 = and i32 %309, %305
  store i32 %310, i32* %308, align 8
  %311 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %312 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = load i32, i32* @CRTSCTS, align 4
  %315 = and i32 %313, %314
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %353

317:                                              ; preds = %281
  %318 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %319 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %318, i32 0, i32 2
  %320 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %319, i32 0, i32 3
  %321 = load i32, i32* %320, align 4
  %322 = load i32, i32* @UPF_HARD_FLOW, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %353

325:                                              ; preds = %317
  %326 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %327 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %326, i32 0, i32 3
  %328 = load i32, i32* %327, align 8
  %329 = load i32, i32* @UART_GPIO_RTS, align 4
  %330 = call i32 @mctrl_gpio_to_gpiod(i32 %328, i32 %329)
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %353, label %332

332:                                              ; preds = %325
  %333 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %334 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %333, i32 0, i32 3
  %335 = load i32, i32* %334, align 8
  %336 = load i32, i32* @UART_GPIO_CTS, align 4
  %337 = call i32 @mctrl_gpio_to_gpiod(i32 %335, i32 %336)
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %353, label %339

339:                                              ; preds = %332
  %340 = load i32, i32* @UPSTAT_AUTOCTS, align 4
  %341 = load i32, i32* @UPSTAT_AUTORTS, align 4
  %342 = or i32 %340, %341
  %343 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %344 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %343, i32 0, i32 2
  %345 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %344, i32 0, i32 2
  %346 = load i32, i32* %345, align 8
  %347 = or i32 %346, %342
  store i32 %347, i32* %345, align 8
  %348 = load i32, i32* @UART_EFR_CTS, align 4
  %349 = load %struct.omap8250_priv*, %struct.omap8250_priv** %8, align 8
  %350 = getelementptr inbounds %struct.omap8250_priv, %struct.omap8250_priv* %349, i32 0, i32 4
  %351 = load i32, i32* %350, align 4
  %352 = or i32 %351, %348
  store i32 %352, i32* %350, align 4
  br label %382

353:                                              ; preds = %332, %325, %317, %281
  %354 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %355 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %354, i32 0, i32 2
  %356 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %355, i32 0, i32 3
  %357 = load i32, i32* %356, align 4
  %358 = load i32, i32* @UPF_SOFT_FLOW, align 4
  %359 = and i32 %357, %358
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %381

361:                                              ; preds = %353
  %362 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %363 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %362, i32 0, i32 1
  %364 = load i32, i32* %363, align 4
  %365 = load i32, i32* @IXOFF, align 4
  %366 = and i32 %364, %365
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %380

368:                                              ; preds = %361
  %369 = load i32, i32* @UPSTAT_AUTOXOFF, align 4
  %370 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %371 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %370, i32 0, i32 2
  %372 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %371, i32 0, i32 2
  %373 = load i32, i32* %372, align 8
  %374 = or i32 %373, %369
  store i32 %374, i32* %372, align 8
  %375 = load i32, i32* @OMAP_UART_SW_TX, align 4
  %376 = load %struct.omap8250_priv*, %struct.omap8250_priv** %8, align 8
  %377 = getelementptr inbounds %struct.omap8250_priv, %struct.omap8250_priv* %376, i32 0, i32 4
  %378 = load i32, i32* %377, align 4
  %379 = or i32 %378, %375
  store i32 %379, i32* %377, align 4
  br label %380

380:                                              ; preds = %368, %361
  br label %381

381:                                              ; preds = %380, %353
  br label %382

382:                                              ; preds = %381, %339
  %383 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %384 = call i32 @omap8250_restore_regs(%struct.uart_8250_port* %383)
  %385 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %386 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %385, i32 0, i32 2
  %387 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %386, i32 0, i32 4
  %388 = call i32 @spin_unlock_irq(i32* %387)
  %389 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %390 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %389, i32 0, i32 1
  %391 = load i32, i32* %390, align 4
  %392 = call i32 @pm_runtime_mark_last_busy(i32 %391)
  %393 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %394 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %393, i32 0, i32 1
  %395 = load i32, i32* %394, align 4
  %396 = call i32 @pm_runtime_put_autosuspend(i32 %395)
  %397 = load i32, i32* @USEC_PER_SEC, align 4
  %398 = mul nsw i32 %397, 64
  %399 = mul nsw i32 %398, 8
  %400 = load i32, i32* %10, align 4
  %401 = udiv i32 %399, %400
  %402 = load %struct.omap8250_priv*, %struct.omap8250_priv** %8, align 8
  %403 = getelementptr inbounds %struct.omap8250_priv, %struct.omap8250_priv* %402, i32 0, i32 1
  store i32 %401, i32* %403, align 4
  %404 = load %struct.omap8250_priv*, %struct.omap8250_priv** %8, align 8
  %405 = getelementptr inbounds %struct.omap8250_priv, %struct.omap8250_priv* %404, i32 0, i32 1
  %406 = load i32, i32* %405, align 4
  %407 = load %struct.omap8250_priv*, %struct.omap8250_priv** %8, align 8
  %408 = getelementptr inbounds %struct.omap8250_priv, %struct.omap8250_priv* %407, i32 0, i32 2
  store i32 %406, i32* %408, align 4
  %409 = load %struct.omap8250_priv*, %struct.omap8250_priv** %8, align 8
  %410 = getelementptr inbounds %struct.omap8250_priv, %struct.omap8250_priv* %409, i32 0, i32 3
  %411 = call i32 @schedule_work(i32* %410)
  %412 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %413 = call i64 @tty_termios_baud_rate(%struct.ktermios* %412)
  %414 = icmp ne i64 %413, 0
  br i1 %414, label %415, label %420

415:                                              ; preds = %382
  %416 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %417 = load i32, i32* %10, align 4
  %418 = load i32, i32* %10, align 4
  %419 = call i32 @tty_termios_encode_baud_rate(%struct.ktermios* %416, i32 %417, i32 %418)
  br label %420

420:                                              ; preds = %415, %382
  ret void
}

declare dso_local %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port*) #1

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @omap_8250_get_divisor(%struct.uart_port*, i32, %struct.omap8250_priv*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i64 @UART_ENABLE_MS(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @TRIGGER_FCR_MASK(i32) #1

declare dso_local i32 @mctrl_gpio_to_gpiod(i32, i32) #1

declare dso_local i32 @omap8250_restore_regs(%struct.uart_8250_port*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i64 @tty_termios_baud_rate(%struct.ktermios*) #1

declare dso_local i32 @tty_termios_encode_baud_rate(%struct.ktermios*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
