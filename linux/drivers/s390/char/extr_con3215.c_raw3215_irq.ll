; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_con3215.c_raw3215_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_con3215.c_raw3215_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32 }
%struct.irb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.raw3215_info = type { i8*, i32, i32, i32, i32, i32*, i32*, i32 }
%struct.raw3215_req = type { i32, i32, i32, %struct.raw3215_info* }
%struct.tty_struct = type { i32 }

@RAW3215_READ = common dso_local global i32 0, align 4
@CTRLCHAR_MASK = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\AAn\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"^n\00", align 1
@RAW3215_WRITE = common dso_local global i32 0, align 4
@RAW3215_WORKING = common dso_local global i32 0, align 4
@RAW3215_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*, i64, %struct.irb*)* @raw3215_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raw3215_irq(%struct.ccw_device* %0, i64 %1, %struct.irb* %2) #0 {
  %4 = alloca %struct.ccw_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.irb*, align 8
  %7 = alloca %struct.raw3215_info*, align 8
  %8 = alloca %struct.raw3215_req*, align 8
  %9 = alloca %struct.tty_struct*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.irb* %2, %struct.irb** %6, align 8
  %14 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %15 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %14, i32 0, i32 0
  %16 = call %struct.raw3215_info* @dev_get_drvdata(i32* %15)
  store %struct.raw3215_info* %16, %struct.raw3215_info** %7, align 8
  %17 = load i64, i64* %5, align 8
  %18 = inttoptr i64 %17 to %struct.raw3215_req*
  store %struct.raw3215_req* %18, %struct.raw3215_req** %8, align 8
  %19 = load %struct.raw3215_info*, %struct.raw3215_info** %7, align 8
  %20 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %19, i32 0, i32 7
  %21 = call %struct.tty_struct* @tty_port_tty_get(i32* %20)
  store %struct.tty_struct* %21, %struct.tty_struct** %9, align 8
  %22 = load %struct.irb*, %struct.irb** %6, align 8
  %23 = getelementptr inbounds %struct.irb, %struct.irb* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %10, align 4
  %27 = load %struct.irb*, %struct.irb** %6, align 8
  %28 = getelementptr inbounds %struct.irb, %struct.irb* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %3
  %35 = load %struct.raw3215_info*, %struct.raw3215_info** %7, align 8
  %36 = load %struct.tty_struct*, %struct.tty_struct** %9, align 8
  %37 = call i32 @raw3215_next_io(%struct.raw3215_info* %35, %struct.tty_struct* %36)
  br label %38

38:                                               ; preds = %34, %3
  %39 = load i32, i32* %11, align 4
  %40 = and i32 %39, 1
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* %11, align 4
  %44 = and i32 %43, -2
  store i32 %44, i32* %11, align 4
  br label %45

45:                                               ; preds = %42, %38
  %46 = load i32, i32* %11, align 4
  switch i32 %46, label %228 [
    i32 128, label %47
    i32 8, label %57
    i32 12, label %57
    i32 4, label %82
  ]

47:                                               ; preds = %45
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  br label %271

51:                                               ; preds = %47
  %52 = load %struct.raw3215_info*, %struct.raw3215_info** %7, align 8
  %53 = call i32 @raw3215_mk_read_req(%struct.raw3215_info* %52)
  %54 = load %struct.raw3215_info*, %struct.raw3215_info** %7, align 8
  %55 = load %struct.tty_struct*, %struct.tty_struct** %9, align 8
  %56 = call i32 @raw3215_next_io(%struct.raw3215_info* %54, %struct.tty_struct* %55)
  br label %271

57:                                               ; preds = %45, %45
  %58 = load %struct.raw3215_req*, %struct.raw3215_req** %8, align 8
  %59 = getelementptr inbounds %struct.raw3215_req, %struct.raw3215_req* %58, i32 0, i32 3
  %60 = load %struct.raw3215_info*, %struct.raw3215_info** %59, align 8
  store %struct.raw3215_info* %60, %struct.raw3215_info** %7, align 8
  %61 = icmp eq %struct.raw3215_info* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %272

63:                                               ; preds = %57
  %64 = load %struct.raw3215_req*, %struct.raw3215_req** %8, align 8
  %65 = getelementptr inbounds %struct.raw3215_req, %struct.raw3215_req* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @RAW3215_READ, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %63
  %70 = load %struct.irb*, %struct.irb** %6, align 8
  %71 = getelementptr inbounds %struct.irb, %struct.irb* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.raw3215_req*, %struct.raw3215_req** %8, align 8
  %76 = getelementptr inbounds %struct.raw3215_req, %struct.raw3215_req* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  br label %77

77:                                               ; preds = %69, %63
  %78 = load i32, i32* %11, align 4
  %79 = icmp eq i32 %78, 8
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  br label %271

81:                                               ; preds = %77
  br label %82

82:                                               ; preds = %45, %81
  %83 = load %struct.raw3215_req*, %struct.raw3215_req** %8, align 8
  %84 = getelementptr inbounds %struct.raw3215_req, %struct.raw3215_req* %83, i32 0, i32 3
  %85 = load %struct.raw3215_info*, %struct.raw3215_info** %84, align 8
  store %struct.raw3215_info* %85, %struct.raw3215_info** %7, align 8
  %86 = icmp eq %struct.raw3215_info* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %272

88:                                               ; preds = %82
  %89 = load %struct.raw3215_req*, %struct.raw3215_req** %8, align 8
  %90 = getelementptr inbounds %struct.raw3215_req, %struct.raw3215_req* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @RAW3215_READ, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %175

94:                                               ; preds = %88
  %95 = load %struct.tty_struct*, %struct.tty_struct** %9, align 8
  %96 = icmp ne %struct.tty_struct* %95, null
  br i1 %96, label %97, label %175

97:                                               ; preds = %94
  %98 = load %struct.raw3215_req*, %struct.raw3215_req** %8, align 8
  %99 = getelementptr inbounds %struct.raw3215_req, %struct.raw3215_req* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = sub nsw i32 160, %100
  store i32 %101, i32* %12, align 4
  %102 = load %struct.raw3215_info*, %struct.raw3215_info** %7, align 8
  %103 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @EBCASC(i8* %104, i32 %105)
  %107 = load %struct.raw3215_info*, %struct.raw3215_info** %7, align 8
  %108 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = load i32, i32* %12, align 4
  %111 = load %struct.tty_struct*, %struct.tty_struct** %9, align 8
  %112 = call i32 @ctrlchar_handle(i8* %109, i32 %110, %struct.tty_struct* %111)
  store i32 %112, i32* %13, align 4
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* @CTRLCHAR_MASK, align 4
  %115 = and i32 %113, %114
  switch i32 %115, label %174 [
    i32 128, label %116
    i32 130, label %117
    i32 129, label %126
  ]

116:                                              ; preds = %97
  br label %174

117:                                              ; preds = %97
  %118 = load %struct.raw3215_info*, %struct.raw3215_info** %7, align 8
  %119 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %118, i32 0, i32 7
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* @TTY_NORMAL, align 4
  %122 = call i32 @tty_insert_flip_char(i32* %119, i32 %120, i32 %121)
  %123 = load %struct.raw3215_info*, %struct.raw3215_info** %7, align 8
  %124 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %123, i32 0, i32 7
  %125 = call i32 @tty_flip_buffer_push(i32* %124)
  br label %174

126:                                              ; preds = %97
  %127 = load i32, i32* %12, align 4
  %128 = icmp slt i32 %127, 2
  br i1 %128, label %151, label %129

129:                                              ; preds = %126
  %130 = load %struct.raw3215_info*, %struct.raw3215_info** %7, align 8
  %131 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = load i32, i32* %12, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %132, i64 %134
  %136 = getelementptr inbounds i8, i8* %135, i64 -2
  %137 = ptrtoint i8* %136 to i32
  %138 = call i32 @strncmp(i32 %137, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %160

140:                                              ; preds = %129
  %141 = load %struct.raw3215_info*, %struct.raw3215_info** %7, align 8
  %142 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = load i32, i32* %12, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  %147 = getelementptr inbounds i8, i8* %146, i64 -2
  %148 = ptrtoint i8* %147 to i32
  %149 = call i32 @strncmp(i32 %148, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %160

151:                                              ; preds = %140, %126
  %152 = load %struct.raw3215_info*, %struct.raw3215_info** %7, align 8
  %153 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = load i32, i32* %12, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %154, i64 %156
  store i8 10, i8* %157, align 1
  %158 = load i32, i32* %12, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %12, align 4
  br label %163

160:                                              ; preds = %140, %129
  %161 = load i32, i32* %12, align 4
  %162 = sub nsw i32 %161, 2
  store i32 %162, i32* %12, align 4
  br label %163

163:                                              ; preds = %160, %151
  %164 = load %struct.raw3215_info*, %struct.raw3215_info** %7, align 8
  %165 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %164, i32 0, i32 7
  %166 = load %struct.raw3215_info*, %struct.raw3215_info** %7, align 8
  %167 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %166, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8
  %169 = load i32, i32* %12, align 4
  %170 = call i32 @tty_insert_flip_string(i32* %165, i8* %168, i32 %169)
  %171 = load %struct.raw3215_info*, %struct.raw3215_info** %7, align 8
  %172 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %171, i32 0, i32 7
  %173 = call i32 @tty_flip_buffer_push(i32* %172)
  br label %174

174:                                              ; preds = %97, %163, %117, %116
  br label %197

175:                                              ; preds = %94, %88
  %176 = load %struct.raw3215_req*, %struct.raw3215_req** %8, align 8
  %177 = getelementptr inbounds %struct.raw3215_req, %struct.raw3215_req* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @RAW3215_WRITE, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %196

181:                                              ; preds = %175
  %182 = load %struct.raw3215_req*, %struct.raw3215_req** %8, align 8
  %183 = getelementptr inbounds %struct.raw3215_req, %struct.raw3215_req* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.raw3215_info*, %struct.raw3215_info** %7, align 8
  %186 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 8
  %188 = sub nsw i32 %187, %184
  store i32 %188, i32* %186, align 8
  %189 = load %struct.raw3215_req*, %struct.raw3215_req** %8, align 8
  %190 = getelementptr inbounds %struct.raw3215_req, %struct.raw3215_req* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.raw3215_info*, %struct.raw3215_info** %7, align 8
  %193 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = sub nsw i32 %194, %191
  store i32 %195, i32* %193, align 4
  br label %196

196:                                              ; preds = %181, %175
  br label %197

197:                                              ; preds = %196, %174
  %198 = load i32, i32* @RAW3215_WORKING, align 4
  %199 = xor i32 %198, -1
  %200 = load %struct.raw3215_info*, %struct.raw3215_info** %7, align 8
  %201 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = and i32 %202, %199
  store i32 %203, i32* %201, align 8
  %204 = load %struct.raw3215_req*, %struct.raw3215_req** %8, align 8
  %205 = call i32 @raw3215_free_req(%struct.raw3215_req* %204)
  %206 = load %struct.raw3215_info*, %struct.raw3215_info** %7, align 8
  %207 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %206, i32 0, i32 4
  %208 = call i32 @waitqueue_active(i32* %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %224

210:                                              ; preds = %197
  %211 = load %struct.raw3215_info*, %struct.raw3215_info** %7, align 8
  %212 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %211, i32 0, i32 6
  %213 = load i32*, i32** %212, align 8
  %214 = icmp eq i32* %213, null
  br i1 %214, label %215, label %224

215:                                              ; preds = %210
  %216 = load %struct.raw3215_info*, %struct.raw3215_info** %7, align 8
  %217 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %216, i32 0, i32 5
  %218 = load i32*, i32** %217, align 8
  %219 = icmp eq i32* %218, null
  br i1 %219, label %220, label %224

220:                                              ; preds = %215
  %221 = load %struct.raw3215_info*, %struct.raw3215_info** %7, align 8
  %222 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %221, i32 0, i32 4
  %223 = call i32 @wake_up_interruptible(i32* %222)
  br label %224

224:                                              ; preds = %220, %215, %210, %197
  %225 = load %struct.raw3215_info*, %struct.raw3215_info** %7, align 8
  %226 = load %struct.tty_struct*, %struct.tty_struct** %9, align 8
  %227 = call i32 @raw3215_next_io(%struct.raw3215_info* %225, %struct.tty_struct* %226)
  br label %271

228:                                              ; preds = %45
  %229 = load %struct.raw3215_req*, %struct.raw3215_req** %8, align 8
  %230 = icmp ne %struct.raw3215_req* %229, null
  br i1 %230, label %231, label %267

231:                                              ; preds = %228
  %232 = load %struct.raw3215_req*, %struct.raw3215_req** %8, align 8
  %233 = getelementptr inbounds %struct.raw3215_req, %struct.raw3215_req* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @RAW3215_FREE, align 4
  %236 = icmp ne i32 %234, %235
  br i1 %236, label %237, label %267

237:                                              ; preds = %231
  %238 = load %struct.raw3215_req*, %struct.raw3215_req** %8, align 8
  %239 = getelementptr inbounds %struct.raw3215_req, %struct.raw3215_req* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* @RAW3215_WRITE, align 4
  %242 = icmp eq i32 %240, %241
  br i1 %242, label %243, label %258

243:                                              ; preds = %237
  %244 = load %struct.raw3215_req*, %struct.raw3215_req** %8, align 8
  %245 = getelementptr inbounds %struct.raw3215_req, %struct.raw3215_req* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.raw3215_info*, %struct.raw3215_info** %7, align 8
  %248 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 8
  %250 = sub nsw i32 %249, %246
  store i32 %250, i32* %248, align 8
  %251 = load %struct.raw3215_req*, %struct.raw3215_req** %8, align 8
  %252 = getelementptr inbounds %struct.raw3215_req, %struct.raw3215_req* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.raw3215_info*, %struct.raw3215_info** %7, align 8
  %255 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 4
  %257 = sub nsw i32 %256, %253
  store i32 %257, i32* %255, align 4
  br label %258

258:                                              ; preds = %243, %237
  %259 = load i32, i32* @RAW3215_WORKING, align 4
  %260 = xor i32 %259, -1
  %261 = load %struct.raw3215_info*, %struct.raw3215_info** %7, align 8
  %262 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 8
  %264 = and i32 %263, %260
  store i32 %264, i32* %262, align 8
  %265 = load %struct.raw3215_req*, %struct.raw3215_req** %8, align 8
  %266 = call i32 @raw3215_free_req(%struct.raw3215_req* %265)
  br label %267

267:                                              ; preds = %258, %231, %228
  %268 = load %struct.raw3215_info*, %struct.raw3215_info** %7, align 8
  %269 = load %struct.tty_struct*, %struct.tty_struct** %9, align 8
  %270 = call i32 @raw3215_next_io(%struct.raw3215_info* %268, %struct.tty_struct* %269)
  br label %271

271:                                              ; preds = %267, %224, %80, %51, %50
  br label %272

272:                                              ; preds = %271, %87, %62
  %273 = load %struct.tty_struct*, %struct.tty_struct** %9, align 8
  %274 = call i32 @tty_kref_put(%struct.tty_struct* %273)
  ret void
}

declare dso_local %struct.raw3215_info* @dev_get_drvdata(i32*) #1

declare dso_local %struct.tty_struct* @tty_port_tty_get(i32*) #1

declare dso_local i32 @raw3215_next_io(%struct.raw3215_info*, %struct.tty_struct*) #1

declare dso_local i32 @raw3215_mk_read_req(%struct.raw3215_info*) #1

declare dso_local i32 @EBCASC(i8*, i32) #1

declare dso_local i32 @ctrlchar_handle(i8*, i32, %struct.tty_struct*) #1

declare dso_local i32 @tty_insert_flip_char(i32*, i32, i32) #1

declare dso_local i32 @tty_flip_buffer_push(i32*) #1

declare dso_local i32 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @tty_insert_flip_string(i32*, i8*, i32) #1

declare dso_local i32 @raw3215_free_req(%struct.raw3215_req*) #1

declare dso_local i32 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @tty_kref_put(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
