; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_comedi_test.c_waveform_ai_cmdtest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_comedi_test.c_waveform_ai_cmdtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@TRIG_NOW = common dso_local global i32 0, align 4
@TRIG_FOLLOW = common dso_local global i32 0, align 4
@TRIG_TIMER = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i32 0, align 4
@TRIG_NONE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NSEC_PER_USEC = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @waveform_ai_cmdtest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @waveform_ai_cmdtest(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_cmd* %2, %struct.comedi_cmd** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %12 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %11, i32 0, i32 0
  %13 = load i32, i32* @TRIG_NOW, align 4
  %14 = call i32 @comedi_check_trigger_src(i32* %12, i32 %13)
  %15 = load i32, i32* %8, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %8, align 4
  %17 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %18 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %17, i32 0, i32 1
  %19 = load i32, i32* @TRIG_FOLLOW, align 4
  %20 = load i32, i32* @TRIG_TIMER, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @comedi_check_trigger_src(i32* %18, i32 %21)
  %23 = load i32, i32* %8, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %8, align 4
  %25 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %26 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %25, i32 0, i32 2
  %27 = load i32, i32* @TRIG_NOW, align 4
  %28 = load i32, i32* @TRIG_TIMER, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @comedi_check_trigger_src(i32* %26, i32 %29)
  %31 = load i32, i32* %8, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %8, align 4
  %33 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %34 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %33, i32 0, i32 3
  %35 = load i32, i32* @TRIG_COUNT, align 4
  %36 = call i32 @comedi_check_trigger_src(i32* %34, i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %8, align 4
  %39 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %40 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %39, i32 0, i32 4
  %41 = load i32, i32* @TRIG_COUNT, align 4
  %42 = load i32, i32* @TRIG_NONE, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @comedi_check_trigger_src(i32* %40, i32 %43)
  %45 = load i32, i32* %8, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %260

50:                                               ; preds = %3
  %51 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %52 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @comedi_check_trigger_is_unique(i32 %53)
  %55 = load i32, i32* %8, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %8, align 4
  %57 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %58 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @comedi_check_trigger_is_unique(i32 %59)
  %61 = load i32, i32* %8, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %8, align 4
  %63 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %64 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @TRIG_FOLLOW, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %50
  %69 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %70 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @TRIG_NOW, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %68
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  %77 = load i32, i32* %8, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %74, %68, %50
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  store i32 2, i32* %4, align 4
  br label %260

83:                                               ; preds = %79
  %84 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %85 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %84, i32 0, i32 5
  %86 = call i32 @comedi_check_trigger_arg_is(i32* %85, i32 0)
  %87 = load i32, i32* %8, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %8, align 4
  %89 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %90 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @TRIG_NOW, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %83
  %95 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %96 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %95, i32 0, i32 6
  %97 = call i32 @comedi_check_trigger_arg_is(i32* %96, i32 0)
  %98 = load i32, i32* %8, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %8, align 4
  br label %114

100:                                              ; preds = %83
  %101 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %102 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @TRIG_FOLLOW, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %100
  %107 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %108 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %107, i32 0, i32 6
  %109 = load i32, i32* @NSEC_PER_USEC, align 4
  %110 = call i32 @comedi_check_trigger_arg_min(i32* %108, i32 %109)
  %111 = load i32, i32* %8, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %8, align 4
  br label %113

113:                                              ; preds = %106, %100
  br label %114

114:                                              ; preds = %113, %94
  %115 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %116 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @TRIG_FOLLOW, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %114
  %121 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %122 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %121, i32 0, i32 7
  %123 = call i32 @comedi_check_trigger_arg_is(i32* %122, i32 0)
  %124 = load i32, i32* %8, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %8, align 4
  br label %133

126:                                              ; preds = %114
  %127 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %128 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %127, i32 0, i32 7
  %129 = load i32, i32* @NSEC_PER_USEC, align 4
  %130 = call i32 @comedi_check_trigger_arg_min(i32* %128, i32 %129)
  %131 = load i32, i32* %8, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %8, align 4
  br label %133

133:                                              ; preds = %126, %120
  %134 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %135 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %134, i32 0, i32 8
  %136 = call i32 @comedi_check_trigger_arg_min(i32* %135, i32 1)
  %137 = load i32, i32* %8, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %8, align 4
  %139 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %140 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %139, i32 0, i32 9
  %141 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %142 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %141, i32 0, i32 8
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @comedi_check_trigger_arg_is(i32* %140, i32 %143)
  %145 = load i32, i32* %8, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %8, align 4
  %147 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %148 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @TRIG_COUNT, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %158

152:                                              ; preds = %133
  %153 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %154 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %153, i32 0, i32 10
  %155 = call i32 @comedi_check_trigger_arg_min(i32* %154, i32 1)
  %156 = load i32, i32* %8, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %8, align 4
  br label %164

158:                                              ; preds = %133
  %159 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %160 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %159, i32 0, i32 10
  %161 = call i32 @comedi_check_trigger_arg_is(i32* %160, i32 0)
  %162 = load i32, i32* %8, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %8, align 4
  br label %164

164:                                              ; preds = %158, %152
  %165 = load i32, i32* %8, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %164
  store i32 3, i32* %4, align 4
  br label %260

168:                                              ; preds = %164
  %169 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %170 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @TRIG_TIMER, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %213

174:                                              ; preds = %168
  %175 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %176 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %175, i32 0, i32 6
  %177 = load i32, i32* %176, align 4
  store i32 %177, i32* %9, align 4
  %178 = load i32, i32* %9, align 4
  %179 = load i32, i32* @UINT_MAX, align 4
  %180 = load i32, i32* @NSEC_PER_USEC, align 4
  %181 = call i32 @rounddown(i32 %179, i32 %180)
  %182 = call i32 @min(i32 %178, i32 %181)
  store i32 %182, i32* %9, align 4
  %183 = load i32, i32* @NSEC_PER_USEC, align 4
  %184 = load i32, i32* %9, align 4
  %185 = load i32, i32* @NSEC_PER_USEC, align 4
  %186 = call i32 @DIV_ROUND_CLOSEST(i32 %184, i32 %185)
  %187 = mul nsw i32 %183, %186
  store i32 %187, i32* %9, align 4
  %188 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %189 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %188, i32 0, i32 7
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @TRIG_TIMER, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %206

193:                                              ; preds = %174
  %194 = load i32, i32* @UINT_MAX, align 4
  %195 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %196 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %195, i32 0, i32 9
  %197 = load i32, i32* %196, align 4
  %198 = udiv i32 %194, %197
  store i32 %198, i32* %10, align 4
  %199 = load i32, i32* %10, align 4
  %200 = load i64, i64* @NSEC_PER_SEC, align 8
  %201 = trunc i64 %200 to i32
  %202 = call i32 @rounddown(i32 %199, i32 %201)
  store i32 %202, i32* %10, align 4
  %203 = load i32, i32* %9, align 4
  %204 = load i32, i32* %10, align 4
  %205 = call i32 @min(i32 %203, i32 %204)
  store i32 %205, i32* %9, align 4
  br label %206

206:                                              ; preds = %193, %174
  %207 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %208 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %207, i32 0, i32 6
  %209 = load i32, i32* %9, align 4
  %210 = call i32 @comedi_check_trigger_arg_is(i32* %208, i32 %209)
  %211 = load i32, i32* %8, align 4
  %212 = or i32 %211, %210
  store i32 %212, i32* %8, align 4
  br label %213

213:                                              ; preds = %206, %168
  %214 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %215 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @TRIG_TIMER, align 4
  %218 = icmp eq i32 %216, %217
  br i1 %218, label %219, label %255

219:                                              ; preds = %213
  %220 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %221 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %220, i32 0, i32 7
  %222 = load i32, i32* %221, align 4
  store i32 %222, i32* %9, align 4
  %223 = load i32, i32* %9, align 4
  %224 = load i32, i32* @UINT_MAX, align 4
  %225 = load i32, i32* @NSEC_PER_USEC, align 4
  %226 = call i32 @rounddown(i32 %224, i32 %225)
  %227 = call i32 @min(i32 %223, i32 %226)
  store i32 %227, i32* %9, align 4
  %228 = load i32, i32* @NSEC_PER_USEC, align 4
  %229 = load i32, i32* %9, align 4
  %230 = load i32, i32* @NSEC_PER_USEC, align 4
  %231 = call i32 @DIV_ROUND_CLOSEST(i32 %229, i32 %230)
  %232 = mul nsw i32 %228, %231
  store i32 %232, i32* %9, align 4
  %233 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %234 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @TRIG_TIMER, align 4
  %237 = icmp eq i32 %235, %236
  br i1 %237, label %238, label %248

238:                                              ; preds = %219
  %239 = load i32, i32* %9, align 4
  %240 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %241 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %240, i32 0, i32 6
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %244 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %243, i32 0, i32 9
  %245 = load i32, i32* %244, align 4
  %246 = mul i32 %242, %245
  %247 = call i32 @max(i32 %239, i32 %246)
  store i32 %247, i32* %9, align 4
  br label %248

248:                                              ; preds = %238, %219
  %249 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %250 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %249, i32 0, i32 7
  %251 = load i32, i32* %9, align 4
  %252 = call i32 @comedi_check_trigger_arg_is(i32* %250, i32 %251)
  %253 = load i32, i32* %8, align 4
  %254 = or i32 %253, %252
  store i32 %254, i32* %8, align 4
  br label %255

255:                                              ; preds = %248, %213
  %256 = load i32, i32* %8, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %255
  store i32 4, i32* %4, align 4
  br label %260

259:                                              ; preds = %255
  store i32 0, i32* %4, align 4
  br label %260

260:                                              ; preds = %259, %258, %167, %82, %49
  %261 = load i32, i32* %4, align 4
  ret i32 %261
}

declare dso_local i32 @comedi_check_trigger_src(i32*, i32) #1

declare dso_local i32 @comedi_check_trigger_is_unique(i32) #1

declare dso_local i32 @comedi_check_trigger_arg_is(i32*, i32) #1

declare dso_local i32 @comedi_check_trigger_arg_min(i32*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @rounddown(i32, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
