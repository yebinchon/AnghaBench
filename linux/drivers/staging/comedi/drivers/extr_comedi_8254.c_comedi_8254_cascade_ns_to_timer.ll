; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_comedi_8254.c_comedi_8254_cascade_ns_to_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_comedi_8254.c_comedi_8254_cascade_ns_to_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_8254 = type { i32, i32, i32 }

@I8254_MAX_COUNT = common dso_local global i32 0, align 4
@CMDF_ROUND_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @comedi_8254_cascade_ns_to_timer(%struct.comedi_8254* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_8254*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.comedi_8254* %0, %struct.comedi_8254** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %20 = load %struct.comedi_8254*, %struct.comedi_8254** %4, align 8
  %21 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load %struct.comedi_8254*, %struct.comedi_8254** %4, align 8
  %26 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  br label %30

28:                                               ; preds = %3
  %29 = load i32, i32* @I8254_MAX_COUNT, align 4
  br label %30

30:                                               ; preds = %28, %24
  %31 = phi i32 [ %27, %24 ], [ %29, %28 ]
  store i32 %31, i32* %7, align 4
  %32 = load %struct.comedi_8254*, %struct.comedi_8254** %4, align 8
  %33 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.comedi_8254*, %struct.comedi_8254** %4, align 8
  %38 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  br label %42

40:                                               ; preds = %30
  %41 = load i32, i32* @I8254_MAX_COUNT, align 4
  br label %42

42:                                               ; preds = %40, %36
  %43 = phi i32 [ %39, %36 ], [ %41, %40 ]
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = mul i32 %44, %45
  store i32 %46, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.comedi_8254*, %struct.comedi_8254** %4, align 8
  %49 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = mul i32 %47, %50
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %96

55:                                               ; preds = %42
  %56 = load i32, i32* %7, align 4
  %57 = icmp ugt i32 %56, 1
  br i1 %57, label %58, label %96

58:                                               ; preds = %55
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @I8254_MAX_COUNT, align 4
  %61 = icmp ule i32 %59, %60
  br i1 %61, label %62, label %96

62:                                               ; preds = %58
  %63 = load i32, i32* %8, align 4
  %64 = icmp ugt i32 %63, 1
  br i1 %64, label %65, label %96

65:                                               ; preds = %62
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @I8254_MAX_COUNT, align 4
  %68 = icmp ule i32 %66, %67
  br i1 %68, label %69, label %96

69:                                               ; preds = %65
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ugt i32 %70, %71
  br i1 %72, label %73, label %96

73:                                               ; preds = %69
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ugt i32 %74, %75
  br i1 %76, label %77, label %96

77:                                               ; preds = %73
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.comedi_8254*, %struct.comedi_8254** %4, align 8
  %80 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = mul i32 %78, %81
  %83 = load i32, i32* %9, align 4
  %84 = icmp ugt i32 %82, %83
  br i1 %84, label %85, label %96

85:                                               ; preds = %77
  %86 = load i32, i32* %9, align 4
  %87 = load %struct.comedi_8254*, %struct.comedi_8254** %4, align 8
  %88 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = mul i32 %86, %89
  %91 = load %struct.comedi_8254*, %struct.comedi_8254** %4, align 8
  %92 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = icmp ugt i32 %90, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %85
  br label %242

96:                                               ; preds = %85, %77, %73, %69, %65, %62, %58, %55, %42
  %97 = load i32*, i32** %5, align 8
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.comedi_8254*, %struct.comedi_8254** %4, align 8
  %100 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = udiv i32 %98, %101
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* @I8254_MAX_COUNT, align 4
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %8, align 4
  %106 = udiv i32 %104, %105
  store i32 %106, i32* %16, align 4
  %107 = load i32, i32* %16, align 4
  %108 = icmp ult i32 %107, 2
  br i1 %108, label %109, label %110

109:                                              ; preds = %96
  store i32 2, i32* %16, align 4
  br label %110

110:                                              ; preds = %109, %96
  %111 = load i32, i32* %16, align 4
  store i32 %111, i32* %7, align 4
  br label %112

112:                                              ; preds = %182, %110
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %7, align 4
  %116 = udiv i32 %114, %115
  %117 = add i32 %116, 1
  %118 = icmp ule i32 %113, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %112
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* @I8254_MAX_COUNT, align 4
  %122 = icmp ule i32 %120, %121
  br label %123

123:                                              ; preds = %119, %112
  %124 = phi i1 [ false, %112 ], [ %122, %119 ]
  br i1 %124, label %125, label %185

125:                                              ; preds = %123
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %7, align 4
  %128 = udiv i32 %126, %127
  store i32 %128, i32* %8, align 4
  br label %129

129:                                              ; preds = %178, %125
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* %8, align 4
  %132 = mul i32 %130, %131
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* %7, align 4
  %135 = add i32 %133, %134
  %136 = add i32 %135, 1
  %137 = icmp ule i32 %132, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %129
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* @I8254_MAX_COUNT, align 4
  %141 = icmp ule i32 %139, %140
  br label %142

142:                                              ; preds = %138, %129
  %143 = phi i1 [ false, %129 ], [ %141, %138 ]
  br i1 %143, label %144, label %181

144:                                              ; preds = %142
  %145 = load %struct.comedi_8254*, %struct.comedi_8254** %4, align 8
  %146 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %7, align 4
  %149 = mul i32 %147, %148
  %150 = load i32, i32* %8, align 4
  %151 = mul i32 %149, %150
  store i32 %151, i32* %17, align 4
  %152 = load i32, i32* %17, align 4
  %153 = load i32*, i32** %5, align 8
  %154 = load i32, i32* %153, align 4
  %155 = icmp ule i32 %152, %154
  br i1 %155, label %156, label %164

156:                                              ; preds = %144
  %157 = load i32, i32* %17, align 4
  %158 = load i32, i32* %11, align 4
  %159 = icmp ugt i32 %157, %158
  br i1 %159, label %160, label %164

160:                                              ; preds = %156
  %161 = load i32, i32* %17, align 4
  store i32 %161, i32* %11, align 4
  %162 = load i32, i32* %7, align 4
  store i32 %162, i32* %13, align 4
  %163 = load i32, i32* %8, align 4
  store i32 %163, i32* %15, align 4
  br label %164

164:                                              ; preds = %160, %156, %144
  %165 = load i32, i32* %17, align 4
  %166 = load i32*, i32** %5, align 8
  %167 = load i32, i32* %166, align 4
  %168 = icmp uge i32 %165, %167
  br i1 %168, label %169, label %177

169:                                              ; preds = %164
  %170 = load i32, i32* %17, align 4
  %171 = load i32, i32* %10, align 4
  %172 = icmp ult i32 %170, %171
  br i1 %172, label %173, label %177

173:                                              ; preds = %169
  %174 = load i32, i32* %17, align 4
  store i32 %174, i32* %10, align 4
  %175 = load i32, i32* %7, align 4
  store i32 %175, i32* %12, align 4
  %176 = load i32, i32* %8, align 4
  store i32 %176, i32* %14, align 4
  br label %177

177:                                              ; preds = %173, %169, %164
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %8, align 4
  %180 = add i32 %179, 1
  store i32 %180, i32* %8, align 4
  br label %129

181:                                              ; preds = %142
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %7, align 4
  %184 = add i32 %183, 1
  store i32 %184, i32* %7, align 4
  br label %112

185:                                              ; preds = %123
  %186 = load i32, i32* %6, align 4
  %187 = load i32, i32* @CMDF_ROUND_MASK, align 4
  %188 = and i32 %186, %187
  switch i32 %188, label %190 [
    i32 129, label %189
    i32 128, label %221
    i32 130, label %224
  ]

189:                                              ; preds = %185
  br label %190

190:                                              ; preds = %185, %189
  %191 = load i32, i32* %12, align 4
  %192 = load i32, i32* %14, align 4
  %193 = mul i32 %191, %192
  %194 = load %struct.comedi_8254*, %struct.comedi_8254** %4, align 8
  %195 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = mul i32 %193, %196
  store i32 %197, i32* %19, align 4
  %198 = load i32, i32* %13, align 4
  %199 = load i32, i32* %15, align 4
  %200 = mul i32 %198, %199
  %201 = load %struct.comedi_8254*, %struct.comedi_8254** %4, align 8
  %202 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = mul i32 %200, %203
  store i32 %204, i32* %18, align 4
  %205 = load i32, i32* %19, align 4
  %206 = load i32*, i32** %5, align 8
  %207 = load i32, i32* %206, align 4
  %208 = sub i32 %205, %207
  %209 = load i32*, i32** %5, align 8
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* %18, align 4
  %212 = sub i32 %210, %211
  %213 = icmp ult i32 %208, %212
  br i1 %213, label %214, label %217

214:                                              ; preds = %190
  %215 = load i32, i32* %12, align 4
  store i32 %215, i32* %7, align 4
  %216 = load i32, i32* %14, align 4
  store i32 %216, i32* %8, align 4
  br label %220

217:                                              ; preds = %190
  %218 = load i32, i32* %13, align 4
  store i32 %218, i32* %7, align 4
  %219 = load i32, i32* %15, align 4
  store i32 %219, i32* %8, align 4
  br label %220

220:                                              ; preds = %217, %214
  br label %227

221:                                              ; preds = %185
  %222 = load i32, i32* %12, align 4
  store i32 %222, i32* %7, align 4
  %223 = load i32, i32* %14, align 4
  store i32 %223, i32* %8, align 4
  br label %227

224:                                              ; preds = %185
  %225 = load i32, i32* %13, align 4
  store i32 %225, i32* %7, align 4
  %226 = load i32, i32* %15, align 4
  store i32 %226, i32* %8, align 4
  br label %227

227:                                              ; preds = %224, %221, %220
  %228 = load i32, i32* %7, align 4
  %229 = load i32, i32* %8, align 4
  %230 = mul i32 %228, %229
  %231 = load %struct.comedi_8254*, %struct.comedi_8254** %4, align 8
  %232 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 4
  %234 = mul i32 %230, %233
  %235 = load i32*, i32** %5, align 8
  store i32 %234, i32* %235, align 4
  %236 = load i32, i32* %7, align 4
  %237 = load %struct.comedi_8254*, %struct.comedi_8254** %4, align 8
  %238 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %237, i32 0, i32 0
  store i32 %236, i32* %238, align 4
  %239 = load i32, i32* %8, align 4
  %240 = load %struct.comedi_8254*, %struct.comedi_8254** %4, align 8
  %241 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %240, i32 0, i32 1
  store i32 %239, i32* %241, align 4
  br label %242

242:                                              ; preds = %227, %95
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
