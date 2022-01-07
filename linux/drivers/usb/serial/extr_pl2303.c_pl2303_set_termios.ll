; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_pl2303.c_pl2303_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_pl2303.c_pl2303_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.ktermios }
%struct.ktermios = type { i32 }
%struct.usb_serial_port = type { i32, %struct.usb_serial* }
%struct.usb_serial = type { i32 }
%struct.pl2303_serial_private = type { i32, i32 }
%struct.pl2303_private = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"data bits = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"stop bits = 1.5\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"stop bits = 2\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"stop bits = 1\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"parity = mark\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"parity = odd\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"parity = space\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"parity = even\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"parity = none\0A\00", align 1
@B0 = common dso_local global i32 0, align 4
@CONTROL_DTR = common dso_local global i32 0, align 4
@CONTROL_RTS = common dso_local global i32 0, align 4
@CBAUD = common dso_local global i32 0, align 4
@PL2303_QUIRK_LEGACY = common dso_local global i32 0, align 4
@PL2303_FLOWCTRL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.usb_serial_port*, %struct.ktermios*)* @pl2303_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pl2303_set_termios(%struct.tty_struct* %0, %struct.usb_serial_port* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.usb_serial_port*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca %struct.usb_serial*, align 8
  %8 = alloca %struct.pl2303_serial_private*, align 8
  %9 = alloca %struct.pl2303_private*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.usb_serial_port* %1, %struct.usb_serial_port** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %14 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %15 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %14, i32 0, i32 1
  %16 = load %struct.usb_serial*, %struct.usb_serial** %15, align 8
  store %struct.usb_serial* %16, %struct.usb_serial** %7, align 8
  %17 = load %struct.usb_serial*, %struct.usb_serial** %7, align 8
  %18 = call %struct.pl2303_serial_private* @usb_get_serial_data(%struct.usb_serial* %17)
  store %struct.pl2303_serial_private* %18, %struct.pl2303_serial_private** %8, align 8
  %19 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %20 = call %struct.pl2303_private* @usb_get_serial_port_data(%struct.usb_serial_port* %19)
  store %struct.pl2303_private* %20, %struct.pl2303_private** %9, align 8
  %21 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %22 = icmp ne %struct.ktermios* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %3
  %24 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %25 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %24, i32 0, i32 0
  %26 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %27 = call i32 @pl2303_termios_change(%struct.ktermios* %25, %struct.ktermios* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  br label %277

30:                                               ; preds = %23, %3
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i8* @kzalloc(i32 7, i32 %31)
  store i8* %32, i8** %11, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %45, label %35

35:                                               ; preds = %30
  %36 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %37 = icmp ne %struct.ktermios* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %40 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %39, i32 0, i32 0
  %41 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %42 = bitcast %struct.ktermios* %40 to i8*
  %43 = bitcast %struct.ktermios* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 %43, i64 4, i1 false)
  br label %44

44:                                               ; preds = %38, %35
  br label %277

45:                                               ; preds = %30
  %46 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = call i32 @pl2303_get_line_request(%struct.usb_serial_port* %46, i8* %47)
  %49 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %50 = call i32 @C_CSIZE(%struct.tty_struct* %49)
  switch i32 %50, label %60 [
    i32 131, label %51
    i32 130, label %54
    i32 129, label %57
    i32 128, label %61
  ]

51:                                               ; preds = %45
  %52 = load i8*, i8** %11, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 6
  store i8 5, i8* %53, align 1
  br label %64

54:                                               ; preds = %45
  %55 = load i8*, i8** %11, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 6
  store i8 6, i8* %56, align 1
  br label %64

57:                                               ; preds = %45
  %58 = load i8*, i8** %11, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 6
  store i8 7, i8* %59, align 1
  br label %64

60:                                               ; preds = %45
  br label %61

61:                                               ; preds = %45, %60
  %62 = load i8*, i8** %11, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 6
  store i8 8, i8* %63, align 1
  br label %64

64:                                               ; preds = %61, %57, %54, %51
  %65 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %66 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %65, i32 0, i32 0
  %67 = load i8*, i8** %11, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 6
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %66, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %73 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 0
  %76 = call i32 @pl2303_encode_baud_rate(%struct.tty_struct* %72, %struct.usb_serial_port* %73, i8* %75)
  %77 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %78 = call i64 @C_CSTOPB(%struct.tty_struct* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %97

80:                                               ; preds = %64
  %81 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %82 = call i32 @C_CSIZE(%struct.tty_struct* %81)
  %83 = icmp eq i32 %82, 131
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  %85 = load i8*, i8** %11, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 4
  store i8 1, i8* %86, align 1
  %87 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %88 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %87, i32 0, i32 0
  %89 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %88, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %96

90:                                               ; preds = %80
  %91 = load i8*, i8** %11, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 4
  store i8 2, i8* %92, align 1
  %93 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %94 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %93, i32 0, i32 0
  %95 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %94, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %96

96:                                               ; preds = %90, %84
  br label %103

97:                                               ; preds = %64
  %98 = load i8*, i8** %11, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 4
  store i8 0, i8* %99, align 1
  %100 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %101 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %100, i32 0, i32 0
  %102 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %101, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %103

103:                                              ; preds = %97, %96
  %104 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %105 = call i64 @C_PARENB(%struct.tty_struct* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %146

107:                                              ; preds = %103
  %108 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %109 = call i64 @C_PARODD(%struct.tty_struct* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %128

111:                                              ; preds = %107
  %112 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %113 = call i64 @C_CMSPAR(%struct.tty_struct* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %111
  %116 = load i8*, i8** %11, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 5
  store i8 3, i8* %117, align 1
  %118 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %119 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %118, i32 0, i32 0
  %120 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %119, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %127

121:                                              ; preds = %111
  %122 = load i8*, i8** %11, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 5
  store i8 1, i8* %123, align 1
  %124 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %125 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %124, i32 0, i32 0
  %126 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %125, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %127

127:                                              ; preds = %121, %115
  br label %145

128:                                              ; preds = %107
  %129 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %130 = call i64 @C_CMSPAR(%struct.tty_struct* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %128
  %133 = load i8*, i8** %11, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 5
  store i8 4, i8* %134, align 1
  %135 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %136 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %135, i32 0, i32 0
  %137 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %136, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  br label %144

138:                                              ; preds = %128
  %139 = load i8*, i8** %11, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 5
  store i8 2, i8* %140, align 1
  %141 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %142 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %141, i32 0, i32 0
  %143 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %142, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  br label %144

144:                                              ; preds = %138, %132
  br label %145

145:                                              ; preds = %144, %127
  br label %152

146:                                              ; preds = %103
  %147 = load i8*, i8** %11, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 5
  store i8 0, i8* %148, align 1
  %149 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %150 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %149, i32 0, i32 0
  %151 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %150, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  br label %152

152:                                              ; preds = %146, %145
  %153 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %154 = icmp ne %struct.ktermios* %153, null
  br i1 %154, label %155, label %162

155:                                              ; preds = %152
  %156 = load i8*, i8** %11, align 8
  %157 = load %struct.pl2303_private*, %struct.pl2303_private** %9, align 8
  %158 = getelementptr inbounds %struct.pl2303_private, %struct.pl2303_private* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = call i64 @memcmp(i8* %156, i32 %159, i32 7)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %175

162:                                              ; preds = %155, %152
  %163 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %164 = load i8*, i8** %11, align 8
  %165 = call i32 @pl2303_set_line_request(%struct.usb_serial_port* %163, i8* %164)
  store i32 %165, i32* %12, align 4
  %166 = load i32, i32* %12, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %174, label %168

168:                                              ; preds = %162
  %169 = load %struct.pl2303_private*, %struct.pl2303_private** %9, align 8
  %170 = getelementptr inbounds %struct.pl2303_private, %struct.pl2303_private* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = load i8*, i8** %11, align 8
  %173 = call i32 @memcpy(i32 %171, i8* %172, i32 7)
  br label %174

174:                                              ; preds = %168, %162
  br label %175

175:                                              ; preds = %174, %155
  %176 = load %struct.pl2303_private*, %struct.pl2303_private** %9, align 8
  %177 = getelementptr inbounds %struct.pl2303_private, %struct.pl2303_private* %176, i32 0, i32 1
  %178 = load i64, i64* %10, align 8
  %179 = call i32 @spin_lock_irqsave(i32* %177, i64 %178)
  %180 = load %struct.pl2303_private*, %struct.pl2303_private** %9, align 8
  %181 = getelementptr inbounds %struct.pl2303_private, %struct.pl2303_private* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  store i32 %182, i32* %13, align 4
  %183 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %184 = call i32 @C_BAUD(%struct.tty_struct* %183)
  %185 = load i32, i32* @B0, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %196

187:                                              ; preds = %175
  %188 = load i32, i32* @CONTROL_DTR, align 4
  %189 = load i32, i32* @CONTROL_RTS, align 4
  %190 = or i32 %188, %189
  %191 = xor i32 %190, -1
  %192 = load %struct.pl2303_private*, %struct.pl2303_private** %9, align 8
  %193 = getelementptr inbounds %struct.pl2303_private, %struct.pl2303_private* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = and i32 %194, %191
  store i32 %195, i32* %193, align 4
  br label %216

196:                                              ; preds = %175
  %197 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %198 = icmp ne %struct.ktermios* %197, null
  br i1 %198, label %199, label %215

199:                                              ; preds = %196
  %200 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %201 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @CBAUD, align 4
  %204 = and i32 %202, %203
  %205 = load i32, i32* @B0, align 4
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %207, label %215

207:                                              ; preds = %199
  %208 = load i32, i32* @CONTROL_DTR, align 4
  %209 = load i32, i32* @CONTROL_RTS, align 4
  %210 = or i32 %208, %209
  %211 = load %struct.pl2303_private*, %struct.pl2303_private** %9, align 8
  %212 = getelementptr inbounds %struct.pl2303_private, %struct.pl2303_private* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = or i32 %213, %210
  store i32 %214, i32* %212, align 4
  br label %215

215:                                              ; preds = %207, %199, %196
  br label %216

216:                                              ; preds = %215, %187
  %217 = load i32, i32* %13, align 4
  %218 = load %struct.pl2303_private*, %struct.pl2303_private** %9, align 8
  %219 = getelementptr inbounds %struct.pl2303_private, %struct.pl2303_private* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = icmp ne i32 %217, %220
  br i1 %221, label %222, label %233

222:                                              ; preds = %216
  %223 = load %struct.pl2303_private*, %struct.pl2303_private** %9, align 8
  %224 = getelementptr inbounds %struct.pl2303_private, %struct.pl2303_private* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  store i32 %225, i32* %13, align 4
  %226 = load %struct.pl2303_private*, %struct.pl2303_private** %9, align 8
  %227 = getelementptr inbounds %struct.pl2303_private, %struct.pl2303_private* %226, i32 0, i32 1
  %228 = load i64, i64* %10, align 8
  %229 = call i32 @spin_unlock_irqrestore(i32* %227, i64 %228)
  %230 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %231 = load i32, i32* %13, align 4
  %232 = call i32 @pl2303_set_control_lines(%struct.usb_serial_port* %230, i32 %231)
  br label %238

233:                                              ; preds = %216
  %234 = load %struct.pl2303_private*, %struct.pl2303_private** %9, align 8
  %235 = getelementptr inbounds %struct.pl2303_private, %struct.pl2303_private* %234, i32 0, i32 1
  %236 = load i64, i64* %10, align 8
  %237 = call i32 @spin_unlock_irqrestore(i32* %235, i64 %236)
  br label %238

238:                                              ; preds = %233, %222
  %239 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %240 = call i64 @C_CRTSCTS(%struct.tty_struct* %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %258

242:                                              ; preds = %238
  %243 = load %struct.pl2303_serial_private*, %struct.pl2303_serial_private** %8, align 8
  %244 = getelementptr inbounds %struct.pl2303_serial_private, %struct.pl2303_serial_private* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* @PL2303_QUIRK_LEGACY, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %253

249:                                              ; preds = %242
  %250 = load %struct.usb_serial*, %struct.usb_serial** %7, align 8
  %251 = load i32, i32* @PL2303_FLOWCTRL_MASK, align 4
  %252 = call i32 @pl2303_update_reg(%struct.usb_serial* %250, i32 0, i32 %251, i32 64)
  br label %257

253:                                              ; preds = %242
  %254 = load %struct.usb_serial*, %struct.usb_serial** %7, align 8
  %255 = load i32, i32* @PL2303_FLOWCTRL_MASK, align 4
  %256 = call i32 @pl2303_update_reg(%struct.usb_serial* %254, i32 0, i32 %255, i32 96)
  br label %257

257:                                              ; preds = %253, %249
  br label %274

258:                                              ; preds = %238
  %259 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %260 = load %struct.pl2303_serial_private*, %struct.pl2303_serial_private** %8, align 8
  %261 = getelementptr inbounds %struct.pl2303_serial_private, %struct.pl2303_serial_private* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = call i64 @pl2303_enable_xonxoff(%struct.tty_struct* %259, i32 %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %269

265:                                              ; preds = %258
  %266 = load %struct.usb_serial*, %struct.usb_serial** %7, align 8
  %267 = load i32, i32* @PL2303_FLOWCTRL_MASK, align 4
  %268 = call i32 @pl2303_update_reg(%struct.usb_serial* %266, i32 0, i32 %267, i32 192)
  br label %273

269:                                              ; preds = %258
  %270 = load %struct.usb_serial*, %struct.usb_serial** %7, align 8
  %271 = load i32, i32* @PL2303_FLOWCTRL_MASK, align 4
  %272 = call i32 @pl2303_update_reg(%struct.usb_serial* %270, i32 0, i32 %271, i32 0)
  br label %273

273:                                              ; preds = %269, %265
  br label %274

274:                                              ; preds = %273, %257
  %275 = load i8*, i8** %11, align 8
  %276 = call i32 @kfree(i8* %275)
  br label %277

277:                                              ; preds = %274, %44, %29
  ret void
}

declare dso_local %struct.pl2303_serial_private* @usb_get_serial_data(%struct.usb_serial*) #1

declare dso_local %struct.pl2303_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @pl2303_termios_change(%struct.ktermios*, %struct.ktermios*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pl2303_get_line_request(%struct.usb_serial_port*, i8*) #1

declare dso_local i32 @C_CSIZE(%struct.tty_struct*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @pl2303_encode_baud_rate(%struct.tty_struct*, %struct.usb_serial_port*, i8*) #1

declare dso_local i64 @C_CSTOPB(%struct.tty_struct*) #1

declare dso_local i64 @C_PARENB(%struct.tty_struct*) #1

declare dso_local i64 @C_PARODD(%struct.tty_struct*) #1

declare dso_local i64 @C_CMSPAR(%struct.tty_struct*) #1

declare dso_local i64 @memcmp(i8*, i32, i32) #1

declare dso_local i32 @pl2303_set_line_request(%struct.usb_serial_port*, i8*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @C_BAUD(%struct.tty_struct*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pl2303_set_control_lines(%struct.usb_serial_port*, i32) #1

declare dso_local i64 @C_CRTSCTS(%struct.tty_struct*) #1

declare dso_local i32 @pl2303_update_reg(%struct.usb_serial*, i32, i32, i32) #1

declare dso_local i64 @pl2303_enable_xonxoff(%struct.tty_struct*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
