; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ai_insn_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ai_insn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.ni_private* }
%struct.ni_private = type { i32*, i64, i64, i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@num_adc_stages_611x = common dso_local global i32 0, align 4
@NISTC_AI_CMD1_CONVERT_PULSE = common dso_local global i32 0, align 4
@NISTC_AI_CMD1_REG = common dso_local global i32 0, align 4
@NI_TIMEOUT = common dso_local global i32 0, align 4
@NI_E_STATUS_REG = common dso_local global i32 0, align 4
@NI611X_AI_FIFO_DATA_REG = common dso_local global i32 0, align 4
@NISTC_AI_STATUS1_REG = common dso_local global i32 0, align 4
@NISTC_AI_STATUS1_FIFO_E = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"timeout\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4
@NI6143_AI_FIFO_STATUS_REG = common dso_local global i32 0, align 4
@NI6143_AI_FIFO_CTRL_REG = common dso_local global i32 0, align 4
@NI6143_AI_FIFO_DATA_REG = common dso_local global i32 0, align 4
@NI_M_AI_FIFO_DATA_REG = common dso_local global i32 0, align 4
@NI_E_AI_FIFO_DATA_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @ni_ai_insn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_ai_insn_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ni_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 1
  %18 = load %struct.ni_private*, %struct.ni_private** %17, align 8
  store %struct.ni_private* %18, %struct.ni_private** %10, align 8
  %19 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %20 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  %22 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %23 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %24 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %25 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %24, i32 0, i32 1
  %26 = call i32 @ni_load_channelgain_list(%struct.comedi_device* %22, %struct.comedi_subdevice* %23, i32 1, i32* %25)
  %27 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %28 = call i32 @ni_clear_ai_fifo(%struct.comedi_device* %27)
  %29 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %30 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %14, align 4
  %34 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %35 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %124

38:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  br label %39

39:                                               ; preds = %49, %38
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* @num_adc_stages_611x, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %45 = load i32, i32* @NISTC_AI_CMD1_CONVERT_PULSE, align 4
  %46 = load i32, i32* @NISTC_AI_CMD1_REG, align 4
  %47 = call i32 @ni_stc_writew(%struct.comedi_device* %44, i32 %45, i32 %46)
  %48 = call i32 @udelay(i32 1)
  br label %49

49:                                               ; preds = %43
  %50 = load i32, i32* %13, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %13, align 4
  br label %39

52:                                               ; preds = %39
  store i32 0, i32* %13, align 4
  br label %53

53:                                               ; preds = %120, %52
  %54 = load i32, i32* %13, align 4
  %55 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %56 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %123

59:                                               ; preds = %53
  %60 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %61 = load i32, i32* @NISTC_AI_CMD1_CONVERT_PULSE, align 4
  %62 = load i32, i32* @NISTC_AI_CMD1_REG, align 4
  %63 = call i32 @ni_stc_writew(%struct.comedi_device* %60, i32 %61, i32 %62)
  store i32 0, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %64

64:                                               ; preds = %96, %59
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @NI_TIMEOUT, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %99

68:                                               ; preds = %64
  %69 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %70 = load i32, i32* @NI_E_STATUS_REG, align 4
  %71 = call i32 @ni_readb(%struct.comedi_device* %69, i32 %70)
  %72 = and i32 %71, 128
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %68
  %75 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %76 = load i32, i32* @NI611X_AI_FIFO_DATA_REG, align 4
  %77 = call i32 @ni_readl(%struct.comedi_device* %75, i32 %76)
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %15, align 4
  %79 = lshr i32 %78, 16
  store i32 %79, i32* %15, align 4
  %80 = load i32, i32* %15, align 4
  %81 = and i32 %80, 65535
  store i32 %81, i32* %15, align 4
  br label %99

82:                                               ; preds = %68
  %83 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %84 = load i32, i32* @NISTC_AI_STATUS1_REG, align 4
  %85 = call i32 @ni_stc_readw(%struct.comedi_device* %83, i32 %84)
  %86 = load i32, i32* @NISTC_AI_STATUS1_FIFO_E, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %82
  %90 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %91 = load i32, i32* @NI611X_AI_FIFO_DATA_REG, align 4
  %92 = call i32 @ni_readl(%struct.comedi_device* %90, i32 %91)
  store i32 %92, i32* %15, align 4
  %93 = load i32, i32* %15, align 4
  %94 = and i32 %93, 65535
  store i32 %94, i32* %15, align 4
  br label %99

95:                                               ; preds = %82
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %12, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %12, align 4
  br label %64

99:                                               ; preds = %89, %74, %64
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* @NI_TIMEOUT, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %99
  %104 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %105 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @dev_err(i32 %106, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %108 = load i32, i32* @ETIME, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %5, align 4
  br label %267

110:                                              ; preds = %99
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* %15, align 4
  %113 = add i32 %112, %111
  store i32 %113, i32* %15, align 4
  %114 = load i32, i32* %15, align 4
  %115 = and i32 %114, 65535
  %116 = load i32*, i32** %9, align 8
  %117 = load i32, i32* %13, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  store i32 %115, i32* %119, align 4
  br label %120

120:                                              ; preds = %110
  %121 = load i32, i32* %13, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %13, align 4
  br label %53

123:                                              ; preds = %53
  br label %263

124:                                              ; preds = %4
  %125 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %126 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %188

129:                                              ; preds = %124
  store i32 0, i32* %13, align 4
  br label %130

130:                                              ; preds = %184, %129
  %131 = load i32, i32* %13, align 4
  %132 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %133 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = icmp slt i32 %131, %134
  br i1 %135, label %136, label %187

136:                                              ; preds = %130
  %137 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %138 = load i32, i32* @NISTC_AI_CMD1_CONVERT_PULSE, align 4
  %139 = load i32, i32* @NISTC_AI_CMD1_REG, align 4
  %140 = call i32 @ni_stc_writew(%struct.comedi_device* %137, i32 %138, i32 %139)
  store i32 0, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %141

141:                                              ; preds = %159, %136
  %142 = load i32, i32* %12, align 4
  %143 = load i32, i32* @NI_TIMEOUT, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %162

145:                                              ; preds = %141
  %146 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %147 = load i32, i32* @NI6143_AI_FIFO_STATUS_REG, align 4
  %148 = call i32 @ni_readl(%struct.comedi_device* %146, i32 %147)
  %149 = and i32 %148, 1
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %145
  %152 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %153 = load i32, i32* @NI6143_AI_FIFO_CTRL_REG, align 4
  %154 = call i32 @ni_writel(%struct.comedi_device* %152, i32 1, i32 %153)
  %155 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %156 = load i32, i32* @NI6143_AI_FIFO_DATA_REG, align 4
  %157 = call i32 @ni_readl(%struct.comedi_device* %155, i32 %156)
  store i32 %157, i32* %15, align 4
  br label %162

158:                                              ; preds = %145
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %12, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %12, align 4
  br label %141

162:                                              ; preds = %151, %141
  %163 = load i32, i32* %12, align 4
  %164 = load i32, i32* @NI_TIMEOUT, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %173

166:                                              ; preds = %162
  %167 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %168 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @dev_err(i32 %169, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %171 = load i32, i32* @ETIME, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %5, align 4
  br label %267

173:                                              ; preds = %162
  %174 = load i32, i32* %15, align 4
  %175 = lshr i32 %174, 16
  %176 = and i32 %175, 65535
  %177 = load i32, i32* %14, align 4
  %178 = add i32 %176, %177
  %179 = and i32 %178, 65535
  %180 = load i32*, i32** %9, align 8
  %181 = load i32, i32* %13, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  store i32 %179, i32* %183, align 4
  br label %184

184:                                              ; preds = %173
  %185 = load i32, i32* %13, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %13, align 4
  br label %130

187:                                              ; preds = %130
  br label %262

188:                                              ; preds = %124
  store i32 0, i32* %13, align 4
  br label %189

189:                                              ; preds = %258, %188
  %190 = load i32, i32* %13, align 4
  %191 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %192 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = icmp slt i32 %190, %193
  br i1 %194, label %195, label %261

195:                                              ; preds = %189
  %196 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %197 = load i32, i32* @NISTC_AI_CMD1_CONVERT_PULSE, align 4
  %198 = load i32, i32* @NISTC_AI_CMD1_REG, align 4
  %199 = call i32 @ni_stc_writew(%struct.comedi_device* %196, i32 %197, i32 %198)
  store i32 0, i32* %12, align 4
  br label %200

200:                                              ; preds = %213, %195
  %201 = load i32, i32* %12, align 4
  %202 = load i32, i32* @NI_TIMEOUT, align 4
  %203 = icmp slt i32 %201, %202
  br i1 %203, label %204, label %216

204:                                              ; preds = %200
  %205 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %206 = load i32, i32* @NISTC_AI_STATUS1_REG, align 4
  %207 = call i32 @ni_stc_readw(%struct.comedi_device* %205, i32 %206)
  %208 = load i32, i32* @NISTC_AI_STATUS1_FIFO_E, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %212, label %211

211:                                              ; preds = %204
  br label %216

212:                                              ; preds = %204
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %12, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %12, align 4
  br label %200

216:                                              ; preds = %211, %200
  %217 = load i32, i32* %12, align 4
  %218 = load i32, i32* @NI_TIMEOUT, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %220, label %227

220:                                              ; preds = %216
  %221 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %222 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = call i32 @dev_err(i32 %223, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %225 = load i32, i32* @ETIME, align 4
  %226 = sub nsw i32 0, %225
  store i32 %226, i32* %5, align 4
  br label %267

227:                                              ; preds = %216
  %228 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %229 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %244

232:                                              ; preds = %227
  %233 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %234 = load i32, i32* @NI_M_AI_FIFO_DATA_REG, align 4
  %235 = call i32 @ni_readl(%struct.comedi_device* %233, i32 %234)
  store i32 %235, i32* %15, align 4
  %236 = load i32, i32* %11, align 4
  %237 = load i32, i32* %15, align 4
  %238 = and i32 %237, %236
  store i32 %238, i32* %15, align 4
  %239 = load i32, i32* %15, align 4
  %240 = load i32*, i32** %9, align 8
  %241 = load i32, i32* %13, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  store i32 %239, i32* %243, align 4
  br label %257

244:                                              ; preds = %227
  %245 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %246 = load i32, i32* @NI_E_AI_FIFO_DATA_REG, align 4
  %247 = call i32 @ni_readw(%struct.comedi_device* %245, i32 %246)
  store i32 %247, i32* %15, align 4
  %248 = load i32, i32* %14, align 4
  %249 = load i32, i32* %15, align 4
  %250 = add i32 %249, %248
  store i32 %250, i32* %15, align 4
  %251 = load i32, i32* %15, align 4
  %252 = and i32 %251, 65535
  %253 = load i32*, i32** %9, align 8
  %254 = load i32, i32* %13, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %253, i64 %255
  store i32 %252, i32* %256, align 4
  br label %257

257:                                              ; preds = %244, %232
  br label %258

258:                                              ; preds = %257
  %259 = load i32, i32* %13, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %13, align 4
  br label %189

261:                                              ; preds = %189
  br label %262

262:                                              ; preds = %261, %187
  br label %263

263:                                              ; preds = %262, %123
  %264 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %265 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  store i32 %266, i32* %5, align 4
  br label %267

267:                                              ; preds = %263, %220, %166, %103
  %268 = load i32, i32* %5, align 4
  ret i32 %268
}

declare dso_local i32 @ni_load_channelgain_list(%struct.comedi_device*, %struct.comedi_subdevice*, i32, i32*) #1

declare dso_local i32 @ni_clear_ai_fifo(%struct.comedi_device*) #1

declare dso_local i32 @ni_stc_writew(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ni_readb(%struct.comedi_device*, i32) #1

declare dso_local i32 @ni_readl(%struct.comedi_device*, i32) #1

declare dso_local i32 @ni_stc_readw(%struct.comedi_device*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @ni_writel(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @ni_readw(%struct.comedi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
