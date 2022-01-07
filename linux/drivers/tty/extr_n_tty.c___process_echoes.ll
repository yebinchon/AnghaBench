; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c___process_echoes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c___process_echoes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.n_tty_data* }
%struct.n_tty_data = type { i64, i64, i32, i32 }

@ECHO_DISCARD_WATERMARK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tty_struct*)* @__process_echoes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__process_echoes(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.n_tty_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %13 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 0
  %15 = load %struct.n_tty_data*, %struct.n_tty_data** %14, align 8
  store %struct.n_tty_data* %15, %struct.n_tty_data** %3, align 8
  %16 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %17 = call i32 @tty_write_room(%struct.tty_struct* %16)
  store i32 %17, i32* %4, align 4
  store i32 %17, i32* %5, align 4
  %18 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %19 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %6, align 8
  br label %21

21:                                               ; preds = %202, %1
  %22 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %23 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @MASK(i64 %24)
  %26 = load i64, i64* %6, align 8
  %27 = call i64 @MASK(i64 %26)
  %28 = icmp ne i64 %25, %27
  br i1 %28, label %29, label %203

29:                                               ; preds = %21
  %30 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @echo_buf(%struct.n_tty_data* %30, i64 %31)
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %7, align 1
  %34 = load i8, i8* %7, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp eq i32 %35, 128
  br i1 %36, label %37, label %173

37:                                               ; preds = %29
  store i32 0, i32* %9, align 4
  %38 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %39 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @MASK(i64 %40)
  %42 = load i64, i64* %6, align 8
  %43 = add i64 %42, 1
  %44 = call i64 @MASK(i64 %43)
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %243

47:                                               ; preds = %37
  %48 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %49 = load i64, i64* %6, align 8
  %50 = add i64 %49, 1
  %51 = call i32 @echo_buf(%struct.n_tty_data* %48, i64 %50)
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %8, align 1
  %53 = load i8, i8* %8, align 1
  %54 = zext i8 %53 to i32
  switch i32 %54, label %147 [
    i32 131, label %55
    i32 129, label %111
    i32 130, label %119
    i32 128, label %132
  ]

55:                                               ; preds = %47
  %56 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %57 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @MASK(i64 %58)
  %60 = load i64, i64* %6, align 8
  %61 = add i64 %60, 2
  %62 = call i64 @MASK(i64 %61)
  %63 = icmp eq i64 %59, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %243

65:                                               ; preds = %55
  %66 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %67 = load i64, i64* %6, align 8
  %68 = add i64 %67, 2
  %69 = call i32 @echo_buf(%struct.n_tty_data* %66, i64 %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = and i32 %70, 128
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %65
  %74 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %75 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = add i32 %77, %76
  store i32 %78, i32* %10, align 4
  br label %79

79:                                               ; preds = %73, %65
  %80 = load i32, i32* %10, align 4
  %81 = and i32 %80, 7
  %82 = sub i32 8, %81
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %4, align 4
  %85 = icmp ugt i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  store i32 1, i32* %9, align 4
  br label %168

87:                                               ; preds = %79
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %4, align 4
  %90 = sub i32 %89, %88
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %107, %87
  %92 = load i32, i32* %11, align 4
  %93 = add i32 %92, -1
  store i32 %93, i32* %11, align 4
  %94 = icmp ne i32 %92, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %91
  %96 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %97 = call i32 @tty_put_char(%struct.tty_struct* %96, i8 zeroext 8)
  %98 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %99 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = icmp ugt i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %95
  %103 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %104 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = add i32 %105, -1
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %102, %95
  br label %91

108:                                              ; preds = %91
  %109 = load i64, i64* %6, align 8
  %110 = add i64 %109, 3
  store i64 %110, i64* %6, align 8
  br label %168

111:                                              ; preds = %47
  %112 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %113 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %116 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 8
  %117 = load i64, i64* %6, align 8
  %118 = add i64 %117, 2
  store i64 %118, i64* %6, align 8
  br label %168

119:                                              ; preds = %47
  %120 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %121 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = icmp ugt i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %119
  %125 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %126 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = add i32 %127, -1
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %124, %119
  %130 = load i64, i64* %6, align 8
  %131 = add i64 %130, 2
  store i64 %131, i64* %6, align 8
  br label %168

132:                                              ; preds = %47
  %133 = load i32, i32* %4, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %132
  store i32 1, i32* %9, align 4
  br label %168

136:                                              ; preds = %132
  %137 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %138 = call i32 @tty_put_char(%struct.tty_struct* %137, i8 zeroext -128)
  %139 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %140 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = add i32 %141, 1
  store i32 %142, i32* %140, align 4
  %143 = load i32, i32* %4, align 4
  %144 = add nsw i32 %143, -1
  store i32 %144, i32* %4, align 4
  %145 = load i64, i64* %6, align 8
  %146 = add i64 %145, 2
  store i64 %146, i64* %6, align 8
  br label %168

147:                                              ; preds = %47
  %148 = load i32, i32* %4, align 4
  %149 = icmp slt i32 %148, 2
  br i1 %149, label %150, label %151

150:                                              ; preds = %147
  store i32 1, i32* %9, align 4
  br label %168

151:                                              ; preds = %147
  %152 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %153 = call i32 @tty_put_char(%struct.tty_struct* %152, i8 zeroext 94)
  %154 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %155 = load i8, i8* %8, align 1
  %156 = zext i8 %155 to i32
  %157 = xor i32 %156, 64
  %158 = trunc i32 %157 to i8
  %159 = call i32 @tty_put_char(%struct.tty_struct* %154, i8 zeroext %158)
  %160 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %161 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = add i32 %162, 2
  store i32 %163, i32* %161, align 4
  %164 = load i32, i32* %4, align 4
  %165 = sub nsw i32 %164, 2
  store i32 %165, i32* %4, align 4
  %166 = load i64, i64* %6, align 8
  %167 = add i64 %166, 2
  store i64 %167, i64* %6, align 8
  br label %168

168:                                              ; preds = %151, %150, %136, %135, %129, %111, %108, %86
  %169 = load i32, i32* %9, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %168
  br label %203

172:                                              ; preds = %168
  br label %202

173:                                              ; preds = %29
  %174 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %175 = call i64 @O_OPOST(%struct.tty_struct* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %189

177:                                              ; preds = %173
  %178 = load i8, i8* %7, align 1
  %179 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %180 = load i32, i32* %4, align 4
  %181 = call i32 @do_output_char(i8 zeroext %178, %struct.tty_struct* %179, i32 %180)
  store i32 %181, i32* %12, align 4
  %182 = load i32, i32* %12, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %177
  br label %203

185:                                              ; preds = %177
  %186 = load i32, i32* %12, align 4
  %187 = load i32, i32* %4, align 4
  %188 = sub nsw i32 %187, %186
  store i32 %188, i32* %4, align 4
  br label %199

189:                                              ; preds = %173
  %190 = load i32, i32* %4, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %193, label %192

192:                                              ; preds = %189
  br label %203

193:                                              ; preds = %189
  %194 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %195 = load i8, i8* %7, align 1
  %196 = call i32 @tty_put_char(%struct.tty_struct* %194, i8 zeroext %195)
  %197 = load i32, i32* %4, align 4
  %198 = sub nsw i32 %197, 1
  store i32 %198, i32* %4, align 4
  br label %199

199:                                              ; preds = %193, %185
  %200 = load i64, i64* %6, align 8
  %201 = add i64 %200, 1
  store i64 %201, i64* %6, align 8
  br label %202

202:                                              ; preds = %199, %172
  br label %21

203:                                              ; preds = %192, %184, %171, %21
  br label %204

204:                                              ; preds = %241, %203
  %205 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %206 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* %6, align 8
  %209 = icmp ugt i64 %207, %208
  br i1 %209, label %210, label %218

210:                                              ; preds = %204
  %211 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %212 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* %6, align 8
  %215 = sub i64 %213, %214
  %216 = load i64, i64* @ECHO_DISCARD_WATERMARK, align 8
  %217 = icmp uge i64 %215, %216
  br label %218

218:                                              ; preds = %210, %204
  %219 = phi i1 [ false, %204 ], [ %217, %210 ]
  br i1 %219, label %220, label %242

220:                                              ; preds = %218
  %221 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %222 = load i64, i64* %6, align 8
  %223 = call i32 @echo_buf(%struct.n_tty_data* %221, i64 %222)
  %224 = icmp eq i32 %223, 128
  br i1 %224, label %225, label %238

225:                                              ; preds = %220
  %226 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %227 = load i64, i64* %6, align 8
  %228 = add i64 %227, 1
  %229 = call i32 @echo_buf(%struct.n_tty_data* %226, i64 %228)
  %230 = icmp eq i32 %229, 131
  br i1 %230, label %231, label %234

231:                                              ; preds = %225
  %232 = load i64, i64* %6, align 8
  %233 = add i64 %232, 3
  store i64 %233, i64* %6, align 8
  br label %237

234:                                              ; preds = %225
  %235 = load i64, i64* %6, align 8
  %236 = add i64 %235, 2
  store i64 %236, i64* %6, align 8
  br label %237

237:                                              ; preds = %234, %231
  br label %241

238:                                              ; preds = %220
  %239 = load i64, i64* %6, align 8
  %240 = add i64 %239, 1
  store i64 %240, i64* %6, align 8
  br label %241

241:                                              ; preds = %238, %237
  br label %204

242:                                              ; preds = %218
  br label %243

243:                                              ; preds = %242, %64, %46
  %244 = load i64, i64* %6, align 8
  %245 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %246 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %245, i32 0, i32 0
  store i64 %244, i64* %246, align 8
  %247 = load i32, i32* %5, align 4
  %248 = load i32, i32* %4, align 4
  %249 = sub nsw i32 %247, %248
  %250 = sext i32 %249 to i64
  ret i64 %250
}

declare dso_local i32 @tty_write_room(%struct.tty_struct*) #1

declare dso_local i64 @MASK(i64) #1

declare dso_local i32 @echo_buf(%struct.n_tty_data*, i64) #1

declare dso_local i32 @tty_put_char(%struct.tty_struct*, i8 zeroext) #1

declare dso_local i64 @O_OPOST(%struct.tty_struct*) #1

declare dso_local i32 @do_output_char(i8 zeroext, %struct.tty_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
