; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_ds.c_pcmcia_devmatch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_ds.c_pcmcia_devmatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i64, i64, i64, i64, i64, i32, i64, i64, i64, i64*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.pcmcia_device_id = type { i32, i64, i64, i64, i64, i64, i32, i32* }

@PCMCIA_DEV_ID_MATCH_MANF_ID = common dso_local global i32 0, align 4
@PCMCIA_DEV_ID_MATCH_CARD_ID = common dso_local global i32 0, align 4
@PCMCIA_DEV_ID_MATCH_FUNCTION = common dso_local global i32 0, align 4
@PCMCIA_DEV_ID_MATCH_PROD_ID1 = common dso_local global i32 0, align 4
@PCMCIA_DEV_ID_MATCH_PROD_ID2 = common dso_local global i32 0, align 4
@PCMCIA_DEV_ID_MATCH_PROD_ID3 = common dso_local global i32 0, align 4
@PCMCIA_DEV_ID_MATCH_PROD_ID4 = common dso_local global i32 0, align 4
@PCMCIA_DEV_ID_MATCH_DEVICE_NO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"this is a pseudo-multi-function device\0A\00", align 1
@PCMCIA_DEV_ID_MATCH_FUNC_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"skipping FUNC_ID match until userspace ACK\0A\00", align 1
@PCMCIA_DEV_ID_MATCH_FAKE_CIS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"device needs a fake CIS\0A\00", align 1
@PCMCIA_DEV_ID_MATCH_ANONYMOUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*, %struct.pcmcia_device_id*)* @pcmcia_devmatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcmcia_devmatch(%struct.pcmcia_device* %0, %struct.pcmcia_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcmcia_device*, align 8
  %5 = alloca %struct.pcmcia_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %4, align 8
  store %struct.pcmcia_device_id* %1, %struct.pcmcia_device_id** %5, align 8
  %8 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %9 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @PCMCIA_DEV_ID_MATCH_MANF_ID, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %2
  %15 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %16 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %15, i32 0, i32 8
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %21 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %24 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19, %14
  store i32 0, i32* %3, align 4
  br label %348

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %28, %2
  %30 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %31 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @PCMCIA_DEV_ID_MATCH_CARD_ID, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %29
  %37 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %38 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %37, i32 0, i32 7
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %43 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %46 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %41, %36
  store i32 0, i32* %3, align 4
  br label %348

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %50, %29
  %52 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %53 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @PCMCIA_DEV_ID_MATCH_FUNCTION, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %51
  %59 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %60 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %63 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %61, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %348

67:                                               ; preds = %58
  br label %68

68:                                               ; preds = %67, %51
  %69 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %70 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @PCMCIA_DEV_ID_MATCH_PROD_ID1, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %98

75:                                               ; preds = %68
  %76 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %77 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %76, i32 0, i32 9
  %78 = load i64*, i64** %77, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %75
  store i32 0, i32* %3, align 4
  br label %348

83:                                               ; preds = %75
  %84 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %85 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %84, i32 0, i32 7
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %90 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %89, i32 0, i32 9
  %91 = load i64*, i64** %90, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 0
  %93 = load i64, i64* %92, align 8
  %94 = call i64 @strcmp(i32 %88, i64 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %83
  store i32 0, i32* %3, align 4
  br label %348

97:                                               ; preds = %83
  br label %98

98:                                               ; preds = %97, %68
  %99 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %100 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @PCMCIA_DEV_ID_MATCH_PROD_ID2, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %128

105:                                              ; preds = %98
  %106 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %107 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %106, i32 0, i32 9
  %108 = load i64*, i64** %107, align 8
  %109 = getelementptr inbounds i64, i64* %108, i64 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %105
  store i32 0, i32* %3, align 4
  br label %348

113:                                              ; preds = %105
  %114 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %115 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %114, i32 0, i32 7
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %120 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %119, i32 0, i32 9
  %121 = load i64*, i64** %120, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 1
  %123 = load i64, i64* %122, align 8
  %124 = call i64 @strcmp(i32 %118, i64 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %113
  store i32 0, i32* %3, align 4
  br label %348

127:                                              ; preds = %113
  br label %128

128:                                              ; preds = %127, %98
  %129 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %130 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @PCMCIA_DEV_ID_MATCH_PROD_ID3, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %158

135:                                              ; preds = %128
  %136 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %137 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %136, i32 0, i32 9
  %138 = load i64*, i64** %137, align 8
  %139 = getelementptr inbounds i64, i64* %138, i64 2
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %135
  store i32 0, i32* %3, align 4
  br label %348

143:                                              ; preds = %135
  %144 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %145 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %144, i32 0, i32 7
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 2
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %150 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %149, i32 0, i32 9
  %151 = load i64*, i64** %150, align 8
  %152 = getelementptr inbounds i64, i64* %151, i64 2
  %153 = load i64, i64* %152, align 8
  %154 = call i64 @strcmp(i32 %148, i64 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %143
  store i32 0, i32* %3, align 4
  br label %348

157:                                              ; preds = %143
  br label %158

158:                                              ; preds = %157, %128
  %159 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %160 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @PCMCIA_DEV_ID_MATCH_PROD_ID4, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %188

165:                                              ; preds = %158
  %166 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %167 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %166, i32 0, i32 9
  %168 = load i64*, i64** %167, align 8
  %169 = getelementptr inbounds i64, i64* %168, i64 3
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %165
  store i32 0, i32* %3, align 4
  br label %348

173:                                              ; preds = %165
  %174 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %175 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %174, i32 0, i32 7
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 3
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %180 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %179, i32 0, i32 9
  %181 = load i64*, i64** %180, align 8
  %182 = getelementptr inbounds i64, i64* %181, i64 3
  %183 = load i64, i64* %182, align 8
  %184 = call i64 @strcmp(i32 %178, i64 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %173
  store i32 0, i32* %3, align 4
  br label %348

187:                                              ; preds = %173
  br label %188

188:                                              ; preds = %187, %158
  %189 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %190 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @PCMCIA_DEV_ID_MATCH_DEVICE_NO, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %222

195:                                              ; preds = %188
  %196 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %197 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %196, i32 0, i32 11
  %198 = call i32 @dev_dbg(i32* %197, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %199 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %200 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %199, i32 0, i32 10
  %201 = load %struct.TYPE_2__*, %struct.TYPE_2__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 2
  %203 = call i32 @mutex_lock(i32* %202)
  %204 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %205 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %204, i32 0, i32 10
  %206 = load %struct.TYPE_2__*, %struct.TYPE_2__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 0
  store i32 1, i32* %207, align 4
  %208 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %209 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %208, i32 0, i32 10
  %210 = load %struct.TYPE_2__*, %struct.TYPE_2__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 2
  %212 = call i32 @mutex_unlock(i32* %211)
  %213 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %214 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %213, i32 0, i32 3
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %217 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %216, i32 0, i32 4
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %215, %218
  br i1 %219, label %220, label %221

220:                                              ; preds = %195
  store i32 0, i32* %3, align 4
  br label %348

221:                                              ; preds = %195
  br label %222

222:                                              ; preds = %221, %188
  %223 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %224 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @PCMCIA_DEV_ID_MATCH_FUNC_ID, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %278

229:                                              ; preds = %222
  %230 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %231 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %230, i32 0, i32 6
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %242

234:                                              ; preds = %229
  %235 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %236 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %235, i32 0, i32 4
  %237 = load i64, i64* %236, align 8
  %238 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %239 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %238, i32 0, i32 5
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %237, %240
  br i1 %241, label %242, label %243

242:                                              ; preds = %234, %229
  store i32 0, i32* %3, align 4
  br label %348

243:                                              ; preds = %234
  %244 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %245 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %244, i32 0, i32 10
  %246 = load %struct.TYPE_2__*, %struct.TYPE_2__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %243
  store i32 0, i32* %3, align 4
  br label %348

251:                                              ; preds = %243
  %252 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %253 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %252, i32 0, i32 3
  %254 = load i64, i64* %253, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %251
  store i32 0, i32* %3, align 4
  br label %348

257:                                              ; preds = %251
  %258 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %259 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %258, i32 0, i32 10
  %260 = load %struct.TYPE_2__*, %struct.TYPE_2__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %260, i32 0, i32 2
  %262 = call i32 @mutex_lock(i32* %261)
  %263 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %264 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %263, i32 0, i32 5
  %265 = load i32, i32* %264, align 8
  store i32 %265, i32* %6, align 4
  %266 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %267 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %266, i32 0, i32 10
  %268 = load %struct.TYPE_2__*, %struct.TYPE_2__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %268, i32 0, i32 2
  %270 = call i32 @mutex_unlock(i32* %269)
  %271 = load i32, i32* %6, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %277, label %273

273:                                              ; preds = %257
  %274 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %275 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %274, i32 0, i32 11
  %276 = call i32 @dev_dbg(i32* %275, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %348

277:                                              ; preds = %257
  br label %278

278:                                              ; preds = %277, %222
  %279 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %280 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* @PCMCIA_DEV_ID_MATCH_FAKE_CIS, align 4
  %283 = and i32 %281, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %305

285:                                              ; preds = %278
  %286 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %287 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %286, i32 0, i32 11
  %288 = call i32 @dev_dbg(i32* %287, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %289 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %290 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %289, i32 0, i32 10
  %291 = load %struct.TYPE_2__*, %struct.TYPE_2__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %304, label %295

295:                                              ; preds = %285
  %296 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %297 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %298 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %297, i32 0, i32 6
  %299 = load i32, i32* %298, align 8
  %300 = call i64 @pcmcia_load_firmware(%struct.pcmcia_device* %296, i32 %299)
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %303

302:                                              ; preds = %295
  store i32 0, i32* %3, align 4
  br label %348

303:                                              ; preds = %295
  br label %304

304:                                              ; preds = %303, %285
  br label %305

305:                                              ; preds = %304, %278
  %306 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %307 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = load i32, i32* @PCMCIA_DEV_ID_MATCH_ANONYMOUS, align 4
  %310 = and i32 %308, %309
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %347

312:                                              ; preds = %305
  store i32 0, i32* %7, align 4
  br label %313

313:                                              ; preds = %327, %312
  %314 = load i32, i32* %7, align 4
  %315 = icmp slt i32 %314, 4
  br i1 %315, label %316, label %330

316:                                              ; preds = %313
  %317 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %318 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %317, i32 0, i32 9
  %319 = load i64*, i64** %318, align 8
  %320 = load i32, i32* %7, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i64, i64* %319, i64 %321
  %323 = load i64, i64* %322, align 8
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %326

325:                                              ; preds = %316
  store i32 0, i32* %3, align 4
  br label %348

326:                                              ; preds = %316
  br label %327

327:                                              ; preds = %326
  %328 = load i32, i32* %7, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %7, align 4
  br label %313

330:                                              ; preds = %313
  %331 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %332 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %331, i32 0, i32 8
  %333 = load i64, i64* %332, align 8
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %345, label %335

335:                                              ; preds = %330
  %336 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %337 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %336, i32 0, i32 7
  %338 = load i64, i64* %337, align 8
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %345, label %340

340:                                              ; preds = %335
  %341 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %342 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %341, i32 0, i32 6
  %343 = load i64, i64* %342, align 8
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %346

345:                                              ; preds = %340, %335, %330
  store i32 0, i32* %3, align 4
  br label %348

346:                                              ; preds = %340
  br label %347

347:                                              ; preds = %346, %305
  store i32 1, i32* %3, align 4
  br label %348

348:                                              ; preds = %347, %345, %325, %302, %273, %256, %250, %242, %220, %186, %172, %156, %142, %126, %112, %96, %82, %66, %49, %27
  %349 = load i32, i32* %3, align 4
  ret i32 %349
}

declare dso_local i64 @strcmp(i32, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @pcmcia_load_firmware(%struct.pcmcia_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
