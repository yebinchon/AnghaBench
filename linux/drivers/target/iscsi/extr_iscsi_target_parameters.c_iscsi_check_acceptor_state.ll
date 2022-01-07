; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_parameters.c_iscsi_check_acceptor_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_parameters.c_iscsi_check_acceptor_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_param = type { i8*, i8* }
%struct.iscsi_conn = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [42 x i8] c"Received key \22%s\22 twice, protocol error.\0A\00", align 1
@YES = common dso_local global i8* null, align 8
@NO = common dso_local global i8* null, align 8
@MAXCONNECTIONS = common dso_local global i8* null, align 8
@MAXBURSTLENGTH = common dso_local global i8* null, align 8
@FIRSTBURSTLENGTH = common dso_local global i8* null, align 8
@MAXOUTSTANDINGR2T = common dso_local global i8* null, align 8
@DEFAULTTIME2RETAIN = common dso_local global i8* null, align 8
@ERRORRECOVERYLEVEL = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@DEFAULTTIME2WAIT = common dso_local global i8* null, align 8
@MAXRECVDATASEGMENTLENGTH = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [80 x i8] c"Saving op->MaxRecvDataSegmentLength from original initiator received value: %u\0A\00", align 1
@MAXXMITDATASEGMENTLENGTH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Updated %s to target MXDSL value: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [86 x i8] c"Proposer's value list \22%s\22 contains no valid values from Acceptor's value list \22%s\22.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_param*, i8*, %struct.iscsi_conn*)* @iscsi_check_acceptor_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_check_acceptor_state(%struct.iscsi_param* %0, i8* %1, %struct.iscsi_conn* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_param*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.iscsi_conn*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [11 x i8], align 1
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.iscsi_param*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.iscsi_param* %0, %struct.iscsi_param** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.iscsi_conn* %2, %struct.iscsi_conn** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i8* null, i8** %10, align 8
  %18 = load %struct.iscsi_param*, %struct.iscsi_param** %5, align 8
  %19 = call i64 @IS_PSTATE_ACCEPTOR(%struct.iscsi_param* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load %struct.iscsi_param*, %struct.iscsi_param** %5, align 8
  %23 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %24)
  store i32 -1, i32* %4, align 4
  br label %318

26:                                               ; preds = %3
  %27 = load %struct.iscsi_param*, %struct.iscsi_param** %5, align 8
  %28 = call i64 @IS_PSTATE_REJECT(%struct.iscsi_param* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %318

31:                                               ; preds = %26
  %32 = load %struct.iscsi_param*, %struct.iscsi_param** %5, align 8
  %33 = call i64 @IS_TYPE_BOOL_AND(%struct.iscsi_param* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %72

35:                                               ; preds = %31
  %36 = load i8*, i8** %6, align 8
  %37 = load i8*, i8** @YES, align 8
  %38 = call i32 @strcmp(i8* %36, i8* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  store i32 1, i32* %9, align 4
  br label %41

41:                                               ; preds = %40, %35
  %42 = load %struct.iscsi_param*, %struct.iscsi_param** %5, align 8
  %43 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = load i8*, i8** @YES, align 8
  %46 = call i32 @strcmp(i8* %44, i8* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %41
  store i32 1, i32* %8, align 4
  br label %49

49:                                               ; preds = %48, %41
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  br label %56

56:                                               ; preds = %55
  br label %57

57:                                               ; preds = %56
  br label %71

58:                                               ; preds = %52, %49
  %59 = load %struct.iscsi_param*, %struct.iscsi_param** %5, align 8
  %60 = load i8*, i8** @NO, align 8
  %61 = call i64 @iscsi_update_param_value(%struct.iscsi_param* %59, i8* %60)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i32 -1, i32* %4, align 4
  br label %318

64:                                               ; preds = %58
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load %struct.iscsi_param*, %struct.iscsi_param** %5, align 8
  %69 = call i32 @SET_PSTATE_REPLY_OPTIONAL(%struct.iscsi_param* %68)
  br label %70

70:                                               ; preds = %67, %64
  br label %71

71:                                               ; preds = %70, %57
  br label %317

72:                                               ; preds = %31
  %73 = load %struct.iscsi_param*, %struct.iscsi_param** %5, align 8
  %74 = call i64 @IS_TYPE_BOOL_OR(%struct.iscsi_param* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %110

76:                                               ; preds = %72
  %77 = load i8*, i8** %6, align 8
  %78 = load i8*, i8** @YES, align 8
  %79 = call i32 @strcmp(i8* %77, i8* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %76
  store i32 1, i32* %9, align 4
  br label %82

82:                                               ; preds = %81, %76
  %83 = load %struct.iscsi_param*, %struct.iscsi_param** %5, align 8
  %84 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = load i8*, i8** @YES, align 8
  %87 = call i32 @strcmp(i8* %85, i8* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %82
  store i32 1, i32* %8, align 4
  br label %90

90:                                               ; preds = %89, %82
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %93, %90
  %97 = load %struct.iscsi_param*, %struct.iscsi_param** %5, align 8
  %98 = load i8*, i8** @YES, align 8
  %99 = call i64 @iscsi_update_param_value(%struct.iscsi_param* %97, i8* %98)
  %100 = icmp slt i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  store i32 -1, i32* %4, align 4
  br label %318

102:                                              ; preds = %96
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load %struct.iscsi_param*, %struct.iscsi_param** %5, align 8
  %107 = call i32 @SET_PSTATE_REPLY_OPTIONAL(%struct.iscsi_param* %106)
  br label %108

108:                                              ; preds = %105, %102
  br label %109

109:                                              ; preds = %108, %93
  br label %316

110:                                              ; preds = %72
  %111 = load %struct.iscsi_param*, %struct.iscsi_param** %5, align 8
  %112 = call i64 @IS_TYPE_NUMBER(%struct.iscsi_param* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %277

114:                                              ; preds = %110
  %115 = load %struct.iscsi_param*, %struct.iscsi_param** %5, align 8
  %116 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %115, i32 0, i32 1
  %117 = load i8*, i8** %116, align 8
  %118 = call i64 @simple_strtoul(i8* %117, i8** %11, i32 0)
  store i64 %118, i64* %13, align 8
  %119 = load i8*, i8** %6, align 8
  %120 = call i64 @simple_strtoul(i8* %119, i8** %11, i32 0)
  store i64 %120, i64* %14, align 8
  %121 = getelementptr inbounds [11 x i8], [11 x i8]* %12, i64 0, i64 0
  %122 = call i32 @memset(i8* %121, i32 0, i32 11)
  %123 = load %struct.iscsi_param*, %struct.iscsi_param** %5, align 8
  %124 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = load i8*, i8** @MAXCONNECTIONS, align 8
  %127 = call i32 @strcmp(i8* %125, i8* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %164

129:                                              ; preds = %114
  %130 = load %struct.iscsi_param*, %struct.iscsi_param** %5, align 8
  %131 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = load i8*, i8** @MAXBURSTLENGTH, align 8
  %134 = call i32 @strcmp(i8* %132, i8* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %164

136:                                              ; preds = %129
  %137 = load %struct.iscsi_param*, %struct.iscsi_param** %5, align 8
  %138 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = load i8*, i8** @FIRSTBURSTLENGTH, align 8
  %141 = call i32 @strcmp(i8* %139, i8* %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %164

143:                                              ; preds = %136
  %144 = load %struct.iscsi_param*, %struct.iscsi_param** %5, align 8
  %145 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = load i8*, i8** @MAXOUTSTANDINGR2T, align 8
  %148 = call i32 @strcmp(i8* %146, i8* %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %164

150:                                              ; preds = %143
  %151 = load %struct.iscsi_param*, %struct.iscsi_param** %5, align 8
  %152 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = load i8*, i8** @DEFAULTTIME2RETAIN, align 8
  %155 = call i32 @strcmp(i8* %153, i8* %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %150
  %158 = load %struct.iscsi_param*, %struct.iscsi_param** %5, align 8
  %159 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %158, i32 0, i32 0
  %160 = load i8*, i8** %159, align 8
  %161 = load i8*, i8** @ERRORRECOVERYLEVEL, align 8
  %162 = call i32 @strcmp(i8* %160, i8* %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %186, label %164

164:                                              ; preds = %157, %150, %143, %136, %129, %114
  %165 = load i64, i64* %14, align 8
  %166 = load i64, i64* %13, align 8
  %167 = icmp sgt i64 %165, %166
  br i1 %167, label %168, label %178

168:                                              ; preds = %164
  %169 = getelementptr inbounds [11 x i8], [11 x i8]* %12, i64 0, i64 0
  %170 = load i64, i64* %13, align 8
  %171 = call i32 @sprintf(i8* %169, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %170)
  %172 = load %struct.iscsi_param*, %struct.iscsi_param** %5, align 8
  %173 = getelementptr inbounds [11 x i8], [11 x i8]* %12, i64 0, i64 0
  %174 = call i64 @iscsi_update_param_value(%struct.iscsi_param* %172, i8* %173)
  %175 = icmp slt i64 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %168
  store i32 -1, i32* %4, align 4
  br label %318

177:                                              ; preds = %168
  br label %185

178:                                              ; preds = %164
  %179 = load %struct.iscsi_param*, %struct.iscsi_param** %5, align 8
  %180 = load i8*, i8** %6, align 8
  %181 = call i64 @iscsi_update_param_value(%struct.iscsi_param* %179, i8* %180)
  %182 = icmp slt i64 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %178
  store i32 -1, i32* %4, align 4
  br label %318

184:                                              ; preds = %178
  br label %185

185:                                              ; preds = %184, %177
  br label %223

186:                                              ; preds = %157
  %187 = load %struct.iscsi_param*, %struct.iscsi_param** %5, align 8
  %188 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %187, i32 0, i32 0
  %189 = load i8*, i8** %188, align 8
  %190 = load i8*, i8** @DEFAULTTIME2WAIT, align 8
  %191 = call i32 @strcmp(i8* %189, i8* %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %215, label %193

193:                                              ; preds = %186
  %194 = load i64, i64* %13, align 8
  %195 = load i64, i64* %14, align 8
  %196 = icmp sgt i64 %194, %195
  br i1 %196, label %197, label %207

197:                                              ; preds = %193
  %198 = getelementptr inbounds [11 x i8], [11 x i8]* %12, i64 0, i64 0
  %199 = load i64, i64* %13, align 8
  %200 = call i32 @sprintf(i8* %198, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %199)
  %201 = load %struct.iscsi_param*, %struct.iscsi_param** %5, align 8
  %202 = getelementptr inbounds [11 x i8], [11 x i8]* %12, i64 0, i64 0
  %203 = call i64 @iscsi_update_param_value(%struct.iscsi_param* %201, i8* %202)
  %204 = icmp slt i64 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %197
  store i32 -1, i32* %4, align 4
  br label %318

206:                                              ; preds = %197
  br label %214

207:                                              ; preds = %193
  %208 = load %struct.iscsi_param*, %struct.iscsi_param** %5, align 8
  %209 = load i8*, i8** %6, align 8
  %210 = call i64 @iscsi_update_param_value(%struct.iscsi_param* %208, i8* %209)
  %211 = icmp slt i64 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %207
  store i32 -1, i32* %4, align 4
  br label %318

213:                                              ; preds = %207
  br label %214

214:                                              ; preds = %213, %206
  br label %222

215:                                              ; preds = %186
  %216 = load %struct.iscsi_param*, %struct.iscsi_param** %5, align 8
  %217 = load i8*, i8** %6, align 8
  %218 = call i64 @iscsi_update_param_value(%struct.iscsi_param* %216, i8* %217)
  %219 = icmp slt i64 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %215
  store i32 -1, i32* %4, align 4
  br label %318

221:                                              ; preds = %215
  br label %222

222:                                              ; preds = %221, %214
  br label %223

223:                                              ; preds = %222, %185
  %224 = load %struct.iscsi_param*, %struct.iscsi_param** %5, align 8
  %225 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %224, i32 0, i32 0
  %226 = load i8*, i8** %225, align 8
  %227 = load i8*, i8** @MAXRECVDATASEGMENTLENGTH, align 8
  %228 = call i32 @strcmp(i8* %226, i8* %227)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %276, label %230

230:                                              ; preds = %223
  %231 = load %struct.iscsi_param*, %struct.iscsi_param** %5, align 8
  %232 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %231, i32 0, i32 1
  %233 = load i8*, i8** %232, align 8
  %234 = call i32 @kstrtoull(i8* %233, i32 0, i64* %16)
  store i32 %234, i32* %17, align 4
  %235 = load i32, i32* %17, align 4
  %236 = icmp slt i32 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %230
  store i32 -1, i32* %4, align 4
  br label %318

238:                                              ; preds = %230
  %239 = load i64, i64* %16, align 8
  %240 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %241 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %240, i32 0, i32 1
  %242 = load %struct.TYPE_2__*, %struct.TYPE_2__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %242, i32 0, i32 0
  store i64 %239, i64* %243, align 8
  %244 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %245 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %244, i32 0, i32 1
  %246 = load %struct.TYPE_2__*, %struct.TYPE_2__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.2, i64 0, i64 0), i64 %248)
  %250 = load i32, i32* @MAXXMITDATASEGMENTLENGTH, align 4
  %251 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %252 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = call %struct.iscsi_param* @iscsi_find_param_from_key(i32 %250, i32 %253)
  store %struct.iscsi_param* %254, %struct.iscsi_param** %15, align 8
  %255 = load %struct.iscsi_param*, %struct.iscsi_param** %15, align 8
  %256 = icmp ne %struct.iscsi_param* %255, null
  br i1 %256, label %258, label %257

257:                                              ; preds = %238
  store i32 -1, i32* %4, align 4
  br label %318

258:                                              ; preds = %238
  %259 = load %struct.iscsi_param*, %struct.iscsi_param** %5, align 8
  %260 = load %struct.iscsi_param*, %struct.iscsi_param** %15, align 8
  %261 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %260, i32 0, i32 1
  %262 = load i8*, i8** %261, align 8
  %263 = call i64 @iscsi_update_param_value(%struct.iscsi_param* %259, i8* %262)
  %264 = trunc i64 %263 to i32
  store i32 %264, i32* %17, align 4
  %265 = load i32, i32* %17, align 4
  %266 = icmp slt i32 %265, 0
  br i1 %266, label %267, label %268

267:                                              ; preds = %258
  store i32 -1, i32* %4, align 4
  br label %318

268:                                              ; preds = %258
  %269 = load %struct.iscsi_param*, %struct.iscsi_param** %5, align 8
  %270 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %269, i32 0, i32 0
  %271 = load i8*, i8** %270, align 8
  %272 = load %struct.iscsi_param*, %struct.iscsi_param** %5, align 8
  %273 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %272, i32 0, i32 1
  %274 = load i8*, i8** %273, align 8
  %275 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %271, i8* %274)
  br label %276

276:                                              ; preds = %268, %223
  br label %315

277:                                              ; preds = %110
  %278 = load %struct.iscsi_param*, %struct.iscsi_param** %5, align 8
  %279 = call i64 @IS_TYPE_VALUE_LIST(%struct.iscsi_param* %278)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %300

281:                                              ; preds = %277
  %282 = load %struct.iscsi_param*, %struct.iscsi_param** %5, align 8
  %283 = load i8*, i8** %6, align 8
  %284 = call i8* @iscsi_check_valuelist_for_support(%struct.iscsi_param* %282, i8* %283)
  store i8* %284, i8** %10, align 8
  %285 = load i8*, i8** %10, align 8
  %286 = icmp ne i8* %285, null
  br i1 %286, label %293, label %287

287:                                              ; preds = %281
  %288 = load i8*, i8** %6, align 8
  %289 = load %struct.iscsi_param*, %struct.iscsi_param** %5, align 8
  %290 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %289, i32 0, i32 1
  %291 = load i8*, i8** %290, align 8
  %292 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.4, i64 0, i64 0), i8* %288, i8* %291)
  store i32 -1, i32* %4, align 4
  br label %318

293:                                              ; preds = %281
  %294 = load %struct.iscsi_param*, %struct.iscsi_param** %5, align 8
  %295 = load i8*, i8** %10, align 8
  %296 = call i64 @iscsi_update_param_value(%struct.iscsi_param* %294, i8* %295)
  %297 = icmp slt i64 %296, 0
  br i1 %297, label %298, label %299

298:                                              ; preds = %293
  store i32 -1, i32* %4, align 4
  br label %318

299:                                              ; preds = %293
  br label %314

300:                                              ; preds = %277
  %301 = load %struct.iscsi_param*, %struct.iscsi_param** %5, align 8
  %302 = call i64 @IS_PHASE_DECLARATIVE(%struct.iscsi_param* %301)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %313

304:                                              ; preds = %300
  %305 = load %struct.iscsi_param*, %struct.iscsi_param** %5, align 8
  %306 = load i8*, i8** %6, align 8
  %307 = call i64 @iscsi_update_param_value(%struct.iscsi_param* %305, i8* %306)
  %308 = icmp slt i64 %307, 0
  br i1 %308, label %309, label %310

309:                                              ; preds = %304
  store i32 -1, i32* %4, align 4
  br label %318

310:                                              ; preds = %304
  %311 = load %struct.iscsi_param*, %struct.iscsi_param** %5, align 8
  %312 = call i32 @SET_PSTATE_REPLY_OPTIONAL(%struct.iscsi_param* %311)
  br label %313

313:                                              ; preds = %310, %300
  br label %314

314:                                              ; preds = %313, %299
  br label %315

315:                                              ; preds = %314, %276
  br label %316

316:                                              ; preds = %315, %109
  br label %317

317:                                              ; preds = %316, %71
  store i32 0, i32* %4, align 4
  br label %318

318:                                              ; preds = %317, %309, %298, %287, %267, %257, %237, %220, %212, %205, %183, %176, %101, %63, %30, %21
  %319 = load i32, i32* %4, align 4
  ret i32 %319
}

declare dso_local i64 @IS_PSTATE_ACCEPTOR(%struct.iscsi_param*) #1

declare dso_local i32 @pr_err(i8*, i8*, ...) #1

declare dso_local i64 @IS_PSTATE_REJECT(%struct.iscsi_param*) #1

declare dso_local i64 @IS_TYPE_BOOL_AND(%struct.iscsi_param*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @iscsi_update_param_value(%struct.iscsi_param*, i8*) #1

declare dso_local i32 @SET_PSTATE_REPLY_OPTIONAL(%struct.iscsi_param*) #1

declare dso_local i64 @IS_TYPE_BOOL_OR(%struct.iscsi_param*) #1

declare dso_local i64 @IS_TYPE_NUMBER(%struct.iscsi_param*) #1

declare dso_local i64 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

declare dso_local i32 @kstrtoull(i8*, i32, i64*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local %struct.iscsi_param* @iscsi_find_param_from_key(i32, i32) #1

declare dso_local i64 @IS_TYPE_VALUE_LIST(%struct.iscsi_param*) #1

declare dso_local i8* @iscsi_check_valuelist_for_support(%struct.iscsi_param*, i8*) #1

declare dso_local i64 @IS_PHASE_DECLARATIVE(%struct.iscsi_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
