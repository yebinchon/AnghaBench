; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_n_tty_receive_char_special.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_n_tty_receive_char_special.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, i32, i32, i64, %struct.n_tty_data* }
%struct.n_tty_data = type { i32, i64, i64, i32, i64 }

@SIGINT = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@SIGTSTP = common dso_local global i32 0, align 4
@__DISABLED_CHAR = common dso_local global i8 0, align 1
@N_TTY_BUF_SIZE = common dso_local global i32 0, align 4
@SIGIO = common dso_local global i32 0, align 4
@POLL_IN = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i8)* @n_tty_receive_char_special to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @n_tty_receive_char_special(%struct.tty_struct* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.n_tty_data*, align 8
  %7 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i8 %1, i8* %5, align 1
  %8 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 4
  %10 = load %struct.n_tty_data*, %struct.n_tty_data** %9, align 8
  store %struct.n_tty_data* %10, %struct.n_tty_data** %6, align 8
  %11 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %12 = call i64 @I_IXON(%struct.tty_struct* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %2
  %15 = load i8, i8* %5, align 1
  %16 = zext i8 %15 to i32
  %17 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %18 = call zeroext i8 @START_CHAR(%struct.tty_struct* %17)
  %19 = zext i8 %18 to i32
  %20 = icmp eq i32 %16, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %23 = call i32 @start_tty(%struct.tty_struct* %22)
  %24 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %25 = call i32 @process_echoes(%struct.tty_struct* %24)
  store i32 0, i32* %3, align 4
  br label %400

26:                                               ; preds = %14
  %27 = load i8, i8* %5, align 1
  %28 = zext i8 %27 to i32
  %29 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %30 = call zeroext i8 @STOP_CHAR(%struct.tty_struct* %29)
  %31 = zext i8 %30 to i32
  %32 = icmp eq i32 %28, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %35 = call i32 @stop_tty(%struct.tty_struct* %34)
  store i32 0, i32* %3, align 4
  br label %400

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36, %2
  %38 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %39 = call i64 @L_ISIG(%struct.tty_struct* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %80

41:                                               ; preds = %37
  %42 = load i8, i8* %5, align 1
  %43 = zext i8 %42 to i32
  %44 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %45 = call zeroext i8 @INTR_CHAR(%struct.tty_struct* %44)
  %46 = zext i8 %45 to i32
  %47 = icmp eq i32 %43, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %50 = load i32, i32* @SIGINT, align 4
  %51 = load i8, i8* %5, align 1
  %52 = call i32 @n_tty_receive_signal_char(%struct.tty_struct* %49, i32 %50, i8 zeroext %51)
  store i32 0, i32* %3, align 4
  br label %400

53:                                               ; preds = %41
  %54 = load i8, i8* %5, align 1
  %55 = zext i8 %54 to i32
  %56 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %57 = call zeroext i8 @QUIT_CHAR(%struct.tty_struct* %56)
  %58 = zext i8 %57 to i32
  %59 = icmp eq i32 %55, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %53
  %61 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %62 = load i32, i32* @SIGQUIT, align 4
  %63 = load i8, i8* %5, align 1
  %64 = call i32 @n_tty_receive_signal_char(%struct.tty_struct* %61, i32 %62, i8 zeroext %63)
  store i32 0, i32* %3, align 4
  br label %400

65:                                               ; preds = %53
  %66 = load i8, i8* %5, align 1
  %67 = zext i8 %66 to i32
  %68 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %69 = call zeroext i8 @SUSP_CHAR(%struct.tty_struct* %68)
  %70 = zext i8 %69 to i32
  %71 = icmp eq i32 %67, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %65
  %73 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %74 = load i32, i32* @SIGTSTP, align 4
  %75 = load i8, i8* %5, align 1
  %76 = call i32 @n_tty_receive_signal_char(%struct.tty_struct* %73, i32 %74, i8 zeroext %75)
  store i32 0, i32* %3, align 4
  br label %400

77:                                               ; preds = %65
  br label %78

78:                                               ; preds = %77
  br label %79

79:                                               ; preds = %78
  br label %80

80:                                               ; preds = %79, %37
  %81 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %82 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %103

85:                                               ; preds = %80
  %86 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %87 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %103, label %90

90:                                               ; preds = %85
  %91 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %92 = call i64 @I_IXON(%struct.tty_struct* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %90
  %95 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %96 = call i64 @I_IXANY(%struct.tty_struct* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %100 = call i32 @start_tty(%struct.tty_struct* %99)
  %101 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %102 = call i32 @process_echoes(%struct.tty_struct* %101)
  br label %103

103:                                              ; preds = %98, %94, %90, %85, %80
  %104 = load i8, i8* %5, align 1
  %105 = zext i8 %104 to i32
  %106 = icmp eq i32 %105, 13
  br i1 %106, label %107, label %118

107:                                              ; preds = %103
  %108 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %109 = call i64 @I_IGNCR(%struct.tty_struct* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  store i32 0, i32* %3, align 4
  br label %400

112:                                              ; preds = %107
  %113 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %114 = call i64 @I_ICRNL(%struct.tty_struct* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  store i8 10, i8* %5, align 1
  br label %117

117:                                              ; preds = %116, %112
  br label %128

118:                                              ; preds = %103
  %119 = load i8, i8* %5, align 1
  %120 = zext i8 %119 to i32
  %121 = icmp eq i32 %120, 10
  br i1 %121, label %122, label %127

122:                                              ; preds = %118
  %123 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %124 = call i64 @I_INLCR(%struct.tty_struct* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  store i8 13, i8* %5, align 1
  br label %127

127:                                              ; preds = %126, %122, %118
  br label %128

128:                                              ; preds = %127, %117
  %129 = load %struct.n_tty_data*, %struct.n_tty_data** %6, align 8
  %130 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %129, i32 0, i32 4
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %353

133:                                              ; preds = %128
  %134 = load i8, i8* %5, align 1
  %135 = zext i8 %134 to i32
  %136 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %137 = call zeroext i8 @ERASE_CHAR(%struct.tty_struct* %136)
  %138 = zext i8 %137 to i32
  %139 = icmp eq i32 %135, %138
  br i1 %139, label %158, label %140

140:                                              ; preds = %133
  %141 = load i8, i8* %5, align 1
  %142 = zext i8 %141 to i32
  %143 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %144 = call zeroext i8 @KILL_CHAR(%struct.tty_struct* %143)
  %145 = zext i8 %144 to i32
  %146 = icmp eq i32 %142, %145
  br i1 %146, label %158, label %147

147:                                              ; preds = %140
  %148 = load i8, i8* %5, align 1
  %149 = zext i8 %148 to i32
  %150 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %151 = call zeroext i8 @WERASE_CHAR(%struct.tty_struct* %150)
  %152 = zext i8 %151 to i32
  %153 = icmp eq i32 %149, %152
  br i1 %153, label %154, label %164

154:                                              ; preds = %147
  %155 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %156 = call i64 @L_IEXTEN(%struct.tty_struct* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %154, %140, %133
  %159 = load i8, i8* %5, align 1
  %160 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %161 = call i32 @eraser(i8 zeroext %159, %struct.tty_struct* %160)
  %162 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %163 = call i32 @commit_echoes(%struct.tty_struct* %162)
  store i32 0, i32* %3, align 4
  br label %400

164:                                              ; preds = %154, %147
  %165 = load i8, i8* %5, align 1
  %166 = zext i8 %165 to i32
  %167 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %168 = call zeroext i8 @LNEXT_CHAR(%struct.tty_struct* %167)
  %169 = zext i8 %168 to i32
  %170 = icmp eq i32 %166, %169
  br i1 %170, label %171, label %196

171:                                              ; preds = %164
  %172 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %173 = call i64 @L_IEXTEN(%struct.tty_struct* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %196

175:                                              ; preds = %171
  %176 = load %struct.n_tty_data*, %struct.n_tty_data** %6, align 8
  %177 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %176, i32 0, i32 0
  store i32 1, i32* %177, align 8
  %178 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %179 = call i64 @L_ECHO(%struct.tty_struct* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %195

181:                                              ; preds = %175
  %182 = load %struct.n_tty_data*, %struct.n_tty_data** %6, align 8
  %183 = call i32 @finish_erasing(%struct.n_tty_data* %182)
  %184 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %185 = call i64 @L_ECHOCTL(%struct.tty_struct* %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %194

187:                                              ; preds = %181
  %188 = load %struct.n_tty_data*, %struct.n_tty_data** %6, align 8
  %189 = call i32 @echo_char_raw(i8 signext 94, %struct.n_tty_data* %188)
  %190 = load %struct.n_tty_data*, %struct.n_tty_data** %6, align 8
  %191 = call i32 @echo_char_raw(i8 signext 8, %struct.n_tty_data* %190)
  %192 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %193 = call i32 @commit_echoes(%struct.tty_struct* %192)
  br label %194

194:                                              ; preds = %187, %181
  br label %195

195:                                              ; preds = %194, %175
  store i32 1, i32* %3, align 4
  br label %400

196:                                              ; preds = %171, %164
  %197 = load i8, i8* %5, align 1
  %198 = zext i8 %197 to i32
  %199 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %200 = call zeroext i8 @REPRINT_CHAR(%struct.tty_struct* %199)
  %201 = zext i8 %200 to i32
  %202 = icmp eq i32 %198, %201
  br i1 %202, label %203, label %241

203:                                              ; preds = %196
  %204 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %205 = call i64 @L_ECHO(%struct.tty_struct* %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %241

207:                                              ; preds = %203
  %208 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %209 = call i64 @L_IEXTEN(%struct.tty_struct* %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %241

211:                                              ; preds = %207
  %212 = load %struct.n_tty_data*, %struct.n_tty_data** %6, align 8
  %213 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  store i64 %214, i64* %7, align 8
  %215 = load %struct.n_tty_data*, %struct.n_tty_data** %6, align 8
  %216 = call i32 @finish_erasing(%struct.n_tty_data* %215)
  %217 = load i8, i8* %5, align 1
  %218 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %219 = call i32 @echo_char(i8 zeroext %217, %struct.tty_struct* %218)
  %220 = load %struct.n_tty_data*, %struct.n_tty_data** %6, align 8
  %221 = call i32 @echo_char_raw(i8 signext 10, %struct.n_tty_data* %220)
  br label %222

222:                                              ; preds = %230, %211
  %223 = load i64, i64* %7, align 8
  %224 = call i64 @MASK(i64 %223)
  %225 = load %struct.n_tty_data*, %struct.n_tty_data** %6, align 8
  %226 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %225, i32 0, i32 2
  %227 = load i64, i64* %226, align 8
  %228 = call i64 @MASK(i64 %227)
  %229 = icmp ne i64 %224, %228
  br i1 %229, label %230, label %238

230:                                              ; preds = %222
  %231 = load %struct.n_tty_data*, %struct.n_tty_data** %6, align 8
  %232 = load i64, i64* %7, align 8
  %233 = call zeroext i8 @read_buf(%struct.n_tty_data* %231, i64 %232)
  %234 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %235 = call i32 @echo_char(i8 zeroext %233, %struct.tty_struct* %234)
  %236 = load i64, i64* %7, align 8
  %237 = add i64 %236, 1
  store i64 %237, i64* %7, align 8
  br label %222

238:                                              ; preds = %222
  %239 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %240 = call i32 @commit_echoes(%struct.tty_struct* %239)
  store i32 0, i32* %3, align 4
  br label %400

241:                                              ; preds = %207, %203, %196
  %242 = load i8, i8* %5, align 1
  %243 = zext i8 %242 to i32
  %244 = icmp eq i32 %243, 10
  br i1 %244, label %245, label %259

245:                                              ; preds = %241
  %246 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %247 = call i64 @L_ECHO(%struct.tty_struct* %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %253, label %249

249:                                              ; preds = %245
  %250 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %251 = call i64 @L_ECHONL(%struct.tty_struct* %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %258

253:                                              ; preds = %249, %245
  %254 = load %struct.n_tty_data*, %struct.n_tty_data** %6, align 8
  %255 = call i32 @echo_char_raw(i8 signext 10, %struct.n_tty_data* %254)
  %256 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %257 = call i32 @commit_echoes(%struct.tty_struct* %256)
  br label %258

258:                                              ; preds = %253, %249
  br label %320

259:                                              ; preds = %241
  %260 = load i8, i8* %5, align 1
  %261 = zext i8 %260 to i32
  %262 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %263 = call zeroext i8 @EOF_CHAR(%struct.tty_struct* %262)
  %264 = zext i8 %263 to i32
  %265 = icmp eq i32 %261, %264
  br i1 %265, label %266, label %268

266:                                              ; preds = %259
  %267 = load i8, i8* @__DISABLED_CHAR, align 1
  store i8 %267, i8* %5, align 1
  br label %320

268:                                              ; preds = %259
  %269 = load i8, i8* %5, align 1
  %270 = zext i8 %269 to i32
  %271 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %272 = call zeroext i8 @EOL_CHAR(%struct.tty_struct* %271)
  %273 = zext i8 %272 to i32
  %274 = icmp eq i32 %270, %273
  br i1 %274, label %286, label %275

275:                                              ; preds = %268
  %276 = load i8, i8* %5, align 1
  %277 = zext i8 %276 to i32
  %278 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %279 = call zeroext i8 @EOL2_CHAR(%struct.tty_struct* %278)
  %280 = zext i8 %279 to i32
  %281 = icmp eq i32 %277, %280
  br i1 %281, label %282, label %352

282:                                              ; preds = %275
  %283 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %284 = call i64 @L_IEXTEN(%struct.tty_struct* %283)
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %352

286:                                              ; preds = %282, %268
  %287 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %288 = call i64 @L_ECHO(%struct.tty_struct* %287)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %307

290:                                              ; preds = %286
  %291 = load %struct.n_tty_data*, %struct.n_tty_data** %6, align 8
  %292 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %291, i32 0, i32 1
  %293 = load i64, i64* %292, align 8
  %294 = load %struct.n_tty_data*, %struct.n_tty_data** %6, align 8
  %295 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %294, i32 0, i32 2
  %296 = load i64, i64* %295, align 8
  %297 = icmp eq i64 %293, %296
  br i1 %297, label %298, label %301

298:                                              ; preds = %290
  %299 = load %struct.n_tty_data*, %struct.n_tty_data** %6, align 8
  %300 = call i32 @echo_set_canon_col(%struct.n_tty_data* %299)
  br label %301

301:                                              ; preds = %298, %290
  %302 = load i8, i8* %5, align 1
  %303 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %304 = call i32 @echo_char(i8 zeroext %302, %struct.tty_struct* %303)
  %305 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %306 = call i32 @commit_echoes(%struct.tty_struct* %305)
  br label %307

307:                                              ; preds = %301, %286
  %308 = load i8, i8* %5, align 1
  %309 = zext i8 %308 to i32
  %310 = icmp eq i32 %309, 255
  br i1 %310, label %311, label %319

311:                                              ; preds = %307
  %312 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %313 = call i64 @I_PARMRK(%struct.tty_struct* %312)
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %319

315:                                              ; preds = %311
  %316 = load i8, i8* %5, align 1
  %317 = load %struct.n_tty_data*, %struct.n_tty_data** %6, align 8
  %318 = call i32 @put_tty_queue(i8 zeroext %316, %struct.n_tty_data* %317)
  br label %319

319:                                              ; preds = %315, %311, %307
  br label %320

320:                                              ; preds = %319, %266, %258
  %321 = load %struct.n_tty_data*, %struct.n_tty_data** %6, align 8
  %322 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %321, i32 0, i32 2
  %323 = load i64, i64* %322, align 8
  %324 = load i32, i32* @N_TTY_BUF_SIZE, align 4
  %325 = sub nsw i32 %324, 1
  %326 = sext i32 %325 to i64
  %327 = and i64 %323, %326
  %328 = trunc i64 %327 to i32
  %329 = load %struct.n_tty_data*, %struct.n_tty_data** %6, align 8
  %330 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %329, i32 0, i32 3
  %331 = load i32, i32* %330, align 8
  %332 = call i32 @set_bit(i32 %328, i32 %331)
  %333 = load i8, i8* %5, align 1
  %334 = load %struct.n_tty_data*, %struct.n_tty_data** %6, align 8
  %335 = call i32 @put_tty_queue(i8 zeroext %333, %struct.n_tty_data* %334)
  %336 = load %struct.n_tty_data*, %struct.n_tty_data** %6, align 8
  %337 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %336, i32 0, i32 1
  %338 = load %struct.n_tty_data*, %struct.n_tty_data** %6, align 8
  %339 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %338, i32 0, i32 2
  %340 = load i64, i64* %339, align 8
  %341 = trunc i64 %340 to i32
  %342 = call i32 @smp_store_release(i64* %337, i32 %341)
  %343 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %344 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %343, i32 0, i32 1
  %345 = load i32, i32* @SIGIO, align 4
  %346 = load i32, i32* @POLL_IN, align 4
  %347 = call i32 @kill_fasync(i32* %344, i32 %345, i32 %346)
  %348 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %349 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %348, i32 0, i32 0
  %350 = load i32, i32* @EPOLLIN, align 4
  %351 = call i32 @wake_up_interruptible_poll(i32* %349, i32 %350)
  store i32 0, i32* %3, align 4
  br label %400

352:                                              ; preds = %282, %275
  br label %353

353:                                              ; preds = %352, %128
  %354 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %355 = call i64 @L_ECHO(%struct.tty_struct* %354)
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %357, label %384

357:                                              ; preds = %353
  %358 = load %struct.n_tty_data*, %struct.n_tty_data** %6, align 8
  %359 = call i32 @finish_erasing(%struct.n_tty_data* %358)
  %360 = load i8, i8* %5, align 1
  %361 = zext i8 %360 to i32
  %362 = icmp eq i32 %361, 10
  br i1 %362, label %363, label %366

363:                                              ; preds = %357
  %364 = load %struct.n_tty_data*, %struct.n_tty_data** %6, align 8
  %365 = call i32 @echo_char_raw(i8 signext 10, %struct.n_tty_data* %364)
  br label %381

366:                                              ; preds = %357
  %367 = load %struct.n_tty_data*, %struct.n_tty_data** %6, align 8
  %368 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %367, i32 0, i32 1
  %369 = load i64, i64* %368, align 8
  %370 = load %struct.n_tty_data*, %struct.n_tty_data** %6, align 8
  %371 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %370, i32 0, i32 2
  %372 = load i64, i64* %371, align 8
  %373 = icmp eq i64 %369, %372
  br i1 %373, label %374, label %377

374:                                              ; preds = %366
  %375 = load %struct.n_tty_data*, %struct.n_tty_data** %6, align 8
  %376 = call i32 @echo_set_canon_col(%struct.n_tty_data* %375)
  br label %377

377:                                              ; preds = %374, %366
  %378 = load i8, i8* %5, align 1
  %379 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %380 = call i32 @echo_char(i8 zeroext %378, %struct.tty_struct* %379)
  br label %381

381:                                              ; preds = %377, %363
  %382 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %383 = call i32 @commit_echoes(%struct.tty_struct* %382)
  br label %384

384:                                              ; preds = %381, %353
  %385 = load i8, i8* %5, align 1
  %386 = zext i8 %385 to i32
  %387 = icmp eq i32 %386, 255
  br i1 %387, label %388, label %396

388:                                              ; preds = %384
  %389 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %390 = call i64 @I_PARMRK(%struct.tty_struct* %389)
  %391 = icmp ne i64 %390, 0
  br i1 %391, label %392, label %396

392:                                              ; preds = %388
  %393 = load i8, i8* %5, align 1
  %394 = load %struct.n_tty_data*, %struct.n_tty_data** %6, align 8
  %395 = call i32 @put_tty_queue(i8 zeroext %393, %struct.n_tty_data* %394)
  br label %396

396:                                              ; preds = %392, %388, %384
  %397 = load i8, i8* %5, align 1
  %398 = load %struct.n_tty_data*, %struct.n_tty_data** %6, align 8
  %399 = call i32 @put_tty_queue(i8 zeroext %397, %struct.n_tty_data* %398)
  store i32 0, i32* %3, align 4
  br label %400

400:                                              ; preds = %396, %320, %238, %195, %158, %111, %72, %60, %48, %33, %21
  %401 = load i32, i32* %3, align 4
  ret i32 %401
}

declare dso_local i64 @I_IXON(%struct.tty_struct*) #1

declare dso_local zeroext i8 @START_CHAR(%struct.tty_struct*) #1

declare dso_local i32 @start_tty(%struct.tty_struct*) #1

declare dso_local i32 @process_echoes(%struct.tty_struct*) #1

declare dso_local zeroext i8 @STOP_CHAR(%struct.tty_struct*) #1

declare dso_local i32 @stop_tty(%struct.tty_struct*) #1

declare dso_local i64 @L_ISIG(%struct.tty_struct*) #1

declare dso_local zeroext i8 @INTR_CHAR(%struct.tty_struct*) #1

declare dso_local i32 @n_tty_receive_signal_char(%struct.tty_struct*, i32, i8 zeroext) #1

declare dso_local zeroext i8 @QUIT_CHAR(%struct.tty_struct*) #1

declare dso_local zeroext i8 @SUSP_CHAR(%struct.tty_struct*) #1

declare dso_local i64 @I_IXANY(%struct.tty_struct*) #1

declare dso_local i64 @I_IGNCR(%struct.tty_struct*) #1

declare dso_local i64 @I_ICRNL(%struct.tty_struct*) #1

declare dso_local i64 @I_INLCR(%struct.tty_struct*) #1

declare dso_local zeroext i8 @ERASE_CHAR(%struct.tty_struct*) #1

declare dso_local zeroext i8 @KILL_CHAR(%struct.tty_struct*) #1

declare dso_local zeroext i8 @WERASE_CHAR(%struct.tty_struct*) #1

declare dso_local i64 @L_IEXTEN(%struct.tty_struct*) #1

declare dso_local i32 @eraser(i8 zeroext, %struct.tty_struct*) #1

declare dso_local i32 @commit_echoes(%struct.tty_struct*) #1

declare dso_local zeroext i8 @LNEXT_CHAR(%struct.tty_struct*) #1

declare dso_local i64 @L_ECHO(%struct.tty_struct*) #1

declare dso_local i32 @finish_erasing(%struct.n_tty_data*) #1

declare dso_local i64 @L_ECHOCTL(%struct.tty_struct*) #1

declare dso_local i32 @echo_char_raw(i8 signext, %struct.n_tty_data*) #1

declare dso_local zeroext i8 @REPRINT_CHAR(%struct.tty_struct*) #1

declare dso_local i32 @echo_char(i8 zeroext, %struct.tty_struct*) #1

declare dso_local i64 @MASK(i64) #1

declare dso_local zeroext i8 @read_buf(%struct.n_tty_data*, i64) #1

declare dso_local i64 @L_ECHONL(%struct.tty_struct*) #1

declare dso_local zeroext i8 @EOF_CHAR(%struct.tty_struct*) #1

declare dso_local zeroext i8 @EOL_CHAR(%struct.tty_struct*) #1

declare dso_local zeroext i8 @EOL2_CHAR(%struct.tty_struct*) #1

declare dso_local i32 @echo_set_canon_col(%struct.n_tty_data*) #1

declare dso_local i64 @I_PARMRK(%struct.tty_struct*) #1

declare dso_local i32 @put_tty_queue(i8 zeroext, %struct.n_tty_data*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @smp_store_release(i64*, i32) #1

declare dso_local i32 @kill_fasync(i32*, i32, i32) #1

declare dso_local i32 @wake_up_interruptible_poll(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
