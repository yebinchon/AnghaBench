; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_mxser.c_mxser_set_serial_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_mxser.c_mxser_set_serial_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i64, %struct.mxser_port* }
%struct.mxser_port = type { i64, i64, i64, i32, i32, %struct.tty_port, %struct.TYPE_2__* }
%struct.tty_port = type { i32, i64, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.serial_struct = type { i64, i64, i64, i64, i32, i32, i64, i32 }

@MXSER_PORTS = common dso_local global i64 0, align 8
@ENOTTY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ASYNC_SPD_MASK = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@ASYNC_USR_MASK = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ASYNC_FLAGS = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ASYNC_LOW_LATENCY = common dso_local global i32 0, align 4
@ASYNC_SPD_CUST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.serial_struct*)* @mxser_set_serial_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxser_set_serial_info(%struct.tty_struct* %0, %struct.serial_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.serial_struct*, align 8
  %6 = alloca %struct.mxser_port*, align 8
  %7 = alloca %struct.tty_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.serial_struct* %1, %struct.serial_struct** %5, align 8
  %12 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %13 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %12, i32 0, i32 1
  %14 = load %struct.mxser_port*, %struct.mxser_port** %13, align 8
  store %struct.mxser_port* %14, %struct.mxser_port** %6, align 8
  %15 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %16 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %15, i32 0, i32 5
  store %struct.tty_port* %16, %struct.tty_port** %7, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %18 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MXSER_PORTS, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOTTY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %270

25:                                               ; preds = %2
  %26 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %27 = call i64 @tty_io_error(%struct.tty_struct* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %270

32:                                               ; preds = %25
  %33 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %34 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %33, i32 0, i32 4
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %37 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %32
  %41 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %42 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %41, i32 0, i32 4
  %43 = call i32 @mutex_unlock(i32* %42)
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %270

46:                                               ; preds = %32
  %47 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %48 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %51 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %50, i32 0, i32 6
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %49, %54
  br i1 %55, label %64, label %56

56:                                               ; preds = %46
  %57 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %58 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %61 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %59, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %56, %46
  %65 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %66 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %65, i32 0, i32 4
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %270

70:                                               ; preds = %56
  %71 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %72 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @ASYNC_SPD_MASK, align 4
  %75 = and i32 %73, %74
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %77 = call i32 @capable(i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %134, label %79

79:                                               ; preds = %70
  %80 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %81 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %84 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %82, %85
  br i1 %86, label %111, label %87

87:                                               ; preds = %79
  %88 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %89 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %92 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %91, i32 0, i32 5
  %93 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %90, %94
  br i1 %95, label %111, label %96

96:                                               ; preds = %87
  %97 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %98 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @ASYNC_USR_MASK, align 4
  %101 = xor i32 %100, -1
  %102 = and i32 %99, %101
  %103 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %104 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %103, i32 0, i32 5
  %105 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @ASYNC_USR_MASK, align 4
  %108 = xor i32 %107, -1
  %109 = and i32 %106, %108
  %110 = icmp ne i32 %102, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %96, %87, %79
  %112 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %113 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %112, i32 0, i32 4
  %114 = call i32 @mutex_unlock(i32* %113)
  %115 = load i32, i32* @EPERM, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %3, align 4
  br label %270

117:                                              ; preds = %96
  %118 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %119 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %118, i32 0, i32 5
  %120 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @ASYNC_USR_MASK, align 4
  %123 = xor i32 %122, -1
  %124 = and i32 %121, %123
  %125 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %126 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @ASYNC_USR_MASK, align 4
  %129 = and i32 %127, %128
  %130 = or i32 %124, %129
  %131 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %132 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %131, i32 0, i32 5
  %133 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %132, i32 0, i32 0
  store i32 %130, i32* %133, align 8
  br label %224

134:                                              ; preds = %70
  %135 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %136 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @ASYNC_FLAGS, align 4
  %139 = xor i32 %138, -1
  %140 = and i32 %137, %139
  %141 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %142 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @ASYNC_FLAGS, align 4
  %145 = and i32 %143, %144
  %146 = or i32 %140, %145
  %147 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %148 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 8
  %149 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %150 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = load i32, i32* @HZ, align 4
  %153 = sext i32 %152 to i64
  %154 = mul nsw i64 %151, %153
  %155 = sdiv i64 %154, 100
  %156 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %157 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %156, i32 0, i32 1
  store i64 %155, i64* %157, align 8
  %158 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %159 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @HZ, align 4
  %162 = mul nsw i32 %160, %161
  %163 = sdiv i32 %162, 100
  %164 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %165 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %164, i32 0, i32 2
  store i32 %163, i32* %165, align 8
  %166 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %167 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @ASYNC_LOW_LATENCY, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  %172 = zext i1 %171 to i64
  %173 = select i1 %171, i32 1, i32 0
  %174 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %175 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %174, i32 0, i32 3
  store i32 %173, i32* %175, align 4
  %176 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %177 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @ASYNC_SPD_MASK, align 4
  %180 = and i32 %178, %179
  %181 = load i32, i32* @ASYNC_SPD_CUST, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %223

183:                                              ; preds = %134
  %184 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %185 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %188 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %186, %189
  br i1 %190, label %199, label %191

191:                                              ; preds = %183
  %192 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %193 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %192, i32 0, i32 6
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %196 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %194, %197
  br i1 %198, label %199, label %223

199:                                              ; preds = %191, %183
  %200 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %201 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %200, i32 0, i32 6
  %202 = load i64, i64* %201, align 8
  %203 = icmp eq i64 %202, 0
  br i1 %203, label %204, label %210

204:                                              ; preds = %199
  %205 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %206 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %205, i32 0, i32 4
  %207 = call i32 @mutex_unlock(i32* %206)
  %208 = load i32, i32* @EINVAL, align 4
  %209 = sub nsw i32 0, %208
  store i32 %209, i32* %3, align 4
  br label %270

210:                                              ; preds = %199
  %211 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %212 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %211, i32 0, i32 2
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %215 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %214, i32 0, i32 6
  %216 = load i64, i64* %215, align 8
  %217 = sdiv i64 %213, %216
  %218 = trunc i64 %217 to i32
  store i32 %218, i32* %8, align 4
  %219 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %220 = load i32, i32* %8, align 4
  %221 = load i32, i32* %8, align 4
  %222 = call i32 @tty_encode_baud_rate(%struct.tty_struct* %219, i32 %220, i32 %221)
  br label %223

223:                                              ; preds = %210, %191, %134
  br label %224

224:                                              ; preds = %223, %117
  %225 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %226 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %225, i32 0, i32 7
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %229 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %228, i32 0, i32 4
  store i32 %227, i32* %229, align 4
  %230 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %231 = call i32 @process_txrx_fifo(%struct.mxser_port* %230)
  %232 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %233 = call i64 @tty_port_initialized(%struct.tty_port* %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %255

235:                                              ; preds = %224
  %236 = load i32, i32* %10, align 4
  %237 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %238 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* @ASYNC_SPD_MASK, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %236, %241
  br i1 %242, label %243, label %254

243:                                              ; preds = %235
  %244 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %245 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %244, i32 0, i32 3
  %246 = load i64, i64* %9, align 8
  %247 = call i32 @spin_lock_irqsave(i32* %245, i64 %246)
  %248 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %249 = call i32 @mxser_change_speed(%struct.tty_struct* %248)
  %250 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %251 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %250, i32 0, i32 3
  %252 = load i64, i64* %9, align 8
  %253 = call i32 @spin_unlock_irqrestore(i32* %251, i64 %252)
  br label %254

254:                                              ; preds = %243, %235
  br label %265

255:                                              ; preds = %224
  %256 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %257 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %258 = call i32 @mxser_activate(%struct.tty_port* %256, %struct.tty_struct* %257)
  store i32 %258, i32* %11, align 4
  %259 = load i32, i32* %11, align 4
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %264

261:                                              ; preds = %255
  %262 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %263 = call i32 @tty_port_set_initialized(%struct.tty_port* %262, i32 1)
  br label %264

264:                                              ; preds = %261, %255
  br label %265

265:                                              ; preds = %264, %254
  %266 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %267 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %266, i32 0, i32 4
  %268 = call i32 @mutex_unlock(i32* %267)
  %269 = load i32, i32* %11, align 4
  store i32 %269, i32* %3, align 4
  br label %270

270:                                              ; preds = %265, %204, %111, %64, %40, %29, %22
  %271 = load i32, i32* %3, align 4
  ret i32 %271
}

declare dso_local i64 @tty_io_error(%struct.tty_struct*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @tty_encode_baud_rate(%struct.tty_struct*, i32, i32) #1

declare dso_local i32 @process_txrx_fifo(%struct.mxser_port*) #1

declare dso_local i64 @tty_port_initialized(%struct.tty_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mxser_change_speed(%struct.tty_struct*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mxser_activate(%struct.tty_port*, %struct.tty_struct*) #1

declare dso_local i32 @tty_port_set_initialized(%struct.tty_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
