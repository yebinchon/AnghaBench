; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas.c_cb_pcidas_ai_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas.c_cb_pcidas_ai_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, i32, %struct.cb_pcidas_private*, %struct.cb_pcidas_board* }
%struct.cb_pcidas_private = type { i32, i64, i64 }
%struct.cb_pcidas_board = type { i64 }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i64, i64, i32, i64, i32, i32* }

@PCIDAS_CALIB_REG = common dso_local global i64 0, align 8
@PCIDAS_TRIG_SEL_NONE = common dso_local global i32 0, align 4
@PCIDAS_TRIG_REG = common dso_local global i64 0, align 8
@PCIDAS_AI_FIFO_CLR_REG = common dso_local global i64 0, align 8
@PCIDAS_AI_UNIP = common dso_local global i32 0, align 4
@AREF_DIFF = common dso_local global i64 0, align 8
@PCIDAS_AI_SE = common dso_local global i32 0, align 4
@TRIG_EXT = common dso_local global i64 0, align 8
@PCIDAS_AI_PACER_EXTP = common dso_local global i32 0, align 4
@PCIDAS_AI_PACER_INT = common dso_local global i32 0, align 4
@PCIDAS_AI_REG = common dso_local global i64 0, align 8
@TRIG_TIMER = common dso_local global i64 0, align 8
@PCIDAS_CTRL_INTE = common dso_local global i32 0, align 4
@PCIDAS_CTRL_INT_MASK = common dso_local global i32 0, align 4
@CMDF_WAKE_EOS = common dso_local global i32 0, align 4
@TRIG_NOW = common dso_local global i64 0, align 8
@PCIDAS_CTRL_INT_EOS = common dso_local global i32 0, align 4
@PCIDAS_CTRL_INT_FNE = common dso_local global i32 0, align 4
@PCIDAS_CTRL_INT_FHF = common dso_local global i32 0, align 4
@PCIDAS_CTRL_EOAI = common dso_local global i32 0, align 4
@PCIDAS_CTRL_INT_CLR = common dso_local global i32 0, align 4
@PCIDAS_CTRL_LADFUL = common dso_local global i32 0, align 4
@PCIDAS_CTRL_REG = common dso_local global i64 0, align 8
@PCIDAS_TRIG_SEL_SW = common dso_local global i32 0, align 4
@PCIDAS_TRIG_SEL_EXT = common dso_local global i32 0, align 4
@PCIDAS_TRIG_EN = common dso_local global i32 0, align 4
@PCIDAS_TRIG_CLR = common dso_local global i32 0, align 4
@CR_INVERT = common dso_local global i32 0, align 4
@PCIDAS_TRIG_POL = common dso_local global i32 0, align 4
@CR_EDGE = common dso_local global i32 0, align 4
@PCIDAS_TRIG_MODE = common dso_local global i32 0, align 4
@PCIDAS_TRIG_BURSTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @cb_pcidas_ai_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb_pcidas_ai_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.cb_pcidas_board*, align 8
  %6 = alloca %struct.cb_pcidas_private*, align 8
  %7 = alloca %struct.comedi_async*, align 8
  %8 = alloca %struct.comedi_cmd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %12 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 3
  %14 = load %struct.cb_pcidas_board*, %struct.cb_pcidas_board** %13, align 8
  store %struct.cb_pcidas_board* %14, %struct.cb_pcidas_board** %5, align 8
  %15 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 2
  %17 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %16, align 8
  store %struct.cb_pcidas_private* %17, %struct.cb_pcidas_private** %6, align 8
  %18 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %19 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %18, i32 0, i32 0
  %20 = load %struct.comedi_async*, %struct.comedi_async** %19, align 8
  store %struct.comedi_async* %20, %struct.comedi_async** %7, align 8
  %21 = load %struct.comedi_async*, %struct.comedi_async** %7, align 8
  %22 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %21, i32 0, i32 0
  store %struct.comedi_cmd* %22, %struct.comedi_cmd** %8, align 8
  %23 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %24 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %23, i32 0, i32 6
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @CR_RANGE(i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %6, align 8
  %30 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PCIDAS_CALIB_REG, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @outw(i32 0, i64 %33)
  %35 = load i32, i32* @PCIDAS_TRIG_SEL_NONE, align 4
  %36 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %6, align 8
  %37 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PCIDAS_TRIG_REG, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @outw(i32 %35, i64 %40)
  %42 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %6, align 8
  %43 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @PCIDAS_AI_FIFO_CLR_REG, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @outw(i32 0, i64 %46)
  %48 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %49 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %48, i32 0, i32 6
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @CR_CHAN(i32 %52)
  %54 = call i32 @PCIDAS_AI_FIRST(i32 %53)
  %55 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %56 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %55, i32 0, i32 6
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %59 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %57, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @CR_CHAN(i32 %64)
  %66 = call i32 @PCIDAS_AI_LAST(i32 %65)
  %67 = or i32 %54, %66
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @PCIDAS_AI_GAIN(i32 %68)
  %70 = or i32 %67, %69
  store i32 %70, i32* %10, align 4
  %71 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i64 @comedi_range_is_unipolar(%struct.comedi_subdevice* %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %2
  %76 = load i32, i32* @PCIDAS_AI_UNIP, align 4
  %77 = load i32, i32* %10, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %10, align 4
  br label %79

79:                                               ; preds = %75, %2
  %80 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %81 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %80, i32 0, i32 6
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @CR_AREF(i32 %84)
  %86 = load i64, i64* @AREF_DIFF, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %79
  %89 = load i32, i32* @PCIDAS_AI_SE, align 4
  %90 = load i32, i32* %10, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %10, align 4
  br label %92

92:                                               ; preds = %88, %79
  %93 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %94 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @TRIG_EXT, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %104, label %98

98:                                               ; preds = %92
  %99 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %100 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @TRIG_EXT, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %98, %92
  %105 = load i32, i32* @PCIDAS_AI_PACER_EXTP, align 4
  %106 = load i32, i32* %10, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %10, align 4
  br label %112

108:                                              ; preds = %98
  %109 = load i32, i32* @PCIDAS_AI_PACER_INT, align 4
  %110 = load i32, i32* %10, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %10, align 4
  br label %112

112:                                              ; preds = %108, %104
  %113 = load i32, i32* %10, align 4
  %114 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %6, align 8
  %115 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @PCIDAS_AI_REG, align 8
  %118 = add nsw i64 %116, %117
  %119 = call i32 @outw(i32 %113, i64 %118)
  %120 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %121 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @TRIG_TIMER, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %131, label %125

125:                                              ; preds = %112
  %126 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %127 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @TRIG_TIMER, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %140

131:                                              ; preds = %125, %112
  %132 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %133 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @comedi_8254_update_divisors(i32 %134)
  %136 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %137 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @comedi_8254_pacer_enable(i32 %138, i32 1, i32 2, i32 1)
  br label %140

140:                                              ; preds = %131, %125
  %141 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %142 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %141, i32 0, i32 0
  %143 = load i64, i64* %11, align 8
  %144 = call i32 @spin_lock_irqsave(i32* %142, i64 %143)
  %145 = load i32, i32* @PCIDAS_CTRL_INTE, align 4
  %146 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %6, align 8
  %147 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 8
  %150 = load i32, i32* @PCIDAS_CTRL_INT_MASK, align 4
  %151 = xor i32 %150, -1
  %152 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %6, align 8
  %153 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = and i32 %154, %151
  store i32 %155, i32* %153, align 8
  %156 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %157 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @CMDF_WAKE_EOS, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %186

162:                                              ; preds = %140
  %163 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %164 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @TRIG_NOW, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %179

168:                                              ; preds = %162
  %169 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %170 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp sgt i32 %171, 1
  br i1 %172, label %173, label %179

173:                                              ; preds = %168
  %174 = load i32, i32* @PCIDAS_CTRL_INT_EOS, align 4
  %175 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %6, align 8
  %176 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = or i32 %177, %174
  store i32 %178, i32* %176, align 8
  br label %185

179:                                              ; preds = %168, %162
  %180 = load i32, i32* @PCIDAS_CTRL_INT_FNE, align 4
  %181 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %6, align 8
  %182 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = or i32 %183, %180
  store i32 %184, i32* %182, align 8
  br label %185

185:                                              ; preds = %179, %173
  br label %192

186:                                              ; preds = %140
  %187 = load i32, i32* @PCIDAS_CTRL_INT_FHF, align 4
  %188 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %6, align 8
  %189 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = or i32 %190, %187
  store i32 %191, i32* %189, align 8
  br label %192

192:                                              ; preds = %186, %185
  %193 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %6, align 8
  %194 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @PCIDAS_CTRL_EOAI, align 4
  %197 = or i32 %195, %196
  %198 = load i32, i32* @PCIDAS_CTRL_INT_CLR, align 4
  %199 = or i32 %197, %198
  %200 = load i32, i32* @PCIDAS_CTRL_LADFUL, align 4
  %201 = or i32 %199, %200
  %202 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %6, align 8
  %203 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @PCIDAS_CTRL_REG, align 8
  %206 = add nsw i64 %204, %205
  %207 = call i32 @outw(i32 %201, i64 %206)
  %208 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %209 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %208, i32 0, i32 0
  %210 = load i64, i64* %11, align 8
  %211 = call i32 @spin_unlock_irqrestore(i32* %209, i64 %210)
  store i32 0, i32* %10, align 4
  %212 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %213 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %212, i32 0, i32 4
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @TRIG_NOW, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %221

217:                                              ; preds = %192
  %218 = load i32, i32* @PCIDAS_TRIG_SEL_SW, align 4
  %219 = load i32, i32* %10, align 4
  %220 = or i32 %219, %218
  store i32 %220, i32* %10, align 4
  br label %257

221:                                              ; preds = %192
  %222 = load i32, i32* @PCIDAS_TRIG_SEL_EXT, align 4
  %223 = load i32, i32* @PCIDAS_TRIG_EN, align 4
  %224 = or i32 %222, %223
  %225 = load i32, i32* @PCIDAS_TRIG_CLR, align 4
  %226 = or i32 %224, %225
  %227 = load i32, i32* %10, align 4
  %228 = or i32 %227, %226
  store i32 %228, i32* %10, align 4
  %229 = load %struct.cb_pcidas_board*, %struct.cb_pcidas_board** %5, align 8
  %230 = getelementptr inbounds %struct.cb_pcidas_board, %struct.cb_pcidas_board* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %256

233:                                              ; preds = %221
  %234 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %235 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %234, i32 0, i32 5
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @CR_INVERT, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %244

240:                                              ; preds = %233
  %241 = load i32, i32* @PCIDAS_TRIG_POL, align 4
  %242 = load i32, i32* %10, align 4
  %243 = or i32 %242, %241
  store i32 %243, i32* %10, align 4
  br label %244

244:                                              ; preds = %240, %233
  %245 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %246 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %245, i32 0, i32 5
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* @CR_EDGE, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %255

251:                                              ; preds = %244
  %252 = load i32, i32* @PCIDAS_TRIG_MODE, align 4
  %253 = load i32, i32* %10, align 4
  %254 = or i32 %253, %252
  store i32 %254, i32* %10, align 4
  br label %255

255:                                              ; preds = %251, %244
  br label %256

256:                                              ; preds = %255, %221
  br label %257

257:                                              ; preds = %256, %217
  %258 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %259 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %258, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = load i64, i64* @TRIG_NOW, align 8
  %262 = icmp eq i64 %260, %261
  br i1 %262, label %263, label %272

263:                                              ; preds = %257
  %264 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %265 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = icmp sgt i32 %266, 1
  br i1 %267, label %268, label %272

268:                                              ; preds = %263
  %269 = load i32, i32* @PCIDAS_TRIG_BURSTE, align 4
  %270 = load i32, i32* %10, align 4
  %271 = or i32 %270, %269
  store i32 %271, i32* %10, align 4
  br label %272

272:                                              ; preds = %268, %263, %257
  %273 = load i32, i32* %10, align 4
  %274 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %6, align 8
  %275 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %274, i32 0, i32 1
  %276 = load i64, i64* %275, align 8
  %277 = load i64, i64* @PCIDAS_TRIG_REG, align 8
  %278 = add nsw i64 %276, %277
  %279 = call i32 @outw(i32 %273, i64 %278)
  ret i32 0
}

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @PCIDAS_AI_FIRST(i32) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @PCIDAS_AI_LAST(i32) #1

declare dso_local i32 @PCIDAS_AI_GAIN(i32) #1

declare dso_local i64 @comedi_range_is_unipolar(%struct.comedi_subdevice*, i32) #1

declare dso_local i64 @CR_AREF(i32) #1

declare dso_local i32 @comedi_8254_update_divisors(i32) #1

declare dso_local i32 @comedi_8254_pacer_enable(i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
