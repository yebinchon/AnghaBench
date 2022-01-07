; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pmac_zilog.c_pmz_receive_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pmac_zilog.c_pmz_receive_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_pmac_port = type { i8, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8, i32, %struct.TYPE_6__, i32, i64, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.tty_port }
%struct.tty_port = type { i32 }

@R1 = common dso_local global i32 0, align 4
@PAR_ERR = common dso_local global i8 0, align 1
@Rx_OVR = common dso_local global i8 0, align 1
@CRC_ERR = common dso_local global i8 0, align 1
@R0 = common dso_local global i32 0, align 4
@ERR_RES = common dso_local global i32 0, align 4
@PMACZILOG_FLAG_BREAK = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i8 0, align 1
@BRK_ABRT = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [18 x i8] c"pmz: got break !\0A\00", align 1
@TTY_BREAK = common dso_local global i8 0, align 1
@TTY_PARITY = common dso_local global i8 0, align 1
@TTY_FRAME = common dso_local global i8 0, align 1
@TTY_OVERRUN = common dso_local global i8 0, align 1
@Rx_CH_AV = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"pmz: rx irq flood !\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_pmac_port*)* @pmz_receive_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmz_receive_chars(%struct.uart_pmac_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_pmac_port*, align 8
  %4 = alloca %struct.tty_port*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  store %struct.uart_pmac_port* %0, %struct.uart_pmac_port** %3, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %11 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 5
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = icmp eq %struct.TYPE_5__* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = call i32 @WARN_ON(i32 1)
  %17 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %18 = call zeroext i8 @read_zsdata(%struct.uart_pmac_port* %17)
  store i32 0, i32* %2, align 4
  br label %271

19:                                               ; preds = %1
  %20 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %21 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 5
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store %struct.tty_port* %24, %struct.tty_port** %4, align 8
  br label %25

25:                                               ; preds = %19, %265
  store i8 0, i8* %7, align 1
  %26 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %27 = load i32, i32* @R1, align 4
  %28 = call zeroext i8 @read_zsreg(%struct.uart_pmac_port* %26, i32 %27)
  store i8 %28, i8* %6, align 1
  %29 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %30 = call zeroext i8 @read_zsdata(%struct.uart_pmac_port* %29)
  store i8 %30, i8* %5, align 1
  %31 = load i8, i8* %6, align 1
  %32 = zext i8 %31 to i32
  %33 = load i8, i8* @PAR_ERR, align 1
  %34 = zext i8 %33 to i32
  %35 = load i8, i8* @Rx_OVR, align 1
  %36 = zext i8 %35 to i32
  %37 = or i32 %34, %36
  %38 = load i8, i8* @CRC_ERR, align 1
  %39 = zext i8 %38 to i32
  %40 = or i32 %37, %39
  %41 = and i32 %32, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %25
  %44 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %45 = load i32, i32* @R0, align 4
  %46 = load i32, i32* @ERR_RES, align 4
  %47 = call i32 @write_zsreg(%struct.uart_pmac_port* %44, i32 %45, i32 %46)
  %48 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %49 = call i32 @zssync(%struct.uart_pmac_port* %48)
  br label %50

50:                                               ; preds = %43, %25
  %51 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %52 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %51, i32 0, i32 0
  %53 = load i8, i8* %52, align 8
  %54 = zext i8 %53 to i32
  %55 = load i8, i8* %5, align 1
  %56 = zext i8 %55 to i32
  %57 = and i32 %56, %54
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* %5, align 1
  %59 = load i8, i8* %5, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %50
  %63 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %64 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @PMACZILOG_FLAG_BREAK, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %62
  %70 = load i32, i32* @PMACZILOG_FLAG_BREAK, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %73 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %69, %62, %50
  %77 = load i8, i8* %7, align 1
  %78 = icmp ne i8 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  br label %249

80:                                               ; preds = %76
  %81 = load i8, i8* @TTY_NORMAL, align 1
  store i8 %81, i8* %8, align 1
  %82 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %83 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 8
  %88 = load i8, i8* %6, align 1
  %89 = zext i8 %88 to i32
  %90 = load i8, i8* @PAR_ERR, align 1
  %91 = zext i8 %90 to i32
  %92 = load i8, i8* @Rx_OVR, align 1
  %93 = zext i8 %92 to i32
  %94 = or i32 %91, %93
  %95 = load i8, i8* @CRC_ERR, align 1
  %96 = zext i8 %95 to i32
  %97 = or i32 %94, %96
  %98 = load i8, i8* @BRK_ABRT, align 1
  %99 = zext i8 %98 to i32
  %100 = or i32 %97, %99
  %101 = and i32 %89, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %217

103:                                              ; preds = %80
  %104 = load i8, i8* %6, align 1
  %105 = zext i8 %104 to i32
  %106 = load i8, i8* @BRK_ABRT, align 1
  %107 = zext i8 %106 to i32
  %108 = and i32 %105, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %134

110:                                              ; preds = %103
  %111 = call i32 @pmz_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %112 = load i8, i8* @PAR_ERR, align 1
  %113 = zext i8 %112 to i32
  %114 = load i8, i8* @CRC_ERR, align 1
  %115 = zext i8 %114 to i32
  %116 = or i32 %113, %115
  %117 = xor i32 %116, -1
  %118 = load i8, i8* %6, align 1
  %119 = zext i8 %118 to i32
  %120 = and i32 %119, %117
  %121 = trunc i32 %120 to i8
  store i8 %121, i8* %6, align 1
  %122 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %123 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 4
  %128 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %129 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %128, i32 0, i32 2
  %130 = call i64 @uart_handle_break(%struct.TYPE_7__* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %110
  br label %249

133:                                              ; preds = %110
  br label %164

134:                                              ; preds = %103
  %135 = load i8, i8* %6, align 1
  %136 = zext i8 %135 to i32
  %137 = load i8, i8* @PAR_ERR, align 1
  %138 = zext i8 %137 to i32
  %139 = and i32 %136, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %134
  %142 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %143 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %145, align 8
  br label %163

148:                                              ; preds = %134
  %149 = load i8, i8* %6, align 1
  %150 = zext i8 %149 to i32
  %151 = load i8, i8* @CRC_ERR, align 1
  %152 = zext i8 %151 to i32
  %153 = and i32 %150, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %148
  %156 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %157 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %159, align 4
  br label %162

162:                                              ; preds = %155, %148
  br label %163

163:                                              ; preds = %162, %141
  br label %164

164:                                              ; preds = %163, %133
  %165 = load i8, i8* %6, align 1
  %166 = zext i8 %165 to i32
  %167 = load i8, i8* @Rx_OVR, align 1
  %168 = zext i8 %167 to i32
  %169 = and i32 %166, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %164
  %172 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %173 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %175, align 8
  br label %178

178:                                              ; preds = %171, %164
  %179 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %180 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 0
  %182 = load i8, i8* %181, align 8
  %183 = zext i8 %182 to i32
  %184 = load i8, i8* %6, align 1
  %185 = zext i8 %184 to i32
  %186 = and i32 %185, %183
  %187 = trunc i32 %186 to i8
  store i8 %187, i8* %6, align 1
  %188 = load i8, i8* %6, align 1
  %189 = zext i8 %188 to i32
  %190 = load i8, i8* @BRK_ABRT, align 1
  %191 = zext i8 %190 to i32
  %192 = and i32 %189, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %178
  %195 = load i8, i8* @TTY_BREAK, align 1
  store i8 %195, i8* %8, align 1
  br label %216

196:                                              ; preds = %178
  %197 = load i8, i8* %6, align 1
  %198 = zext i8 %197 to i32
  %199 = load i8, i8* @PAR_ERR, align 1
  %200 = zext i8 %199 to i32
  %201 = and i32 %198, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %196
  %204 = load i8, i8* @TTY_PARITY, align 1
  store i8 %204, i8* %8, align 1
  br label %215

205:                                              ; preds = %196
  %206 = load i8, i8* %6, align 1
  %207 = zext i8 %206 to i32
  %208 = load i8, i8* @CRC_ERR, align 1
  %209 = zext i8 %208 to i32
  %210 = and i32 %207, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %205
  %213 = load i8, i8* @TTY_FRAME, align 1
  store i8 %213, i8* %8, align 1
  br label %214

214:                                              ; preds = %212, %205
  br label %215

215:                                              ; preds = %214, %203
  br label %216

216:                                              ; preds = %215, %194
  br label %217

217:                                              ; preds = %216, %80
  %218 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %219 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = icmp eq i32 %221, 255
  br i1 %222, label %232, label %223

223:                                              ; preds = %217
  %224 = load i8, i8* %6, align 1
  %225 = zext i8 %224 to i32
  %226 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %227 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %226, i32 0, i32 2
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = and i32 %225, %229
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %237

232:                                              ; preds = %223, %217
  %233 = load %struct.tty_port*, %struct.tty_port** %4, align 8
  %234 = load i8, i8* %5, align 1
  %235 = load i8, i8* %8, align 1
  %236 = call i32 @tty_insert_flip_char(%struct.tty_port* %233, i8 zeroext %234, i8 zeroext %235)
  br label %237

237:                                              ; preds = %232, %223
  %238 = load i8, i8* %6, align 1
  %239 = zext i8 %238 to i32
  %240 = load i8, i8* @Rx_OVR, align 1
  %241 = zext i8 %240 to i32
  %242 = and i32 %239, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %248

244:                                              ; preds = %237
  %245 = load %struct.tty_port*, %struct.tty_port** %4, align 8
  %246 = load i8, i8* @TTY_OVERRUN, align 1
  %247 = call i32 @tty_insert_flip_char(%struct.tty_port* %245, i8 zeroext 0, i8 zeroext %246)
  br label %248

248:                                              ; preds = %244, %237
  br label %249

249:                                              ; preds = %248, %132, %79
  %250 = load i32, i32* %9, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %9, align 4
  %252 = icmp sgt i32 %251, 1000
  br i1 %252, label %253, label %254

253:                                              ; preds = %249
  br label %267

254:                                              ; preds = %249
  %255 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %256 = load i32, i32* @R0, align 4
  %257 = call zeroext i8 @read_zsreg(%struct.uart_pmac_port* %255, i32 %256)
  store i8 %257, i8* %5, align 1
  %258 = load i8, i8* %5, align 1
  %259 = zext i8 %258 to i32
  %260 = load i8, i8* @Rx_CH_AV, align 1
  %261 = zext i8 %260 to i32
  %262 = and i32 %259, %261
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %265, label %264

264:                                              ; preds = %254
  br label %266

265:                                              ; preds = %254
  br label %25

266:                                              ; preds = %264
  store i32 1, i32* %2, align 4
  br label %271

267:                                              ; preds = %253
  %268 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %269 = call i32 @pmz_interrupt_control(%struct.uart_pmac_port* %268, i32 0)
  %270 = call i32 @pmz_error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %271

271:                                              ; preds = %267, %266, %15
  %272 = load i32, i32* %2, align 4
  ret i32 %272
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local zeroext i8 @read_zsdata(%struct.uart_pmac_port*) #1

declare dso_local zeroext i8 @read_zsreg(%struct.uart_pmac_port*, i32) #1

declare dso_local i32 @write_zsreg(%struct.uart_pmac_port*, i32, i32) #1

declare dso_local i32 @zssync(%struct.uart_pmac_port*) #1

declare dso_local i32 @pmz_debug(i8*) #1

declare dso_local i64 @uart_handle_break(%struct.TYPE_7__*) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_port*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @pmz_interrupt_control(%struct.uart_pmac_port*, i32) #1

declare dso_local i32 @pmz_error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
