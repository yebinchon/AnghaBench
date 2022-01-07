; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_isicom.c_isicom_config_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_isicom.c_isicom_config_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.TYPE_4__, %struct.isi_port* }
%struct.TYPE_4__ = type { i64 }
%struct.isi_port = type { i32, %struct.TYPE_5__, %struct.isi_board* }
%struct.TYPE_5__ = type { i32 }
%struct.isi_board = type { i64, i32, i32 }

@CBAUDEX = common dso_local global i64 0, align 8
@ASYNC_SPD_MASK = common dso_local global i32 0, align 4
@ASYNC_SPD_HI = common dso_local global i32 0, align 4
@ASYNC_SPD_VHI = common dso_local global i32 0, align 4
@ASYNC_SPD_SHI = common dso_local global i32 0, align 4
@ASYNC_SPD_WARP = common dso_local global i32 0, align 4
@linuxb_to_isib = common dso_local global i32* null, align 8
@ISICOM_CS5 = common dso_local global i32 0, align 4
@ISICOM_CS6 = common dso_local global i32 0, align 4
@ISICOM_CS7 = common dso_local global i32 0, align 4
@ISICOM_CS8 = common dso_local global i32 0, align 4
@ISICOM_2SB = common dso_local global i32 0, align 4
@ISICOM_EVPAR = common dso_local global i32 0, align 4
@ISICOM_ODPAR = common dso_local global i32 0, align 4
@ISICOM_CTSRTS = common dso_local global i8 0, align 1
@ISICOM_RESPOND_XONXOFF = common dso_local global i8 0, align 1
@ISICOM_INITIATE_XONXOFF = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @isicom_config_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isicom_config_port(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.isi_port*, align 8
  %4 = alloca %struct.isi_board*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %11 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %12 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %11, i32 0, i32 1
  %13 = load %struct.isi_port*, %struct.isi_port** %12, align 8
  store %struct.isi_port* %13, %struct.isi_port** %3, align 8
  %14 = load %struct.isi_port*, %struct.isi_port** %3, align 8
  %15 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %14, i32 0, i32 2
  %16 = load %struct.isi_board*, %struct.isi_board** %15, align 8
  store %struct.isi_board* %16, %struct.isi_board** %4, align 8
  %17 = load %struct.isi_board*, %struct.isi_board** %4, align 8
  %18 = getelementptr inbounds %struct.isi_board, %struct.isi_board* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %6, align 8
  %20 = load %struct.isi_port*, %struct.isi_port** %3, align 8
  %21 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %8, align 4
  %23 = load %struct.isi_board*, %struct.isi_board** %4, align 8
  %24 = getelementptr inbounds %struct.isi_board, %struct.isi_board* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %9, align 4
  %26 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %27 = call i64 @C_BAUD(%struct.tty_struct* %26)
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @CBAUDEX, align 8
  %30 = and i64 %28, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %54

32:                                               ; preds = %1
  %33 = load i64, i64* @CBAUDEX, align 8
  %34 = xor i64 %33, -1
  %35 = load i64, i64* %5, align 8
  %36 = and i64 %35, %34
  store i64 %36, i64* %5, align 8
  %37 = load i64, i64* %5, align 8
  %38 = icmp ult i64 %37, 1
  br i1 %38, label %42, label %39

39:                                               ; preds = %32
  %40 = load i64, i64* %5, align 8
  %41 = icmp ugt i64 %40, 4
  br i1 %41, label %42, label %50

42:                                               ; preds = %39, %32
  %43 = load i64, i64* @CBAUDEX, align 8
  %44 = xor i64 %43, -1
  %45 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %46 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = and i64 %48, %44
  store i64 %49, i64* %47, align 8
  br label %53

50:                                               ; preds = %39
  %51 = load i64, i64* %5, align 8
  %52 = add i64 %51, 15
  store i64 %52, i64* %5, align 8
  br label %53

53:                                               ; preds = %50, %42
  br label %54

54:                                               ; preds = %53, %1
  %55 = load i64, i64* %5, align 8
  %56 = icmp eq i64 %55, 15
  br i1 %56, label %57, label %106

57:                                               ; preds = %54
  %58 = load %struct.isi_port*, %struct.isi_port** %3, align 8
  %59 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @ASYNC_SPD_MASK, align 4
  %63 = and i32 %61, %62
  %64 = load i32, i32* @ASYNC_SPD_HI, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %57
  %67 = load i64, i64* %5, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %5, align 8
  br label %69

69:                                               ; preds = %66, %57
  %70 = load %struct.isi_port*, %struct.isi_port** %3, align 8
  %71 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @ASYNC_SPD_MASK, align 4
  %75 = and i32 %73, %74
  %76 = load i32, i32* @ASYNC_SPD_VHI, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %69
  %79 = load i64, i64* %5, align 8
  %80 = add i64 %79, 2
  store i64 %80, i64* %5, align 8
  br label %81

81:                                               ; preds = %78, %69
  %82 = load %struct.isi_port*, %struct.isi_port** %3, align 8
  %83 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @ASYNC_SPD_MASK, align 4
  %87 = and i32 %85, %86
  %88 = load i32, i32* @ASYNC_SPD_SHI, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %81
  %91 = load i64, i64* %5, align 8
  %92 = add i64 %91, 3
  store i64 %92, i64* %5, align 8
  br label %93

93:                                               ; preds = %90, %81
  %94 = load %struct.isi_port*, %struct.isi_port** %3, align 8
  %95 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @ASYNC_SPD_MASK, align 4
  %99 = and i32 %97, %98
  %100 = load i32, i32* @ASYNC_SPD_WARP, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %93
  %103 = load i64, i64* %5, align 8
  %104 = add i64 %103, 4
  store i64 %104, i64* %5, align 8
  br label %105

105:                                              ; preds = %102, %93
  br label %106

106:                                              ; preds = %105, %54
  %107 = load i32*, i32** @linuxb_to_isib, align 8
  %108 = load i64, i64* %5, align 8
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, -1
  br i1 %111, label %112, label %115

112:                                              ; preds = %106
  %113 = load %struct.isi_port*, %struct.isi_port** %3, align 8
  %114 = call i32 @drop_dtr(%struct.isi_port* %113)
  br label %277

115:                                              ; preds = %106
  %116 = load %struct.isi_port*, %struct.isi_port** %3, align 8
  %117 = call i32 @raise_dtr(%struct.isi_port* %116)
  br label %118

118:                                              ; preds = %115
  %119 = load i64, i64* %6, align 8
  %120 = call i64 @WaitTillCardIsFree(i64 %119)
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %186

122:                                              ; preds = %118
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* %9, align 4
  %125 = shl i32 %123, %124
  %126 = or i32 32768, %125
  %127 = or i32 %126, 3
  %128 = load i64, i64* %6, align 8
  %129 = call i32 @outw(i32 %127, i64 %128)
  %130 = load i32*, i32** @linuxb_to_isib, align 8
  %131 = load i64, i64* %5, align 8
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = shl i32 %133, 8
  %135 = or i32 %134, 3
  %136 = load i64, i64* %6, align 8
  %137 = call i32 @outw(i32 %135, i64 %136)
  store i32 0, i32* %7, align 4
  %138 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %139 = call i32 @C_CSIZE(%struct.tty_struct* %138)
  switch i32 %139, label %156 [
    i32 131, label %140
    i32 130, label %144
    i32 129, label %148
    i32 128, label %152
  ]

140:                                              ; preds = %122
  %141 = load i32, i32* @ISICOM_CS5, align 4
  %142 = load i32, i32* %7, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %7, align 4
  br label %156

144:                                              ; preds = %122
  %145 = load i32, i32* @ISICOM_CS6, align 4
  %146 = load i32, i32* %7, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %7, align 4
  br label %156

148:                                              ; preds = %122
  %149 = load i32, i32* @ISICOM_CS7, align 4
  %150 = load i32, i32* %7, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %7, align 4
  br label %156

152:                                              ; preds = %122
  %153 = load i32, i32* @ISICOM_CS8, align 4
  %154 = load i32, i32* %7, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %7, align 4
  br label %156

156:                                              ; preds = %122, %152, %148, %144, %140
  %157 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %158 = call i64 @C_CSTOPB(%struct.tty_struct* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %156
  %161 = load i32, i32* @ISICOM_2SB, align 4
  %162 = load i32, i32* %7, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %7, align 4
  br label %164

164:                                              ; preds = %160, %156
  %165 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %166 = call i64 @C_PARENB(%struct.tty_struct* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %180

168:                                              ; preds = %164
  %169 = load i32, i32* @ISICOM_EVPAR, align 4
  %170 = load i32, i32* %7, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %7, align 4
  %172 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %173 = call i64 @C_PARODD(%struct.tty_struct* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %168
  %176 = load i32, i32* @ISICOM_ODPAR, align 4
  %177 = load i32, i32* %7, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %7, align 4
  br label %179

179:                                              ; preds = %175, %168
  br label %180

180:                                              ; preds = %179, %164
  %181 = load i32, i32* %7, align 4
  %182 = load i64, i64* %6, align 8
  %183 = call i32 @outw(i32 %181, i64 %182)
  %184 = load i64, i64* %6, align 8
  %185 = call i32 @InterruptTheCard(i64 %184)
  br label %186

186:                                              ; preds = %180, %118
  %187 = load %struct.isi_port*, %struct.isi_port** %3, align 8
  %188 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %187, i32 0, i32 1
  %189 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %190 = call i32 @C_CLOCAL(%struct.tty_struct* %189)
  %191 = icmp ne i32 %190, 0
  %192 = xor i1 %191, true
  %193 = zext i1 %192 to i32
  %194 = call i32 @tty_port_set_check_carrier(%struct.TYPE_5__* %188, i32 %193)
  store i8 0, i8* %10, align 1
  %195 = load %struct.isi_port*, %struct.isi_port** %3, align 8
  %196 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %195, i32 0, i32 1
  %197 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %198 = call i64 @C_CRTSCTS(%struct.tty_struct* %197)
  %199 = call i32 @tty_port_set_cts_flow(%struct.TYPE_5__* %196, i64 %198)
  %200 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %201 = call i64 @C_CRTSCTS(%struct.tty_struct* %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %210

203:                                              ; preds = %186
  %204 = load i8, i8* @ISICOM_CTSRTS, align 1
  %205 = zext i8 %204 to i32
  %206 = load i8, i8* %10, align 1
  %207 = zext i8 %206 to i32
  %208 = or i32 %207, %205
  %209 = trunc i32 %208 to i8
  store i8 %209, i8* %10, align 1
  br label %210

210:                                              ; preds = %203, %186
  %211 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %212 = call i64 @I_IXON(%struct.tty_struct* %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %221

214:                                              ; preds = %210
  %215 = load i8, i8* @ISICOM_RESPOND_XONXOFF, align 1
  %216 = zext i8 %215 to i32
  %217 = load i8, i8* %10, align 1
  %218 = zext i8 %217 to i32
  %219 = or i32 %218, %216
  %220 = trunc i32 %219 to i8
  store i8 %220, i8* %10, align 1
  br label %221

221:                                              ; preds = %214, %210
  %222 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %223 = call i64 @I_IXOFF(%struct.tty_struct* %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %232

225:                                              ; preds = %221
  %226 = load i8, i8* @ISICOM_INITIATE_XONXOFF, align 1
  %227 = zext i8 %226 to i32
  %228 = load i8, i8* %10, align 1
  %229 = zext i8 %228 to i32
  %230 = or i32 %229, %227
  %231 = trunc i32 %230 to i8
  store i8 %231, i8* %10, align 1
  br label %232

232:                                              ; preds = %225, %221
  %233 = load i64, i64* %6, align 8
  %234 = call i64 @WaitTillCardIsFree(i64 %233)
  %235 = icmp eq i64 %234, 0
  br i1 %235, label %236, label %260

236:                                              ; preds = %232
  %237 = load i32, i32* %8, align 4
  %238 = load i32, i32* %9, align 4
  %239 = shl i32 %237, %238
  %240 = or i32 32768, %239
  %241 = or i32 %240, 4
  %242 = load i64, i64* %6, align 8
  %243 = call i32 @outw(i32 %241, i64 %242)
  %244 = load i8, i8* %10, align 1
  %245 = zext i8 %244 to i32
  %246 = shl i32 %245, 8
  %247 = or i32 %246, 5
  %248 = load i64, i64* %6, align 8
  %249 = call i32 @outw(i32 %247, i64 %248)
  %250 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %251 = call i32 @STOP_CHAR(%struct.tty_struct* %250)
  %252 = shl i32 %251, 8
  %253 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %254 = call i32 @START_CHAR(%struct.tty_struct* %253)
  %255 = or i32 %252, %254
  %256 = load i64, i64* %6, align 8
  %257 = call i32 @outw(i32 %255, i64 %256)
  %258 = load i64, i64* %6, align 8
  %259 = call i32 @InterruptTheCard(i64 %258)
  br label %260

260:                                              ; preds = %236, %232
  %261 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %262 = call i64 @C_CREAD(%struct.tty_struct* %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %277

264:                                              ; preds = %260
  %265 = load i32, i32* %8, align 4
  %266 = shl i32 1, %265
  %267 = load %struct.isi_board*, %struct.isi_board** %4, align 8
  %268 = getelementptr inbounds %struct.isi_board, %struct.isi_board* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 4
  %270 = or i32 %269, %266
  store i32 %270, i32* %268, align 4
  %271 = load %struct.isi_board*, %struct.isi_board** %4, align 8
  %272 = getelementptr inbounds %struct.isi_board, %struct.isi_board* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 4
  %274 = load i64, i64* %6, align 8
  %275 = add i64 %274, 2
  %276 = call i32 @outw(i32 %273, i64 %275)
  br label %277

277:                                              ; preds = %112, %264, %260
  ret void
}

declare dso_local i64 @C_BAUD(%struct.tty_struct*) #1

declare dso_local i32 @drop_dtr(%struct.isi_port*) #1

declare dso_local i32 @raise_dtr(%struct.isi_port*) #1

declare dso_local i64 @WaitTillCardIsFree(i64) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @C_CSIZE(%struct.tty_struct*) #1

declare dso_local i64 @C_CSTOPB(%struct.tty_struct*) #1

declare dso_local i64 @C_PARENB(%struct.tty_struct*) #1

declare dso_local i64 @C_PARODD(%struct.tty_struct*) #1

declare dso_local i32 @InterruptTheCard(i64) #1

declare dso_local i32 @tty_port_set_check_carrier(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @C_CLOCAL(%struct.tty_struct*) #1

declare dso_local i32 @tty_port_set_cts_flow(%struct.TYPE_5__*, i64) #1

declare dso_local i64 @C_CRTSCTS(%struct.tty_struct*) #1

declare dso_local i64 @I_IXON(%struct.tty_struct*) #1

declare dso_local i64 @I_IXOFF(%struct.tty_struct*) #1

declare dso_local i32 @STOP_CHAR(%struct.tty_struct*) #1

declare dso_local i32 @START_CHAR(%struct.tty_struct*) #1

declare dso_local i64 @C_CREAD(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
