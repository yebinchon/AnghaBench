; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_ao_cmdtest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_ao_cmdtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.pcidas64_board* }
%struct.pcidas64_board = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32 }

@TRIG_INT = common dso_local global i32 0, align 4
@TRIG_EXT = common dso_local global i32 0, align 4
@TRIG_TIMER = common dso_local global i32 0, align 4
@TRIG_NOW = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i32 0, align 4
@TRIG_NONE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@max_counter_value = common dso_local global i32 0, align 4
@TIMER_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @ao_cmdtest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ao_cmdtest(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca %struct.pcidas64_board*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_cmd* %2, %struct.comedi_cmd** %7, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 0
  %13 = load %struct.pcidas64_board*, %struct.pcidas64_board** %12, align 8
  store %struct.pcidas64_board* %13, %struct.pcidas64_board** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %15 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %14, i32 0, i32 0
  %16 = load i32, i32* @TRIG_INT, align 4
  %17 = load i32, i32* @TRIG_EXT, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @comedi_check_trigger_src(i32* %15, i32 %18)
  %20 = load i32, i32* %9, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %9, align 4
  %22 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %23 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %22, i32 0, i32 1
  %24 = load i32, i32* @TRIG_TIMER, align 4
  %25 = load i32, i32* @TRIG_EXT, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @comedi_check_trigger_src(i32* %23, i32 %26)
  %28 = load i32, i32* %9, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %9, align 4
  %30 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %31 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %30, i32 0, i32 2
  %32 = load i32, i32* @TRIG_NOW, align 4
  %33 = call i32 @comedi_check_trigger_src(i32* %31, i32 %32)
  %34 = load i32, i32* %9, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %9, align 4
  %36 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %37 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %36, i32 0, i32 3
  %38 = load i32, i32* @TRIG_COUNT, align 4
  %39 = call i32 @comedi_check_trigger_src(i32* %37, i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %9, align 4
  %42 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %43 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %42, i32 0, i32 4
  %44 = load i32, i32* @TRIG_NONE, align 4
  %45 = call i32 @comedi_check_trigger_src(i32* %43, i32 %44)
  %46 = load i32, i32* %9, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %226

51:                                               ; preds = %3
  %52 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %53 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @comedi_check_trigger_is_unique(i32 %54)
  %56 = load i32, i32* %9, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %9, align 4
  %58 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %59 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @comedi_check_trigger_is_unique(i32 %60)
  %62 = load i32, i32* %9, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %9, align 4
  %64 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %65 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @TRIG_EXT, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %51
  %70 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %71 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @TRIG_TIMER, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  %78 = load i32, i32* %9, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %75, %69, %51
  %81 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %82 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @TRIG_COUNT, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %103

86:                                               ; preds = %80
  %87 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %88 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @TRIG_NONE, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %103

92:                                               ; preds = %86
  %93 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %94 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @TRIG_EXT, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %92
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  %101 = load i32, i32* %9, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %9, align 4
  br label %103

103:                                              ; preds = %98, %92, %86, %80
  %104 = load i32, i32* %9, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  store i32 2, i32* %4, align 4
  br label %226

107:                                              ; preds = %103
  %108 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %109 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %108, i32 0, i32 10
  %110 = call i32 @comedi_check_trigger_arg_is(i32* %109, i64 0)
  %111 = load i32, i32* %9, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %9, align 4
  %113 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %114 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @TRIG_TIMER, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %149

118:                                              ; preds = %107
  %119 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %120 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %119, i32 0, i32 5
  %121 = load %struct.pcidas64_board*, %struct.pcidas64_board** %8, align 8
  %122 = getelementptr inbounds %struct.pcidas64_board, %struct.pcidas64_board* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @comedi_check_trigger_arg_min(i64* %120, i32 %123)
  %125 = load i32, i32* %9, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %9, align 4
  %127 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %128 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %127, i32 0, i32 5
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %131 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %130, i32 0, i32 8
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @get_ao_divisor(i64 %129, i32 %132)
  %134 = load i32, i32* @max_counter_value, align 4
  %135 = icmp sgt i32 %133, %134
  br i1 %135, label %136, label %148

136:                                              ; preds = %118
  %137 = load i32, i32* @max_counter_value, align 4
  %138 = add nsw i32 %137, 2
  %139 = load i32, i32* @TIMER_BASE, align 4
  %140 = mul nsw i32 %138, %139
  %141 = sext i32 %140 to i64
  %142 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %143 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %142, i32 0, i32 5
  store i64 %141, i64* %143, align 8
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  %146 = load i32, i32* %9, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %9, align 4
  br label %148

148:                                              ; preds = %136, %118
  br label %149

149:                                              ; preds = %148, %107
  %150 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %151 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %150, i32 0, i32 6
  %152 = call i32 @comedi_check_trigger_arg_min(i64* %151, i32 1)
  %153 = load i32, i32* %9, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %9, align 4
  %155 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %156 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %155, i32 0, i32 9
  %157 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %158 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %157, i32 0, i32 6
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @comedi_check_trigger_arg_is(i32* %156, i64 %159)
  %161 = load i32, i32* %9, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %9, align 4
  %163 = load i32, i32* %9, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %149
  store i32 3, i32* %4, align 4
  br label %226

166:                                              ; preds = %149
  %167 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %168 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @TRIG_TIMER, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %200

172:                                              ; preds = %166
  %173 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %174 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %173, i32 0, i32 5
  %175 = load i64, i64* %174, align 8
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* %10, align 4
  %177 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %178 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %177, i32 0, i32 5
  %179 = load i64, i64* %178, align 8
  %180 = trunc i64 %179 to i32
  %181 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %182 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %181, i32 0, i32 8
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @get_divisor(i32 %180, i32 %183)
  %185 = load i32, i32* @TIMER_BASE, align 4
  %186 = mul nsw i32 %184, %185
  %187 = sext i32 %186 to i64
  %188 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %189 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %188, i32 0, i32 5
  store i64 %187, i64* %189, align 8
  %190 = load i32, i32* %10, align 4
  %191 = zext i32 %190 to i64
  %192 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %193 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %192, i32 0, i32 5
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %191, %194
  br i1 %195, label %196, label %199

196:                                              ; preds = %172
  %197 = load i32, i32* %9, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %9, align 4
  br label %199

199:                                              ; preds = %196, %172
  br label %200

200:                                              ; preds = %199, %166
  %201 = load i32, i32* %9, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %200
  store i32 4, i32* %4, align 4
  br label %226

204:                                              ; preds = %200
  %205 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %206 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %205, i32 0, i32 7
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %221

209:                                              ; preds = %204
  %210 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %211 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %210, i32 0, i32 6
  %212 = load i64, i64* %211, align 8
  %213 = icmp sgt i64 %212, 0
  br i1 %213, label %214, label %221

214:                                              ; preds = %209
  %215 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %216 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %217 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %218 = call i32 @cb_pcidas64_ao_check_chanlist(%struct.comedi_device* %215, %struct.comedi_subdevice* %216, %struct.comedi_cmd* %217)
  %219 = load i32, i32* %9, align 4
  %220 = or i32 %219, %218
  store i32 %220, i32* %9, align 4
  br label %221

221:                                              ; preds = %214, %209, %204
  %222 = load i32, i32* %9, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %221
  store i32 5, i32* %4, align 4
  br label %226

225:                                              ; preds = %221
  store i32 0, i32* %4, align 4
  br label %226

226:                                              ; preds = %225, %224, %203, %165, %106, %50
  %227 = load i32, i32* %4, align 4
  ret i32 %227
}

declare dso_local i32 @comedi_check_trigger_src(i32*, i32) #1

declare dso_local i32 @comedi_check_trigger_is_unique(i32) #1

declare dso_local i32 @comedi_check_trigger_arg_is(i32*, i64) #1

declare dso_local i32 @comedi_check_trigger_arg_min(i64*, i32) #1

declare dso_local i32 @get_ao_divisor(i64, i32) #1

declare dso_local i32 @get_divisor(i32, i32) #1

declare dso_local i32 @cb_pcidas64_ao_check_chanlist(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
