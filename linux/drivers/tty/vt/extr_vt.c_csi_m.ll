; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_csi_m.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_csi_m.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32 }

@IBMPC_MAP = common dso_local global i32 0, align 4
@rgb_foreground = common dso_local global i32 0, align 4
@rgb_background = common dso_local global i32 0, align 4
@color_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*)* @csi_m to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csi_m(%struct.vc_data* %0) #0 {
  %2 = alloca %struct.vc_data*, align 8
  %3 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %250, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %7 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp sle i32 %5, %8
  br i1 %9, label %10, label %253

10:                                               ; preds = %4
  %11 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %12 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %131 [
    i32 0, label %18
    i32 1, label %21
    i32 2, label %24
    i32 3, label %27
    i32 21, label %30
    i32 4, label %30
    i32 5, label %33
    i32 7, label %36
    i32 10, label %39
    i32 11, label %62
    i32 12, label %72
    i32 22, label %82
    i32 23, label %85
    i32 24, label %88
    i32 25, label %91
    i32 27, label %94
    i32 38, label %97
    i32 48, label %102
    i32 39, label %107
    i32 49, label %119
  ]

18:                                               ; preds = %10
  %19 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %20 = call i32 @default_attr(%struct.vc_data* %19)
  br label %249

21:                                               ; preds = %10
  %22 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %23 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %22, i32 0, i32 2
  store i32 2, i32* %23, align 8
  br label %249

24:                                               ; preds = %10
  %25 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %26 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %25, i32 0, i32 2
  store i32 0, i32* %26, align 8
  br label %249

27:                                               ; preds = %10
  %28 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %29 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %28, i32 0, i32 3
  store i32 1, i32* %29, align 4
  br label %249

30:                                               ; preds = %10, %10
  %31 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %32 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %31, i32 0, i32 4
  store i32 1, i32* %32, align 8
  br label %249

33:                                               ; preds = %10
  %34 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %35 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %34, i32 0, i32 5
  store i32 1, i32* %35, align 4
  br label %249

36:                                               ; preds = %10
  %37 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %38 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %37, i32 0, i32 6
  store i32 1, i32* %38, align 8
  br label %249

39:                                               ; preds = %10
  %40 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %41 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %40, i32 0, i32 14
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %46 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %45, i32 0, i32 13
  %47 = load i32, i32* %46, align 4
  br label %52

48:                                               ; preds = %39
  %49 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %50 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %49, i32 0, i32 12
  %51 = load i32, i32* %50, align 8
  br label %52

52:                                               ; preds = %48, %44
  %53 = phi i32 [ %47, %44 ], [ %51, %48 ]
  %54 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %55 = call i8* @set_translate(i32 %53, %struct.vc_data* %54)
  %56 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %57 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %56, i32 0, i32 11
  store i8* %55, i8** %57, align 8
  %58 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %59 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %58, i32 0, i32 7
  store i32 0, i32* %59, align 4
  %60 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %61 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %60, i32 0, i32 8
  store i32 0, i32* %61, align 8
  br label %249

62:                                               ; preds = %10
  %63 = load i32, i32* @IBMPC_MAP, align 4
  %64 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %65 = call i8* @set_translate(i32 %63, %struct.vc_data* %64)
  %66 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %67 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %66, i32 0, i32 11
  store i8* %65, i8** %67, align 8
  %68 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %69 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %68, i32 0, i32 7
  store i32 1, i32* %69, align 4
  %70 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %71 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %70, i32 0, i32 8
  store i32 0, i32* %71, align 8
  br label %249

72:                                               ; preds = %10
  %73 = load i32, i32* @IBMPC_MAP, align 4
  %74 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %75 = call i8* @set_translate(i32 %73, %struct.vc_data* %74)
  %76 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %77 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %76, i32 0, i32 11
  store i8* %75, i8** %77, align 8
  %78 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %79 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %78, i32 0, i32 7
  store i32 1, i32* %79, align 4
  %80 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %81 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %80, i32 0, i32 8
  store i32 1, i32* %81, align 8
  br label %249

82:                                               ; preds = %10
  %83 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %84 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %83, i32 0, i32 2
  store i32 1, i32* %84, align 8
  br label %249

85:                                               ; preds = %10
  %86 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %87 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %86, i32 0, i32 3
  store i32 0, i32* %87, align 4
  br label %249

88:                                               ; preds = %10
  %89 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %90 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %89, i32 0, i32 4
  store i32 0, i32* %90, align 8
  br label %249

91:                                               ; preds = %10
  %92 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %93 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %92, i32 0, i32 5
  store i32 0, i32* %93, align 4
  br label %249

94:                                               ; preds = %10
  %95 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %96 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %95, i32 0, i32 6
  store i32 0, i32* %96, align 8
  br label %249

97:                                               ; preds = %10
  %98 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %99 = load i32, i32* %3, align 4
  %100 = load i32, i32* @rgb_foreground, align 4
  %101 = call i32 @vc_t416_color(%struct.vc_data* %98, i32 %99, i32 %100)
  store i32 %101, i32* %3, align 4
  br label %249

102:                                              ; preds = %10
  %103 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %104 = load i32, i32* %3, align 4
  %105 = load i32, i32* @rgb_background, align 4
  %106 = call i32 @vc_t416_color(%struct.vc_data* %103, i32 %104, i32 %105)
  store i32 %106, i32* %3, align 4
  br label %249

107:                                              ; preds = %10
  %108 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %109 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %108, i32 0, i32 10
  %110 = load i32, i32* %109, align 8
  %111 = and i32 %110, 15
  %112 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %113 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %112, i32 0, i32 9
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, 240
  %116 = or i32 %111, %115
  %117 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %118 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %117, i32 0, i32 9
  store i32 %116, i32* %118, align 4
  br label %249

119:                                              ; preds = %10
  %120 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %121 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %120, i32 0, i32 10
  %122 = load i32, i32* %121, align 8
  %123 = and i32 %122, 240
  %124 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %125 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %124, i32 0, i32 9
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, 15
  %128 = or i32 %123, %127
  %129 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %130 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %129, i32 0, i32 9
  store i32 %128, i32* %130, align 4
  br label %249

131:                                              ; preds = %10
  %132 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %133 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %3, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = icmp sge i32 %138, 90
  br i1 %139, label %140, label %170

140:                                              ; preds = %131
  %141 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %142 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %3, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = icmp sle i32 %147, 107
  br i1 %148, label %149, label %170

149:                                              ; preds = %140
  %150 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %151 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %3, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = icmp slt i32 %156, 100
  br i1 %157, label %158, label %161

158:                                              ; preds = %149
  %159 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %160 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %159, i32 0, i32 2
  store i32 2, i32* %160, align 8
  br label %161

161:                                              ; preds = %158, %149
  %162 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %163 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %3, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = sub nsw i32 %168, 60
  store i32 %169, i32* %167, align 4
  br label %170

170:                                              ; preds = %161, %140, %131
  %171 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %172 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %3, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = icmp sge i32 %177, 30
  br i1 %178, label %179, label %208

179:                                              ; preds = %170
  %180 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %181 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %180, i32 0, i32 1
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %3, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = icmp sle i32 %186, 37
  br i1 %187, label %188, label %208

188:                                              ; preds = %179
  %189 = load i32*, i32** @color_table, align 8
  %190 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %191 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %190, i32 0, i32 1
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %3, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = sub nsw i32 %196, 30
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %189, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %202 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %201, i32 0, i32 9
  %203 = load i32, i32* %202, align 4
  %204 = and i32 %203, 240
  %205 = or i32 %200, %204
  %206 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %207 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %206, i32 0, i32 9
  store i32 %205, i32* %207, align 4
  br label %248

208:                                              ; preds = %179, %170
  %209 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %210 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %209, i32 0, i32 1
  %211 = load i32*, i32** %210, align 8
  %212 = load i32, i32* %3, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = icmp sge i32 %215, 40
  br i1 %216, label %217, label %247

217:                                              ; preds = %208
  %218 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %219 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %218, i32 0, i32 1
  %220 = load i32*, i32** %219, align 8
  %221 = load i32, i32* %3, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = icmp sle i32 %224, 47
  br i1 %225, label %226, label %247

226:                                              ; preds = %217
  %227 = load i32*, i32** @color_table, align 8
  %228 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %229 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %228, i32 0, i32 1
  %230 = load i32*, i32** %229, align 8
  %231 = load i32, i32* %3, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %230, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = sub nsw i32 %234, 40
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %227, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = shl i32 %238, 4
  %240 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %241 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %240, i32 0, i32 9
  %242 = load i32, i32* %241, align 4
  %243 = and i32 %242, 15
  %244 = or i32 %239, %243
  %245 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %246 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %245, i32 0, i32 9
  store i32 %244, i32* %246, align 4
  br label %247

247:                                              ; preds = %226, %217, %208
  br label %248

248:                                              ; preds = %247, %188
  br label %249

249:                                              ; preds = %248, %119, %107, %102, %97, %94, %91, %88, %85, %82, %72, %62, %52, %36, %33, %30, %27, %24, %21, %18
  br label %250

250:                                              ; preds = %249
  %251 = load i32, i32* %3, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %3, align 4
  br label %4

253:                                              ; preds = %4
  %254 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %255 = call i32 @update_attr(%struct.vc_data* %254)
  ret void
}

declare dso_local i32 @default_attr(%struct.vc_data*) #1

declare dso_local i8* @set_translate(i32, %struct.vc_data*) #1

declare dso_local i32 @vc_t416_color(%struct.vc_data*, i32, i32) #1

declare dso_local i32 @update_attr(%struct.vc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
