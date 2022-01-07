; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_vc.c_pci_vc_do_save_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_vc.c_pci_vc_do_save_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_cap_saved_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [42 x i8] c"VC save buffer size does not match @0x%x\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PCI_VC_PORT_CAP1 = common dso_local global i32 0, align 4
@PCI_VC_CAP1_EVCC = common dso_local global i32 0, align 4
@PCI_VC_CAP1_LPEVCC = common dso_local global i32 0, align 4
@PCI_VC_CAP1_ARB_SIZE = common dso_local global i32 0, align 4
@PCI_VC_PORT_CTRL = common dso_local global i64 0, align 8
@PCI_VC_PORT_CAP2 = common dso_local global i32 0, align 4
@PCI_VC_CAP2_ARB_OFF = common dso_local global i32 0, align 4
@PCI_VC_CAP2_128_PHASE = common dso_local global i32 0, align 4
@PCI_VC_CAP2_64_PHASE = common dso_local global i32 0, align 4
@PCI_VC_CAP2_32_PHASE = common dso_local global i32 0, align 4
@PCI_VC_RES_CAP = common dso_local global i32 0, align 4
@PCI_CAP_VC_PER_VC_SIZEOF = common dso_local global i32 0, align 4
@PCI_VC_RES_CAP_ARB_OFF = common dso_local global i32 0, align 4
@PCI_VC_RES_CAP_256_PHASE = common dso_local global i32 0, align 4
@PCI_VC_RES_CAP_128_PHASE = common dso_local global i32 0, align 4
@PCI_VC_RES_CAP_128_PHASE_TB = common dso_local global i32 0, align 4
@PCI_VC_RES_CAP_64_PHASE = common dso_local global i32 0, align 4
@PCI_VC_RES_CAP_32_PHASE = common dso_local global i32 0, align 4
@PCI_VC_RES_CTRL = common dso_local global i32 0, align 4
@PCI_VC_RES_CTRL_ENABLE = common dso_local global i32 0, align 4
@PCI_VC_RES_CTRL_ARB_SELECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32, %struct.pci_cap_saved_state*, i32)* @pci_vc_do_save_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_vc_do_save_buffer(%struct.pci_dev* %0, i32 %1, %struct.pci_cap_saved_state* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_cap_saved_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.pci_cap_saved_state* %2, %struct.pci_cap_saved_state** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %15, align 4
  %28 = load %struct.pci_cap_saved_state*, %struct.pci_cap_saved_state** %8, align 8
  %29 = icmp ne %struct.pci_cap_saved_state* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %4
  %31 = load %struct.pci_cap_saved_state*, %struct.pci_cap_saved_state** %8, align 8
  %32 = getelementptr inbounds %struct.pci_cap_saved_state, %struct.pci_cap_saved_state* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i32*
  br label %37

36:                                               ; preds = %4
  br label %37

37:                                               ; preds = %36, %30
  %38 = phi i32* [ %35, %30 ], [ null, %36 ]
  store i32* %38, i32** %16, align 8
  %39 = load i32*, i32** %16, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %58

41:                                               ; preds = %37
  %42 = load %struct.pci_cap_saved_state*, %struct.pci_cap_saved_state** %8, align 8
  %43 = getelementptr inbounds %struct.pci_cap_saved_state, %struct.pci_cap_saved_state* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @pci_vc_do_save_buffer(%struct.pci_dev* %46, i32 %47, %struct.pci_cap_saved_state* null, i32 %48)
  %50 = sext i32 %49 to i64
  %51 = icmp ne i64 %45, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %41
  %53 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @pci_err(%struct.pci_dev* %53, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %339

58:                                               ; preds = %41, %37
  %59 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @PCI_VC_PORT_CAP1, align 4
  %62 = add nsw i32 %60, %61
  %63 = call i32 @pci_read_config_dword(%struct.pci_dev* %59, i32 %62, i32* %10)
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @PCI_VC_CAP1_EVCC, align 4
  %66 = and i32 %64, %65
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %11, align 1
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @PCI_VC_CAP1_LPEVCC, align 4
  %70 = and i32 %68, %69
  %71 = ashr i32 %70, 4
  %72 = trunc i32 %71 to i8
  store i8 %72, i8* %12, align 1
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @PCI_VC_CAP1_ARB_SIZE, align 4
  %75 = and i32 %73, %74
  %76 = ashr i32 %75, 10
  %77 = shl i32 1, %76
  %78 = trunc i32 %77 to i8
  store i8 %78, i8* %13, align 1
  %79 = load i32*, i32** %16, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %104

81:                                               ; preds = %58
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %81
  %85 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* @PCI_VC_PORT_CTRL, align 8
  %89 = add nsw i64 %87, %88
  %90 = load i32*, i32** %16, align 8
  %91 = call i32 @pci_read_config_word(%struct.pci_dev* %85, i64 %89, i32* %90)
  br label %101

92:                                               ; preds = %81
  %93 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = load i64, i64* @PCI_VC_PORT_CTRL, align 8
  %97 = add nsw i64 %95, %96
  %98 = load i32*, i32** %16, align 8
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @pci_write_config_word(%struct.pci_dev* %93, i64 %97, i32 %99)
  br label %101

101:                                              ; preds = %92, %84
  %102 = load i32*, i32** %16, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 4
  store i32* %103, i32** %16, align 8
  br label %104

104:                                              ; preds = %101, %58
  %105 = load i32, i32* %15, align 4
  %106 = add nsw i32 %105, 4
  store i32 %106, i32* %15, align 4
  %107 = load i8, i8* %12, align 1
  %108 = icmp ne i8 %107, 0
  br i1 %108, label %109, label %181

109:                                              ; preds = %104
  %110 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* @PCI_VC_PORT_CAP2, align 4
  %113 = add nsw i32 %111, %112
  %114 = call i32 @pci_read_config_dword(%struct.pci_dev* %110, i32 %113, i32* %17)
  %115 = load i32, i32* %17, align 4
  %116 = load i32, i32* @PCI_VC_CAP2_ARB_OFF, align 4
  %117 = and i32 %115, %116
  %118 = ashr i32 %117, 24
  %119 = mul nsw i32 %118, 16
  store i32 %119, i32* %18, align 4
  %120 = load i32, i32* %18, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %180

122:                                              ; preds = %109
  store i32 0, i32* %20, align 4
  %123 = load i32, i32* %17, align 4
  %124 = load i32, i32* @PCI_VC_CAP2_128_PHASE, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %122
  store i32 128, i32* %20, align 4
  br label %142

128:                                              ; preds = %122
  %129 = load i32, i32* %17, align 4
  %130 = load i32, i32* @PCI_VC_CAP2_64_PHASE, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %128
  store i32 64, i32* %20, align 4
  br label %141

134:                                              ; preds = %128
  %135 = load i32, i32* %17, align 4
  %136 = load i32, i32* @PCI_VC_CAP2_32_PHASE, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  store i32 32, i32* %20, align 4
  br label %140

140:                                              ; preds = %139, %134
  br label %141

141:                                              ; preds = %140, %133
  br label %142

142:                                              ; preds = %141, %127
  %143 = load i8, i8* %12, align 1
  %144 = sext i8 %143 to i32
  %145 = add nsw i32 %144, 1
  %146 = load i32, i32* %20, align 4
  %147 = mul nsw i32 %145, %146
  %148 = mul nsw i32 %147, 4
  %149 = sdiv i32 %148, 8
  store i32 %149, i32* %19, align 4
  %150 = load i32, i32* %19, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %176

152:                                              ; preds = %142
  %153 = load i32*, i32** %16, align 8
  %154 = icmp ne i32* %153, null
  br i1 %154, label %155, label %176

155:                                              ; preds = %152
  %156 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* %18, align 4
  %159 = add nsw i32 %157, %158
  %160 = load i32*, i32** %16, align 8
  %161 = load i32, i32* %19, align 4
  %162 = sdiv i32 %161, 4
  %163 = load i32, i32* %9, align 4
  %164 = call i32 @pci_vc_save_restore_dwords(%struct.pci_dev* %156, i32 %159, i32* %160, i32 %162, i32 %163)
  %165 = load i32, i32* %9, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %171, label %167

167:                                              ; preds = %155
  %168 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %169 = load i32, i32* %7, align 4
  %170 = call i32 @pci_vc_load_arb_table(%struct.pci_dev* %168, i32 %169)
  br label %171

171:                                              ; preds = %167, %155
  %172 = load i32, i32* %19, align 4
  %173 = load i32*, i32** %16, align 8
  %174 = sext i32 %172 to i64
  %175 = getelementptr inbounds i32, i32* %173, i64 %174
  store i32* %175, i32** %16, align 8
  br label %176

176:                                              ; preds = %171, %152, %142
  %177 = load i32, i32* %19, align 4
  %178 = load i32, i32* %15, align 4
  %179 = add nsw i32 %178, %177
  store i32 %179, i32* %15, align 4
  br label %180

180:                                              ; preds = %176, %109
  br label %181

181:                                              ; preds = %180, %104
  store i32 0, i32* %14, align 4
  br label %182

182:                                              ; preds = %328, %181
  %183 = load i32, i32* %14, align 4
  %184 = load i8, i8* %11, align 1
  %185 = sext i8 %184 to i32
  %186 = add nsw i32 %185, 1
  %187 = icmp slt i32 %183, %186
  br i1 %187, label %188, label %331

188:                                              ; preds = %182
  %189 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %190 = load i32, i32* %7, align 4
  %191 = load i32, i32* @PCI_VC_RES_CAP, align 4
  %192 = add nsw i32 %190, %191
  %193 = load i32, i32* %14, align 4
  %194 = load i32, i32* @PCI_CAP_VC_PER_VC_SIZEOF, align 4
  %195 = mul nsw i32 %193, %194
  %196 = add nsw i32 %192, %195
  %197 = call i32 @pci_read_config_dword(%struct.pci_dev* %189, i32 %196, i32* %21)
  %198 = load i32, i32* %21, align 4
  %199 = load i32, i32* @PCI_VC_RES_CAP_ARB_OFF, align 4
  %200 = and i32 %198, %199
  %201 = ashr i32 %200, 24
  %202 = mul nsw i32 %201, 16
  store i32 %202, i32* %22, align 4
  %203 = load i32, i32* %22, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %263

205:                                              ; preds = %188
  store i32 0, i32* %24, align 4
  %206 = load i32, i32* %21, align 4
  %207 = load i32, i32* @PCI_VC_RES_CAP_256_PHASE, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %205
  store i32 256, i32* %24, align 4
  br label %234

211:                                              ; preds = %205
  %212 = load i32, i32* %21, align 4
  %213 = load i32, i32* @PCI_VC_RES_CAP_128_PHASE, align 4
  %214 = load i32, i32* @PCI_VC_RES_CAP_128_PHASE_TB, align 4
  %215 = or i32 %213, %214
  %216 = and i32 %212, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %211
  store i32 128, i32* %24, align 4
  br label %233

219:                                              ; preds = %211
  %220 = load i32, i32* %21, align 4
  %221 = load i32, i32* @PCI_VC_RES_CAP_64_PHASE, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %219
  store i32 64, i32* %24, align 4
  br label %232

225:                                              ; preds = %219
  %226 = load i32, i32* %21, align 4
  %227 = load i32, i32* @PCI_VC_RES_CAP_32_PHASE, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %225
  store i32 32, i32* %24, align 4
  br label %231

231:                                              ; preds = %230, %225
  br label %232

232:                                              ; preds = %231, %224
  br label %233

233:                                              ; preds = %232, %218
  br label %234

234:                                              ; preds = %233, %210
  %235 = load i8, i8* %13, align 1
  %236 = sext i8 %235 to i32
  %237 = load i32, i32* %24, align 4
  %238 = mul nsw i32 %236, %237
  %239 = sdiv i32 %238, 8
  store i32 %239, i32* %23, align 4
  %240 = load i32, i32* %23, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %259

242:                                              ; preds = %234
  %243 = load i32*, i32** %16, align 8
  %244 = icmp ne i32* %243, null
  br i1 %244, label %245, label %259

245:                                              ; preds = %242
  %246 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %247 = load i32, i32* %7, align 4
  %248 = load i32, i32* %22, align 4
  %249 = add nsw i32 %247, %248
  %250 = load i32*, i32** %16, align 8
  %251 = load i32, i32* %23, align 4
  %252 = sdiv i32 %251, 4
  %253 = load i32, i32* %9, align 4
  %254 = call i32 @pci_vc_save_restore_dwords(%struct.pci_dev* %246, i32 %249, i32* %250, i32 %252, i32 %253)
  %255 = load i32, i32* %23, align 4
  %256 = load i32*, i32** %16, align 8
  %257 = sext i32 %255 to i64
  %258 = getelementptr inbounds i32, i32* %256, i64 %257
  store i32* %258, i32** %16, align 8
  br label %259

259:                                              ; preds = %245, %242, %234
  %260 = load i32, i32* %23, align 4
  %261 = load i32, i32* %15, align 4
  %262 = add nsw i32 %261, %260
  store i32 %262, i32* %15, align 4
  br label %263

263:                                              ; preds = %259, %188
  %264 = load i32*, i32** %16, align 8
  %265 = icmp ne i32* %264, null
  br i1 %265, label %266, label %325

266:                                              ; preds = %263
  %267 = load i32, i32* %7, align 4
  %268 = load i32, i32* @PCI_VC_RES_CTRL, align 4
  %269 = add nsw i32 %267, %268
  %270 = load i32, i32* %14, align 4
  %271 = load i32, i32* @PCI_CAP_VC_PER_VC_SIZEOF, align 4
  %272 = mul nsw i32 %270, %271
  %273 = add nsw i32 %269, %272
  store i32 %273, i32* %25, align 4
  %274 = load i32, i32* %9, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %281

276:                                              ; preds = %266
  %277 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %278 = load i32, i32* %25, align 4
  %279 = load i32*, i32** %16, align 8
  %280 = call i32 @pci_read_config_dword(%struct.pci_dev* %277, i32 %278, i32* %279)
  br label %322

281:                                              ; preds = %266
  %282 = load i32*, i32** %16, align 8
  %283 = load i32, i32* %282, align 4
  store i32 %283, i32* %27, align 4
  %284 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %285 = load i32, i32* %25, align 4
  %286 = call i32 @pci_read_config_dword(%struct.pci_dev* %284, i32 %285, i32* %26)
  %287 = load i32, i32* @PCI_VC_RES_CTRL_ENABLE, align 4
  %288 = load i32, i32* %26, align 4
  %289 = and i32 %288, %287
  store i32 %289, i32* %26, align 4
  %290 = load i32, i32* %27, align 4
  %291 = load i32, i32* @PCI_VC_RES_CTRL_ENABLE, align 4
  %292 = xor i32 %291, -1
  %293 = and i32 %290, %292
  %294 = load i32, i32* %26, align 4
  %295 = or i32 %294, %293
  store i32 %295, i32* %26, align 4
  %296 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %297 = load i32, i32* %25, align 4
  %298 = load i32, i32* %26, align 4
  %299 = call i32 @pci_write_config_dword(%struct.pci_dev* %296, i32 %297, i32 %298)
  %300 = load i32, i32* %27, align 4
  %301 = load i32, i32* @PCI_VC_RES_CTRL_ARB_SELECT, align 4
  %302 = and i32 %300, %301
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %309

304:                                              ; preds = %281
  %305 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %306 = load i32, i32* %7, align 4
  %307 = load i32, i32* %14, align 4
  %308 = call i32 @pci_vc_load_port_arb_table(%struct.pci_dev* %305, i32 %306, i32 %307)
  br label %309

309:                                              ; preds = %304, %281
  %310 = load i32, i32* %27, align 4
  %311 = load i32, i32* %26, align 4
  %312 = xor i32 %310, %311
  %313 = load i32, i32* @PCI_VC_RES_CTRL_ENABLE, align 4
  %314 = and i32 %312, %313
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %321

316:                                              ; preds = %309
  %317 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %318 = load i32, i32* %7, align 4
  %319 = load i32, i32* %14, align 4
  %320 = call i32 @pci_vc_enable(%struct.pci_dev* %317, i32 %318, i32 %319)
  br label %321

321:                                              ; preds = %316, %309
  br label %322

322:                                              ; preds = %321, %276
  %323 = load i32*, i32** %16, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 4
  store i32* %324, i32** %16, align 8
  br label %325

325:                                              ; preds = %322, %263
  %326 = load i32, i32* %15, align 4
  %327 = add nsw i32 %326, 4
  store i32 %327, i32* %15, align 4
  br label %328

328:                                              ; preds = %325
  %329 = load i32, i32* %14, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %14, align 4
  br label %182

331:                                              ; preds = %182
  %332 = load i32*, i32** %16, align 8
  %333 = icmp ne i32* %332, null
  br i1 %333, label %334, label %335

334:                                              ; preds = %331
  br label %337

335:                                              ; preds = %331
  %336 = load i32, i32* %15, align 4
  br label %337

337:                                              ; preds = %335, %334
  %338 = phi i32 [ 0, %334 ], [ %336, %335 ]
  store i32 %338, i32* %5, align 4
  br label %339

339:                                              ; preds = %337, %52
  %340 = load i32, i32* %5, align 4
  ret i32 %340
}

declare dso_local i32 @pci_err(%struct.pci_dev*, i8*, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @pci_vc_save_restore_dwords(%struct.pci_dev*, i32, i32*, i32, i32) #1

declare dso_local i32 @pci_vc_load_arb_table(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_vc_load_port_arb_table(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_vc_enable(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
