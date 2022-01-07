; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_samsung.c_s3c24xx_serial_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_samsung.c_s3c24xx_serial_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32, i32, i32, i32 }
%struct.ktermios = type { i32, i32 }
%struct.s3c2410_uartcfg = type { i32, i64 }
%struct.s3c24xx_uart_port = type { i32, %struct.TYPE_2__*, %struct.clk* }
%struct.TYPE_2__ = type { i64 }
%struct.clk = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@HUPCL = common dso_local global i32 0, align 4
@CMSPAR = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@UPF_SPD_MASK = common dso_local global i32 0, align 4
@UPF_SPD_CUST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"fracval = %04x\0A\00", align 1
@udivslot_table = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"udivslot = %04x (div %d)\0A\00", align 1
@CSIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"config: 5bits/char\0A\00", align 1
@S3C2410_LCON_CS5 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"config: 6bits/char\0A\00", align 1
@S3C2410_LCON_CS6 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"config: 7bits/char\0A\00", align 1
@S3C2410_LCON_CS7 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"config: 8bits/char\0A\00", align 1
@S3C2410_LCON_CS8 = common dso_local global i32 0, align 4
@S3C2410_LCON_IRM = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@S3C2410_LCON_STOPB = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@S3C2410_LCON_PODD = common dso_local global i32 0, align 4
@S3C2410_LCON_PEVEN = common dso_local global i32 0, align 4
@S3C2410_LCON_PNONE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [52 x i8] c"setting ulcon to %08x, brddiv to %d, udivslot %08x\0A\00", align 1
@S3C2410_ULCON = common dso_local global i32 0, align 4
@S3C2410_UBRDIV = common dso_local global i32 0, align 4
@UPSTAT_AUTOCTS = common dso_local global i32 0, align 4
@S3C2410_UMCON = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@S3C2410_UMCOM_AFC = common dso_local global i32 0, align 4
@S3C2412_UMCON_AFC_8 = common dso_local global i32 0, align 4
@S3C2443_DIVSLOT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [53 x i8] c"uart: ulcon = 0x%08x, ucon = 0x%08x, ufcon = 0x%08x\0A\00", align 1
@S3C2410_UCON = common dso_local global i32 0, align 4
@S3C2410_UFCON = common dso_local global i32 0, align 4
@S3C2410_UERSTAT_OVERRUN = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@S3C2410_UERSTAT_FRAME = common dso_local global i32 0, align 4
@S3C2410_UERSTAT_PARITY = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@RXSTAT_DUMMY_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @s3c24xx_serial_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c24xx_serial_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca %struct.s3c2410_uartcfg*, align 8
  %8 = alloca %struct.s3c24xx_uart_port*, align 8
  %9 = alloca %struct.clk*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %18 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %19 = call %struct.s3c2410_uartcfg* @s3c24xx_port_to_cfg(%struct.uart_port* %18)
  store %struct.s3c2410_uartcfg* %19, %struct.s3c2410_uartcfg** %7, align 8
  %20 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %21 = call %struct.s3c24xx_uart_port* @to_ourport(%struct.uart_port* %20)
  store %struct.s3c24xx_uart_port* %21, %struct.s3c24xx_uart_port** %8, align 8
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  %24 = call i8* @ERR_PTR(i32 %23)
  %25 = bitcast i8* %24 to %struct.clk*
  store %struct.clk* %25, %struct.clk** %9, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %16, align 4
  %26 = load i32, i32* @HUPCL, align 4
  %27 = load i32, i32* @CMSPAR, align 4
  %28 = or i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %31 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load i32, i32* @CLOCAL, align 4
  %35 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %36 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %40 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %41 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %42 = call i32 @uart_get_baud_rate(%struct.uart_port* %39, %struct.ktermios* %40, %struct.ktermios* %41, i32 0, i32 3000000)
  store i32 %42, i32* %11, align 4
  %43 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %8, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @s3c24xx_serial_getclk(%struct.s3c24xx_uart_port* %43, i32 %44, %struct.clk** %9, i32* %13)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp eq i32 %46, 38400
  br i1 %47, label %48, label %60

48:                                               ; preds = %3
  %49 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %50 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @UPF_SPD_MASK, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* @UPF_SPD_CUST, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %58 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %56, %48, %3
  %61 = load %struct.clk*, %struct.clk** %9, align 8
  %62 = call i64 @IS_ERR(%struct.clk* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %356

65:                                               ; preds = %60
  %66 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %8, align 8
  %67 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %66, i32 0, i32 2
  %68 = load %struct.clk*, %struct.clk** %67, align 8
  %69 = load %struct.clk*, %struct.clk** %9, align 8
  %70 = icmp ne %struct.clk* %68, %69
  br i1 %70, label %71, label %107

71:                                               ; preds = %65
  %72 = load %struct.clk*, %struct.clk** %9, align 8
  %73 = call i32 @clk_prepare_enable(%struct.clk* %72)
  %74 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @s3c24xx_serial_setsource(%struct.uart_port* %74, i32 %75)
  %77 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %8, align 8
  %78 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %77, i32 0, i32 2
  %79 = load %struct.clk*, %struct.clk** %78, align 8
  %80 = call i64 @IS_ERR(%struct.clk* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %93, label %82

82:                                               ; preds = %71
  %83 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %8, align 8
  %84 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %83, i32 0, i32 2
  %85 = load %struct.clk*, %struct.clk** %84, align 8
  %86 = call i32 @clk_disable_unprepare(%struct.clk* %85)
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  %89 = call i8* @ERR_PTR(i32 %88)
  %90 = bitcast i8* %89 to %struct.clk*
  %91 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %8, align 8
  %92 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %91, i32 0, i32 2
  store %struct.clk* %90, %struct.clk** %92, align 8
  br label %93

93:                                               ; preds = %82, %71
  %94 = load %struct.clk*, %struct.clk** %9, align 8
  %95 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %8, align 8
  %96 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %95, i32 0, i32 2
  store %struct.clk* %94, %struct.clk** %96, align 8
  %97 = load %struct.clk*, %struct.clk** %9, align 8
  %98 = icmp ne %struct.clk* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load %struct.clk*, %struct.clk** %9, align 8
  %101 = call i32 @clk_get_rate(%struct.clk* %100)
  br label %103

102:                                              ; preds = %93
  br label %103

103:                                              ; preds = %102, %99
  %104 = phi i32 [ %101, %99 ], [ 0, %102 ]
  %105 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %8, align 8
  %106 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  br label %107

107:                                              ; preds = %103, %65
  %108 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %8, align 8
  %109 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %108, i32 0, i32 1
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %141

114:                                              ; preds = %107
  %115 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %8, align 8
  %116 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %11, align 4
  %119 = udiv i32 %117, %118
  store i32 %119, i32* %17, align 4
  %120 = load %struct.s3c2410_uartcfg*, %struct.s3c2410_uartcfg** %7, align 8
  %121 = getelementptr inbounds %struct.s3c2410_uartcfg, %struct.s3c2410_uartcfg* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %114
  %125 = load i32, i32* %17, align 4
  %126 = and i32 %125, 15
  store i32 %126, i32* %16, align 4
  %127 = load i32, i32* %16, align 4
  %128 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %127)
  br label %140

129:                                              ; preds = %114
  %130 = load i32*, i32** @udivslot_table, align 8
  %131 = load i32, i32* %17, align 4
  %132 = and i32 %131, 15
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %130, i64 %133
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %16, align 4
  %136 = load i32, i32* %16, align 4
  %137 = load i32, i32* %17, align 4
  %138 = and i32 %137, 15
  %139 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %136, i32 %138)
  br label %140

140:                                              ; preds = %129, %124
  br label %141

141:                                              ; preds = %140, %107
  %142 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %143 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @CSIZE, align 4
  %146 = and i32 %144, %145
  switch i32 %146, label %157 [
    i32 131, label %147
    i32 130, label %150
    i32 129, label %153
    i32 128, label %156
  ]

147:                                              ; preds = %141
  %148 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %149 = load i32, i32* @S3C2410_LCON_CS5, align 4
  store i32 %149, i32* %14, align 4
  br label %160

150:                                              ; preds = %141
  %151 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %152 = load i32, i32* @S3C2410_LCON_CS6, align 4
  store i32 %152, i32* %14, align 4
  br label %160

153:                                              ; preds = %141
  %154 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %155 = load i32, i32* @S3C2410_LCON_CS7, align 4
  store i32 %155, i32* %14, align 4
  br label %160

156:                                              ; preds = %141
  br label %157

157:                                              ; preds = %141, %156
  %158 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %159 = load i32, i32* @S3C2410_LCON_CS8, align 4
  store i32 %159, i32* %14, align 4
  br label %160

160:                                              ; preds = %157, %153, %150, %147
  %161 = load %struct.s3c2410_uartcfg*, %struct.s3c2410_uartcfg** %7, align 8
  %162 = getelementptr inbounds %struct.s3c2410_uartcfg, %struct.s3c2410_uartcfg* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @S3C2410_LCON_IRM, align 4
  %165 = and i32 %163, %164
  %166 = load i32, i32* %14, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %14, align 4
  %168 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %169 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @CSTOPB, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %160
  %175 = load i32, i32* @S3C2410_LCON_STOPB, align 4
  %176 = load i32, i32* %14, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %14, align 4
  br label %178

178:                                              ; preds = %174, %160
  %179 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %180 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @PARENB, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %201

185:                                              ; preds = %178
  %186 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %187 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @PARODD, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %185
  %193 = load i32, i32* @S3C2410_LCON_PODD, align 4
  %194 = load i32, i32* %14, align 4
  %195 = or i32 %194, %193
  store i32 %195, i32* %14, align 4
  br label %200

196:                                              ; preds = %185
  %197 = load i32, i32* @S3C2410_LCON_PEVEN, align 4
  %198 = load i32, i32* %14, align 4
  %199 = or i32 %198, %197
  store i32 %199, i32* %14, align 4
  br label %200

200:                                              ; preds = %196, %192
  br label %205

201:                                              ; preds = %178
  %202 = load i32, i32* @S3C2410_LCON_PNONE, align 4
  %203 = load i32, i32* %14, align 4
  %204 = or i32 %203, %202
  store i32 %204, i32* %14, align 4
  br label %205

205:                                              ; preds = %201, %200
  %206 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %207 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %206, i32 0, i32 4
  %208 = load i64, i64* %10, align 8
  %209 = call i32 @spin_lock_irqsave(i32* %207, i64 %208)
  %210 = load i32, i32* %14, align 4
  %211 = load i32, i32* %12, align 4
  %212 = load i32, i32* %16, align 4
  %213 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 %210, i32 %211, i32 %212)
  %214 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %215 = load i32, i32* @S3C2410_ULCON, align 4
  %216 = load i32, i32* %14, align 4
  %217 = call i32 @wr_regl(%struct.uart_port* %214, i32 %215, i32 %216)
  %218 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %219 = load i32, i32* @S3C2410_UBRDIV, align 4
  %220 = load i32, i32* %12, align 4
  %221 = call i32 @wr_regl(%struct.uart_port* %218, i32 %219, i32 %220)
  %222 = load i32, i32* @UPSTAT_AUTOCTS, align 4
  %223 = xor i32 %222, -1
  %224 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %225 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %224, i32 0, i32 5
  %226 = load i32, i32* %225, align 4
  %227 = and i32 %226, %223
  store i32 %227, i32* %225, align 4
  %228 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %229 = load i32, i32* @S3C2410_UMCON, align 4
  %230 = call i32 @rd_regl(%struct.uart_port* %228, i32 %229)
  store i32 %230, i32* %15, align 4
  %231 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %232 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @CRTSCTS, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %248

237:                                              ; preds = %205
  %238 = load i32, i32* @S3C2410_UMCOM_AFC, align 4
  %239 = load i32, i32* %15, align 4
  %240 = or i32 %239, %238
  store i32 %240, i32* %15, align 4
  %241 = load i32, i32* @S3C2412_UMCON_AFC_8, align 4
  %242 = xor i32 %241, -1
  %243 = load i32, i32* %15, align 4
  %244 = and i32 %243, %242
  store i32 %244, i32* %15, align 4
  %245 = load i32, i32* @UPSTAT_AUTOCTS, align 4
  %246 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %247 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %246, i32 0, i32 5
  store i32 %245, i32* %247, align 4
  br label %253

248:                                              ; preds = %205
  %249 = load i32, i32* @S3C2410_UMCOM_AFC, align 4
  %250 = xor i32 %249, -1
  %251 = load i32, i32* %15, align 4
  %252 = and i32 %251, %250
  store i32 %252, i32* %15, align 4
  br label %253

253:                                              ; preds = %248, %237
  %254 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %255 = load i32, i32* @S3C2410_UMCON, align 4
  %256 = load i32, i32* %15, align 4
  %257 = call i32 @wr_regl(%struct.uart_port* %254, i32 %255, i32 %256)
  %258 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %8, align 8
  %259 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %258, i32 0, i32 1
  %260 = load %struct.TYPE_2__*, %struct.TYPE_2__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %269

264:                                              ; preds = %253
  %265 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %266 = load i32, i32* @S3C2443_DIVSLOT, align 4
  %267 = load i32, i32* %16, align 4
  %268 = call i32 @wr_regl(%struct.uart_port* %265, i32 %266, i32 %267)
  br label %269

269:                                              ; preds = %264, %253
  %270 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %271 = load i32, i32* @S3C2410_ULCON, align 4
  %272 = call i32 @rd_regl(%struct.uart_port* %270, i32 %271)
  %273 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %274 = load i32, i32* @S3C2410_UCON, align 4
  %275 = call i32 @rd_regl(%struct.uart_port* %273, i32 %274)
  %276 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %277 = load i32, i32* @S3C2410_UFCON, align 4
  %278 = call i32 @rd_regl(%struct.uart_port* %276, i32 %277)
  %279 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i32 %272, i32 %275, i32 %278)
  %280 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %281 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %282 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* %11, align 4
  %285 = call i32 @uart_update_timeout(%struct.uart_port* %280, i32 %283, i32 %284)
  %286 = load i32, i32* @S3C2410_UERSTAT_OVERRUN, align 4
  %287 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %288 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %287, i32 0, i32 2
  store i32 %286, i32* %288, align 4
  %289 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %290 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* @INPCK, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %303

295:                                              ; preds = %269
  %296 = load i32, i32* @S3C2410_UERSTAT_FRAME, align 4
  %297 = load i32, i32* @S3C2410_UERSTAT_PARITY, align 4
  %298 = or i32 %296, %297
  %299 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %300 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 4
  %302 = or i32 %301, %298
  store i32 %302, i32* %300, align 4
  br label %303

303:                                              ; preds = %295, %269
  %304 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %305 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %304, i32 0, i32 3
  store i32 0, i32* %305, align 4
  %306 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %307 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* @IGNPAR, align 4
  %310 = and i32 %308, %309
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %318

312:                                              ; preds = %303
  %313 = load i32, i32* @S3C2410_UERSTAT_OVERRUN, align 4
  %314 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %315 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %314, i32 0, i32 3
  %316 = load i32, i32* %315, align 4
  %317 = or i32 %316, %313
  store i32 %317, i32* %315, align 4
  br label %318

318:                                              ; preds = %312, %303
  %319 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %320 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = load i32, i32* @IGNBRK, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %338

325:                                              ; preds = %318
  %326 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %327 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  %329 = load i32, i32* @IGNPAR, align 4
  %330 = and i32 %328, %329
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %338

332:                                              ; preds = %325
  %333 = load i32, i32* @S3C2410_UERSTAT_FRAME, align 4
  %334 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %335 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %334, i32 0, i32 3
  %336 = load i32, i32* %335, align 4
  %337 = or i32 %336, %333
  store i32 %337, i32* %335, align 4
  br label %338

338:                                              ; preds = %332, %325, %318
  %339 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %340 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* @CREAD, align 4
  %343 = and i32 %341, %342
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %345, label %351

345:                                              ; preds = %338
  %346 = load i32, i32* @RXSTAT_DUMMY_READ, align 4
  %347 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %348 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %347, i32 0, i32 3
  %349 = load i32, i32* %348, align 4
  %350 = or i32 %349, %346
  store i32 %350, i32* %348, align 4
  br label %351

351:                                              ; preds = %345, %338
  %352 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %353 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %352, i32 0, i32 4
  %354 = load i64, i64* %10, align 8
  %355 = call i32 @spin_unlock_irqrestore(i32* %353, i64 %354)
  br label %356

356:                                              ; preds = %351, %64
  ret void
}

declare dso_local %struct.s3c2410_uartcfg* @s3c24xx_port_to_cfg(%struct.uart_port*) #1

declare dso_local %struct.s3c24xx_uart_port* @to_ourport(%struct.uart_port*) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @s3c24xx_serial_getclk(%struct.s3c24xx_uart_port*, i32, %struct.clk**, i32*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @clk_prepare_enable(%struct.clk*) #1

declare dso_local i32 @s3c24xx_serial_setsource(%struct.uart_port*, i32) #1

declare dso_local i32 @clk_disable_unprepare(%struct.clk*) #1

declare dso_local i32 @clk_get_rate(%struct.clk*) #1

declare dso_local i32 @dbg(i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @wr_regl(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @rd_regl(%struct.uart_port*, i32) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
