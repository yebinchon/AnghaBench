; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adl_pci9111.c_pci9111_ai_do_cmd_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adl_pci9111.c_pci9111_ai_do_cmd_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }

@TRIG_NOW = common dso_local global i32 0, align 4
@TRIG_TIMER = common dso_local global i32 0, align 4
@TRIG_FOLLOW = common dso_local global i32 0, align 4
@TRIG_EXT = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i32 0, align 4
@TRIG_NONE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PCI9111_AI_ACQUISITION_PERIOD_MIN_NS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @pci9111_ai_do_cmd_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci9111_ai_do_cmd_test(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_cmd* %2, %struct.comedi_cmd** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %11 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %10, i32 0, i32 0
  %12 = load i32, i32* @TRIG_NOW, align 4
  %13 = call i32 @comedi_check_trigger_src(i32* %11, i32 %12)
  %14 = load i32, i32* %8, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %8, align 4
  %16 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %17 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %16, i32 0, i32 1
  %18 = load i32, i32* @TRIG_TIMER, align 4
  %19 = load i32, i32* @TRIG_FOLLOW, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @TRIG_EXT, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @comedi_check_trigger_src(i32* %17, i32 %22)
  %24 = load i32, i32* %8, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %8, align 4
  %26 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %27 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %26, i32 0, i32 2
  %28 = load i32, i32* @TRIG_TIMER, align 4
  %29 = load i32, i32* @TRIG_EXT, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @comedi_check_trigger_src(i32* %27, i32 %30)
  %32 = load i32, i32* %8, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %8, align 4
  %34 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %35 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %34, i32 0, i32 3
  %36 = load i32, i32* @TRIG_COUNT, align 4
  %37 = call i32 @comedi_check_trigger_src(i32* %35, i32 %36)
  %38 = load i32, i32* %8, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %8, align 4
  %40 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %41 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %40, i32 0, i32 4
  %42 = load i32, i32* @TRIG_COUNT, align 4
  %43 = load i32, i32* @TRIG_NONE, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @comedi_check_trigger_src(i32* %41, i32 %44)
  %46 = load i32, i32* %8, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %249

51:                                               ; preds = %3
  %52 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %53 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @comedi_check_trigger_is_unique(i32 %54)
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %8, align 4
  %58 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %59 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @comedi_check_trigger_is_unique(i32 %60)
  %62 = load i32, i32* %8, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %8, align 4
  %64 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %65 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @comedi_check_trigger_is_unique(i32 %66)
  %68 = load i32, i32* %8, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %8, align 4
  %70 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %71 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @TRIG_FOLLOW, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %89

75:                                               ; preds = %51
  %76 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %77 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %80 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %78, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %75
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  %86 = load i32, i32* %8, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %83, %75
  br label %89

89:                                               ; preds = %88, %51
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  store i32 2, i32* %4, align 4
  br label %249

93:                                               ; preds = %89
  %94 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %95 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %94, i32 0, i32 5
  %96 = call i32 @comedi_check_trigger_arg_is(i32* %95, i32 0)
  %97 = load i32, i32* %8, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %8, align 4
  %99 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %100 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @TRIG_TIMER, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %93
  %105 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %106 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %105, i32 0, i32 6
  %107 = load i32, i32* @PCI9111_AI_ACQUISITION_PERIOD_MIN_NS, align 4
  %108 = call i32 @comedi_check_trigger_arg_min(i32* %106, i32 %107)
  %109 = load i32, i32* %8, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %8, align 4
  br label %117

111:                                              ; preds = %93
  %112 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %113 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %112, i32 0, i32 6
  %114 = call i32 @comedi_check_trigger_arg_is(i32* %113, i32 0)
  %115 = load i32, i32* %8, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %8, align 4
  br label %117

117:                                              ; preds = %111, %104
  %118 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %119 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @TRIG_TIMER, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %130

123:                                              ; preds = %117
  %124 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %125 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %124, i32 0, i32 7
  %126 = load i32, i32* @PCI9111_AI_ACQUISITION_PERIOD_MIN_NS, align 4
  %127 = call i32 @comedi_check_trigger_arg_min(i32* %125, i32 %126)
  %128 = load i32, i32* %8, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %8, align 4
  br label %136

130:                                              ; preds = %117
  %131 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %132 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %131, i32 0, i32 7
  %133 = call i32 @comedi_check_trigger_arg_is(i32* %132, i32 0)
  %134 = load i32, i32* %8, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %8, align 4
  br label %136

136:                                              ; preds = %130, %123
  %137 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %138 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %137, i32 0, i32 8
  %139 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %140 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %139, i32 0, i32 9
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @comedi_check_trigger_arg_is(i32* %138, i32 %141)
  %143 = load i32, i32* %8, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %8, align 4
  %145 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %146 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @TRIG_COUNT, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %156

150:                                              ; preds = %136
  %151 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %152 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %151, i32 0, i32 10
  %153 = call i32 @comedi_check_trigger_arg_min(i32* %152, i32 1)
  %154 = load i32, i32* %8, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %8, align 4
  br label %162

156:                                              ; preds = %136
  %157 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %158 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %157, i32 0, i32 10
  %159 = call i32 @comedi_check_trigger_arg_is(i32* %158, i32 0)
  %160 = load i32, i32* %8, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %8, align 4
  br label %162

162:                                              ; preds = %156, %150
  %163 = load i32, i32* %8, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %162
  store i32 3, i32* %4, align 4
  br label %249

166:                                              ; preds = %162
  %167 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %168 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @TRIG_TIMER, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %189

172:                                              ; preds = %166
  %173 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %174 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %173, i32 0, i32 6
  %175 = load i32, i32* %174, align 8
  store i32 %175, i32* %9, align 4
  %176 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %177 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %180 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %179, i32 0, i32 12
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @comedi_8254_cascade_ns_to_timer(i32 %178, i32* %9, i32 %181)
  %183 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %184 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %183, i32 0, i32 6
  %185 = load i32, i32* %9, align 4
  %186 = call i32 @comedi_check_trigger_arg_is(i32* %184, i32 %185)
  %187 = load i32, i32* %8, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %8, align 4
  br label %189

189:                                              ; preds = %172, %166
  %190 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %191 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @TRIG_TIMER, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %223

195:                                              ; preds = %189
  %196 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %197 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %196, i32 0, i32 9
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %200 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %199, i32 0, i32 6
  %201 = load i32, i32* %200, align 8
  %202 = mul i32 %198, %201
  store i32 %202, i32* %9, align 4
  %203 = load i32, i32* %9, align 4
  %204 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %205 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %204, i32 0, i32 7
  %206 = load i32, i32* %205, align 4
  %207 = icmp ult i32 %203, %206
  br i1 %207, label %208, label %216

208:                                              ; preds = %195
  %209 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %210 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %209, i32 0, i32 7
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* %9, align 4
  %213 = udiv i32 %211, %212
  %214 = load i32, i32* %9, align 4
  %215 = mul i32 %214, %213
  store i32 %215, i32* %9, align 4
  br label %216

216:                                              ; preds = %208, %195
  %217 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %218 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %217, i32 0, i32 7
  %219 = load i32, i32* %9, align 4
  %220 = call i32 @comedi_check_trigger_arg_is(i32* %218, i32 %219)
  %221 = load i32, i32* %8, align 4
  %222 = or i32 %221, %220
  store i32 %222, i32* %8, align 4
  br label %223

223:                                              ; preds = %216, %189
  %224 = load i32, i32* %8, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %223
  store i32 4, i32* %4, align 4
  br label %249

227:                                              ; preds = %223
  %228 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %229 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %228, i32 0, i32 11
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %244

232:                                              ; preds = %227
  %233 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %234 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %233, i32 0, i32 9
  %235 = load i32, i32* %234, align 4
  %236 = icmp ugt i32 %235, 0
  br i1 %236, label %237, label %244

237:                                              ; preds = %232
  %238 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %239 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %240 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %241 = call i32 @pci9111_ai_check_chanlist(%struct.comedi_device* %238, %struct.comedi_subdevice* %239, %struct.comedi_cmd* %240)
  %242 = load i32, i32* %8, align 4
  %243 = or i32 %242, %241
  store i32 %243, i32* %8, align 4
  br label %244

244:                                              ; preds = %237, %232, %227
  %245 = load i32, i32* %8, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %244
  store i32 5, i32* %4, align 4
  br label %249

248:                                              ; preds = %244
  store i32 0, i32* %4, align 4
  br label %249

249:                                              ; preds = %248, %247, %226, %165, %92, %50
  %250 = load i32, i32* %4, align 4
  ret i32 %250
}

declare dso_local i32 @comedi_check_trigger_src(i32*, i32) #1

declare dso_local i32 @comedi_check_trigger_is_unique(i32) #1

declare dso_local i32 @comedi_check_trigger_arg_is(i32*, i32) #1

declare dso_local i32 @comedi_check_trigger_arg_min(i32*, i32) #1

declare dso_local i32 @comedi_8254_cascade_ns_to_timer(i32, i32*, i32) #1

declare dso_local i32 @pci9111_ai_check_chanlist(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
