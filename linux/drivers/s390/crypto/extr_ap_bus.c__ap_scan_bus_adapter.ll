; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_ap_bus.c__ap_scan_bus_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_ap_bus.c__ap_scan_bus_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device*, i32* }
%struct.ap_card = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device }
%struct.ap_queue = type { i64, %struct.TYPE_3__, %struct.ap_card*, i32 }
%struct.TYPE_3__ = type { %struct.device }

@ap_bus_type = common dso_local global i32 0, align 4
@__match_card_device_with_id = common dso_local global i32 0, align 4
@__ap_queue_devices_with_id_unregister = common dso_local global i32 0, align 4
@AP_DOMAINS = common dso_local global i32 0, align 4
@DBF_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"card=%02x type changed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"card=%02x functions changed.\0A\00", align 1
@__match_queue_device_with_qid = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@AP_STATE_BORKED = common dso_local global i64 0, align 8
@DBF_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"removing broken queue=%02x.%04x\0A\00", align 1
@ap_root_device = common dso_local global %struct.device* null, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"card%02x\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"%02x.%04x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @_ap_scan_bus_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ap_scan_bus_adapter(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ap_card*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.ap_queue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to i8*
  %17 = load i32, i32* @__match_card_device_with_id, align 4
  %18 = call %struct.device* @bus_find_device(i32* @ap_bus_type, i32* null, i8* %16, i32 %17)
  store %struct.device* %18, %struct.device** %6, align 8
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = icmp ne %struct.device* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %6, align 8
  %23 = call %struct.ap_card* @to_ap_card(%struct.device* %22)
  br label %25

24:                                               ; preds = %1
  br label %25

25:                                               ; preds = %24, %21
  %26 = phi %struct.ap_card* [ %23, %21 ], [ null, %24 ]
  store %struct.ap_card* %26, %struct.ap_card** %5, align 8
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @ap_test_config_card_id(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %44, label %30

30:                                               ; preds = %25
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = icmp ne %struct.device* %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = load i32, i32* %2, align 4
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i8*
  %37 = load i32, i32* @__ap_queue_devices_with_id_unregister, align 4
  %38 = call i32 @bus_for_each_dev(i32* @ap_bus_type, i32* null, i8* %36, i32 %37)
  %39 = load %struct.device*, %struct.device** %6, align 8
  %40 = call i32 @device_unregister(%struct.device* %39)
  %41 = load %struct.device*, %struct.device** %6, align 8
  %42 = call i32 @put_device(%struct.device* %41)
  br label %43

43:                                               ; preds = %33, %30
  br label %287

44:                                               ; preds = %25
  %45 = load %struct.ap_card*, %struct.ap_card** %5, align 8
  %46 = icmp ne %struct.ap_card* %45, null
  br i1 %46, label %47, label %110

47:                                               ; preds = %44
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %61, %47
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @AP_DOMAINS, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %48
  %53 = load i32, i32* %2, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i64 @AP_MKQID(i32 %53, i32 %54)
  store i64 %55, i64* %3, align 8
  %56 = load i64, i64* %3, align 8
  %57 = call i32 @ap_query_queue(i64 %56, i32* %10, i32* %11, i32* %4)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %64

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %48

64:                                               ; preds = %59, %48
  store i32 0, i32* %13, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @AP_DOMAINS, align 4
  %67 = icmp sge i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i32 1, i32* %13, align 4
  br label %91

69:                                               ; preds = %64
  %70 = load %struct.ap_card*, %struct.ap_card** %5, align 8
  %71 = getelementptr inbounds %struct.ap_card, %struct.ap_card* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load i32, i32* @DBF_INFO, align 4
  %77 = load i32, i32* %2, align 4
  %78 = call i32 (i32, i8*, i32, ...) @AP_DBF(i32 %76, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %77)
  store i32 1, i32* %13, align 4
  br label %90

79:                                               ; preds = %69
  %80 = load %struct.ap_card*, %struct.ap_card** %5, align 8
  %81 = getelementptr inbounds %struct.ap_card, %struct.ap_card* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %4, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load i32, i32* @DBF_INFO, align 4
  %87 = load i32, i32* %2, align 4
  %88 = call i32 (i32, i8*, i32, ...) @AP_DBF(i32 %86, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  store i32 1, i32* %13, align 4
  br label %89

89:                                               ; preds = %85, %79
  br label %90

90:                                               ; preds = %89, %75
  br label %91

91:                                               ; preds = %90, %68
  %92 = load i32, i32* %13, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %109

94:                                               ; preds = %91
  %95 = load i32, i32* %2, align 4
  %96 = sext i32 %95 to i64
  %97 = inttoptr i64 %96 to i8*
  %98 = load i32, i32* @__ap_queue_devices_with_id_unregister, align 4
  %99 = call i32 @bus_for_each_dev(i32* @ap_bus_type, i32* null, i8* %97, i32 %98)
  %100 = load %struct.device*, %struct.device** %6, align 8
  %101 = call i32 @device_unregister(%struct.device* %100)
  %102 = load %struct.device*, %struct.device** %6, align 8
  %103 = call i32 @put_device(%struct.device* %102)
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* @AP_DOMAINS, align 4
  %106 = icmp sge i32 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %94
  br label %287

108:                                              ; preds = %94
  store %struct.ap_card* null, %struct.ap_card** %5, align 8
  br label %109

109:                                              ; preds = %108, %91
  br label %110

110:                                              ; preds = %109, %44
  store i32 0, i32* %9, align 4
  br label %111

111:                                              ; preds = %276, %110
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* @AP_DOMAINS, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %279

115:                                              ; preds = %111
  %116 = load i32, i32* %2, align 4
  %117 = load i32, i32* %9, align 4
  %118 = call i64 @AP_MKQID(i32 %116, i32 %117)
  store i64 %118, i64* %3, align 8
  %119 = load i64, i64* %3, align 8
  %120 = inttoptr i64 %119 to i8*
  %121 = load i32, i32* @__match_queue_device_with_qid, align 4
  %122 = call %struct.device* @bus_find_device(i32* @ap_bus_type, i32* null, i8* %120, i32 %121)
  store %struct.device* %122, %struct.device** %6, align 8
  %123 = load %struct.device*, %struct.device** %6, align 8
  %124 = icmp ne %struct.device* %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %115
  %126 = load %struct.device*, %struct.device** %6, align 8
  %127 = call %struct.ap_queue* @to_ap_queue(%struct.device* %126)
  br label %129

128:                                              ; preds = %115
  br label %129

129:                                              ; preds = %128, %125
  %130 = phi %struct.ap_queue* [ %127, %125 ], [ null, %128 ]
  store %struct.ap_queue* %130, %struct.ap_queue** %7, align 8
  %131 = load i32, i32* %9, align 4
  %132 = call i32 @ap_test_config_usage_domain(i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %143, label %134

134:                                              ; preds = %129
  %135 = load %struct.device*, %struct.device** %6, align 8
  %136 = icmp ne %struct.device* %135, null
  br i1 %136, label %137, label %142

137:                                              ; preds = %134
  %138 = load %struct.device*, %struct.device** %6, align 8
  %139 = call i32 @device_unregister(%struct.device* %138)
  %140 = load %struct.device*, %struct.device** %6, align 8
  %141 = call i32 @put_device(%struct.device* %140)
  br label %142

142:                                              ; preds = %137, %134
  br label %276

143:                                              ; preds = %129
  %144 = load i64, i64* %3, align 8
  %145 = call i32 @ap_query_queue(i64 %144, i32* %10, i32* %11, i32* %4)
  store i32 %145, i32* %8, align 4
  %146 = load %struct.device*, %struct.device** %6, align 8
  %147 = icmp ne %struct.device* %146, null
  br i1 %147, label %148, label %180

148:                                              ; preds = %143
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* @ENODEV, align 4
  %151 = sub nsw i32 0, %150
  %152 = icmp eq i32 %149, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  store i32 1, i32* %13, align 4
  br label %167

154:                                              ; preds = %148
  %155 = load %struct.ap_queue*, %struct.ap_queue** %7, align 8
  %156 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %155, i32 0, i32 3
  %157 = call i32 @spin_lock_bh(i32* %156)
  %158 = load %struct.ap_queue*, %struct.ap_queue** %7, align 8
  %159 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @AP_STATE_BORKED, align 8
  %162 = icmp eq i64 %160, %161
  %163 = zext i1 %162 to i32
  store i32 %163, i32* %13, align 4
  %164 = load %struct.ap_queue*, %struct.ap_queue** %7, align 8
  %165 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %164, i32 0, i32 3
  %166 = call i32 @spin_unlock_bh(i32* %165)
  br label %167

167:                                              ; preds = %154, %153
  %168 = load i32, i32* %13, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %167
  %171 = load i32, i32* @DBF_DEBUG, align 4
  %172 = load i32, i32* %2, align 4
  %173 = load i32, i32* %9, align 4
  %174 = call i32 (i32, i8*, i32, ...) @AP_DBF(i32 %171, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %172, i32 %173)
  %175 = load %struct.device*, %struct.device** %6, align 8
  %176 = call i32 @device_unregister(%struct.device* %175)
  br label %177

177:                                              ; preds = %170, %167
  %178 = load %struct.device*, %struct.device** %6, align 8
  %179 = call i32 @put_device(%struct.device* %178)
  br label %276

180:                                              ; preds = %143
  %181 = load i32, i32* %8, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %180
  br label %276

184:                                              ; preds = %180
  %185 = load i64, i64* %3, align 8
  %186 = load i32, i32* %11, align 4
  %187 = load i32, i32* %4, align 4
  %188 = call i32 @ap_get_compatible_type(i64 %185, i32 %186, i32 %187)
  store i32 %188, i32* %12, align 4
  %189 = load i32, i32* %12, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %184
  br label %276

192:                                              ; preds = %184
  %193 = load %struct.ap_card*, %struct.ap_card** %5, align 8
  %194 = icmp ne %struct.ap_card* %193, null
  br i1 %194, label %236, label %195

195:                                              ; preds = %192
  %196 = load i32, i32* %2, align 4
  %197 = load i32, i32* %10, align 4
  %198 = load i32, i32* %11, align 4
  %199 = load i32, i32* %12, align 4
  %200 = load i32, i32* %4, align 4
  %201 = call %struct.ap_card* @ap_card_create(i32 %196, i32 %197, i32 %198, i32 %199, i32 %200)
  store %struct.ap_card* %201, %struct.ap_card** %5, align 8
  %202 = load %struct.ap_card*, %struct.ap_card** %5, align 8
  %203 = icmp ne %struct.ap_card* %202, null
  br i1 %203, label %205, label %204

204:                                              ; preds = %195
  br label %276

205:                                              ; preds = %195
  %206 = load %struct.ap_card*, %struct.ap_card** %5, align 8
  %207 = getelementptr inbounds %struct.ap_card, %struct.ap_card* %206, i32 0, i32 2
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.device, %struct.device* %208, i32 0, i32 1
  store i32* @ap_bus_type, i32** %209, align 8
  %210 = load %struct.device*, %struct.device** @ap_root_device, align 8
  %211 = load %struct.ap_card*, %struct.ap_card** %5, align 8
  %212 = getelementptr inbounds %struct.ap_card, %struct.ap_card* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.device, %struct.device* %213, i32 0, i32 0
  store %struct.device* %210, %struct.device** %214, align 8
  %215 = load %struct.ap_card*, %struct.ap_card** %5, align 8
  %216 = getelementptr inbounds %struct.ap_card, %struct.ap_card* %215, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 0
  %218 = load i32, i32* %2, align 4
  %219 = call i32 (%struct.device*, i8*, i32, ...) @dev_set_name(%struct.device* %217, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %218)
  %220 = load %struct.ap_card*, %struct.ap_card** %5, align 8
  %221 = getelementptr inbounds %struct.ap_card, %struct.ap_card* %220, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 0
  %223 = call i32 @device_register(%struct.device* %222)
  store i32 %223, i32* %8, align 4
  %224 = load i32, i32* %8, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %231

226:                                              ; preds = %205
  %227 = load %struct.ap_card*, %struct.ap_card** %5, align 8
  %228 = getelementptr inbounds %struct.ap_card, %struct.ap_card* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 0
  %230 = call i32 @put_device(%struct.device* %229)
  store %struct.ap_card* null, %struct.ap_card** %5, align 8
  br label %279

231:                                              ; preds = %205
  %232 = load %struct.ap_card*, %struct.ap_card** %5, align 8
  %233 = getelementptr inbounds %struct.ap_card, %struct.ap_card* %232, i32 0, i32 2
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 0
  %235 = call i32 @get_device(%struct.device* %234)
  br label %236

236:                                              ; preds = %231, %192
  %237 = load i64, i64* %3, align 8
  %238 = load i32, i32* %12, align 4
  %239 = call %struct.ap_queue* @ap_queue_create(i64 %237, i32 %238)
  store %struct.ap_queue* %239, %struct.ap_queue** %7, align 8
  %240 = load %struct.ap_queue*, %struct.ap_queue** %7, align 8
  %241 = icmp ne %struct.ap_queue* %240, null
  br i1 %241, label %243, label %242

242:                                              ; preds = %236
  br label %276

243:                                              ; preds = %236
  %244 = load %struct.ap_card*, %struct.ap_card** %5, align 8
  %245 = load %struct.ap_queue*, %struct.ap_queue** %7, align 8
  %246 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %245, i32 0, i32 2
  store %struct.ap_card* %244, %struct.ap_card** %246, align 8
  %247 = load %struct.ap_queue*, %struct.ap_queue** %7, align 8
  %248 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.device, %struct.device* %249, i32 0, i32 1
  store i32* @ap_bus_type, i32** %250, align 8
  %251 = load %struct.ap_card*, %struct.ap_card** %5, align 8
  %252 = getelementptr inbounds %struct.ap_card, %struct.ap_card* %251, i32 0, i32 2
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 0
  %254 = load %struct.ap_queue*, %struct.ap_queue** %7, align 8
  %255 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.device, %struct.device* %256, i32 0, i32 0
  store %struct.device* %253, %struct.device** %257, align 8
  %258 = load %struct.ap_queue*, %struct.ap_queue** %7, align 8
  %259 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %259, i32 0, i32 0
  %261 = load i32, i32* %2, align 4
  %262 = load i32, i32* %9, align 4
  %263 = call i32 (%struct.device*, i8*, i32, ...) @dev_set_name(%struct.device* %260, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %261, i32 %262)
  %264 = load %struct.ap_queue*, %struct.ap_queue** %7, align 8
  %265 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %265, i32 0, i32 0
  %267 = call i32 @device_register(%struct.device* %266)
  store i32 %267, i32* %8, align 4
  %268 = load i32, i32* %8, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %275

270:                                              ; preds = %243
  %271 = load %struct.ap_queue*, %struct.ap_queue** %7, align 8
  %272 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %272, i32 0, i32 0
  %274 = call i32 @put_device(%struct.device* %273)
  br label %276

275:                                              ; preds = %243
  br label %276

276:                                              ; preds = %275, %270, %242, %204, %191, %183, %177, %142
  %277 = load i32, i32* %9, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %9, align 4
  br label %111

279:                                              ; preds = %226, %111
  %280 = load %struct.ap_card*, %struct.ap_card** %5, align 8
  %281 = icmp ne %struct.ap_card* %280, null
  br i1 %281, label %282, label %287

282:                                              ; preds = %279
  %283 = load %struct.ap_card*, %struct.ap_card** %5, align 8
  %284 = getelementptr inbounds %struct.ap_card, %struct.ap_card* %283, i32 0, i32 2
  %285 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %284, i32 0, i32 0
  %286 = call i32 @put_device(%struct.device* %285)
  br label %287

287:                                              ; preds = %43, %107, %282, %279
  ret void
}

declare dso_local %struct.device* @bus_find_device(i32*, i32*, i8*, i32) #1

declare dso_local %struct.ap_card* @to_ap_card(%struct.device*) #1

declare dso_local i32 @ap_test_config_card_id(i32) #1

declare dso_local i32 @bus_for_each_dev(i32*, i32*, i8*, i32) #1

declare dso_local i32 @device_unregister(%struct.device*) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i64 @AP_MKQID(i32, i32) #1

declare dso_local i32 @ap_query_queue(i64, i32*, i32*, i32*) #1

declare dso_local i32 @AP_DBF(i32, i8*, i32, ...) #1

declare dso_local %struct.ap_queue* @to_ap_queue(%struct.device*) #1

declare dso_local i32 @ap_test_config_usage_domain(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ap_get_compatible_type(i64, i32, i32) #1

declare dso_local %struct.ap_card* @ap_card_create(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_set_name(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @device_register(%struct.device*) #1

declare dso_local i32 @get_device(%struct.device*) #1

declare dso_local %struct.ap_queue* @ap_queue_create(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
