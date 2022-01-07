; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ftdi_sio.c_ftdi_process_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ftdi_sio.c_ftdi_process_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { %struct.TYPE_6__, i64, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ftdi_private = type { i8, i32 }
%struct.tty_struct = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"malformed packet\0A\00", align 1
@FTDI_STATUS_B0_MASK = common dso_local global i8 0, align 1
@FTDI_RS0_CTS = common dso_local global i8 0, align 1
@FTDI_RS0_DSR = common dso_local global i8 0, align 1
@FTDI_RS0_RI = common dso_local global i8 0, align 1
@FTDI_RS0_RLSD = common dso_local global i8 0, align 1
@FTDI_RS_TEMT = common dso_local global i8 0, align 1
@TTY_NORMAL = common dso_local global i8 0, align 1
@FTDI_RS_ERR_MASK = common dso_local global i8 0, align 1
@FTDI_RS_BI = common dso_local global i8 0, align 1
@TTY_BREAK = common dso_local global i8 0, align 1
@FTDI_RS_PE = common dso_local global i8 0, align 1
@TTY_PARITY = common dso_local global i8 0, align 1
@FTDI_RS_FE = common dso_local global i8 0, align 1
@TTY_FRAME = common dso_local global i8 0, align 1
@FTDI_RS_OE = common dso_local global i8 0, align 1
@TTY_OVERRUN = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial_port*, %struct.ftdi_private*, i8*, i32)* @ftdi_process_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftdi_process_packet(%struct.usb_serial_port* %0, %struct.ftdi_private* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_serial_port*, align 8
  %7 = alloca %struct.ftdi_private*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8*, align 8
  %14 = alloca i8, align 1
  %15 = alloca %struct.tty_struct*, align 8
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %6, align 8
  store %struct.ftdi_private* %1, %struct.ftdi_private** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load %struct.usb_serial_port*, %struct.usb_serial_port** %6, align 8
  %20 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %19, i32 0, i32 3
  %21 = call i32 @dev_dbg(i32* %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %280

22:                                               ; preds = %4
  %23 = load i8*, i8** %8, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = load i8, i8* @FTDI_STATUS_B0_MASK, align 1
  %28 = sext i8 %27 to i32
  %29 = and i32 %26, %28
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %11, align 1
  %31 = load i8, i8* %11, align 1
  %32 = sext i8 %31 to i32
  %33 = load %struct.ftdi_private*, %struct.ftdi_private** %7, align 8
  %34 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %33, i32 0, i32 0
  %35 = load i8, i8* %34, align 4
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %32, %36
  br i1 %37, label %38, label %124

38:                                               ; preds = %22
  %39 = load i8, i8* %11, align 1
  %40 = sext i8 %39 to i32
  %41 = load %struct.ftdi_private*, %struct.ftdi_private** %7, align 8
  %42 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %41, i32 0, i32 0
  %43 = load i8, i8* %42, align 4
  %44 = sext i8 %43 to i32
  %45 = xor i32 %40, %44
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %14, align 1
  %47 = load i8, i8* %14, align 1
  %48 = sext i8 %47 to i32
  %49 = load i8, i8* @FTDI_RS0_CTS, align 1
  %50 = sext i8 %49 to i32
  %51 = and i32 %48, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %38
  %54 = load %struct.usb_serial_port*, %struct.usb_serial_port** %6, align 8
  %55 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 8
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 8
  br label %59

59:                                               ; preds = %53, %38
  %60 = load i8, i8* %14, align 1
  %61 = sext i8 %60 to i32
  %62 = load i8, i8* @FTDI_RS0_DSR, align 1
  %63 = sext i8 %62 to i32
  %64 = and i32 %61, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = load %struct.usb_serial_port*, %struct.usb_serial_port** %6, align 8
  %68 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %66, %59
  %73 = load i8, i8* %14, align 1
  %74 = sext i8 %73 to i32
  %75 = load i8, i8* @FTDI_RS0_RI, align 1
  %76 = sext i8 %75 to i32
  %77 = and i32 %74, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %72
  %80 = load %struct.usb_serial_port*, %struct.usb_serial_port** %6, align 8
  %81 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 8
  br label %85

85:                                               ; preds = %79, %72
  %86 = load i8, i8* %14, align 1
  %87 = sext i8 %86 to i32
  %88 = load i8, i8* @FTDI_RS0_RLSD, align 1
  %89 = sext i8 %88 to i32
  %90 = and i32 %87, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %116

92:                                               ; preds = %85
  %93 = load %struct.usb_serial_port*, %struct.usb_serial_port** %6, align 8
  %94 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 4
  %98 = load %struct.usb_serial_port*, %struct.usb_serial_port** %6, align 8
  %99 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %98, i32 0, i32 0
  %100 = call %struct.tty_struct* @tty_port_tty_get(%struct.TYPE_6__* %99)
  store %struct.tty_struct* %100, %struct.tty_struct** %15, align 8
  %101 = load %struct.tty_struct*, %struct.tty_struct** %15, align 8
  %102 = icmp ne %struct.tty_struct* %101, null
  br i1 %102, label %103, label %113

103:                                              ; preds = %92
  %104 = load %struct.usb_serial_port*, %struct.usb_serial_port** %6, align 8
  %105 = load %struct.tty_struct*, %struct.tty_struct** %15, align 8
  %106 = load i8, i8* %11, align 1
  %107 = sext i8 %106 to i32
  %108 = load i8, i8* @FTDI_RS0_RLSD, align 1
  %109 = sext i8 %108 to i32
  %110 = and i32 %107, %109
  %111 = trunc i32 %110 to i8
  %112 = call i32 @usb_serial_handle_dcd_change(%struct.usb_serial_port* %104, %struct.tty_struct* %105, i8 signext %111)
  br label %113

113:                                              ; preds = %103, %92
  %114 = load %struct.tty_struct*, %struct.tty_struct** %15, align 8
  %115 = call i32 @tty_kref_put(%struct.tty_struct* %114)
  br label %116

116:                                              ; preds = %113, %85
  %117 = load %struct.usb_serial_port*, %struct.usb_serial_port** %6, align 8
  %118 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = call i32 @wake_up_interruptible(i32* %119)
  %121 = load i8, i8* %11, align 1
  %122 = load %struct.ftdi_private*, %struct.ftdi_private** %7, align 8
  %123 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %122, i32 0, i32 0
  store i8 %121, i8* %123, align 4
  br label %124

124:                                              ; preds = %116, %22
  %125 = load i8*, i8** %8, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 1
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = load i8, i8* @FTDI_RS_TEMT, align 1
  %130 = sext i8 %129 to i32
  %131 = and i32 %128, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %124
  %134 = load %struct.ftdi_private*, %struct.ftdi_private** %7, align 8
  %135 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %134, i32 0, i32 1
  store i32 1, i32* %135, align 4
  br label %139

136:                                              ; preds = %124
  %137 = load %struct.ftdi_private*, %struct.ftdi_private** %7, align 8
  %138 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %137, i32 0, i32 1
  store i32 0, i32* %138, align 4
  br label %139

139:                                              ; preds = %136, %133
  %140 = load i32, i32* %9, align 4
  %141 = sub nsw i32 %140, 2
  store i32 %141, i32* %9, align 4
  %142 = load i32, i32* %9, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %139
  store i32 0, i32* %5, align 4
  br label %280

145:                                              ; preds = %139
  %146 = load i8, i8* @TTY_NORMAL, align 1
  store i8 %146, i8* %12, align 1
  %147 = load i8*, i8** %8, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 1
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = load i8, i8* @FTDI_RS_ERR_MASK, align 1
  %152 = sext i8 %151 to i32
  %153 = and i32 %150, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %227

155:                                              ; preds = %145
  %156 = load i8*, i8** %8, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 1
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = load i8, i8* @FTDI_RS_BI, align 1
  %161 = sext i8 %160 to i32
  %162 = and i32 %159, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %173

164:                                              ; preds = %155
  %165 = load i8, i8* @TTY_BREAK, align 1
  store i8 %165, i8* %12, align 1
  %166 = load %struct.usb_serial_port*, %struct.usb_serial_port** %6, align 8
  %167 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 8
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %168, align 8
  %171 = load %struct.usb_serial_port*, %struct.usb_serial_port** %6, align 8
  %172 = call i32 @usb_serial_handle_break(%struct.usb_serial_port* %171)
  br label %207

173:                                              ; preds = %155
  %174 = load i8*, i8** %8, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 1
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  %178 = load i8, i8* @FTDI_RS_PE, align 1
  %179 = sext i8 %178 to i32
  %180 = and i32 %177, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %189

182:                                              ; preds = %173
  %183 = load i8, i8* @TTY_PARITY, align 1
  store i8 %183, i8* %12, align 1
  %184 = load %struct.usb_serial_port*, %struct.usb_serial_port** %6, align 8
  %185 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %186, align 4
  br label %206

189:                                              ; preds = %173
  %190 = load i8*, i8** %8, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 1
  %192 = load i8, i8* %191, align 1
  %193 = sext i8 %192 to i32
  %194 = load i8, i8* @FTDI_RS_FE, align 1
  %195 = sext i8 %194 to i32
  %196 = and i32 %193, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %205

198:                                              ; preds = %189
  %199 = load i8, i8* @TTY_FRAME, align 1
  store i8 %199, i8* %12, align 1
  %200 = load %struct.usb_serial_port*, %struct.usb_serial_port** %6, align 8
  %201 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %202, align 8
  br label %205

205:                                              ; preds = %198, %189
  br label %206

206:                                              ; preds = %205, %182
  br label %207

207:                                              ; preds = %206, %164
  %208 = load i8*, i8** %8, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 1
  %210 = load i8, i8* %209, align 1
  %211 = sext i8 %210 to i32
  %212 = load i8, i8* @FTDI_RS_OE, align 1
  %213 = sext i8 %212 to i32
  %214 = and i32 %211, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %226

216:                                              ; preds = %207
  %217 = load %struct.usb_serial_port*, %struct.usb_serial_port** %6, align 8
  %218 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %219, align 4
  %222 = load %struct.usb_serial_port*, %struct.usb_serial_port** %6, align 8
  %223 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %222, i32 0, i32 0
  %224 = load i8, i8* @TTY_OVERRUN, align 1
  %225 = call i32 @tty_insert_flip_char(%struct.TYPE_6__* %223, i8 signext 0, i8 signext %224)
  br label %226

226:                                              ; preds = %216, %207
  br label %227

227:                                              ; preds = %226, %145
  %228 = load i32, i32* %9, align 4
  %229 = load %struct.usb_serial_port*, %struct.usb_serial_port** %6, align 8
  %230 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = add nsw i32 %232, %228
  store i32 %233, i32* %231, align 8
  %234 = load i8*, i8** %8, align 8
  %235 = getelementptr inbounds i8, i8* %234, i64 2
  store i8* %235, i8** %13, align 8
  %236 = load %struct.usb_serial_port*, %struct.usb_serial_port** %6, align 8
  %237 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %271

241:                                              ; preds = %227
  %242 = load %struct.usb_serial_port*, %struct.usb_serial_port** %6, align 8
  %243 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %242, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %271

246:                                              ; preds = %241
  store i32 0, i32* %10, align 4
  br label %247

247:                                              ; preds = %265, %246
  %248 = load i32, i32* %10, align 4
  %249 = load i32, i32* %9, align 4
  %250 = icmp slt i32 %248, %249
  br i1 %250, label %251, label %270

251:                                              ; preds = %247
  %252 = load %struct.usb_serial_port*, %struct.usb_serial_port** %6, align 8
  %253 = load i8*, i8** %13, align 8
  %254 = load i8, i8* %253, align 1
  %255 = call i32 @usb_serial_handle_sysrq_char(%struct.usb_serial_port* %252, i8 signext %254)
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %264, label %257

257:                                              ; preds = %251
  %258 = load %struct.usb_serial_port*, %struct.usb_serial_port** %6, align 8
  %259 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %258, i32 0, i32 0
  %260 = load i8*, i8** %13, align 8
  %261 = load i8, i8* %260, align 1
  %262 = load i8, i8* %12, align 1
  %263 = call i32 @tty_insert_flip_char(%struct.TYPE_6__* %259, i8 signext %261, i8 signext %262)
  br label %264

264:                                              ; preds = %257, %251
  br label %265

265:                                              ; preds = %264
  %266 = load i32, i32* %10, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %10, align 4
  %268 = load i8*, i8** %13, align 8
  %269 = getelementptr inbounds i8, i8* %268, i32 1
  store i8* %269, i8** %13, align 8
  br label %247

270:                                              ; preds = %247
  br label %278

271:                                              ; preds = %241, %227
  %272 = load %struct.usb_serial_port*, %struct.usb_serial_port** %6, align 8
  %273 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %272, i32 0, i32 0
  %274 = load i8*, i8** %13, align 8
  %275 = load i8, i8* %12, align 1
  %276 = load i32, i32* %9, align 4
  %277 = call i32 @tty_insert_flip_string_fixed_flag(%struct.TYPE_6__* %273, i8* %274, i8 signext %275, i32 %276)
  br label %278

278:                                              ; preds = %271, %270
  %279 = load i32, i32* %9, align 4
  store i32 %279, i32* %5, align 4
  br label %280

280:                                              ; preds = %278, %144, %18
  %281 = load i32, i32* %5, align 4
  ret i32 %281
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local %struct.tty_struct* @tty_port_tty_get(%struct.TYPE_6__*) #1

declare dso_local i32 @usb_serial_handle_dcd_change(%struct.usb_serial_port*, %struct.tty_struct*, i8 signext) #1

declare dso_local i32 @tty_kref_put(%struct.tty_struct*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @usb_serial_handle_break(%struct.usb_serial_port*) #1

declare dso_local i32 @tty_insert_flip_char(%struct.TYPE_6__*, i8 signext, i8 signext) #1

declare dso_local i32 @usb_serial_handle_sysrq_char(%struct.usb_serial_port*, i8 signext) #1

declare dso_local i32 @tty_insert_flip_string_fixed_flag(%struct.TYPE_6__*, i8*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
