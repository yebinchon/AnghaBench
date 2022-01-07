; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_ao_cmdtest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_ao_cmdtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.pci230_private*, %struct.pci230_board* }
%struct.pci230_private = type { i32 }
%struct.pci230_board = type { i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, i32 }

@TRIG_INT = common dso_local global i32 0, align 4
@TRIG_NOW = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i32 0, align 4
@TRIG_NONE = common dso_local global i32 0, align 4
@CR_FLAGS_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CR_EDGE = common dso_local global i32 0, align 4
@CR_INVERT = common dso_local global i32 0, align 4
@MAX_SPEED_AO = common dso_local global i32 0, align 4
@MIN_SPEED_AO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @pci230_ao_cmdtest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci230_ao_cmdtest(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca %struct.pci230_board*, align 8
  %9 = alloca %struct.pci230_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_cmd* %2, %struct.comedi_cmd** %7, align 8
  %12 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 1
  %14 = load %struct.pci230_board*, %struct.pci230_board** %13, align 8
  store %struct.pci230_board* %14, %struct.pci230_board** %8, align 8
  %15 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 0
  %17 = load %struct.pci230_private*, %struct.pci230_private** %16, align 8
  store %struct.pci230_private* %17, %struct.pci230_private** %9, align 8
  store i32 0, i32* %10, align 4
  %18 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %19 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %18, i32 0, i32 0
  %20 = load i32, i32* @TRIG_INT, align 4
  %21 = call i32 @comedi_check_trigger_src(i32* %19, i32 %20)
  %22 = load i32, i32* %10, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* @TRIG_INT, align 4
  %25 = or i32 128, %24
  store i32 %25, i32* %11, align 4
  %26 = load %struct.pci230_board*, %struct.pci230_board** %8, align 8
  %27 = getelementptr inbounds %struct.pci230_board, %struct.pci230_board* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %3
  %31 = load %struct.pci230_private*, %struct.pci230_private** %9, align 8
  %32 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp sge i32 %33, 2
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* %11, align 4
  %37 = or i32 %36, 129
  store i32 %37, i32* %11, align 4
  br label %38

38:                                               ; preds = %35, %30, %3
  %39 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %40 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %39, i32 0, i32 1
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @comedi_check_trigger_src(i32* %40, i32 %41)
  %43 = load i32, i32* %10, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %10, align 4
  %45 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %46 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %45, i32 0, i32 2
  %47 = load i32, i32* @TRIG_NOW, align 4
  %48 = call i32 @comedi_check_trigger_src(i32* %46, i32 %47)
  %49 = load i32, i32* %10, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %10, align 4
  %51 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %52 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %51, i32 0, i32 3
  %53 = load i32, i32* @TRIG_COUNT, align 4
  %54 = call i32 @comedi_check_trigger_src(i32* %52, i32 %53)
  %55 = load i32, i32* %10, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %10, align 4
  %57 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %58 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %57, i32 0, i32 4
  %59 = load i32, i32* @TRIG_COUNT, align 4
  %60 = load i32, i32* @TRIG_NONE, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @comedi_check_trigger_src(i32* %58, i32 %61)
  %63 = load i32, i32* %10, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %38
  store i32 1, i32* %4, align 4
  br label %243

68:                                               ; preds = %38
  %69 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %70 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @comedi_check_trigger_is_unique(i32 %71)
  %73 = load i32, i32* %10, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %10, align 4
  %75 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %76 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @comedi_check_trigger_is_unique(i32 %77)
  %79 = load i32, i32* %10, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %68
  store i32 2, i32* %4, align 4
  br label %243

84:                                               ; preds = %68
  %85 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %86 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %85, i32 0, i32 5
  %87 = call i32 @comedi_check_trigger_arg_is(i32* %86, i64 0)
  %88 = load i32, i32* %10, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %10, align 4
  %90 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %91 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  switch i32 %92, label %157 [
    i32 128, label %93
    i32 129, label %104
  ]

93:                                               ; preds = %84
  %94 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %95 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %94, i32 0, i32 6
  %96 = call i32 @comedi_check_trigger_arg_min(i32* %95, i32 8000)
  %97 = load i32, i32* %10, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %10, align 4
  %99 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %100 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %99, i32 0, i32 6
  %101 = call i32 @comedi_check_trigger_arg_max(i32* %100, i32 -1)
  %102 = load i32, i32* %10, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %10, align 4
  br label %163

104:                                              ; preds = %84
  %105 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %106 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %105, i32 0, i32 6
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @CR_FLAGS_MASK, align 4
  %109 = xor i32 %108, -1
  %110 = and i32 %107, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %126

112:                                              ; preds = %104
  %113 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %114 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @CR_FLAGS_MASK, align 4
  %117 = xor i32 %116, -1
  %118 = call i8* @COMBINE(i32 %115, i32 0, i32 %117)
  %119 = ptrtoint i8* %118 to i32
  %120 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %121 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %120, i32 0, i32 6
  store i32 %119, i32* %121, align 8
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  %124 = load i32, i32* %10, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %10, align 4
  br label %126

126:                                              ; preds = %112, %104
  %127 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %128 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %127, i32 0, i32 6
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @CR_FLAGS_MASK, align 4
  %131 = and i32 %129, %130
  %132 = load i32, i32* @CR_EDGE, align 4
  %133 = load i32, i32* @CR_INVERT, align 4
  %134 = or i32 %132, %133
  %135 = xor i32 %134, -1
  %136 = and i32 %131, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %156

138:                                              ; preds = %126
  %139 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %140 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %139, i32 0, i32 6
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @CR_FLAGS_MASK, align 4
  %143 = load i32, i32* @CR_EDGE, align 4
  %144 = load i32, i32* @CR_INVERT, align 4
  %145 = or i32 %143, %144
  %146 = xor i32 %145, -1
  %147 = and i32 %142, %146
  %148 = call i8* @COMBINE(i32 %141, i32 0, i32 %147)
  %149 = ptrtoint i8* %148 to i32
  %150 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %151 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %150, i32 0, i32 6
  store i32 %149, i32* %151, align 8
  %152 = load i32, i32* @EINVAL, align 4
  %153 = sub nsw i32 0, %152
  %154 = load i32, i32* %10, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %10, align 4
  br label %156

156:                                              ; preds = %138, %126
  br label %163

157:                                              ; preds = %84
  %158 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %159 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %158, i32 0, i32 6
  %160 = call i32 @comedi_check_trigger_arg_is(i32* %159, i64 0)
  %161 = load i32, i32* %10, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %10, align 4
  br label %163

163:                                              ; preds = %157, %156, %93
  %164 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %165 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %164, i32 0, i32 7
  %166 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %167 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %166, i32 0, i32 8
  %168 = load i64, i64* %167, align 8
  %169 = call i32 @comedi_check_trigger_arg_is(i32* %165, i64 %168)
  %170 = load i32, i32* %10, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %10, align 4
  %172 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %173 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @TRIG_COUNT, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %183

177:                                              ; preds = %163
  %178 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %179 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %178, i32 0, i32 9
  %180 = call i32 @comedi_check_trigger_arg_min(i32* %179, i32 1)
  %181 = load i32, i32* %10, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %10, align 4
  br label %189

183:                                              ; preds = %163
  %184 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %185 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %184, i32 0, i32 9
  %186 = call i32 @comedi_check_trigger_arg_is(i32* %185, i64 0)
  %187 = load i32, i32* %10, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %10, align 4
  br label %189

189:                                              ; preds = %183, %177
  %190 = load i32, i32* %10, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %189
  store i32 3, i32* %4, align 4
  br label %243

193:                                              ; preds = %189
  %194 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %195 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = icmp eq i32 %196, 128
  br i1 %197, label %198, label %217

198:                                              ; preds = %193
  %199 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %200 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %199, i32 0, i32 6
  %201 = load i32, i32* %200, align 8
  store i32 %201, i32* %11, align 4
  %202 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %203 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %202, i32 0, i32 6
  %204 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %205 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %204, i32 0, i32 11
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @pci230_ns_to_single_timer(i32* %203, i32 %206)
  %208 = load i32, i32* %11, align 4
  %209 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %210 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %209, i32 0, i32 6
  %211 = load i32, i32* %210, align 8
  %212 = icmp ne i32 %208, %211
  br i1 %212, label %213, label %216

213:                                              ; preds = %198
  %214 = load i32, i32* %10, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %10, align 4
  br label %216

216:                                              ; preds = %213, %198
  br label %217

217:                                              ; preds = %216, %193
  %218 = load i32, i32* %10, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %217
  store i32 4, i32* %4, align 4
  br label %243

221:                                              ; preds = %217
  %222 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %223 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %222, i32 0, i32 10
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %238

226:                                              ; preds = %221
  %227 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %228 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %227, i32 0, i32 8
  %229 = load i64, i64* %228, align 8
  %230 = icmp sgt i64 %229, 0
  br i1 %230, label %231, label %238

231:                                              ; preds = %226
  %232 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %233 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %234 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %235 = call i32 @pci230_ao_check_chanlist(%struct.comedi_device* %232, %struct.comedi_subdevice* %233, %struct.comedi_cmd* %234)
  %236 = load i32, i32* %10, align 4
  %237 = or i32 %236, %235
  store i32 %237, i32* %10, align 4
  br label %238

238:                                              ; preds = %231, %226, %221
  %239 = load i32, i32* %10, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %238
  store i32 5, i32* %4, align 4
  br label %243

242:                                              ; preds = %238
  store i32 0, i32* %4, align 4
  br label %243

243:                                              ; preds = %242, %241, %220, %192, %83, %67
  %244 = load i32, i32* %4, align 4
  ret i32 %244
}

declare dso_local i32 @comedi_check_trigger_src(i32*, i32) #1

declare dso_local i32 @comedi_check_trigger_is_unique(i32) #1

declare dso_local i32 @comedi_check_trigger_arg_is(i32*, i64) #1

declare dso_local i32 @comedi_check_trigger_arg_min(i32*, i32) #1

declare dso_local i32 @comedi_check_trigger_arg_max(i32*, i32) #1

declare dso_local i8* @COMBINE(i32, i32, i32) #1

declare dso_local i32 @pci230_ns_to_single_timer(i32*, i32) #1

declare dso_local i32 @pci230_ao_check_chanlist(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
