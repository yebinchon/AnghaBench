; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-smbios-base.c_dell_smbios_call_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-smbios-base.c_dell_smbios_call_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.device = type { i32 }
%struct.calling_interface_buffer = type { i32, i32, i32* }

@.str = private unnamed_addr constant [19 x i8] c"class too big: %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@da_supported_commands = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"invalid command, supported commands: 0x%8x\0A\00", align 1
@call_blacklist = common dso_local global %struct.TYPE_7__* null, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"blacklisted command: %u/%u\0A\00", align 1
@CLASS_TOKEN_READ = common dso_local global i32 0, align 4
@CLASS_TOKEN_WRITE = common dso_local global i32 0, align 4
@da_tokens = common dso_local global %struct.TYPE_8__* null, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"no token support on this system\0A\00", align 1
@da_num_tokens = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"token at location %04x doesn't exist\0A\00", align 1
@token_blacklist = common dso_local global %struct.TYPE_7__* null, align 8
@token_whitelist = common dso_local global %struct.TYPE_7__* null, align 8
@.str.5 = private unnamed_addr constant [23 x i8] c"whitelisted token: %x\0A\00", align 1
@call_whitelist = common dso_local global %struct.TYPE_7__* null, align 8
@.str.6 = private unnamed_addr constant [36 x i8] c"whitelisted capable command: %u/%u\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"missing capability %d for %u/%u\0A\00", align 1
@CAP_SYS_RAWIO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [37 x i8] c"Allowing %u/%u due to CAP_SYS_RAWIO\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dell_smbios_call_filter(%struct.device* %0, %struct.calling_interface_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.calling_interface_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.calling_interface_buffer* %1, %struct.calling_interface_buffer** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.calling_interface_buffer*, %struct.calling_interface_buffer** %5, align 8
  %9 = getelementptr inbounds %struct.calling_interface_buffer, %struct.calling_interface_buffer* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp sgt i32 %10, 30
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = load %struct.calling_interface_buffer*, %struct.calling_interface_buffer** %5, align 8
  %15 = getelementptr inbounds %struct.calling_interface_buffer, %struct.calling_interface_buffer* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %359

20:                                               ; preds = %2
  %21 = load i32, i32* @da_supported_commands, align 4
  %22 = load %struct.calling_interface_buffer*, %struct.calling_interface_buffer** %5, align 8
  %23 = getelementptr inbounds %struct.calling_interface_buffer, %struct.calling_interface_buffer* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = shl i32 1, %24
  %26 = and i32 %21, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %20
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = load i32, i32* @da_supported_commands, align 4
  %31 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %29, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %359

34:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %83, %34
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** @call_blacklist, align 8
  %38 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %37)
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %86

40:                                               ; preds = %35
  %41 = load %struct.calling_interface_buffer*, %struct.calling_interface_buffer** %5, align 8
  %42 = getelementptr inbounds %struct.calling_interface_buffer, %struct.calling_interface_buffer* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** @call_blacklist, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %43, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  br label %83

52:                                               ; preds = %40
  %53 = load %struct.calling_interface_buffer*, %struct.calling_interface_buffer** %5, align 8
  %54 = getelementptr inbounds %struct.calling_interface_buffer, %struct.calling_interface_buffer* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** @call_blacklist, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %55, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %52
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** @call_blacklist, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, -1
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  br label %83

72:                                               ; preds = %63, %52
  %73 = load %struct.device*, %struct.device** %4, align 8
  %74 = load %struct.calling_interface_buffer*, %struct.calling_interface_buffer** %5, align 8
  %75 = getelementptr inbounds %struct.calling_interface_buffer, %struct.calling_interface_buffer* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.calling_interface_buffer*, %struct.calling_interface_buffer** %5, align 8
  %78 = getelementptr inbounds %struct.calling_interface_buffer, %struct.calling_interface_buffer* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %73, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %76, i32 %79)
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %359

83:                                               ; preds = %71, %51
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %7, align 4
  br label %35

86:                                               ; preds = %35
  %87 = load %struct.calling_interface_buffer*, %struct.calling_interface_buffer** %5, align 8
  %88 = getelementptr inbounds %struct.calling_interface_buffer, %struct.calling_interface_buffer* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @CLASS_TOKEN_READ, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %98, label %92

92:                                               ; preds = %86
  %93 = load %struct.calling_interface_buffer*, %struct.calling_interface_buffer** %5, align 8
  %94 = getelementptr inbounds %struct.calling_interface_buffer, %struct.calling_interface_buffer* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @CLASS_TOKEN_WRITE, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %269

98:                                               ; preds = %92, %86
  %99 = load %struct.calling_interface_buffer*, %struct.calling_interface_buffer** %5, align 8
  %100 = getelementptr inbounds %struct.calling_interface_buffer, %struct.calling_interface_buffer* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp slt i32 %101, 3
  br i1 %102, label %103, label %269

103:                                              ; preds = %98
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** @da_tokens, align 8
  %105 = icmp ne %struct.TYPE_8__* %104, null
  br i1 %105, label %111, label %106

106:                                              ; preds = %103
  %107 = load %struct.device*, %struct.device** %4, align 8
  %108 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %107, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %3, align 4
  br label %359

111:                                              ; preds = %103
  store i32 0, i32* %7, align 4
  br label %112

112:                                              ; preds = %137, %111
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* @da_num_tokens, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %140

116:                                              ; preds = %112
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** @da_tokens, align 8
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.calling_interface_buffer*, %struct.calling_interface_buffer** %5, align 8
  %124 = getelementptr inbounds %struct.calling_interface_buffer, %struct.calling_interface_buffer* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %122, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %116
  br label %137

130:                                              ; preds = %116
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** @da_tokens, align 8
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* %6, align 4
  br label %140

137:                                              ; preds = %129
  %138 = load i32, i32* %7, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %7, align 4
  br label %112

140:                                              ; preds = %130, %112
  %141 = load i32, i32* %6, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %153, label %143

143:                                              ; preds = %140
  %144 = load %struct.device*, %struct.device** %4, align 8
  %145 = load %struct.calling_interface_buffer*, %struct.calling_interface_buffer** %5, align 8
  %146 = getelementptr inbounds %struct.calling_interface_buffer, %struct.calling_interface_buffer* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %144, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %149)
  %151 = load i32, i32* @EINVAL, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %3, align 4
  br label %359

153:                                              ; preds = %140
  store i32 0, i32* %7, align 4
  br label %154

154:                                              ; preds = %198, %153
  %155 = load i32, i32* %7, align 4
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** @token_blacklist, align 8
  %157 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %156)
  %158 = icmp slt i32 %155, %157
  br i1 %158, label %159, label %201

159:                                              ; preds = %154
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** @token_blacklist, align 8
  %161 = load i32, i32* %7, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %175

167:                                              ; preds = %159
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** @token_blacklist, align 8
  %169 = load i32, i32* %7, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %176, label %175

175:                                              ; preds = %167, %159
  br label %198

176:                                              ; preds = %167
  %177 = load i32, i32* %6, align 4
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** @token_blacklist, align 8
  %179 = load i32, i32* %7, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 4
  %184 = icmp sge i32 %177, %183
  br i1 %184, label %185, label %197

185:                                              ; preds = %176
  %186 = load i32, i32* %6, align 4
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** @token_blacklist, align 8
  %188 = load i32, i32* %7, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = icmp sle i32 %186, %192
  br i1 %193, label %194, label %197

194:                                              ; preds = %185
  %195 = load i32, i32* @EINVAL, align 4
  %196 = sub nsw i32 0, %195
  store i32 %196, i32* %3, align 4
  br label %359

197:                                              ; preds = %185, %176
  br label %198

198:                                              ; preds = %197, %175
  %199 = load i32, i32* %7, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %7, align 4
  br label %154

201:                                              ; preds = %154
  store i32 0, i32* %7, align 4
  br label %202

202:                                              ; preds = %265, %201
  %203 = load i32, i32* %7, align 4
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** @token_whitelist, align 8
  %205 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %204)
  %206 = icmp slt i32 %203, %205
  br i1 %206, label %207, label %268

207:                                              ; preds = %202
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** @token_whitelist, align 8
  %209 = load i32, i32* %7, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %223

215:                                              ; preds = %207
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** @token_whitelist, align 8
  %217 = load i32, i32* %7, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %224, label %223

223:                                              ; preds = %215, %207
  br label %265

224:                                              ; preds = %215
  %225 = load i32, i32* %6, align 4
  %226 = load %struct.TYPE_7__*, %struct.TYPE_7__** @token_whitelist, align 8
  %227 = load i32, i32* %7, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 4
  %231 = load i32, i32* %230, align 4
  %232 = icmp slt i32 %225, %231
  br i1 %232, label %242, label %233

233:                                              ; preds = %224
  %234 = load i32, i32* %6, align 4
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** @token_whitelist, align 8
  %236 = load i32, i32* %7, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 4
  %241 = icmp sgt i32 %234, %240
  br i1 %241, label %242, label %243

242:                                              ; preds = %233, %224
  br label %265

243:                                              ; preds = %233
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** @token_whitelist, align 8
  %245 = load i32, i32* %7, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %260

251:                                              ; preds = %243
  %252 = load %struct.TYPE_7__*, %struct.TYPE_7__** @token_whitelist, align 8
  %253 = load i32, i32* %7, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 4
  %258 = call i64 @capable(i32 %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %264

260:                                              ; preds = %251, %243
  %261 = load %struct.device*, %struct.device** %4, align 8
  %262 = load i32, i32* %6, align 4
  %263 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %261, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %262)
  store i32 0, i32* %3, align 4
  br label %359

264:                                              ; preds = %251
  br label %265

265:                                              ; preds = %264, %242, %223
  %266 = load i32, i32* %7, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %7, align 4
  br label %202

268:                                              ; preds = %202
  br label %269

269:                                              ; preds = %268, %98, %92
  store i32 0, i32* %7, align 4
  br label %270

270:                                              ; preds = %340, %269
  %271 = load i32, i32* %7, align 4
  %272 = load %struct.TYPE_7__*, %struct.TYPE_7__** @call_whitelist, align 8
  %273 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %272)
  %274 = icmp slt i32 %271, %273
  br i1 %274, label %275, label %343

275:                                              ; preds = %270
  %276 = load %struct.calling_interface_buffer*, %struct.calling_interface_buffer** %5, align 8
  %277 = getelementptr inbounds %struct.calling_interface_buffer, %struct.calling_interface_buffer* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = load %struct.TYPE_7__*, %struct.TYPE_7__** @call_whitelist, align 8
  %280 = load i32, i32* %7, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %279, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = icmp ne i32 %278, %284
  br i1 %285, label %286, label %287

286:                                              ; preds = %275
  br label %340

287:                                              ; preds = %275
  %288 = load %struct.calling_interface_buffer*, %struct.calling_interface_buffer** %5, align 8
  %289 = getelementptr inbounds %struct.calling_interface_buffer, %struct.calling_interface_buffer* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.TYPE_7__*, %struct.TYPE_7__** @call_whitelist, align 8
  %292 = load i32, i32* %7, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %291, i64 %293
  %295 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = icmp ne i32 %290, %296
  br i1 %297, label %298, label %299

298:                                              ; preds = %287
  br label %340

299:                                              ; preds = %287
  %300 = load %struct.TYPE_7__*, %struct.TYPE_7__** @call_whitelist, align 8
  %301 = load i32, i32* %7, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %300, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %316

307:                                              ; preds = %299
  %308 = load %struct.TYPE_7__*, %struct.TYPE_7__** @call_whitelist, align 8
  %309 = load i32, i32* %7, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %308, i64 %310
  %312 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %311, i32 0, i32 2
  %313 = load i32, i32* %312, align 4
  %314 = call i64 @capable(i32 %313)
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %325

316:                                              ; preds = %307, %299
  %317 = load %struct.device*, %struct.device** %4, align 8
  %318 = load %struct.calling_interface_buffer*, %struct.calling_interface_buffer** %5, align 8
  %319 = getelementptr inbounds %struct.calling_interface_buffer, %struct.calling_interface_buffer* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = load %struct.calling_interface_buffer*, %struct.calling_interface_buffer** %5, align 8
  %322 = getelementptr inbounds %struct.calling_interface_buffer, %struct.calling_interface_buffer* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %317, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %320, i32 %323)
  store i32 0, i32* %3, align 4
  br label %359

325:                                              ; preds = %307
  %326 = load %struct.device*, %struct.device** %4, align 8
  %327 = load %struct.TYPE_7__*, %struct.TYPE_7__** @call_whitelist, align 8
  %328 = load i32, i32* %7, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %327, i64 %329
  %331 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %330, i32 0, i32 2
  %332 = load i32, i32* %331, align 4
  %333 = load %struct.calling_interface_buffer*, %struct.calling_interface_buffer** %5, align 8
  %334 = getelementptr inbounds %struct.calling_interface_buffer, %struct.calling_interface_buffer* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = load %struct.calling_interface_buffer*, %struct.calling_interface_buffer** %5, align 8
  %337 = getelementptr inbounds %struct.calling_interface_buffer, %struct.calling_interface_buffer* %336, i32 0, i32 1
  %338 = load i32, i32* %337, align 4
  %339 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %326, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %332, i32 %335, i32 %338)
  br label %340

340:                                              ; preds = %325, %298, %286
  %341 = load i32, i32* %7, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %7, align 4
  br label %270

343:                                              ; preds = %270
  %344 = load i32, i32* @CAP_SYS_RAWIO, align 4
  %345 = call i64 @capable(i32 %344)
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %356

347:                                              ; preds = %343
  %348 = load %struct.device*, %struct.device** %4, align 8
  %349 = load %struct.calling_interface_buffer*, %struct.calling_interface_buffer** %5, align 8
  %350 = getelementptr inbounds %struct.calling_interface_buffer, %struct.calling_interface_buffer* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = load %struct.calling_interface_buffer*, %struct.calling_interface_buffer** %5, align 8
  %353 = getelementptr inbounds %struct.calling_interface_buffer, %struct.calling_interface_buffer* %352, i32 0, i32 1
  %354 = load i32, i32* %353, align 4
  %355 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %348, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 %351, i32 %354)
  store i32 0, i32* %3, align 4
  br label %359

356:                                              ; preds = %343
  %357 = load i32, i32* @EACCES, align 4
  %358 = sub nsw i32 0, %357
  store i32 %358, i32* %3, align 4
  br label %359

359:                                              ; preds = %356, %347, %316, %260, %194, %143, %106, %72, %28, %12
  %360 = load i32, i32* %3, align 4
  ret i32 %360
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__*) #1

declare dso_local i64 @capable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
