; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das1800.c_das1800_ai_cmdtest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das1800.c_das1800_ai_cmdtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.das1800_board* }
%struct.das1800_board = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i64 }

@TRIG_NOW = common dso_local global i32 0, align 4
@TRIG_EXT = common dso_local global i32 0, align 4
@TRIG_FOLLOW = common dso_local global i32 0, align 4
@TRIG_TIMER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @das1800_ai_cmdtest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @das1800_ai_cmdtest(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca %struct.das1800_board*, align 8
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_cmd* %2, %struct.comedi_cmd** %7, align 8
  %10 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 0
  %12 = load %struct.das1800_board*, %struct.das1800_board** %11, align 8
  store %struct.das1800_board* %12, %struct.das1800_board** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %14 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %13, i32 0, i32 0
  %15 = load i32, i32* @TRIG_NOW, align 4
  %16 = load i32, i32* @TRIG_EXT, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @comedi_check_trigger_src(i32* %14, i32 %17)
  %19 = load i32, i32* %9, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %9, align 4
  %21 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %22 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %21, i32 0, i32 1
  %23 = load i32, i32* @TRIG_FOLLOW, align 4
  %24 = load i32, i32* @TRIG_TIMER, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @TRIG_EXT, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @comedi_check_trigger_src(i32* %22, i32 %27)
  %29 = load i32, i32* %9, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %9, align 4
  %31 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %32 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %31, i32 0, i32 2
  %33 = load i32, i32* @TRIG_TIMER, align 4
  %34 = load i32, i32* @TRIG_EXT, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @comedi_check_trigger_src(i32* %32, i32 %35)
  %37 = load i32, i32* %9, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %9, align 4
  %39 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %40 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %39, i32 0, i32 3
  %41 = call i32 @comedi_check_trigger_src(i32* %40, i32 129)
  %42 = load i32, i32* %9, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %9, align 4
  %44 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %45 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %44, i32 0, i32 4
  %46 = load i32, i32* @TRIG_EXT, align 4
  %47 = or i32 129, %46
  %48 = or i32 %47, 128
  %49 = call i32 @comedi_check_trigger_src(i32* %45, i32 %48)
  %50 = load i32, i32* %9, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %234

55:                                               ; preds = %3
  %56 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %57 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @comedi_check_trigger_is_unique(i32 %58)
  %60 = load i32, i32* %9, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %9, align 4
  %62 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %63 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @comedi_check_trigger_is_unique(i32 %64)
  %66 = load i32, i32* %9, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %9, align 4
  %68 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %69 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @comedi_check_trigger_is_unique(i32 %70)
  %72 = load i32, i32* %9, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %9, align 4
  %74 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %75 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @comedi_check_trigger_is_unique(i32 %76)
  %78 = load i32, i32* %9, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %9, align 4
  %80 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %81 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @TRIG_FOLLOW, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %96

85:                                               ; preds = %55
  %86 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %87 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @TRIG_TIMER, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %85
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  %94 = load i32, i32* %9, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %9, align 4
  br label %96

96:                                               ; preds = %91, %85, %55
  %97 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %98 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @TRIG_EXT, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %117

102:                                              ; preds = %96
  %103 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %104 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @TRIG_EXT, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %102
  %109 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %110 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %109, i32 0, i32 5
  %111 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %112 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %111, i32 0, i32 6
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @comedi_check_trigger_arg_is(i32* %110, i64 %113)
  %115 = load i32, i32* %9, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %9, align 4
  br label %117

117:                                              ; preds = %108, %102, %96
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  store i32 2, i32* %4, align 4
  br label %234

121:                                              ; preds = %117
  %122 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %123 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @TRIG_NOW, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %133

127:                                              ; preds = %121
  %128 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %129 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %128, i32 0, i32 5
  %130 = call i32 @comedi_check_trigger_arg_is(i32* %129, i64 0)
  %131 = load i32, i32* %9, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %9, align 4
  br label %133

133:                                              ; preds = %127, %121
  %134 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %135 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @TRIG_TIMER, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %148

139:                                              ; preds = %133
  %140 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %141 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %140, i32 0, i32 7
  %142 = load %struct.das1800_board*, %struct.das1800_board** %8, align 8
  %143 = getelementptr inbounds %struct.das1800_board, %struct.das1800_board* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @comedi_check_trigger_arg_min(i64* %141, i32 %144)
  %146 = load i32, i32* %9, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %9, align 4
  br label %148

148:                                              ; preds = %139, %133
  %149 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %150 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %149, i32 0, i32 8
  %151 = call i32 @comedi_check_trigger_arg_min(i64* %150, i32 1)
  %152 = load i32, i32* %9, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %9, align 4
  %154 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %155 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %154, i32 0, i32 9
  %156 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %157 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %156, i32 0, i32 8
  %158 = load i64, i64* %157, align 8
  %159 = call i32 @comedi_check_trigger_arg_is(i32* %155, i64 %158)
  %160 = load i32, i32* %9, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %9, align 4
  %162 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %163 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  switch i32 %164, label %178 [
    i32 129, label %165
    i32 128, label %171
  ]

165:                                              ; preds = %148
  %166 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %167 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %166, i32 0, i32 6
  %168 = call i32 @comedi_check_trigger_arg_min(i64* %167, i32 1)
  %169 = load i32, i32* %9, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %9, align 4
  br label %179

171:                                              ; preds = %148
  %172 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %173 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %172, i32 0, i32 6
  %174 = bitcast i64* %173 to i32*
  %175 = call i32 @comedi_check_trigger_arg_is(i32* %174, i64 0)
  %176 = load i32, i32* %9, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %9, align 4
  br label %179

178:                                              ; preds = %148
  br label %179

179:                                              ; preds = %178, %171, %165
  %180 = load i32, i32* %9, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %179
  store i32 3, i32* %4, align 4
  br label %234

183:                                              ; preds = %179
  %184 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %185 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @TRIG_TIMER, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %189, label %208

189:                                              ; preds = %183
  %190 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %191 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @TRIG_FOLLOW, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %201

195:                                              ; preds = %189
  %196 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %197 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %198 = call i32 @das1800_ai_fixup_paced_timing(%struct.comedi_device* %196, %struct.comedi_cmd* %197)
  %199 = load i32, i32* %9, align 4
  %200 = or i32 %199, %198
  store i32 %200, i32* %9, align 4
  br label %207

201:                                              ; preds = %189
  %202 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %203 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %204 = call i32 @das1800_ai_fixup_burst_timing(%struct.comedi_device* %202, %struct.comedi_cmd* %203)
  %205 = load i32, i32* %9, align 4
  %206 = or i32 %205, %204
  store i32 %206, i32* %9, align 4
  br label %207

207:                                              ; preds = %201, %195
  br label %208

208:                                              ; preds = %207, %183
  %209 = load i32, i32* %9, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %208
  store i32 4, i32* %4, align 4
  br label %234

212:                                              ; preds = %208
  %213 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %214 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %213, i32 0, i32 10
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %229

217:                                              ; preds = %212
  %218 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %219 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %218, i32 0, i32 8
  %220 = load i64, i64* %219, align 8
  %221 = icmp sgt i64 %220, 0
  br i1 %221, label %222, label %229

222:                                              ; preds = %217
  %223 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %224 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %225 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %226 = call i32 @das1800_ai_check_chanlist(%struct.comedi_device* %223, %struct.comedi_subdevice* %224, %struct.comedi_cmd* %225)
  %227 = load i32, i32* %9, align 4
  %228 = or i32 %227, %226
  store i32 %228, i32* %9, align 4
  br label %229

229:                                              ; preds = %222, %217, %212
  %230 = load i32, i32* %9, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %229
  store i32 5, i32* %4, align 4
  br label %234

233:                                              ; preds = %229
  store i32 0, i32* %4, align 4
  br label %234

234:                                              ; preds = %233, %232, %211, %182, %120, %54
  %235 = load i32, i32* %4, align 4
  ret i32 %235
}

declare dso_local i32 @comedi_check_trigger_src(i32*, i32) #1

declare dso_local i32 @comedi_check_trigger_is_unique(i32) #1

declare dso_local i32 @comedi_check_trigger_arg_is(i32*, i64) #1

declare dso_local i32 @comedi_check_trigger_arg_min(i64*, i32) #1

declare dso_local i32 @das1800_ai_fixup_paced_timing(%struct.comedi_device*, %struct.comedi_cmd*) #1

declare dso_local i32 @das1800_ai_fixup_burst_timing(%struct.comedi_device*, %struct.comedi_cmd*) #1

declare dso_local i32 @das1800_ai_check_chanlist(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
