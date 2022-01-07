; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-laptop.c_kbd_led_timeout_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-laptop.c_kbd_led_timeout_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32*, i64 }
%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.kbd_state = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"%d %c\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@kbd_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@KBD_TIMEOUT_SECONDS = common dso_local global i32 0, align 4
@quirks = common dso_local global %struct.TYPE_3__* null, align 8
@kbd_led_mutex = common dso_local global i32 0, align 4
@kbd_timeout_ac_supported = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @kbd_led_timeout_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kbd_led_timeout_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.kbd_state, align 4
  %11 = alloca %struct.kbd_state, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @sscanf(i8* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %13, i8* %15)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  %21 = icmp slt i32 %20, 1
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %216

25:                                               ; preds = %4
  %26 = load i32, i32* %14, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i8 115, i8* %15, align 1
  br label %29

29:                                               ; preds = %28, %25
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %13, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %216

36:                                               ; preds = %30
  store i32 0, i32* %12, align 4
  %37 = load i8, i8* %15, align 1
  %38 = sext i8 %37 to i32
  switch i32 %38, label %64 [
    i32 115, label %39
    i32 109, label %46
    i32 104, label %52
    i32 100, label %58
  ]

39:                                               ; preds = %36
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kbd_info, i32 0, i32 0), align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 1, i32* %12, align 4
  br label %44

44:                                               ; preds = %43, %39
  %45 = load i32, i32* @KBD_TIMEOUT_SECONDS, align 4
  store i32 %45, i32* %16, align 4
  br label %67

46:                                               ; preds = %36
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kbd_info, i32 0, i32 1), align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 1, i32* %12, align 4
  br label %51

51:                                               ; preds = %50, %46
  store i32 128, i32* %16, align 4
  br label %67

52:                                               ; preds = %36
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kbd_info, i32 0, i32 2), align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i32 1, i32* %12, align 4
  br label %57

57:                                               ; preds = %56, %52
  store i32 129, i32* %16, align 4
  br label %67

58:                                               ; preds = %36
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kbd_info, i32 0, i32 3), align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 1, i32* %12, align 4
  br label %63

63:                                               ; preds = %62, %58
  store i32 130, i32* %16, align 4
  br label %67

64:                                               ; preds = %36
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %216

67:                                               ; preds = %63, %57, %51, %44
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** @quirks, align 8
  %69 = icmp ne %struct.TYPE_3__* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** @quirks, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  store i32 1, i32* %12, align 4
  br label %76

76:                                               ; preds = %75, %70, %67
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %181

79:                                               ; preds = %76
  %80 = load i32, i32* %16, align 4
  switch i32 %80, label %91 [
    i32 130, label %81
    i32 129, label %84
    i32 128, label %87
  ]

81:                                               ; preds = %79
  %82 = load i32, i32* %13, align 4
  %83 = mul nsw i32 %82, 24
  store i32 %83, i32* %13, align 4
  br label %84

84:                                               ; preds = %79, %81
  %85 = load i32, i32* %13, align 4
  %86 = mul nsw i32 %85, 60
  store i32 %86, i32* %13, align 4
  br label %87

87:                                               ; preds = %79, %84
  %88 = load i32, i32* %13, align 4
  %89 = mul nsw i32 %88, 60
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* @KBD_TIMEOUT_SECONDS, align 4
  store i32 %90, i32* %16, align 4
  br label %91

91:                                               ; preds = %87, %79
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** @quirks, align 8
  %93 = icmp ne %struct.TYPE_3__* %92, null
  br i1 %93, label %94, label %132

94:                                               ; preds = %91
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** @quirks, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %132

99:                                               ; preds = %94
  store i32 0, i32* %17, align 4
  br label %100

100:                                              ; preds = %128, %99
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** @quirks, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %17, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, -1
  br i1 %108, label %109, label %131

109:                                              ; preds = %100
  %110 = load i32, i32* %13, align 4
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** @quirks, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %17, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = icmp sle i32 %110, %117
  br i1 %118, label %119, label %127

119:                                              ; preds = %109
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** @quirks, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %17, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %13, align 4
  br label %131

127:                                              ; preds = %109
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %17, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %17, align 4
  br label %100

131:                                              ; preds = %119, %100
  br label %132

132:                                              ; preds = %131, %94, %91
  %133 = load i32, i32* %13, align 4
  %134 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kbd_info, i32 0, i32 0), align 4
  %135 = icmp sle i32 %133, %134
  br i1 %135, label %136, label %141

136:                                              ; preds = %132
  %137 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kbd_info, i32 0, i32 0), align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = load i32, i32* @KBD_TIMEOUT_SECONDS, align 4
  store i32 %140, i32* %16, align 4
  br label %180

141:                                              ; preds = %136, %132
  %142 = load i32, i32* %13, align 4
  %143 = sdiv i32 %142, 60
  %144 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kbd_info, i32 0, i32 1), align 4
  %145 = icmp sle i32 %143, %144
  br i1 %145, label %146, label %152

146:                                              ; preds = %141
  %147 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kbd_info, i32 0, i32 1), align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  %150 = load i32, i32* %13, align 4
  %151 = sdiv i32 %150, 60
  store i32 %151, i32* %13, align 4
  store i32 128, i32* %16, align 4
  br label %179

152:                                              ; preds = %146, %141
  %153 = load i32, i32* %13, align 4
  %154 = sdiv i32 %153, 3600
  %155 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kbd_info, i32 0, i32 2), align 4
  %156 = icmp sle i32 %154, %155
  br i1 %156, label %157, label %163

157:                                              ; preds = %152
  %158 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kbd_info, i32 0, i32 2), align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = load i32, i32* %13, align 4
  %162 = sdiv i32 %161, 3600
  store i32 %162, i32* %13, align 4
  store i32 129, i32* %16, align 4
  br label %178

163:                                              ; preds = %157, %152
  %164 = load i32, i32* %13, align 4
  %165 = sdiv i32 %164, 86400
  %166 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kbd_info, i32 0, i32 3), align 4
  %167 = icmp sle i32 %165, %166
  br i1 %167, label %168, label %174

168:                                              ; preds = %163
  %169 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kbd_info, i32 0, i32 3), align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load i32, i32* %13, align 4
  %173 = sdiv i32 %172, 86400
  store i32 %173, i32* %13, align 4
  store i32 130, i32* %16, align 4
  br label %177

174:                                              ; preds = %168, %163
  %175 = load i32, i32* @EINVAL, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %5, align 4
  br label %216

177:                                              ; preds = %171
  br label %178

178:                                              ; preds = %177, %160
  br label %179

179:                                              ; preds = %178, %149
  br label %180

180:                                              ; preds = %179, %139
  br label %181

181:                                              ; preds = %180, %76
  %182 = call i32 @mutex_lock(i32* @kbd_led_mutex)
  %183 = call i32 @kbd_get_state(%struct.kbd_state* %11)
  store i32 %183, i32* %14, align 4
  %184 = load i32, i32* %14, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %181
  br label %213

187:                                              ; preds = %181
  %188 = bitcast %struct.kbd_state* %10 to i8*
  %189 = bitcast %struct.kbd_state* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %188, i8* align 4 %189, i64 16, i1 false)
  %190 = load i64, i64* @kbd_timeout_ac_supported, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %200

192:                                              ; preds = %187
  %193 = call i64 (...) @power_supply_is_system_supplied()
  %194 = icmp sgt i64 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %192
  %196 = load i32, i32* %13, align 4
  %197 = getelementptr inbounds %struct.kbd_state, %struct.kbd_state* %10, i32 0, i32 0
  store i32 %196, i32* %197, align 4
  %198 = load i32, i32* %16, align 4
  %199 = getelementptr inbounds %struct.kbd_state, %struct.kbd_state* %10, i32 0, i32 1
  store i32 %198, i32* %199, align 4
  br label %205

200:                                              ; preds = %192, %187
  %201 = load i32, i32* %13, align 4
  %202 = getelementptr inbounds %struct.kbd_state, %struct.kbd_state* %10, i32 0, i32 2
  store i32 %201, i32* %202, align 4
  %203 = load i32, i32* %16, align 4
  %204 = getelementptr inbounds %struct.kbd_state, %struct.kbd_state* %10, i32 0, i32 3
  store i32 %203, i32* %204, align 4
  br label %205

205:                                              ; preds = %200, %195
  %206 = call i32 @kbd_set_state_safe(%struct.kbd_state* %10, %struct.kbd_state* %11)
  store i32 %206, i32* %14, align 4
  %207 = load i32, i32* %14, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %205
  br label %213

210:                                              ; preds = %205
  %211 = load i64, i64* %9, align 8
  %212 = trunc i64 %211 to i32
  store i32 %212, i32* %14, align 4
  br label %213

213:                                              ; preds = %210, %209, %186
  %214 = call i32 @mutex_unlock(i32* @kbd_led_mutex)
  %215 = load i32, i32* %14, align 4
  store i32 %215, i32* %5, align 4
  br label %216

216:                                              ; preds = %213, %174, %64, %33, %22
  %217 = load i32, i32* %5, align 4
  ret i32 %217
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kbd_get_state(%struct.kbd_state*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @power_supply_is_system_supplied(...) #1

declare dso_local i32 @kbd_set_state_safe(%struct.kbd_state*, %struct.kbd_state*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
