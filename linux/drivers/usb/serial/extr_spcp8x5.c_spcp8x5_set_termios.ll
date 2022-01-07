; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_spcp8x5.c_spcp8x5_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_spcp8x5.c_spcp8x5_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.usb_serial_port = type { i32, %struct.usb_serial* }
%struct.usb_serial = type { i32 }
%struct.ktermios = type { i32 }
%struct.spcp8x5_private = type { i32, i32 }

@CBAUD = common dso_local global i32 0, align 4
@B0 = common dso_local global i32 0, align 4
@MCR_DTR = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@MCR_RTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"unsupported baudrate, using 9600\0A\00", align 1
@CSIZE = common dso_local global i32 0, align 4
@SET_UART_FORMAT_SIZE_5 = common dso_local global i8 0, align 1
@SET_UART_FORMAT_SIZE_6 = common dso_local global i8 0, align 1
@SET_UART_FORMAT_SIZE_7 = common dso_local global i8 0, align 1
@SET_UART_FORMAT_SIZE_8 = common dso_local global i8 0, align 1
@CSTOPB = common dso_local global i32 0, align 4
@SET_UART_FORMAT_STOP_2 = common dso_local global i8 0, align 1
@SET_UART_FORMAT_STOP_1 = common dso_local global i8 0, align 1
@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@SET_UART_FORMAT_PAR_ODD = common dso_local global i8 0, align 1
@SET_UART_FORMAT_PAR_EVEN = common dso_local global i8 0, align 1
@SET_UART_FORMAT_PAR_NONE = common dso_local global i8 0, align 1
@SET_UART_FORMAT_TYPE = common dso_local global i32 0, align 4
@SET_UART_FORMAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Set UART format %#x failed (error = %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"0x21:0x40:0:0  %d\0A\00", align 1
@SET_WORKING_MODE_U2C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.usb_serial_port*, %struct.ktermios*)* @spcp8x5_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spcp8x5_set_termios(%struct.tty_struct* %0, %struct.usb_serial_port* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.usb_serial_port*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca %struct.usb_serial*, align 8
  %8 = alloca %struct.spcp8x5_private*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca [2 x i8], align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.usb_serial_port* %1, %struct.usb_serial_port** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %16 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %17 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %16, i32 0, i32 1
  %18 = load %struct.usb_serial*, %struct.usb_serial** %17, align 8
  store %struct.usb_serial* %18, %struct.usb_serial** %7, align 8
  %19 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %20 = call %struct.spcp8x5_private* @usb_get_serial_port_data(%struct.usb_serial_port* %19)
  store %struct.spcp8x5_private* %20, %struct.spcp8x5_private** %8, align 8
  %21 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %22 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %10, align 4
  %25 = bitcast [2 x i8]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %25, i8 0, i64 2, i1 false)
  %26 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %27 = icmp ne %struct.ktermios* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %3
  %29 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %30 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %29, i32 0, i32 0
  %31 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %32 = call i32 @tty_termios_hw_change(%struct.TYPE_2__* %30, %struct.ktermios* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  br label %260

35:                                               ; preds = %28, %3
  %36 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %8, align 8
  %37 = getelementptr inbounds %struct.spcp8x5_private, %struct.spcp8x5_private* %36, i32 0, i32 0
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @spin_lock_irqsave(i32* %37, i64 %38)
  %40 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %8, align 8
  %41 = getelementptr inbounds %struct.spcp8x5_private, %struct.spcp8x5_private* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %15, align 4
  %43 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %44 = icmp ne %struct.ktermios* %43, null
  br i1 %44, label %45, label %72

45:                                               ; preds = %35
  %46 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %47 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @CBAUD, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @B0, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %72

53:                                               ; preds = %45
  %54 = load i32, i32* @MCR_DTR, align 4
  %55 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %8, align 8
  %56 = getelementptr inbounds %struct.spcp8x5_private, %struct.spcp8x5_private* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %60 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @CRTSCTS, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %53
  %66 = load i32, i32* @MCR_RTS, align 4
  %67 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %8, align 8
  %68 = getelementptr inbounds %struct.spcp8x5_private, %struct.spcp8x5_private* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %65, %53
  br label %72

72:                                               ; preds = %71, %45, %35
  %73 = load i32, i32* %15, align 4
  %74 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %8, align 8
  %75 = getelementptr inbounds %struct.spcp8x5_private, %struct.spcp8x5_private* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %73, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %72
  %79 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %8, align 8
  %80 = getelementptr inbounds %struct.spcp8x5_private, %struct.spcp8x5_private* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %15, align 4
  %82 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %8, align 8
  %83 = getelementptr inbounds %struct.spcp8x5_private, %struct.spcp8x5_private* %82, i32 0, i32 0
  %84 = load i64, i64* %9, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32* %83, i64 %84)
  %86 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %87 = load i32, i32* %15, align 4
  %88 = call i32 @spcp8x5_set_ctrl_line(%struct.usb_serial_port* %86, i32 %87)
  br label %94

89:                                               ; preds = %72
  %90 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %8, align 8
  %91 = getelementptr inbounds %struct.spcp8x5_private, %struct.spcp8x5_private* %90, i32 0, i32 0
  %92 = load i64, i64* %9, align 8
  %93 = call i32 @spin_unlock_irqrestore(i32* %91, i64 %92)
  br label %94

94:                                               ; preds = %89, %78
  %95 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %96 = call i32 @tty_get_baud_rate(%struct.tty_struct* %95)
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %13, align 4
  switch i32 %97, label %128 [
    i32 300, label %98
    i32 600, label %100
    i32 1200, label %102
    i32 2400, label %104
    i32 4800, label %106
    i32 9600, label %108
    i32 19200, label %110
    i32 38400, label %112
    i32 57600, label %114
    i32 115200, label %116
    i32 230400, label %118
    i32 460800, label %120
    i32 921600, label %122
    i32 3000000, label %124
    i32 0, label %126
    i32 1000000, label %126
  ]

98:                                               ; preds = %94
  %99 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  store i8 0, i8* %99, align 1
  br label %132

100:                                              ; preds = %94
  %101 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  store i8 1, i8* %101, align 1
  br label %132

102:                                              ; preds = %94
  %103 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  store i8 2, i8* %103, align 1
  br label %132

104:                                              ; preds = %94
  %105 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  store i8 3, i8* %105, align 1
  br label %132

106:                                              ; preds = %94
  %107 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  store i8 4, i8* %107, align 1
  br label %132

108:                                              ; preds = %94
  %109 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  store i8 5, i8* %109, align 1
  br label %132

110:                                              ; preds = %94
  %111 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  store i8 7, i8* %111, align 1
  br label %132

112:                                              ; preds = %94
  %113 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  store i8 9, i8* %113, align 1
  br label %132

114:                                              ; preds = %94
  %115 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  store i8 10, i8* %115, align 1
  br label %132

116:                                              ; preds = %94
  %117 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  store i8 11, i8* %117, align 1
  br label %132

118:                                              ; preds = %94
  %119 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  store i8 12, i8* %119, align 1
  br label %132

120:                                              ; preds = %94
  %121 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  store i8 13, i8* %121, align 1
  br label %132

122:                                              ; preds = %94
  %123 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  store i8 14, i8* %123, align 1
  br label %132

124:                                              ; preds = %94
  %125 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  store i8 17, i8* %125, align 1
  br label %132

126:                                              ; preds = %94, %94
  %127 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  store i8 11, i8* %127, align 1
  br label %132

128:                                              ; preds = %94
  %129 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %130 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %129, i32 0, i32 0
  %131 = call i32 (i32*, i8*, ...) @dev_err(i32* %130, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %132

132:                                              ; preds = %128, %126, %124, %122, %120, %118, %116, %114, %112, %110, %108, %106, %104, %102, %100, %98
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* @CSIZE, align 4
  %135 = and i32 %133, %134
  switch i32 %135, label %160 [
    i32 131, label %136
    i32 130, label %144
    i32 129, label %152
    i32 128, label %161
  ]

136:                                              ; preds = %132
  %137 = load i8, i8* @SET_UART_FORMAT_SIZE_5, align 1
  %138 = zext i8 %137 to i32
  %139 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 1
  %140 = load i8, i8* %139, align 1
  %141 = zext i8 %140 to i32
  %142 = or i32 %141, %138
  %143 = trunc i32 %142 to i8
  store i8 %143, i8* %139, align 1
  br label %169

144:                                              ; preds = %132
  %145 = load i8, i8* @SET_UART_FORMAT_SIZE_6, align 1
  %146 = zext i8 %145 to i32
  %147 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 1
  %148 = load i8, i8* %147, align 1
  %149 = zext i8 %148 to i32
  %150 = or i32 %149, %146
  %151 = trunc i32 %150 to i8
  store i8 %151, i8* %147, align 1
  br label %169

152:                                              ; preds = %132
  %153 = load i8, i8* @SET_UART_FORMAT_SIZE_7, align 1
  %154 = zext i8 %153 to i32
  %155 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 1
  %156 = load i8, i8* %155, align 1
  %157 = zext i8 %156 to i32
  %158 = or i32 %157, %154
  %159 = trunc i32 %158 to i8
  store i8 %159, i8* %155, align 1
  br label %169

160:                                              ; preds = %132
  br label %161

161:                                              ; preds = %132, %160
  %162 = load i8, i8* @SET_UART_FORMAT_SIZE_8, align 1
  %163 = zext i8 %162 to i32
  %164 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 1
  %165 = load i8, i8* %164, align 1
  %166 = zext i8 %165 to i32
  %167 = or i32 %166, %163
  %168 = trunc i32 %167 to i8
  store i8 %168, i8* %164, align 1
  br label %169

169:                                              ; preds = %161, %152, %144, %136
  %170 = load i32, i32* %10, align 4
  %171 = load i32, i32* @CSTOPB, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %169
  %175 = load i8, i8* @SET_UART_FORMAT_STOP_2, align 1
  %176 = zext i8 %175 to i32
  br label %180

177:                                              ; preds = %169
  %178 = load i8, i8* @SET_UART_FORMAT_STOP_1, align 1
  %179 = zext i8 %178 to i32
  br label %180

180:                                              ; preds = %177, %174
  %181 = phi i32 [ %176, %174 ], [ %179, %177 ]
  %182 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 1
  %183 = load i8, i8* %182, align 1
  %184 = zext i8 %183 to i32
  %185 = or i32 %184, %181
  %186 = trunc i32 %185 to i8
  store i8 %186, i8* %182, align 1
  %187 = load i32, i32* %10, align 4
  %188 = load i32, i32* @PARENB, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %209

191:                                              ; preds = %180
  %192 = load i32, i32* %10, align 4
  %193 = load i32, i32* @PARODD, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %191
  %197 = load i8, i8* @SET_UART_FORMAT_PAR_ODD, align 1
  %198 = zext i8 %197 to i32
  br label %202

199:                                              ; preds = %191
  %200 = load i8, i8* @SET_UART_FORMAT_PAR_EVEN, align 1
  %201 = zext i8 %200 to i32
  br label %202

202:                                              ; preds = %199, %196
  %203 = phi i32 [ %198, %196 ], [ %201, %199 ]
  %204 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 1
  %205 = load i8, i8* %204, align 1
  %206 = zext i8 %205 to i32
  %207 = or i32 %206, %203
  %208 = trunc i32 %207 to i8
  store i8 %208, i8* %204, align 1
  br label %217

209:                                              ; preds = %180
  %210 = load i8, i8* @SET_UART_FORMAT_PAR_NONE, align 1
  %211 = zext i8 %210 to i32
  %212 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 1
  %213 = load i8, i8* %212, align 1
  %214 = zext i8 %213 to i32
  %215 = or i32 %214, %211
  %216 = trunc i32 %215 to i8
  store i8 %216, i8* %212, align 1
  br label %217

217:                                              ; preds = %209, %202
  %218 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %219 = load i8, i8* %218, align 1
  %220 = zext i8 %219 to i32
  %221 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 1
  %222 = load i8, i8* %221, align 1
  %223 = zext i8 %222 to i32
  %224 = shl i32 %223, 8
  %225 = or i32 %220, %224
  %226 = trunc i32 %225 to i16
  store i16 %226, i16* %11, align 2
  %227 = load %struct.usb_serial*, %struct.usb_serial** %7, align 8
  %228 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.usb_serial*, %struct.usb_serial** %7, align 8
  %231 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @usb_sndctrlpipe(i32 %232, i32 0)
  %234 = load i32, i32* @SET_UART_FORMAT_TYPE, align 4
  %235 = load i32, i32* @SET_UART_FORMAT, align 4
  %236 = load i16, i16* %11, align 2
  %237 = call i32 @usb_control_msg(i32 %229, i32 %233, i32 %234, i32 %235, i16 zeroext %236, i32 0, i32* null, i32 0, i32 100)
  store i32 %237, i32* %14, align 4
  %238 = load i32, i32* %14, align 4
  %239 = icmp slt i32 %238, 0
  br i1 %239, label %240, label %247

240:                                              ; preds = %217
  %241 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %242 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %241, i32 0, i32 0
  %243 = load i16, i16* %11, align 2
  %244 = zext i16 %243 to i32
  %245 = load i32, i32* %14, align 4
  %246 = call i32 (i32*, i8*, ...) @dev_err(i32* %242, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %244, i32 %245)
  br label %247

247:                                              ; preds = %240, %217
  %248 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %249 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %248, i32 0, i32 0
  %250 = load i32, i32* %14, align 4
  %251 = call i32 @dev_dbg(i32* %249, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %250)
  %252 = load i32, i32* %10, align 4
  %253 = load i32, i32* @CRTSCTS, align 4
  %254 = and i32 %252, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %260

256:                                              ; preds = %247
  %257 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %258 = load i32, i32* @SET_WORKING_MODE_U2C, align 4
  %259 = call i32 @spcp8x5_set_work_mode(%struct.usb_serial_port* %257, i32 10, i32 %258)
  br label %260

260:                                              ; preds = %34, %256, %247
  ret void
}

declare dso_local %struct.spcp8x5_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @tty_termios_hw_change(%struct.TYPE_2__*, %struct.ktermios*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @spcp8x5_set_ctrl_line(%struct.usb_serial_port*, i32) #1

declare dso_local i32 @tty_get_baud_rate(%struct.tty_struct*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i16 zeroext, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @spcp8x5_set_work_mode(%struct.usb_serial_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
