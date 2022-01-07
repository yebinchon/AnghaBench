; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adl_pci9118.c_pci9118_ai_cmdtest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adl_pci9118.c_pci9118_ai_cmdtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.pci9118_private* }
%struct.pci9118_private = type { i32, i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }

@TRIG_FOLLOW = common dso_local global i32 0, align 4
@TRIG_TIMER = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i32 0, align 4
@TRIG_NONE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @pci9118_ai_cmdtest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci9118_ai_cmdtest(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca %struct.pci9118_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_cmd* %2, %struct.comedi_cmd** %7, align 8
  %12 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 1
  %14 = load %struct.pci9118_private*, %struct.pci9118_private** %13, align 8
  store %struct.pci9118_private* %14, %struct.pci9118_private** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %16 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %15, i32 0, i32 0
  %17 = call i32 @comedi_check_trigger_src(i32* %16, i32 131)
  %18 = load i32, i32* %9, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* @TRIG_FOLLOW, align 4
  store i32 %20, i32* %10, align 4
  %21 = load %struct.pci9118_private*, %struct.pci9118_private** %8, align 8
  %22 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load i32, i32* @TRIG_TIMER, align 4
  %27 = or i32 %26, 130
  %28 = load i32, i32* %10, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %10, align 4
  br label %30

30:                                               ; preds = %25, %3
  %31 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %32 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %31, i32 0, i32 1
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @comedi_check_trigger_src(i32* %32, i32 %33)
  %35 = load i32, i32* %9, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* @TRIG_TIMER, align 4
  %38 = or i32 %37, 130
  store i32 %38, i32* %10, align 4
  %39 = load %struct.pci9118_private*, %struct.pci9118_private** %8, align 8
  %40 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %30
  %44 = load i32, i32* %10, align 4
  %45 = or i32 %44, 128
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %43, %30
  %47 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %48 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %47, i32 0, i32 2
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @comedi_check_trigger_src(i32* %48, i32 %49)
  %51 = load i32, i32* %9, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %9, align 4
  %53 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %54 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %53, i32 0, i32 3
  %55 = load i32, i32* @TRIG_COUNT, align 4
  %56 = call i32 @comedi_check_trigger_src(i32* %54, i32 %55)
  %57 = load i32, i32* %9, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %9, align 4
  %59 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %60 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %59, i32 0, i32 4
  %61 = load i32, i32* @TRIG_COUNT, align 4
  %62 = load i32, i32* @TRIG_NONE, align 4
  %63 = or i32 %61, %62
  %64 = or i32 %63, 130
  %65 = call i32 @comedi_check_trigger_src(i32* %60, i32 %64)
  %66 = load i32, i32* %9, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %46
  store i32 1, i32* %4, align 4
  br label %459

71:                                               ; preds = %46
  %72 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %73 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @comedi_check_trigger_is_unique(i32 %74)
  %76 = load i32, i32* %9, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %9, align 4
  %78 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %79 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @comedi_check_trigger_is_unique(i32 %80)
  %82 = load i32, i32* %9, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %9, align 4
  %84 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %85 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @comedi_check_trigger_is_unique(i32 %86)
  %88 = load i32, i32* %9, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %9, align 4
  %90 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %91 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @comedi_check_trigger_is_unique(i32 %92)
  %94 = load i32, i32* %9, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %9, align 4
  %96 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %97 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp eq i32 %98, 130
  br i1 %99, label %100, label %110

100:                                              ; preds = %71
  %101 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %102 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 130
  br i1 %104, label %105, label %110

105:                                              ; preds = %100
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  %108 = load i32, i32* %9, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %9, align 4
  br label %110

110:                                              ; preds = %105, %100, %71
  %111 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %112 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @TRIG_TIMER, align 4
  %115 = or i32 %114, 130
  %116 = and i32 %113, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %131

118:                                              ; preds = %110
  %119 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %120 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @TRIG_TIMER, align 4
  %123 = or i32 %122, 128
  %124 = and i32 %121, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %131, label %126

126:                                              ; preds = %118
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  %129 = load i32, i32* %9, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %9, align 4
  br label %131

131:                                              ; preds = %126, %118, %110
  %132 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %133 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @TRIG_FOLLOW, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %150

137:                                              ; preds = %131
  %138 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %139 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @TRIG_TIMER, align 4
  %142 = or i32 %141, 130
  %143 = and i32 %140, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %150, label %145

145:                                              ; preds = %137
  %146 = load i32, i32* @EINVAL, align 4
  %147 = sub nsw i32 0, %146
  %148 = load i32, i32* %9, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %9, align 4
  br label %150

150:                                              ; preds = %145, %137, %131
  %151 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %152 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = icmp eq i32 %153, 130
  br i1 %154, label %155, label %165

155:                                              ; preds = %150
  %156 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %157 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = icmp eq i32 %158, 130
  br i1 %159, label %160, label %165

160:                                              ; preds = %155
  %161 = load i32, i32* @EINVAL, align 4
  %162 = sub nsw i32 0, %161
  %163 = load i32, i32* %9, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %9, align 4
  br label %165

165:                                              ; preds = %160, %155, %150
  %166 = load i32, i32* %9, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %165
  store i32 2, i32* %4, align 4
  br label %459

169:                                              ; preds = %165
  %170 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %171 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  switch i32 %172, label %180 [
    i32 128, label %173
    i32 130, label %173
    i32 129, label %179
  ]

173:                                              ; preds = %169, %169
  %174 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %175 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %174, i32 0, i32 5
  %176 = call i32 @comedi_check_trigger_arg_is(i32* %175, i32 0)
  %177 = load i32, i32* %9, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %9, align 4
  br label %180

179:                                              ; preds = %169
  br label %180

180:                                              ; preds = %169, %179, %173
  %181 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %182 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @TRIG_FOLLOW, align 4
  %185 = or i32 %184, 130
  %186 = and i32 %183, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %180
  %189 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %190 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %189, i32 0, i32 6
  %191 = call i32 @comedi_check_trigger_arg_is(i32* %190, i32 0)
  %192 = load i32, i32* %9, align 4
  %193 = or i32 %192, %191
  store i32 %193, i32* %9, align 4
  br label %194

194:                                              ; preds = %188, %180
  %195 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %196 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @TRIG_TIMER, align 4
  %199 = icmp eq i32 %197, %198
  br i1 %199, label %200, label %222

200:                                              ; preds = %194
  %201 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %202 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @TRIG_TIMER, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %222

206:                                              ; preds = %200
  %207 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %208 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %207, i32 0, i32 7
  %209 = load i32, i32* %208, align 4
  %210 = icmp eq i32 %209, 1
  br i1 %210, label %211, label %222

211:                                              ; preds = %206
  %212 = load i32, i32* @TRIG_FOLLOW, align 4
  %213 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %214 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %213, i32 0, i32 1
  store i32 %212, i32* %214, align 4
  %215 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %216 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %215, i32 0, i32 6
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %219 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %218, i32 0, i32 8
  store i32 %217, i32* %219, align 8
  %220 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %221 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %220, i32 0, i32 6
  store i32 0, i32* %221, align 8
  br label %222

222:                                              ; preds = %211, %206, %200, %194
  %223 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %224 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* @TRIG_TIMER, align 4
  %227 = icmp eq i32 %225, %226
  br i1 %227, label %228, label %237

228:                                              ; preds = %222
  %229 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %230 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %229, i32 0, i32 6
  %231 = load %struct.pci9118_private*, %struct.pci9118_private** %8, align 8
  %232 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @comedi_check_trigger_arg_min(i32* %230, i32 %233)
  %235 = load i32, i32* %9, align 4
  %236 = or i32 %235, %234
  store i32 %236, i32* %9, align 4
  br label %237

237:                                              ; preds = %228, %222
  %238 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %239 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = icmp eq i32 %240, 130
  br i1 %241, label %242, label %260

242:                                              ; preds = %237
  %243 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %244 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %243, i32 0, i32 6
  %245 = load i32, i32* %244, align 8
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %259

247:                                              ; preds = %242
  %248 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %249 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %248, i32 0, i32 6
  store i32 0, i32* %249, align 8
  %250 = load i32, i32* @EINVAL, align 4
  %251 = sub nsw i32 0, %250
  %252 = load i32, i32* %9, align 4
  %253 = or i32 %252, %251
  store i32 %253, i32* %9, align 4
  %254 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %255 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %254, i32 0, i32 7
  %256 = call i32 @comedi_check_trigger_arg_max(i32* %255, i32 65535)
  %257 = load i32, i32* %9, align 4
  %258 = or i32 %257, %256
  store i32 %258, i32* %9, align 4
  br label %259

259:                                              ; preds = %247, %242
  br label %260

260:                                              ; preds = %259, %237
  %261 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %262 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* @TRIG_TIMER, align 4
  %265 = or i32 %264, 128
  %266 = and i32 %263, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %277

268:                                              ; preds = %260
  %269 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %270 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %269, i32 0, i32 8
  %271 = load %struct.pci9118_private*, %struct.pci9118_private** %8, align 8
  %272 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = call i32 @comedi_check_trigger_arg_min(i32* %270, i32 %273)
  %275 = load i32, i32* %9, align 4
  %276 = or i32 %275, %274
  store i32 %276, i32* %9, align 4
  br label %277

277:                                              ; preds = %268, %260
  %278 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %279 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 8
  %281 = icmp eq i32 %280, 130
  br i1 %281, label %282, label %288

282:                                              ; preds = %277
  %283 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %284 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %283, i32 0, i32 8
  %285 = call i32 @comedi_check_trigger_arg_is(i32* %284, i32 0)
  %286 = load i32, i32* %9, align 4
  %287 = or i32 %286, %285
  store i32 %287, i32* %9, align 4
  br label %288

288:                                              ; preds = %282, %277
  %289 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %290 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %289, i32 0, i32 4
  %291 = load i32, i32* %290, align 8
  %292 = load i32, i32* @TRIG_COUNT, align 4
  %293 = icmp eq i32 %291, %292
  br i1 %293, label %294, label %300

294:                                              ; preds = %288
  %295 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %296 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %295, i32 0, i32 9
  %297 = call i32 @comedi_check_trigger_arg_min(i32* %296, i32 1)
  %298 = load i32, i32* %9, align 4
  %299 = or i32 %298, %297
  store i32 %299, i32* %9, align 4
  br label %306

300:                                              ; preds = %288
  %301 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %302 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %301, i32 0, i32 9
  %303 = call i32 @comedi_check_trigger_arg_is(i32* %302, i32 0)
  %304 = load i32, i32* %9, align 4
  %305 = or i32 %304, %303
  store i32 %305, i32* %9, align 4
  br label %306

306:                                              ; preds = %300, %294
  %307 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %308 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %307, i32 0, i32 10
  %309 = call i32 @comedi_check_trigger_arg_min(i32* %308, i32 1)
  %310 = load i32, i32* %9, align 4
  %311 = or i32 %310, %309
  store i32 %311, i32* %9, align 4
  %312 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %313 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %312, i32 0, i32 7
  %314 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %315 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %314, i32 0, i32 10
  %316 = load i32, i32* %315, align 8
  %317 = call i32 @comedi_check_trigger_arg_min(i32* %313, i32 %316)
  %318 = load i32, i32* %9, align 4
  %319 = or i32 %318, %317
  store i32 %319, i32* %9, align 4
  %320 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %321 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %320, i32 0, i32 7
  %322 = load i32, i32* %321, align 4
  %323 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %324 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %323, i32 0, i32 10
  %325 = load i32, i32* %324, align 8
  %326 = urem i32 %322, %325
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %346

328:                                              ; preds = %306
  %329 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %330 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %329, i32 0, i32 10
  %331 = load i32, i32* %330, align 8
  %332 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %333 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %332, i32 0, i32 7
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %336 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %335, i32 0, i32 10
  %337 = load i32, i32* %336, align 8
  %338 = udiv i32 %334, %337
  %339 = mul i32 %331, %338
  %340 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %341 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %340, i32 0, i32 7
  store i32 %339, i32* %341, align 4
  %342 = load i32, i32* @EINVAL, align 4
  %343 = sub nsw i32 0, %342
  %344 = load i32, i32* %9, align 4
  %345 = or i32 %344, %343
  store i32 %345, i32* %9, align 4
  br label %346

346:                                              ; preds = %328, %306
  %347 = load i32, i32* %9, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %350

349:                                              ; preds = %346
  store i32 3, i32* %4, align 4
  br label %459

350:                                              ; preds = %346
  %351 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %352 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 4
  %354 = load i32, i32* @TRIG_TIMER, align 4
  %355 = icmp eq i32 %353, %354
  br i1 %355, label %356, label %373

356:                                              ; preds = %350
  %357 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %358 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %357, i32 0, i32 6
  %359 = load i32, i32* %358, align 8
  store i32 %359, i32* %11, align 4
  %360 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %361 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 8
  %363 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %364 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %363, i32 0, i32 12
  %365 = load i32, i32* %364, align 8
  %366 = call i32 @comedi_8254_cascade_ns_to_timer(i32 %362, i32* %11, i32 %365)
  %367 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %368 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %367, i32 0, i32 6
  %369 = load i32, i32* %11, align 4
  %370 = call i32 @comedi_check_trigger_arg_is(i32* %368, i32 %369)
  %371 = load i32, i32* %9, align 4
  %372 = or i32 %371, %370
  store i32 %372, i32* %9, align 4
  br label %373

373:                                              ; preds = %356, %350
  %374 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %375 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %374, i32 0, i32 2
  %376 = load i32, i32* %375, align 8
  %377 = load i32, i32* @TRIG_TIMER, align 4
  %378 = or i32 %377, 128
  %379 = and i32 %376, %378
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %438

381:                                              ; preds = %373
  %382 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %383 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %382, i32 0, i32 8
  %384 = load i32, i32* %383, align 8
  store i32 %384, i32* %11, align 4
  %385 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %386 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 8
  %388 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %389 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %388, i32 0, i32 12
  %390 = load i32, i32* %389, align 8
  %391 = call i32 @comedi_8254_cascade_ns_to_timer(i32 %387, i32* %11, i32 %390)
  %392 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %393 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %392, i32 0, i32 8
  %394 = load i32, i32* %11, align 4
  %395 = call i32 @comedi_check_trigger_arg_is(i32* %393, i32 %394)
  %396 = load i32, i32* %9, align 4
  %397 = or i32 %396, %395
  store i32 %397, i32* %9, align 4
  %398 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %399 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %398, i32 0, i32 1
  %400 = load i32, i32* %399, align 4
  %401 = load i32, i32* @TRIG_TIMER, align 4
  %402 = icmp eq i32 %400, %401
  br i1 %402, label %403, label %437

403:                                              ; preds = %381
  %404 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %405 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %404, i32 0, i32 2
  %406 = load i32, i32* %405, align 8
  %407 = icmp eq i32 %406, 128
  br i1 %407, label %408, label %437

408:                                              ; preds = %403
  %409 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %410 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %409, i32 0, i32 8
  %411 = load i32, i32* %410, align 8
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %413, label %422

413:                                              ; preds = %408
  %414 = load %struct.pci9118_private*, %struct.pci9118_private** %8, align 8
  %415 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %414, i32 0, i32 0
  %416 = load i32, i32* %415, align 8
  %417 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %418 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %417, i32 0, i32 7
  %419 = load i32, i32* %418, align 4
  %420 = add nsw i32 %419, 2
  %421 = mul i32 %416, %420
  store i32 %421, i32* %11, align 4
  br label %430

422:                                              ; preds = %408
  %423 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %424 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %423, i32 0, i32 8
  %425 = load i32, i32* %424, align 8
  %426 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %427 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %426, i32 0, i32 10
  %428 = load i32, i32* %427, align 8
  %429 = mul i32 %425, %428
  store i32 %429, i32* %11, align 4
  br label %430

430:                                              ; preds = %422, %413
  %431 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %432 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %431, i32 0, i32 6
  %433 = load i32, i32* %11, align 4
  %434 = call i32 @comedi_check_trigger_arg_min(i32* %432, i32 %433)
  %435 = load i32, i32* %9, align 4
  %436 = or i32 %435, %434
  store i32 %436, i32* %9, align 4
  br label %437

437:                                              ; preds = %430, %403, %381
  br label %438

438:                                              ; preds = %437, %373
  %439 = load i32, i32* %9, align 4
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %441, label %442

441:                                              ; preds = %438
  store i32 4, i32* %4, align 4
  br label %459

442:                                              ; preds = %438
  %443 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %444 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %443, i32 0, i32 11
  %445 = load i64, i64* %444, align 8
  %446 = icmp ne i64 %445, 0
  br i1 %446, label %447, label %454

447:                                              ; preds = %442
  %448 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %449 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %450 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %451 = call i32 @pci9118_ai_check_chanlist(%struct.comedi_device* %448, %struct.comedi_subdevice* %449, %struct.comedi_cmd* %450)
  %452 = load i32, i32* %9, align 4
  %453 = or i32 %452, %451
  store i32 %453, i32* %9, align 4
  br label %454

454:                                              ; preds = %447, %442
  %455 = load i32, i32* %9, align 4
  %456 = icmp ne i32 %455, 0
  br i1 %456, label %457, label %458

457:                                              ; preds = %454
  store i32 5, i32* %4, align 4
  br label %459

458:                                              ; preds = %454
  store i32 0, i32* %4, align 4
  br label %459

459:                                              ; preds = %458, %457, %441, %349, %168, %70
  %460 = load i32, i32* %4, align 4
  ret i32 %460
}

declare dso_local i32 @comedi_check_trigger_src(i32*, i32) #1

declare dso_local i32 @comedi_check_trigger_is_unique(i32) #1

declare dso_local i32 @comedi_check_trigger_arg_is(i32*, i32) #1

declare dso_local i32 @comedi_check_trigger_arg_min(i32*, i32) #1

declare dso_local i32 @comedi_check_trigger_arg_max(i32*, i32) #1

declare dso_local i32 @comedi_8254_cascade_ns_to_timer(i32, i32*, i32) #1

declare dso_local i32 @pci9118_ai_check_chanlist(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
