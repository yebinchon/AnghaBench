; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsm_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsm_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsm_mux = type { i64, i64, i32, i32, i32, i32, i32, i32, i32*, i32 }
%struct.gsm_config = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@MAX_MRU = common dso_local global i32 0, align 4
@MAX_MTU = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@UIH = common dso_local global i32 0, align 4
@UI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gsm_mux*, %struct.gsm_config*)* @gsm_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gsm_config(%struct.gsm_mux* %0, %struct.gsm_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gsm_mux*, align 8
  %5 = alloca %struct.gsm_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gsm_mux* %0, %struct.gsm_mux** %4, align 8
  store %struct.gsm_config* %1, %struct.gsm_config** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.gsm_config*, %struct.gsm_config** %5, align 8
  %10 = getelementptr inbounds %struct.gsm_config, %struct.gsm_config* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 1
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.gsm_config*, %struct.gsm_config** %5, align 8
  %15 = getelementptr inbounds %struct.gsm_config, %struct.gsm_config* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 2
  br i1 %17, label %23, label %18

18:                                               ; preds = %13, %2
  %19 = load %struct.gsm_config*, %struct.gsm_config** %5, align 8
  %20 = getelementptr inbounds %struct.gsm_config, %struct.gsm_config* %19, i32 0, i32 9
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18, %13
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %274

26:                                               ; preds = %18
  %27 = load %struct.gsm_config*, %struct.gsm_config** %5, align 8
  %28 = getelementptr inbounds %struct.gsm_config, %struct.gsm_config* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MAX_MRU, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %48, label %32

32:                                               ; preds = %26
  %33 = load %struct.gsm_config*, %struct.gsm_config** %5, align 8
  %34 = getelementptr inbounds %struct.gsm_config, %struct.gsm_config* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @MAX_MTU, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %48, label %38

38:                                               ; preds = %32
  %39 = load %struct.gsm_config*, %struct.gsm_config** %5, align 8
  %40 = getelementptr inbounds %struct.gsm_config, %struct.gsm_config* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %41, 8
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = load %struct.gsm_config*, %struct.gsm_config** %5, align 8
  %45 = getelementptr inbounds %struct.gsm_config, %struct.gsm_config* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %46, 8
  br i1 %47, label %48, label %51

48:                                               ; preds = %43, %38, %32, %26
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %274

51:                                               ; preds = %43
  %52 = load %struct.gsm_config*, %struct.gsm_config** %5, align 8
  %53 = getelementptr inbounds %struct.gsm_config, %struct.gsm_config* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %54, 3
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %274

59:                                               ; preds = %51
  %60 = load %struct.gsm_config*, %struct.gsm_config** %5, align 8
  %61 = getelementptr inbounds %struct.gsm_config, %struct.gsm_config* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = icmp sgt i32 %62, 1
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %274

67:                                               ; preds = %59
  %68 = load %struct.gsm_config*, %struct.gsm_config** %5, align 8
  %69 = getelementptr inbounds %struct.gsm_config, %struct.gsm_config* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = icmp sgt i32 %70, 1
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %274

75:                                               ; preds = %67
  %76 = load %struct.gsm_config*, %struct.gsm_config** %5, align 8
  %77 = getelementptr inbounds %struct.gsm_config, %struct.gsm_config* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %75
  %81 = load %struct.gsm_config*, %struct.gsm_config** %5, align 8
  %82 = getelementptr inbounds %struct.gsm_config, %struct.gsm_config* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 8
  %84 = icmp sgt i32 %83, 2
  br i1 %84, label %85, label %88

85:                                               ; preds = %80, %75
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %274

88:                                               ; preds = %80
  %89 = load %struct.gsm_config*, %struct.gsm_config** %5, align 8
  %90 = getelementptr inbounds %struct.gsm_config, %struct.gsm_config* %89, i32 0, i32 7
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %88
  %94 = load %struct.gsm_config*, %struct.gsm_config** %5, align 8
  %95 = getelementptr inbounds %struct.gsm_config, %struct.gsm_config* %94, i32 0, i32 7
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.gsm_mux*, %struct.gsm_mux** %4, align 8
  %98 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %96, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  store i32 1, i32* %7, align 4
  br label %102

102:                                              ; preds = %101, %93, %88
  %103 = load %struct.gsm_config*, %struct.gsm_config** %5, align 8
  %104 = getelementptr inbounds %struct.gsm_config, %struct.gsm_config* %103, i32 0, i32 8
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %102
  %108 = load %struct.gsm_config*, %struct.gsm_config** %5, align 8
  %109 = getelementptr inbounds %struct.gsm_config, %struct.gsm_config* %108, i32 0, i32 8
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.gsm_mux*, %struct.gsm_mux** %4, align 8
  %112 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %110, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %107
  store i32 1, i32* %7, align 4
  br label %116

116:                                              ; preds = %115, %107, %102
  %117 = load %struct.gsm_config*, %struct.gsm_config** %5, align 8
  %118 = getelementptr inbounds %struct.gsm_config, %struct.gsm_config* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.gsm_mux*, %struct.gsm_mux** %4, align 8
  %121 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %119, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %116
  store i32 1, i32* %7, align 4
  br label %125

125:                                              ; preds = %124, %116
  %126 = load %struct.gsm_config*, %struct.gsm_config** %5, align 8
  %127 = getelementptr inbounds %struct.gsm_config, %struct.gsm_config* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.gsm_mux*, %struct.gsm_mux** %4, align 8
  %130 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %128, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %125
  store i32 1, i32* %7, align 4
  br label %134

134:                                              ; preds = %133, %125
  %135 = load %struct.gsm_config*, %struct.gsm_config** %5, align 8
  %136 = getelementptr inbounds %struct.gsm_config, %struct.gsm_config* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.gsm_mux*, %struct.gsm_mux** %4, align 8
  %139 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %137, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %134
  store i32 1, i32* %6, align 4
  br label %143

143:                                              ; preds = %142, %134
  %144 = load %struct.gsm_config*, %struct.gsm_config** %5, align 8
  %145 = getelementptr inbounds %struct.gsm_config, %struct.gsm_config* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.gsm_mux*, %struct.gsm_mux** %4, align 8
  %148 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %146, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %143
  store i32 1, i32* %7, align 4
  br label %152

152:                                              ; preds = %151, %143
  %153 = load %struct.gsm_config*, %struct.gsm_config** %5, align 8
  %154 = getelementptr inbounds %struct.gsm_config, %struct.gsm_config* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.gsm_mux*, %struct.gsm_mux** %4, align 8
  %157 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %156, i32 0, i32 6
  %158 = load i32, i32* %157, align 8
  %159 = icmp ne i32 %155, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %152
  store i32 1, i32* %7, align 4
  br label %161

161:                                              ; preds = %160, %152
  %162 = load i32, i32* %6, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %167, label %164

164:                                              ; preds = %161
  %165 = load i32, i32* %7, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %175

167:                                              ; preds = %164, %161
  %168 = load %struct.gsm_mux*, %struct.gsm_mux** %4, align 8
  %169 = call i32 @gsm_disconnect(%struct.gsm_mux* %168)
  store i32 %169, i32* %8, align 4
  %170 = load i32, i32* %8, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %167
  %173 = load i32, i32* %8, align 4
  store i32 %173, i32* %3, align 4
  br label %274

174:                                              ; preds = %167
  br label %175

175:                                              ; preds = %174, %164
  %176 = load i32, i32* %7, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = load %struct.gsm_mux*, %struct.gsm_mux** %4, align 8
  %180 = call i32 @gsm_cleanup_mux(%struct.gsm_mux* %179)
  br label %181

181:                                              ; preds = %178, %175
  %182 = load %struct.gsm_config*, %struct.gsm_config** %5, align 8
  %183 = getelementptr inbounds %struct.gsm_config, %struct.gsm_config* %182, i32 0, i32 5
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.gsm_mux*, %struct.gsm_mux** %4, align 8
  %186 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %185, i32 0, i32 4
  store i32 %184, i32* %186, align 8
  %187 = load %struct.gsm_config*, %struct.gsm_config** %5, align 8
  %188 = getelementptr inbounds %struct.gsm_config, %struct.gsm_config* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.gsm_mux*, %struct.gsm_mux** %4, align 8
  %191 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %190, i32 0, i32 5
  store i32 %189, i32* %191, align 4
  %192 = load %struct.gsm_config*, %struct.gsm_config** %5, align 8
  %193 = getelementptr inbounds %struct.gsm_config, %struct.gsm_config* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.gsm_mux*, %struct.gsm_mux** %4, align 8
  %196 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %195, i32 0, i32 6
  store i32 %194, i32* %196, align 8
  %197 = load %struct.gsm_config*, %struct.gsm_config** %5, align 8
  %198 = getelementptr inbounds %struct.gsm_config, %struct.gsm_config* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.gsm_mux*, %struct.gsm_mux** %4, align 8
  %201 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %200, i32 0, i32 2
  store i32 %199, i32* %201, align 8
  %202 = load %struct.gsm_config*, %struct.gsm_config** %5, align 8
  %203 = getelementptr inbounds %struct.gsm_config, %struct.gsm_config* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.gsm_mux*, %struct.gsm_mux** %4, align 8
  %206 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %205, i32 0, i32 3
  store i32 %204, i32* %206, align 4
  %207 = load %struct.gsm_config*, %struct.gsm_config** %5, align 8
  %208 = getelementptr inbounds %struct.gsm_config, %struct.gsm_config* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.gsm_mux*, %struct.gsm_mux** %4, align 8
  %211 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %210, i32 0, i32 7
  store i32 %209, i32* %211, align 4
  %212 = load %struct.gsm_config*, %struct.gsm_config** %5, align 8
  %213 = getelementptr inbounds %struct.gsm_config, %struct.gsm_config* %212, i32 0, i32 6
  %214 = load i32, i32* %213, align 8
  %215 = icmp eq i32 %214, 1
  br i1 %215, label %216, label %220

216:                                              ; preds = %181
  %217 = load i32, i32* @UIH, align 4
  %218 = load %struct.gsm_mux*, %struct.gsm_mux** %4, align 8
  %219 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %218, i32 0, i32 9
  store i32 %217, i32* %219, align 8
  br label %230

220:                                              ; preds = %181
  %221 = load %struct.gsm_config*, %struct.gsm_config** %5, align 8
  %222 = getelementptr inbounds %struct.gsm_config, %struct.gsm_config* %221, i32 0, i32 6
  %223 = load i32, i32* %222, align 8
  %224 = icmp eq i32 %223, 2
  br i1 %224, label %225, label %229

225:                                              ; preds = %220
  %226 = load i32, i32* @UI, align 4
  %227 = load %struct.gsm_mux*, %struct.gsm_mux** %4, align 8
  %228 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %227, i32 0, i32 9
  store i32 %226, i32* %228, align 8
  br label %229

229:                                              ; preds = %225, %220
  br label %230

230:                                              ; preds = %229, %216
  %231 = load %struct.gsm_config*, %struct.gsm_config** %5, align 8
  %232 = getelementptr inbounds %struct.gsm_config, %struct.gsm_config* %231, i32 0, i32 7
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %241

235:                                              ; preds = %230
  %236 = load %struct.gsm_config*, %struct.gsm_config** %5, align 8
  %237 = getelementptr inbounds %struct.gsm_config, %struct.gsm_config* %236, i32 0, i32 7
  %238 = load i64, i64* %237, align 8
  %239 = load %struct.gsm_mux*, %struct.gsm_mux** %4, align 8
  %240 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %239, i32 0, i32 0
  store i64 %238, i64* %240, align 8
  br label %241

241:                                              ; preds = %235, %230
  %242 = load %struct.gsm_config*, %struct.gsm_config** %5, align 8
  %243 = getelementptr inbounds %struct.gsm_config, %struct.gsm_config* %242, i32 0, i32 8
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %252

246:                                              ; preds = %241
  %247 = load %struct.gsm_config*, %struct.gsm_config** %5, align 8
  %248 = getelementptr inbounds %struct.gsm_config, %struct.gsm_config* %247, i32 0, i32 8
  %249 = load i64, i64* %248, align 8
  %250 = load %struct.gsm_mux*, %struct.gsm_mux** %4, align 8
  %251 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %250, i32 0, i32 1
  store i64 %249, i64* %251, align 8
  br label %252

252:                                              ; preds = %246, %241
  %253 = load i32, i32* %7, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %252
  %256 = load %struct.gsm_mux*, %struct.gsm_mux** %4, align 8
  %257 = call i32 @gsm_activate_mux(%struct.gsm_mux* %256)
  br label %258

258:                                              ; preds = %255, %252
  %259 = load %struct.gsm_mux*, %struct.gsm_mux** %4, align 8
  %260 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %259, i32 0, i32 4
  %261 = load i32, i32* %260, align 8
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %273

263:                                              ; preds = %258
  %264 = load i32, i32* %6, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %273

266:                                              ; preds = %263
  %267 = load %struct.gsm_mux*, %struct.gsm_mux** %4, align 8
  %268 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %267, i32 0, i32 8
  %269 = load i32*, i32** %268, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 0
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @gsm_dlci_begin_open(i32 %271)
  br label %273

273:                                              ; preds = %266, %263, %258
  store i32 0, i32* %3, align 4
  br label %274

274:                                              ; preds = %273, %172, %85, %72, %64, %56, %48, %23
  %275 = load i32, i32* %3, align 4
  ret i32 %275
}

declare dso_local i32 @gsm_disconnect(%struct.gsm_mux*) #1

declare dso_local i32 @gsm_cleanup_mux(%struct.gsm_mux*) #1

declare dso_local i32 @gsm_activate_mux(%struct.gsm_mux*) #1

declare dso_local i32 @gsm_dlci_begin_open(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
