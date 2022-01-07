; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_esp_scsi.c_esp_reset_esp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_esp_scsi.c_esp_reset_esp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ESP_CMD_RC = common dso_local global i32 0, align 4
@ESP_CMD_NULL = common dso_local global i32 0, align 4
@ESP_CMD_DMA = common dso_local global i32 0, align 4
@FAST = common dso_local global i32 0, align 4
@ESP_CONFIG2_FENAB = common dso_local global i32 0, align 4
@ESP_CFG2 = common dso_local global i32 0, align 4
@ESP_UID = common dso_local global i32 0, align 4
@ESP_CONFIG4_GE1 = common dso_local global i32 0, align 4
@ESP_CFG4 = common dso_local global i32 0, align 4
@ESP_CFG1 = common dso_local global i32 0, align 4
@ESP_CFG3 = common dso_local global i32 0, align 4
@ESP_CONFIG2_HME32 = common dso_local global i32 0, align 4
@ESP_CONFIG2_HMEFENAB = common dso_local global i32 0, align 4
@ESP_CONFIG3_FCLOCK = common dso_local global i32 0, align 4
@ESP_CONFIG3_OBPUSH = common dso_local global i32 0, align 4
@ESP_CONFIG3_IDBIT3 = common dso_local global i32 0, align 4
@ESP_CONFIG3_FCLK = common dso_local global i32 0, align 4
@ESP_FLAG_DIFFERENTIAL = common dso_local global i32 0, align 4
@ESP_CFACT = common dso_local global i32 0, align 4
@ESP_STP = common dso_local global i32 0, align 4
@ESP_SOFF = common dso_local global i32 0, align 4
@ESP_TIMEO = common dso_local global i32 0, align 4
@ESP_INTRPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esp*)* @esp_reset_esp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esp_reset_esp(%struct.esp* %0) #0 {
  %2 = alloca %struct.esp*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.esp* %0, %struct.esp** %2, align 8
  %8 = load %struct.esp*, %struct.esp** %2, align 8
  %9 = load i32, i32* @ESP_CMD_RC, align 4
  %10 = call i32 @scsi_esp_cmd(%struct.esp* %8, i32 %9)
  %11 = load %struct.esp*, %struct.esp** %2, align 8
  %12 = load i32, i32* @ESP_CMD_NULL, align 4
  %13 = load i32, i32* @ESP_CMD_DMA, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @scsi_esp_cmd(%struct.esp* %11, i32 %14)
  %16 = load %struct.esp*, %struct.esp** %2, align 8
  %17 = getelementptr inbounds %struct.esp, %struct.esp* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @FAST, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load i32, i32* @ESP_CONFIG2_FENAB, align 4
  %23 = load i32, i32* @ESP_CFG2, align 4
  %24 = call i32 @esp_write8(i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %21, %1
  %26 = load %struct.esp*, %struct.esp** %2, align 8
  %27 = load i32, i32* @ESP_CMD_NULL, align 4
  %28 = load i32, i32* @ESP_CMD_DMA, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @scsi_esp_cmd(%struct.esp* %26, i32 %29)
  %31 = load %struct.esp*, %struct.esp** %2, align 8
  %32 = getelementptr inbounds %struct.esp, %struct.esp* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = mul nsw i32 35, %33
  %35 = sdiv i32 %34, 1000
  %36 = load %struct.esp*, %struct.esp** %2, align 8
  %37 = getelementptr inbounds %struct.esp, %struct.esp* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.esp*, %struct.esp** %2, align 8
  %39 = getelementptr inbounds %struct.esp, %struct.esp* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @FAST, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %72

43:                                               ; preds = %25
  %44 = load i32, i32* @ESP_UID, align 4
  %45 = call i32 @esp_read8(i32 %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = and i32 %46, 248
  %48 = ashr i32 %47, 3
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load %struct.esp*, %struct.esp** %2, align 8
  %53 = getelementptr inbounds %struct.esp, %struct.esp* %52, i32 0, i32 0
  store i32 130, i32* %53, align 8
  br label %64

54:                                               ; preds = %43
  %55 = load i32, i32* %3, align 4
  %56 = icmp eq i32 %55, 10
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load %struct.esp*, %struct.esp** %2, align 8
  %59 = getelementptr inbounds %struct.esp, %struct.esp* %58, i32 0, i32 0
  store i32 129, i32* %59, align 8
  br label %63

60:                                               ; preds = %54
  %61 = load %struct.esp*, %struct.esp** %2, align 8
  %62 = getelementptr inbounds %struct.esp, %struct.esp* %61, i32 0, i32 0
  store i32 131, i32* %62, align 8
  br label %63

63:                                               ; preds = %60, %57
  br label %64

64:                                               ; preds = %63, %51
  %65 = load %struct.esp*, %struct.esp** %2, align 8
  %66 = getelementptr inbounds %struct.esp, %struct.esp* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = mul nsw i32 4, %67
  %69 = sdiv i32 %68, 1000
  %70 = load %struct.esp*, %struct.esp** %2, align 8
  %71 = getelementptr inbounds %struct.esp, %struct.esp* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  br label %80

72:                                               ; preds = %25
  %73 = load %struct.esp*, %struct.esp** %2, align 8
  %74 = getelementptr inbounds %struct.esp, %struct.esp* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = mul nsw i32 5, %75
  %77 = sdiv i32 %76, 1000
  %78 = load %struct.esp*, %struct.esp** %2, align 8
  %79 = getelementptr inbounds %struct.esp, %struct.esp* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %72, %64
  %81 = load %struct.esp*, %struct.esp** %2, align 8
  %82 = getelementptr inbounds %struct.esp, %struct.esp* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %83, 130
  br i1 %84, label %85, label %105

85:                                               ; preds = %80
  %86 = load i32, i32* @ESP_CONFIG4_GE1, align 4
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @ESP_CFG4, align 4
  %89 = call i32 @esp_write8(i32 %87, i32 %88)
  %90 = load i32, i32* @ESP_CFG4, align 4
  %91 = call i32 @esp_read8(i32 %90)
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* @ESP_CONFIG4_GE1, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %85
  %97 = load %struct.esp*, %struct.esp** %2, align 8
  %98 = getelementptr inbounds %struct.esp, %struct.esp* %97, i32 0, i32 0
  store i32 128, i32* %98, align 8
  %99 = load %struct.esp*, %struct.esp** %2, align 8
  %100 = getelementptr inbounds %struct.esp, %struct.esp* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @ESP_CFG4, align 4
  %103 = call i32 @esp_write8(i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %96, %85
  br label %105

105:                                              ; preds = %104, %80
  %106 = load %struct.esp*, %struct.esp** %2, align 8
  %107 = getelementptr inbounds %struct.esp, %struct.esp* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 3
  %110 = ashr i32 %109, 2
  %111 = load %struct.esp*, %struct.esp** %2, align 8
  %112 = getelementptr inbounds %struct.esp, %struct.esp* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  %113 = load %struct.esp*, %struct.esp** %2, align 8
  %114 = getelementptr inbounds %struct.esp, %struct.esp* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, 3
  %117 = ashr i32 %116, 2
  %118 = load %struct.esp*, %struct.esp** %2, align 8
  %119 = getelementptr inbounds %struct.esp, %struct.esp* %118, i32 0, i32 3
  store i32 %117, i32* %119, align 4
  %120 = load %struct.esp*, %struct.esp** %2, align 8
  %121 = getelementptr inbounds %struct.esp, %struct.esp* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @ESP_CFG1, align 4
  %124 = call i32 @esp_write8(i32 %122, i32 %123)
  %125 = load %struct.esp*, %struct.esp** %2, align 8
  %126 = getelementptr inbounds %struct.esp, %struct.esp* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  switch i32 %127, label %276 [
    i32 134, label %128
    i32 133, label %129
    i32 132, label %135
    i32 129, label %154
    i32 130, label %162
    i32 128, label %162
    i32 131, label %245
  ]

128:                                              ; preds = %105
  br label %277

129:                                              ; preds = %105
  %130 = load %struct.esp*, %struct.esp** %2, align 8
  %131 = getelementptr inbounds %struct.esp, %struct.esp* %130, i32 0, i32 6
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @ESP_CFG2, align 4
  %134 = call i32 @esp_write8(i32 %132, i32 %133)
  br label %277

135:                                              ; preds = %105
  %136 = load %struct.esp*, %struct.esp** %2, align 8
  %137 = getelementptr inbounds %struct.esp, %struct.esp* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @ESP_CFG2, align 4
  %140 = call i32 @esp_write8(i32 %138, i32 %139)
  %141 = load %struct.esp*, %struct.esp** %2, align 8
  %142 = getelementptr inbounds %struct.esp, %struct.esp* %141, i32 0, i32 15
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i64 0
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.esp*, %struct.esp** %2, align 8
  %148 = getelementptr inbounds %struct.esp, %struct.esp* %147, i32 0, i32 7
  store i32 %146, i32* %148, align 4
  %149 = load %struct.esp*, %struct.esp** %2, align 8
  %150 = getelementptr inbounds %struct.esp, %struct.esp* %149, i32 0, i32 7
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @ESP_CFG3, align 4
  %153 = call i32 @esp_write8(i32 %151, i32 %152)
  br label %277

154:                                              ; preds = %105
  %155 = load i32, i32* @ESP_CONFIG2_HME32, align 4
  %156 = load i32, i32* @ESP_CONFIG2_HMEFENAB, align 4
  %157 = or i32 %155, %156
  %158 = load %struct.esp*, %struct.esp** %2, align 8
  %159 = getelementptr inbounds %struct.esp, %struct.esp* %158, i32 0, i32 6
  %160 = load i32, i32* %159, align 8
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 8
  br label %162

162:                                              ; preds = %105, %105, %154
  %163 = load %struct.esp*, %struct.esp** %2, align 8
  %164 = getelementptr inbounds %struct.esp, %struct.esp* %163, i32 0, i32 6
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @ESP_CFG2, align 4
  %167 = call i32 @esp_write8(i32 %165, i32 %166)
  %168 = load %struct.esp*, %struct.esp** %2, align 8
  %169 = getelementptr inbounds %struct.esp, %struct.esp* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = icmp eq i32 %170, 129
  br i1 %171, label %172, label %196

172:                                              ; preds = %162
  %173 = load %struct.esp*, %struct.esp** %2, align 8
  %174 = getelementptr inbounds %struct.esp, %struct.esp* %173, i32 0, i32 15
  %175 = load %struct.TYPE_2__*, %struct.TYPE_2__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i64 0
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  store i32 %178, i32* %6, align 4
  %179 = load i32, i32* @ESP_CONFIG3_FCLOCK, align 4
  %180 = load i32, i32* @ESP_CONFIG3_OBPUSH, align 4
  %181 = or i32 %179, %180
  %182 = load i32, i32* %6, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %6, align 4
  %184 = load %struct.esp*, %struct.esp** %2, align 8
  %185 = getelementptr inbounds %struct.esp, %struct.esp* %184, i32 0, i32 8
  %186 = load i32, i32* %185, align 8
  %187 = icmp sge i32 %186, 8
  br i1 %187, label %188, label %192

188:                                              ; preds = %172
  %189 = load i32, i32* @ESP_CONFIG3_IDBIT3, align 4
  %190 = load i32, i32* %6, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %6, align 4
  br label %192

192:                                              ; preds = %188, %172
  %193 = load %struct.esp*, %struct.esp** %2, align 8
  %194 = load i32, i32* %6, align 4
  %195 = call i32 @esp_set_all_config3(%struct.esp* %193, i32 %194)
  br label %209

196:                                              ; preds = %162
  %197 = load %struct.esp*, %struct.esp** %2, align 8
  %198 = getelementptr inbounds %struct.esp, %struct.esp* %197, i32 0, i32 15
  %199 = load %struct.TYPE_2__*, %struct.TYPE_2__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i64 0
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  store i32 %202, i32* %7, align 4
  %203 = load i32, i32* @ESP_CONFIG3_FCLK, align 4
  %204 = load i32, i32* %7, align 4
  %205 = or i32 %204, %203
  store i32 %205, i32* %7, align 4
  %206 = load %struct.esp*, %struct.esp** %2, align 8
  %207 = load i32, i32* %7, align 4
  %208 = call i32 @esp_set_all_config3(%struct.esp* %206, i32 %207)
  br label %209

209:                                              ; preds = %196, %192
  %210 = load %struct.esp*, %struct.esp** %2, align 8
  %211 = getelementptr inbounds %struct.esp, %struct.esp* %210, i32 0, i32 15
  %212 = load %struct.TYPE_2__*, %struct.TYPE_2__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i64 0
  %214 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.esp*, %struct.esp** %2, align 8
  %217 = getelementptr inbounds %struct.esp, %struct.esp* %216, i32 0, i32 7
  store i32 %215, i32* %217, align 4
  %218 = load %struct.esp*, %struct.esp** %2, align 8
  %219 = getelementptr inbounds %struct.esp, %struct.esp* %218, i32 0, i32 7
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @ESP_CFG3, align 4
  %222 = call i32 @esp_write8(i32 %220, i32 %221)
  %223 = load %struct.esp*, %struct.esp** %2, align 8
  %224 = getelementptr inbounds %struct.esp, %struct.esp* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = icmp eq i32 %225, 129
  br i1 %226, label %227, label %230

227:                                              ; preds = %209
  %228 = load %struct.esp*, %struct.esp** %2, align 8
  %229 = getelementptr inbounds %struct.esp, %struct.esp* %228, i32 0, i32 9
  store i32 80, i32* %229, align 4
  br label %244

230:                                              ; preds = %209
  %231 = load %struct.esp*, %struct.esp** %2, align 8
  %232 = getelementptr inbounds %struct.esp, %struct.esp* %231, i32 0, i32 10
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* @ESP_FLAG_DIFFERENTIAL, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %230
  %238 = load %struct.esp*, %struct.esp** %2, align 8
  %239 = getelementptr inbounds %struct.esp, %struct.esp* %238, i32 0, i32 9
  store i32 0, i32* %239, align 4
  br label %243

240:                                              ; preds = %230
  %241 = load %struct.esp*, %struct.esp** %2, align 8
  %242 = getelementptr inbounds %struct.esp, %struct.esp* %241, i32 0, i32 9
  store i32 96, i32* %242, align 4
  br label %243

243:                                              ; preds = %240, %237
  br label %244

244:                                              ; preds = %243, %227
  br label %277

245:                                              ; preds = %105
  %246 = load %struct.esp*, %struct.esp** %2, align 8
  %247 = getelementptr inbounds %struct.esp, %struct.esp* %246, i32 0, i32 6
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* @ESP_CFG2, align 4
  %250 = call i32 @esp_write8(i32 %248, i32 %249)
  %251 = load %struct.esp*, %struct.esp** %2, align 8
  %252 = load %struct.esp*, %struct.esp** %2, align 8
  %253 = getelementptr inbounds %struct.esp, %struct.esp* %252, i32 0, i32 15
  %254 = load %struct.TYPE_2__*, %struct.TYPE_2__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %254, i64 0
  %256 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* @ESP_CONFIG3_FCLOCK, align 4
  %259 = or i32 %257, %258
  %260 = call i32 @esp_set_all_config3(%struct.esp* %251, i32 %259)
  %261 = load %struct.esp*, %struct.esp** %2, align 8
  %262 = getelementptr inbounds %struct.esp, %struct.esp* %261, i32 0, i32 15
  %263 = load %struct.TYPE_2__*, %struct.TYPE_2__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %263, i64 0
  %265 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.esp*, %struct.esp** %2, align 8
  %268 = getelementptr inbounds %struct.esp, %struct.esp* %267, i32 0, i32 7
  store i32 %266, i32* %268, align 4
  %269 = load %struct.esp*, %struct.esp** %2, align 8
  %270 = getelementptr inbounds %struct.esp, %struct.esp* %269, i32 0, i32 7
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* @ESP_CFG3, align 4
  %273 = call i32 @esp_write8(i32 %271, i32 %272)
  %274 = load %struct.esp*, %struct.esp** %2, align 8
  %275 = getelementptr inbounds %struct.esp, %struct.esp* %274, i32 0, i32 9
  store i32 32, i32* %275, align 4
  br label %277

276:                                              ; preds = %105
  br label %277

277:                                              ; preds = %276, %245, %244, %135, %129, %128
  %278 = load %struct.esp*, %struct.esp** %2, align 8
  %279 = getelementptr inbounds %struct.esp, %struct.esp* %278, i32 0, i32 11
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* @ESP_CFACT, align 4
  %282 = call i32 @esp_write8(i32 %280, i32 %281)
  %283 = load %struct.esp*, %struct.esp** %2, align 8
  %284 = getelementptr inbounds %struct.esp, %struct.esp* %283, i32 0, i32 12
  store i32 0, i32* %284, align 8
  %285 = load %struct.esp*, %struct.esp** %2, align 8
  %286 = getelementptr inbounds %struct.esp, %struct.esp* %285, i32 0, i32 12
  %287 = load i32, i32* %286, align 8
  %288 = load i32, i32* @ESP_STP, align 4
  %289 = call i32 @esp_write8(i32 %287, i32 %288)
  %290 = load %struct.esp*, %struct.esp** %2, align 8
  %291 = getelementptr inbounds %struct.esp, %struct.esp* %290, i32 0, i32 13
  store i32 0, i32* %291, align 4
  %292 = load %struct.esp*, %struct.esp** %2, align 8
  %293 = getelementptr inbounds %struct.esp, %struct.esp* %292, i32 0, i32 13
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* @ESP_SOFF, align 4
  %296 = call i32 @esp_write8(i32 %294, i32 %295)
  %297 = load %struct.esp*, %struct.esp** %2, align 8
  %298 = getelementptr inbounds %struct.esp, %struct.esp* %297, i32 0, i32 14
  %299 = load i32, i32* %298, align 8
  %300 = load i32, i32* @ESP_TIMEO, align 4
  %301 = call i32 @esp_write8(i32 %299, i32 %300)
  %302 = load i32, i32* @ESP_INTRPT, align 4
  %303 = call i32 @esp_read8(i32 %302)
  %304 = call i32 @udelay(i32 100)
  ret void
}

declare dso_local i32 @scsi_esp_cmd(%struct.esp*, i32) #1

declare dso_local i32 @esp_write8(i32, i32) #1

declare dso_local i32 @esp_read8(i32) #1

declare dso_local i32 @esp_set_all_config3(%struct.esp*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
