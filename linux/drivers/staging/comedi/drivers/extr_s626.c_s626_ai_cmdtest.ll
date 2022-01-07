; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_s626.c_s626_ai_cmdtest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_s626.c_s626_ai_cmdtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@TRIG_TIMER = common dso_local global i32 0, align 4
@TRIG_FOLLOW = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i32 0, align 4
@TRIG_NONE = common dso_local global i32 0, align 4
@S626_MAX_SPEED = common dso_local global i32 0, align 4
@S626_MIN_SPEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @s626_ai_cmdtest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s626_ai_cmdtest(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_cmd* %2) #0 {
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
  %12 = call i32 @comedi_check_trigger_src(i32* %11, i32 131)
  %13 = load i32, i32* %8, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %8, align 4
  %15 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %16 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %15, i32 0, i32 1
  %17 = load i32, i32* @TRIG_TIMER, align 4
  %18 = or i32 %17, 130
  %19 = load i32, i32* @TRIG_FOLLOW, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @comedi_check_trigger_src(i32* %16, i32 %20)
  %22 = load i32, i32* %8, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %8, align 4
  %24 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %25 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %24, i32 0, i32 2
  %26 = load i32, i32* @TRIG_TIMER, align 4
  %27 = or i32 %26, 130
  %28 = or i32 %27, 128
  %29 = call i32 @comedi_check_trigger_src(i32* %25, i32 %28)
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %8, align 4
  %32 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %33 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %32, i32 0, i32 3
  %34 = load i32, i32* @TRIG_COUNT, align 4
  %35 = call i32 @comedi_check_trigger_src(i32* %33, i32 %34)
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  %38 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %39 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %38, i32 0, i32 4
  %40 = load i32, i32* @TRIG_COUNT, align 4
  %41 = load i32, i32* @TRIG_NONE, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @comedi_check_trigger_src(i32* %39, i32 %42)
  %44 = load i32, i32* %8, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %246

49:                                               ; preds = %3
  %50 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %51 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @comedi_check_trigger_is_unique(i32 %52)
  %54 = load i32, i32* %8, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %8, align 4
  %56 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %57 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @comedi_check_trigger_is_unique(i32 %58)
  %60 = load i32, i32* %8, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %8, align 4
  %62 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %63 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @comedi_check_trigger_is_unique(i32 %64)
  %66 = load i32, i32* %8, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %8, align 4
  %68 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %69 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @comedi_check_trigger_is_unique(i32 %70)
  %72 = load i32, i32* %8, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %49
  store i32 2, i32* %4, align 4
  br label %246

77:                                               ; preds = %49
  %78 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %79 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  switch i32 %80, label %93 [
    i32 128, label %81
    i32 129, label %81
    i32 130, label %87
  ]

81:                                               ; preds = %77, %77
  %82 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %83 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %82, i32 0, i32 5
  %84 = call i32 @comedi_check_trigger_arg_is(i32* %83, i32 0)
  %85 = load i32, i32* %8, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %8, align 4
  br label %93

87:                                               ; preds = %77
  %88 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %89 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %88, i32 0, i32 5
  %90 = call i32 @comedi_check_trigger_arg_max(i32* %89, i32 39)
  %91 = load i32, i32* %8, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %8, align 4
  br label %93

93:                                               ; preds = %77, %87, %81
  %94 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %95 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 130
  br i1 %97, label %98, label %104

98:                                               ; preds = %93
  %99 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %100 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %99, i32 0, i32 6
  %101 = call i32 @comedi_check_trigger_arg_max(i32* %100, i32 39)
  %102 = load i32, i32* %8, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %8, align 4
  br label %104

104:                                              ; preds = %98, %93
  %105 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %106 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 130
  br i1 %108, label %109, label %115

109:                                              ; preds = %104
  %110 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %111 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %110, i32 0, i32 7
  %112 = call i32 @comedi_check_trigger_arg_max(i32* %111, i32 39)
  %113 = load i32, i32* %8, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %8, align 4
  br label %115

115:                                              ; preds = %109, %104
  %116 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %117 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @TRIG_TIMER, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %132

121:                                              ; preds = %115
  %122 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %123 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %122, i32 0, i32 6
  %124 = call i32 @comedi_check_trigger_arg_min(i32* %123, i32 200000)
  %125 = load i32, i32* %8, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %8, align 4
  %127 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %128 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %127, i32 0, i32 6
  %129 = call i32 @comedi_check_trigger_arg_max(i32* %128, i32 2000000000)
  %130 = load i32, i32* %8, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %8, align 4
  br label %133

132:                                              ; preds = %115
  br label %133

133:                                              ; preds = %132, %121
  %134 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %135 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @TRIG_TIMER, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %150

139:                                              ; preds = %133
  %140 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %141 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %140, i32 0, i32 7
  %142 = call i32 @comedi_check_trigger_arg_min(i32* %141, i32 200000)
  %143 = load i32, i32* %8, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %8, align 4
  %145 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %146 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %145, i32 0, i32 7
  %147 = call i32 @comedi_check_trigger_arg_max(i32* %146, i32 2000000000)
  %148 = load i32, i32* %8, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %8, align 4
  br label %151

150:                                              ; preds = %133
  br label %151

151:                                              ; preds = %150, %139
  %152 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %153 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %152, i32 0, i32 8
  %154 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %155 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %154, i32 0, i32 9
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @comedi_check_trigger_arg_is(i32* %153, i32 %156)
  %158 = load i32, i32* %8, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %8, align 4
  %160 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %161 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @TRIG_COUNT, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %171

165:                                              ; preds = %151
  %166 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %167 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %166, i32 0, i32 10
  %168 = call i32 @comedi_check_trigger_arg_min(i32* %167, i32 1)
  %169 = load i32, i32* %8, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %8, align 4
  br label %177

171:                                              ; preds = %151
  %172 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %173 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %172, i32 0, i32 10
  %174 = call i32 @comedi_check_trigger_arg_is(i32* %173, i32 0)
  %175 = load i32, i32* %8, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %8, align 4
  br label %177

177:                                              ; preds = %171, %165
  %178 = load i32, i32* %8, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %177
  store i32 3, i32* %4, align 4
  br label %246

181:                                              ; preds = %177
  %182 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %183 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @TRIG_TIMER, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %201

187:                                              ; preds = %181
  %188 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %189 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %188, i32 0, i32 6
  %190 = load i32, i32* %189, align 4
  store i32 %190, i32* %9, align 4
  %191 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %192 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %191, i32 0, i32 11
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @s626_ns_to_timer(i32* %9, i32 %193)
  %195 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %196 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %195, i32 0, i32 6
  %197 = load i32, i32* %9, align 4
  %198 = call i32 @comedi_check_trigger_arg_is(i32* %196, i32 %197)
  %199 = load i32, i32* %8, align 4
  %200 = or i32 %199, %198
  store i32 %200, i32* %8, align 4
  br label %201

201:                                              ; preds = %187, %181
  %202 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %203 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @TRIG_TIMER, align 4
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %207, label %241

207:                                              ; preds = %201
  %208 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %209 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %208, i32 0, i32 7
  %210 = load i32, i32* %209, align 4
  store i32 %210, i32* %9, align 4
  %211 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %212 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %211, i32 0, i32 11
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @s626_ns_to_timer(i32* %9, i32 %213)
  %215 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %216 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %215, i32 0, i32 7
  %217 = load i32, i32* %9, align 4
  %218 = call i32 @comedi_check_trigger_arg_is(i32* %216, i32 %217)
  %219 = load i32, i32* %8, align 4
  %220 = or i32 %219, %218
  store i32 %220, i32* %8, align 4
  %221 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %222 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @TRIG_TIMER, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %240

226:                                              ; preds = %207
  %227 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %228 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %227, i32 0, i32 7
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %231 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %230, i32 0, i32 8
  %232 = load i32, i32* %231, align 4
  %233 = mul i32 %229, %232
  store i32 %233, i32* %9, align 4
  %234 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %235 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %234, i32 0, i32 6
  %236 = load i32, i32* %9, align 4
  %237 = call i32 @comedi_check_trigger_arg_min(i32* %235, i32 %236)
  %238 = load i32, i32* %8, align 4
  %239 = or i32 %238, %237
  store i32 %239, i32* %8, align 4
  br label %240

240:                                              ; preds = %226, %207
  br label %241

241:                                              ; preds = %240, %201
  %242 = load i32, i32* %8, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %241
  store i32 4, i32* %4, align 4
  br label %246

245:                                              ; preds = %241
  store i32 0, i32* %4, align 4
  br label %246

246:                                              ; preds = %245, %244, %180, %76, %48
  %247 = load i32, i32* %4, align 4
  ret i32 %247
}

declare dso_local i32 @comedi_check_trigger_src(i32*, i32) #1

declare dso_local i32 @comedi_check_trigger_is_unique(i32) #1

declare dso_local i32 @comedi_check_trigger_arg_is(i32*, i32) #1

declare dso_local i32 @comedi_check_trigger_arg_max(i32*, i32) #1

declare dso_local i32 @comedi_check_trigger_arg_min(i32*, i32) #1

declare dso_local i32 @s626_ns_to_timer(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
