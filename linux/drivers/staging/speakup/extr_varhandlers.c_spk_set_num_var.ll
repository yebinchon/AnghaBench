; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_varhandlers.c_spk_set_num_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_varhandlers.c_spk_set_num_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.st_var_header*)* }
%struct.st_var_header = type { i32*, i64, i64, %struct.var_t* }
%struct.var_t = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i8*, i32*, i64 }

@ENODATA = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@VAR_TIME = common dso_local global i64 0, align 8
@PUNC_LEVEL = common dso_local global i64 0, align 8
@spk_punc_masks = common dso_local global i32* null, align 8
@spk_punc_mask = common dso_local global i32 0, align 4
@FIRST_SYNTH_VAR = common dso_local global i64 0, align 8
@synth = common dso_local global %struct.TYPE_6__* null, align 8
@PITCH = common dso_local global i64 0, align 8
@spk_pitch_buff = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spk_set_num_var(i32 %0, %struct.st_var_header* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.st_var_header*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca [32 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca %struct.var_t*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.st_var_header* %1, %struct.st_var_header** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.st_var_header*, %struct.st_var_header** %6, align 8
  %14 = getelementptr inbounds %struct.st_var_header, %struct.st_var_header* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %9, align 8
  %16 = load %struct.st_var_header*, %struct.st_var_header** %6, align 8
  %17 = getelementptr inbounds %struct.st_var_header, %struct.st_var_header* %16, i32 0, i32 3
  %18 = load %struct.var_t*, %struct.var_t** %17, align 8
  store %struct.var_t* %18, %struct.var_t** %12, align 8
  %19 = load %struct.var_t*, %struct.var_t** %12, align 8
  %20 = icmp ne %struct.var_t* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @ENODATA, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %226

24:                                               ; preds = %3
  %25 = load %struct.var_t*, %struct.var_t** %12, align 8
  %26 = getelementptr inbounds %struct.var_t, %struct.var_t* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  switch i32 %30, label %72 [
    i32 129, label %31
    i32 131, label %56
    i32 128, label %62
    i32 130, label %64
    i32 132, label %68
  ]

31:                                               ; preds = %24
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.var_t*, %struct.var_t** %12, align 8
  %34 = getelementptr inbounds %struct.var_t, %struct.var_t* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %32, %37
  br i1 %38, label %47, label %39

39:                                               ; preds = %31
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.var_t*, %struct.var_t** %12, align 8
  %42 = getelementptr inbounds %struct.var_t, %struct.var_t* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp sgt i32 %40, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %39, %31
  %48 = load i32, i32* @ERANGE, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %226

50:                                               ; preds = %39
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.var_t*, %struct.var_t** %12, align 8
  %53 = getelementptr inbounds %struct.var_t, %struct.var_t* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 3
  store i32 %51, i32* %55, align 4
  store i32 0, i32* %4, align 4
  br label %226

56:                                               ; preds = %24
  %57 = load %struct.var_t*, %struct.var_t** %12, align 8
  %58 = getelementptr inbounds %struct.var_t, %struct.var_t* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %8, align 4
  br label %72

62:                                               ; preds = %24
  %63 = load i32, i32* %5, align 4
  store i32 %63, i32* %8, align 4
  br label %72

64:                                               ; preds = %24
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %8, align 4
  br label %72

68:                                               ; preds = %24
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %8, align 4
  %71 = sub nsw i32 %70, %69
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %24, %68, %64, %62, %56
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.var_t*, %struct.var_t** %12, align 8
  %75 = getelementptr inbounds %struct.var_t, %struct.var_t* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp slt i32 %73, %78
  br i1 %79, label %88, label %80

80:                                               ; preds = %72
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.var_t*, %struct.var_t** %12, align 8
  %83 = getelementptr inbounds %struct.var_t, %struct.var_t* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = icmp sgt i32 %81, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %80, %72
  %89 = load i32, i32* @ERANGE, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %4, align 4
  br label %226

91:                                               ; preds = %80
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.var_t*, %struct.var_t** %12, align 8
  %94 = getelementptr inbounds %struct.var_t, %struct.var_t* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  store i32 %92, i32* %96, align 8
  %97 = load %struct.st_var_header*, %struct.st_var_header** %6, align 8
  %98 = getelementptr inbounds %struct.st_var_header, %struct.st_var_header* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @VAR_TIME, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %109

102:                                              ; preds = %91
  %103 = load i32*, i32** %9, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @msecs_to_jiffies(i32 %106)
  %108 = load i32*, i32** %9, align 8
  store i32 %107, i32* %108, align 4
  store i32 0, i32* %4, align 4
  br label %226

109:                                              ; preds = %102, %91
  %110 = load i32*, i32** %9, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load i32, i32* %8, align 4
  %114 = load i32*, i32** %9, align 8
  store i32 %113, i32* %114, align 4
  br label %115

115:                                              ; preds = %112, %109
  %116 = load %struct.st_var_header*, %struct.st_var_header** %6, align 8
  %117 = getelementptr inbounds %struct.st_var_header, %struct.st_var_header* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @PUNC_LEVEL, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %115
  %122 = load i32*, i32** @spk_punc_masks, align 8
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* @spk_punc_mask, align 4
  store i32 0, i32* %4, align 4
  br label %226

127:                                              ; preds = %115
  %128 = load %struct.var_t*, %struct.var_t** %12, align 8
  %129 = getelementptr inbounds %struct.var_t, %struct.var_t* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %127
  %135 = load %struct.var_t*, %struct.var_t** %12, align 8
  %136 = getelementptr inbounds %struct.var_t, %struct.var_t* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %8, align 4
  %141 = mul nsw i32 %140, %139
  store i32 %141, i32* %8, align 4
  br label %142

142:                                              ; preds = %134, %127
  %143 = load %struct.var_t*, %struct.var_t** %12, align 8
  %144 = getelementptr inbounds %struct.var_t, %struct.var_t* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 7
  %147 = load i64, i64* %146, align 8
  %148 = load i32, i32* %8, align 4
  %149 = sext i32 %148 to i64
  %150 = add nsw i64 %149, %147
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %8, align 4
  %152 = load %struct.st_var_header*, %struct.st_var_header** %6, align 8
  %153 = getelementptr inbounds %struct.st_var_header, %struct.st_var_header* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @FIRST_SYNTH_VAR, align 8
  %156 = icmp slt i64 %154, %155
  br i1 %156, label %160, label %157

157:                                              ; preds = %142
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** @synth, align 8
  %159 = icmp ne %struct.TYPE_6__* %158, null
  br i1 %159, label %161, label %160

160:                                              ; preds = %157, %142
  store i32 0, i32* %4, align 4
  br label %226

161:                                              ; preds = %157
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** @synth, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load i32 (%struct.st_var_header*)*, i32 (%struct.st_var_header*)** %163, align 8
  %165 = icmp ne i32 (%struct.st_var_header*)* %164, null
  br i1 %165, label %166, label %172

166:                                              ; preds = %161
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** @synth, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  %169 = load i32 (%struct.st_var_header*)*, i32 (%struct.st_var_header*)** %168, align 8
  %170 = load %struct.st_var_header*, %struct.st_var_header** %6, align 8
  %171 = call i32 %169(%struct.st_var_header* %170)
  store i32 %171, i32* %4, align 4
  br label %226

172:                                              ; preds = %161
  %173 = load %struct.var_t*, %struct.var_t** %12, align 8
  %174 = getelementptr inbounds %struct.var_t, %struct.var_t* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 5
  %177 = load i8*, i8** %176, align 8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %180, label %179

179:                                              ; preds = %172
  store i32 0, i32* %4, align 4
  br label %226

180:                                              ; preds = %172
  %181 = load %struct.st_var_header*, %struct.st_var_header** %6, align 8
  %182 = getelementptr inbounds %struct.st_var_header, %struct.st_var_header* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @PITCH, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %188

186:                                              ; preds = %180
  %187 = load i8*, i8** @spk_pitch_buff, align 8
  store i8* %187, i8** %11, align 8
  br label %190

188:                                              ; preds = %180
  %189 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  store i8* %189, i8** %11, align 8
  br label %190

190:                                              ; preds = %188, %186
  %191 = load %struct.var_t*, %struct.var_t** %12, align 8
  %192 = getelementptr inbounds %struct.var_t, %struct.var_t* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 6
  %195 = load i32*, i32** %194, align 8
  %196 = icmp ne i32* %195, null
  br i1 %196, label %206, label %197

197:                                              ; preds = %190
  %198 = load i8*, i8** %11, align 8
  %199 = load %struct.var_t*, %struct.var_t** %12, align 8
  %200 = getelementptr inbounds %struct.var_t, %struct.var_t* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 5
  %203 = load i8*, i8** %202, align 8
  %204 = load i32, i32* %8, align 4
  %205 = call i32 @sprintf(i8* %198, i8* %203, i32 %204)
  br label %223

206:                                              ; preds = %190
  %207 = load i8*, i8** %11, align 8
  %208 = load %struct.var_t*, %struct.var_t** %12, align 8
  %209 = getelementptr inbounds %struct.var_t, %struct.var_t* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 5
  %212 = load i8*, i8** %211, align 8
  %213 = load %struct.var_t*, %struct.var_t** %12, align 8
  %214 = getelementptr inbounds %struct.var_t, %struct.var_t* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 6
  %217 = load i32*, i32** %216, align 8
  %218 = load i32, i32* %8, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @sprintf(i8* %207, i8* %212, i32 %221)
  br label %223

223:                                              ; preds = %206, %197
  %224 = load i8*, i8** %11, align 8
  %225 = call i32 @synth_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %224)
  store i32 0, i32* %4, align 4
  br label %226

226:                                              ; preds = %223, %179, %166, %160, %121, %105, %88, %50, %47, %21
  %227 = load i32, i32* %4, align 4
  ret i32 %227
}

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @synth_printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
