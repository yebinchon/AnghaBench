; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_belkin_sa.c_belkin_sa_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_belkin_sa.c_belkin_sa_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.ktermios }
%struct.ktermios = type { i32, i32 }
%struct.usb_serial_port = type { i32, %struct.usb_serial* }
%struct.usb_serial = type { i32 }
%struct.belkin_sa_private = type { i64, i32, i32 }

@CMSPAR = common dso_local global i32 0, align 4
@CBAUD = common dso_local global i32 0, align 4
@B0 = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i64 0, align 8
@TIOCM_RTS = common dso_local global i64 0, align 8
@BELKIN_SA_SET_DTR_REQUEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Set DTR error\0A\00", align 1
@CRTSCTS = common dso_local global i32 0, align 4
@BELKIN_SA_SET_RTS_REQUEST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Set RTS error\0A\00", align 1
@BELKIN_SA_SET_BAUDRATE_REQUEST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Set baudrate error\0A\00", align 1
@BELKIN_SA_SET_FLOW_CTRL_REQUEST = common dso_local global i32 0, align 4
@BELKIN_SA_FLOW_NONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Disable flowcontrol error\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"DTR LOW error\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"RTS LOW error\0A\00", align 1
@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@BELKIN_SA_PARITY_ODD = common dso_local global i32 0, align 4
@BELKIN_SA_PARITY_EVEN = common dso_local global i32 0, align 4
@BELKIN_SA_PARITY_NONE = common dso_local global i32 0, align 4
@BELKIN_SA_SET_PARITY_REQUEST = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"Set parity error\0A\00", align 1
@CSIZE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [43 x i8] c"CSIZE was not CS5-CS8, using default of 8\0A\00", align 1
@BELKIN_SA_SET_DATA_BITS_REQUEST = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"Set data bits error\0A\00", align 1
@CSTOPB = common dso_local global i32 0, align 4
@BELKIN_SA_SET_STOP_BITS_REQUEST = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [21 x i8] c"Set stop bits error\0A\00", align 1
@IXOFF = common dso_local global i32 0, align 4
@IXON = common dso_local global i32 0, align 4
@BELKIN_SA_FLOW_OXON = common dso_local global i32 0, align 4
@BELKIN_SA_FLOW_IXON = common dso_local global i32 0, align 4
@BELKIN_SA_FLOW_OCTS = common dso_local global i32 0, align 4
@BELKIN_SA_FLOW_IRTS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [24 x i8] c"Set flow control error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.usb_serial_port*, %struct.ktermios*)* @belkin_sa_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @belkin_sa_set_termios(%struct.tty_struct* %0, %struct.usb_serial_port* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.usb_serial_port*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca %struct.usb_serial*, align 8
  %8 = alloca %struct.belkin_sa_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.ktermios*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.usb_serial_port* %1, %struct.usb_serial_port** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %19 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %20 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %19, i32 0, i32 1
  %21 = load %struct.usb_serial*, %struct.usb_serial** %20, align 8
  store %struct.usb_serial* %21, %struct.usb_serial** %7, align 8
  %22 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %23 = call %struct.belkin_sa_private* @usb_get_serial_port_data(%struct.usb_serial_port* %22)
  store %struct.belkin_sa_private* %23, %struct.belkin_sa_private** %8, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %24 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %25 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %24, i32 0, i32 0
  store %struct.ktermios* %25, %struct.ktermios** %18, align 8
  %26 = load %struct.ktermios*, %struct.ktermios** %18, align 8
  %27 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %9, align 4
  %29 = load %struct.ktermios*, %struct.ktermios** %18, align 8
  %30 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* @CMSPAR, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.ktermios*, %struct.ktermios** %18, align 8
  %35 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load %struct.belkin_sa_private*, %struct.belkin_sa_private** %8, align 8
  %39 = getelementptr inbounds %struct.belkin_sa_private, %struct.belkin_sa_private* %38, i32 0, i32 2
  %40 = load i64, i64* %14, align 8
  %41 = call i32 @spin_lock_irqsave(i32* %39, i64 %40)
  %42 = load %struct.belkin_sa_private*, %struct.belkin_sa_private** %8, align 8
  %43 = getelementptr inbounds %struct.belkin_sa_private, %struct.belkin_sa_private* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %15, align 8
  %45 = load %struct.belkin_sa_private*, %struct.belkin_sa_private** %8, align 8
  %46 = getelementptr inbounds %struct.belkin_sa_private, %struct.belkin_sa_private* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %16, align 4
  %48 = load %struct.belkin_sa_private*, %struct.belkin_sa_private** %8, align 8
  %49 = getelementptr inbounds %struct.belkin_sa_private, %struct.belkin_sa_private* %48, i32 0, i32 2
  %50 = load i64, i64* %14, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  %52 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %53 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %11, align 4
  %55 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %56 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @CBAUD, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @CBAUD, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %60, %63
  br i1 %64, label %65, label %100

65:                                               ; preds = %3
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @CBAUD, align 4
  %68 = and i32 %66, %67
  %69 = load i32, i32* @B0, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %99

71:                                               ; preds = %65
  %72 = load i64, i64* @TIOCM_DTR, align 8
  %73 = load i64, i64* @TIOCM_RTS, align 8
  %74 = or i64 %72, %73
  %75 = load i64, i64* %15, align 8
  %76 = or i64 %75, %74
  store i64 %76, i64* %15, align 8
  %77 = load i32, i32* @BELKIN_SA_SET_DTR_REQUEST, align 4
  %78 = call i64 @BSA_USB_CMD(i32 %77, i32 1)
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %71
  %81 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %82 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %81, i32 0, i32 0
  %83 = call i32 @dev_err(i32* %82, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %84

84:                                               ; preds = %80, %71
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* @CRTSCTS, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %98, label %89

89:                                               ; preds = %84
  %90 = load i32, i32* @BELKIN_SA_SET_RTS_REQUEST, align 4
  %91 = call i64 @BSA_USB_CMD(i32 %90, i32 1)
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %95 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %94, i32 0, i32 0
  %96 = call i32 @dev_err(i32* %95, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %97

97:                                               ; preds = %93, %89
  br label %98

98:                                               ; preds = %97, %84
  br label %99

99:                                               ; preds = %98, %65
  br label %100

100:                                              ; preds = %99, %3
  %101 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %102 = call i32 @tty_get_baud_rate(%struct.tty_struct* %101)
  store i32 %102, i32* %17, align 4
  %103 = load i32, i32* %17, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %127

105:                                              ; preds = %100
  %106 = load i32, i32* %17, align 4
  %107 = call i32 @BELKIN_SA_BAUD(i32 %106)
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* %13, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  store i32 1, i32* %13, align 4
  br label %111

111:                                              ; preds = %110, %105
  %112 = load i32, i32* %13, align 4
  %113 = call i32 @BELKIN_SA_BAUD(i32 %112)
  store i32 %113, i32* %17, align 4
  %114 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %115 = load i32, i32* %17, align 4
  %116 = load i32, i32* %17, align 4
  %117 = call i32 @tty_encode_baud_rate(%struct.tty_struct* %114, i32 %115, i32 %116)
  %118 = load i32, i32* @BELKIN_SA_SET_BAUDRATE_REQUEST, align 4
  %119 = load i32, i32* %13, align 4
  %120 = call i64 @BSA_USB_CMD(i32 %118, i32 %119)
  %121 = icmp slt i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %111
  %123 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %124 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %123, i32 0, i32 0
  %125 = call i32 @dev_err(i32* %124, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %126

126:                                              ; preds = %122, %111
  br label %159

127:                                              ; preds = %100
  %128 = load i32, i32* @BELKIN_SA_SET_FLOW_CTRL_REQUEST, align 4
  %129 = load i32, i32* @BELKIN_SA_FLOW_NONE, align 4
  %130 = call i64 @BSA_USB_CMD(i32 %128, i32 %129)
  %131 = icmp slt i64 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %127
  %133 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %134 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %133, i32 0, i32 0
  %135 = call i32 @dev_err(i32* %134, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %136

136:                                              ; preds = %132, %127
  %137 = load i64, i64* @TIOCM_DTR, align 8
  %138 = load i64, i64* @TIOCM_RTS, align 8
  %139 = or i64 %137, %138
  %140 = xor i64 %139, -1
  %141 = load i64, i64* %15, align 8
  %142 = and i64 %141, %140
  store i64 %142, i64* %15, align 8
  %143 = load i32, i32* @BELKIN_SA_SET_DTR_REQUEST, align 4
  %144 = call i64 @BSA_USB_CMD(i32 %143, i32 0)
  %145 = icmp slt i64 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %136
  %147 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %148 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %147, i32 0, i32 0
  %149 = call i32 @dev_err(i32* %148, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %150

150:                                              ; preds = %146, %136
  %151 = load i32, i32* @BELKIN_SA_SET_RTS_REQUEST, align 4
  %152 = call i64 @BSA_USB_CMD(i32 %151, i32 0)
  %153 = icmp slt i64 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %150
  %155 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %156 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %155, i32 0, i32 0
  %157 = call i32 @dev_err(i32* %156, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  br label %158

158:                                              ; preds = %154, %150
  br label %159

159:                                              ; preds = %158, %126
  %160 = load i32, i32* %10, align 4
  %161 = load i32, i32* %12, align 4
  %162 = xor i32 %160, %161
  %163 = load i32, i32* @PARENB, align 4
  %164 = load i32, i32* @PARODD, align 4
  %165 = or i32 %163, %164
  %166 = and i32 %162, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %196

168:                                              ; preds = %159
  %169 = load i32, i32* %10, align 4
  %170 = load i32, i32* @PARENB, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %184

173:                                              ; preds = %168
  %174 = load i32, i32* %10, align 4
  %175 = load i32, i32* @PARODD, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %173
  %179 = load i32, i32* @BELKIN_SA_PARITY_ODD, align 4
  br label %182

180:                                              ; preds = %173
  %181 = load i32, i32* @BELKIN_SA_PARITY_EVEN, align 4
  br label %182

182:                                              ; preds = %180, %178
  %183 = phi i32 [ %179, %178 ], [ %181, %180 ]
  store i32 %183, i32* %13, align 4
  br label %186

184:                                              ; preds = %168
  %185 = load i32, i32* @BELKIN_SA_PARITY_NONE, align 4
  store i32 %185, i32* %13, align 4
  br label %186

186:                                              ; preds = %184, %182
  %187 = load i32, i32* @BELKIN_SA_SET_PARITY_REQUEST, align 4
  %188 = load i32, i32* %13, align 4
  %189 = call i64 @BSA_USB_CMD(i32 %187, i32 %188)
  %190 = icmp slt i64 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %186
  %192 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %193 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %192, i32 0, i32 0
  %194 = call i32 @dev_err(i32* %193, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  br label %195

195:                                              ; preds = %191, %186
  br label %196

196:                                              ; preds = %195, %159
  %197 = load i32, i32* %10, align 4
  %198 = load i32, i32* @CSIZE, align 4
  %199 = and i32 %197, %198
  %200 = load i32, i32* %12, align 4
  %201 = load i32, i32* @CSIZE, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %199, %202
  br i1 %203, label %204, label %231

204:                                              ; preds = %196
  %205 = load i32, i32* %10, align 4
  %206 = load i32, i32* @CSIZE, align 4
  %207 = and i32 %205, %206
  switch i32 %207, label %216 [
    i32 131, label %208
    i32 130, label %210
    i32 129, label %212
    i32 128, label %214
  ]

208:                                              ; preds = %204
  %209 = call i32 @BELKIN_SA_DATA_BITS(i32 5)
  store i32 %209, i32* %13, align 4
  br label %221

210:                                              ; preds = %204
  %211 = call i32 @BELKIN_SA_DATA_BITS(i32 6)
  store i32 %211, i32* %13, align 4
  br label %221

212:                                              ; preds = %204
  %213 = call i32 @BELKIN_SA_DATA_BITS(i32 7)
  store i32 %213, i32* %13, align 4
  br label %221

214:                                              ; preds = %204
  %215 = call i32 @BELKIN_SA_DATA_BITS(i32 8)
  store i32 %215, i32* %13, align 4
  br label %221

216:                                              ; preds = %204
  %217 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %218 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %217, i32 0, i32 0
  %219 = call i32 @dev_dbg(i32* %218, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  %220 = call i32 @BELKIN_SA_DATA_BITS(i32 8)
  store i32 %220, i32* %13, align 4
  br label %221

221:                                              ; preds = %216, %214, %212, %210, %208
  %222 = load i32, i32* @BELKIN_SA_SET_DATA_BITS_REQUEST, align 4
  %223 = load i32, i32* %13, align 4
  %224 = call i64 @BSA_USB_CMD(i32 %222, i32 %223)
  %225 = icmp slt i64 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %221
  %227 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %228 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %227, i32 0, i32 0
  %229 = call i32 @dev_err(i32* %228, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  br label %230

230:                                              ; preds = %226, %221
  br label %231

231:                                              ; preds = %230, %196
  %232 = load i32, i32* %10, align 4
  %233 = load i32, i32* @CSTOPB, align 4
  %234 = and i32 %232, %233
  %235 = load i32, i32* %12, align 4
  %236 = load i32, i32* @CSTOPB, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %234, %237
  br i1 %238, label %239, label %259

239:                                              ; preds = %231
  %240 = load i32, i32* %10, align 4
  %241 = load i32, i32* @CSTOPB, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %239
  %245 = call i32 @BELKIN_SA_STOP_BITS(i32 2)
  br label %248

246:                                              ; preds = %239
  %247 = call i32 @BELKIN_SA_STOP_BITS(i32 1)
  br label %248

248:                                              ; preds = %246, %244
  %249 = phi i32 [ %245, %244 ], [ %247, %246 ]
  store i32 %249, i32* %13, align 4
  %250 = load i32, i32* @BELKIN_SA_SET_STOP_BITS_REQUEST, align 4
  %251 = load i32, i32* %13, align 4
  %252 = call i64 @BSA_USB_CMD(i32 %250, i32 %251)
  %253 = icmp slt i64 %252, 0
  br i1 %253, label %254, label %258

254:                                              ; preds = %248
  %255 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %256 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %255, i32 0, i32 0
  %257 = call i32 @dev_err(i32* %256, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  br label %258

258:                                              ; preds = %254, %248
  br label %259

259:                                              ; preds = %258, %231
  %260 = load i32, i32* %9, align 4
  %261 = load i32, i32* %11, align 4
  %262 = xor i32 %260, %261
  %263 = load i32, i32* @IXOFF, align 4
  %264 = load i32, i32* @IXON, align 4
  %265 = or i32 %263, %264
  %266 = and i32 %262, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %275, label %268

268:                                              ; preds = %259
  %269 = load i32, i32* %10, align 4
  %270 = load i32, i32* %12, align 4
  %271 = xor i32 %269, %270
  %272 = load i32, i32* @CRTSCTS, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %334

275:                                              ; preds = %268, %259
  store i32 0, i32* %13, align 4
  %276 = load i32, i32* %9, align 4
  %277 = load i32, i32* @IXOFF, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %285, label %280

280:                                              ; preds = %275
  %281 = load i32, i32* %9, align 4
  %282 = load i32, i32* @IXON, align 4
  %283 = and i32 %281, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %291

285:                                              ; preds = %280, %275
  %286 = load i32, i32* @BELKIN_SA_FLOW_OXON, align 4
  %287 = load i32, i32* @BELKIN_SA_FLOW_IXON, align 4
  %288 = or i32 %286, %287
  %289 = load i32, i32* %13, align 4
  %290 = or i32 %289, %288
  store i32 %290, i32* %13, align 4
  br label %298

291:                                              ; preds = %280
  %292 = load i32, i32* @BELKIN_SA_FLOW_OXON, align 4
  %293 = load i32, i32* @BELKIN_SA_FLOW_IXON, align 4
  %294 = or i32 %292, %293
  %295 = xor i32 %294, -1
  %296 = load i32, i32* %13, align 4
  %297 = and i32 %296, %295
  store i32 %297, i32* %13, align 4
  br label %298

298:                                              ; preds = %291, %285
  %299 = load i32, i32* %10, align 4
  %300 = load i32, i32* @CRTSCTS, align 4
  %301 = and i32 %299, %300
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %309

303:                                              ; preds = %298
  %304 = load i32, i32* @BELKIN_SA_FLOW_OCTS, align 4
  %305 = load i32, i32* @BELKIN_SA_FLOW_IRTS, align 4
  %306 = or i32 %304, %305
  %307 = load i32, i32* %13, align 4
  %308 = or i32 %307, %306
  store i32 %308, i32* %13, align 4
  br label %316

309:                                              ; preds = %298
  %310 = load i32, i32* @BELKIN_SA_FLOW_OCTS, align 4
  %311 = load i32, i32* @BELKIN_SA_FLOW_IRTS, align 4
  %312 = or i32 %310, %311
  %313 = xor i32 %312, -1
  %314 = load i32, i32* %13, align 4
  %315 = and i32 %314, %313
  store i32 %315, i32* %13, align 4
  br label %316

316:                                              ; preds = %309, %303
  %317 = load i32, i32* %16, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %324

319:                                              ; preds = %316
  %320 = load i32, i32* @BELKIN_SA_FLOW_IRTS, align 4
  %321 = xor i32 %320, -1
  %322 = load i32, i32* %13, align 4
  %323 = and i32 %322, %321
  store i32 %323, i32* %13, align 4
  br label %324

324:                                              ; preds = %319, %316
  %325 = load i32, i32* @BELKIN_SA_SET_FLOW_CTRL_REQUEST, align 4
  %326 = load i32, i32* %13, align 4
  %327 = call i64 @BSA_USB_CMD(i32 %325, i32 %326)
  %328 = icmp slt i64 %327, 0
  br i1 %328, label %329, label %333

329:                                              ; preds = %324
  %330 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %331 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %330, i32 0, i32 0
  %332 = call i32 @dev_err(i32* %331, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  br label %333

333:                                              ; preds = %329, %324
  br label %334

334:                                              ; preds = %333, %268
  %335 = load %struct.belkin_sa_private*, %struct.belkin_sa_private** %8, align 8
  %336 = getelementptr inbounds %struct.belkin_sa_private, %struct.belkin_sa_private* %335, i32 0, i32 2
  %337 = load i64, i64* %14, align 8
  %338 = call i32 @spin_lock_irqsave(i32* %336, i64 %337)
  %339 = load i64, i64* %15, align 8
  %340 = load %struct.belkin_sa_private*, %struct.belkin_sa_private** %8, align 8
  %341 = getelementptr inbounds %struct.belkin_sa_private, %struct.belkin_sa_private* %340, i32 0, i32 0
  store i64 %339, i64* %341, align 8
  %342 = load %struct.belkin_sa_private*, %struct.belkin_sa_private** %8, align 8
  %343 = getelementptr inbounds %struct.belkin_sa_private, %struct.belkin_sa_private* %342, i32 0, i32 2
  %344 = load i64, i64* %14, align 8
  %345 = call i32 @spin_unlock_irqrestore(i32* %343, i64 %344)
  ret void
}

declare dso_local %struct.belkin_sa_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @BSA_USB_CMD(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @tty_get_baud_rate(%struct.tty_struct*) #1

declare dso_local i32 @BELKIN_SA_BAUD(i32) #1

declare dso_local i32 @tty_encode_baud_rate(%struct.tty_struct*, i32, i32) #1

declare dso_local i32 @BELKIN_SA_DATA_BITS(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @BELKIN_SA_STOP_BITS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
