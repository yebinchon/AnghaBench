; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_atyfb_base.c_atyfb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_atyfb_base.c_atyfb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32*, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.atyfb_par = type { %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@DAC_CNTL = common dso_local global i32 0, align 4
@EXTRA_BRIGHT = common dso_local global i32 0, align 4
@DAC_MASK = common dso_local global i32 0, align 4
@INTEGRATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @atyfb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atyfb_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_info*, align 8
  %14 = alloca %struct.atyfb_par*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  %18 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %19 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.atyfb_par*
  store %struct.atyfb_par* %21, %struct.atyfb_par** %14, align 8
  %22 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %23 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %17, align 8
  %25 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %26 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %16, align 4
  %30 = icmp eq i32 %29, 16
  br i1 %30, label %31, label %40

31:                                               ; preds = %6
  %32 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %33 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 5
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 15, i32 16
  store i32 %39, i32* %16, align 4
  br label %40

40:                                               ; preds = %31, %6
  %41 = load %struct.atyfb_par*, %struct.atyfb_par** %14, align 8
  %42 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 0, i32* %7, align 4
  br label %243

46:                                               ; preds = %40
  %47 = load i32, i32* %8, align 4
  %48 = icmp sgt i32 %47, 255
  br i1 %48, label %61, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %16, align 4
  %51 = icmp eq i32 %50, 16
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* %8, align 4
  %54 = icmp sgt i32 %53, 63
  br i1 %54, label %61, label %55

55:                                               ; preds = %52, %49
  %56 = load i32, i32* %16, align 4
  %57 = icmp eq i32 %56, 15
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32, i32* %8, align 4
  %60 = icmp sgt i32 %59, 31
  br i1 %60, label %61, label %62

61:                                               ; preds = %58, %52, %46
  store i32 1, i32* %7, align 4
  br label %243

62:                                               ; preds = %58, %55
  %63 = load i32, i32* %9, align 4
  %64 = ashr i32 %63, 8
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %10, align 4
  %66 = ashr i32 %65, 8
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %11, align 4
  %68 = ashr i32 %67, 8
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.atyfb_par*, %struct.atyfb_par** %14, align 8
  %71 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  store i32 %69, i32* %76, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.atyfb_par*, %struct.atyfb_par** %14, align 8
  %79 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %78, i32 0, i32 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  store i32 %77, i32* %84, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load %struct.atyfb_par*, %struct.atyfb_par** %14, align 8
  %87 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %86, i32 0, i32 0
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  store i32 %85, i32* %92, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp slt i32 %93, 16
  br i1 %94, label %95, label %147

95:                                               ; preds = %62
  %96 = load i32, i32* %16, align 4
  switch i32 %96, label %146 [
    i32 15, label %97
    i32 16, label %109
    i32 24, label %121
    i32 32, label %133
  ]

97:                                               ; preds = %95
  %98 = load i32, i32* %8, align 4
  %99 = shl i32 %98, 10
  %100 = load i32, i32* %8, align 4
  %101 = shl i32 %100, 5
  %102 = or i32 %99, %101
  %103 = load i32, i32* %8, align 4
  %104 = or i32 %102, %103
  %105 = load i32*, i32** %17, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32 %104, i32* %108, align 4
  br label %146

109:                                              ; preds = %95
  %110 = load i32, i32* %8, align 4
  %111 = shl i32 %110, 11
  %112 = load i32, i32* %8, align 4
  %113 = shl i32 %112, 5
  %114 = or i32 %111, %113
  %115 = load i32, i32* %8, align 4
  %116 = or i32 %114, %115
  %117 = load i32*, i32** %17, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  store i32 %116, i32* %120, align 4
  br label %146

121:                                              ; preds = %95
  %122 = load i32, i32* %8, align 4
  %123 = shl i32 %122, 16
  %124 = load i32, i32* %8, align 4
  %125 = shl i32 %124, 8
  %126 = or i32 %123, %125
  %127 = load i32, i32* %8, align 4
  %128 = or i32 %126, %127
  %129 = load i32*, i32** %17, align 8
  %130 = load i32, i32* %8, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  store i32 %128, i32* %132, align 4
  br label %146

133:                                              ; preds = %95
  %134 = load i32, i32* %8, align 4
  %135 = shl i32 %134, 8
  %136 = load i32, i32* %8, align 4
  %137 = or i32 %135, %136
  store i32 %137, i32* %15, align 4
  %138 = load i32, i32* %15, align 4
  %139 = shl i32 %138, 16
  %140 = load i32, i32* %15, align 4
  %141 = or i32 %139, %140
  %142 = load i32*, i32** %17, align 8
  %143 = load i32, i32* %8, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  store i32 %141, i32* %145, align 4
  br label %146

146:                                              ; preds = %95, %133, %121, %109, %97
  br label %147

147:                                              ; preds = %146, %62
  %148 = load i32, i32* @DAC_CNTL, align 4
  %149 = load %struct.atyfb_par*, %struct.atyfb_par** %14, align 8
  %150 = call i32 @aty_ld_8(i32 %148, %struct.atyfb_par* %149)
  %151 = and i32 %150, 252
  store i32 %151, i32* %15, align 4
  %152 = load i32, i32* @EXTRA_BRIGHT, align 4
  %153 = call i64 @M64_HAS(i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %147
  %156 = load i32, i32* %15, align 4
  %157 = or i32 %156, 2
  store i32 %157, i32* %15, align 4
  br label %158

158:                                              ; preds = %155, %147
  %159 = load i32, i32* @DAC_CNTL, align 4
  %160 = load i32, i32* %15, align 4
  %161 = load %struct.atyfb_par*, %struct.atyfb_par** %14, align 8
  %162 = call i32 @aty_st_8(i32 %159, i32 %160, %struct.atyfb_par* %161)
  %163 = load i32, i32* @DAC_MASK, align 4
  %164 = load %struct.atyfb_par*, %struct.atyfb_par** %14, align 8
  %165 = call i32 @aty_st_8(i32 %163, i32 255, %struct.atyfb_par* %164)
  %166 = load i32, i32* @INTEGRATED, align 4
  %167 = call i64 @M64_HAS(i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %236

169:                                              ; preds = %158
  %170 = load i32, i32* %16, align 4
  %171 = icmp eq i32 %170, 16
  br i1 %171, label %172, label %212

172:                                              ; preds = %169
  %173 = load i32, i32* %8, align 4
  %174 = icmp slt i32 %173, 32
  br i1 %174, label %175, label %191

175:                                              ; preds = %172
  %176 = load i32, i32* %8, align 4
  %177 = shl i32 %176, 3
  %178 = load i32, i32* %9, align 4
  %179 = load %struct.atyfb_par*, %struct.atyfb_par** %14, align 8
  %180 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %179, i32 0, i32 0
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %180, align 8
  %182 = load i32, i32* %8, align 4
  %183 = shl i32 %182, 1
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %11, align 4
  %189 = load %struct.atyfb_par*, %struct.atyfb_par** %14, align 8
  %190 = call i32 @aty_st_pal(i32 %177, i32 %178, i32 %187, i32 %188, %struct.atyfb_par* %189)
  br label %191

191:                                              ; preds = %175, %172
  %192 = load %struct.atyfb_par*, %struct.atyfb_par** %14, align 8
  %193 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %192, i32 0, i32 0
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %193, align 8
  %195 = load i32, i32* %8, align 4
  %196 = ashr i32 %195, 1
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  store i32 %200, i32* %9, align 4
  %201 = load %struct.atyfb_par*, %struct.atyfb_par** %14, align 8
  %202 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %201, i32 0, i32 0
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %202, align 8
  %204 = load i32, i32* %8, align 4
  %205 = ashr i32 %204, 1
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 4
  store i32 %209, i32* %11, align 4
  %210 = load i32, i32* %8, align 4
  %211 = shl i32 %210, 2
  store i32 %211, i32* %8, align 4
  br label %235

212:                                              ; preds = %169
  %213 = load i32, i32* %16, align 4
  %214 = icmp eq i32 %213, 15
  br i1 %214, label %215, label %234

215:                                              ; preds = %212
  %216 = load i32, i32* %8, align 4
  %217 = shl i32 %216, 3
  store i32 %217, i32* %8, align 4
  store i32 0, i32* %15, align 4
  br label %218

218:                                              ; preds = %230, %215
  %219 = load i32, i32* %15, align 4
  %220 = icmp slt i32 %219, 8
  br i1 %220, label %221, label %233

221:                                              ; preds = %218
  %222 = load i32, i32* %8, align 4
  %223 = load i32, i32* %15, align 4
  %224 = add nsw i32 %222, %223
  %225 = load i32, i32* %9, align 4
  %226 = load i32, i32* %10, align 4
  %227 = load i32, i32* %11, align 4
  %228 = load %struct.atyfb_par*, %struct.atyfb_par** %14, align 8
  %229 = call i32 @aty_st_pal(i32 %224, i32 %225, i32 %226, i32 %227, %struct.atyfb_par* %228)
  br label %230

230:                                              ; preds = %221
  %231 = load i32, i32* %15, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %15, align 4
  br label %218

233:                                              ; preds = %218
  br label %234

234:                                              ; preds = %233, %212
  br label %235

235:                                              ; preds = %234, %191
  br label %236

236:                                              ; preds = %235, %158
  %237 = load i32, i32* %8, align 4
  %238 = load i32, i32* %9, align 4
  %239 = load i32, i32* %10, align 4
  %240 = load i32, i32* %11, align 4
  %241 = load %struct.atyfb_par*, %struct.atyfb_par** %14, align 8
  %242 = call i32 @aty_st_pal(i32 %237, i32 %238, i32 %239, i32 %240, %struct.atyfb_par* %241)
  store i32 0, i32* %7, align 4
  br label %243

243:                                              ; preds = %236, %61, %45
  %244 = load i32, i32* %7, align 4
  ret i32 %244
}

declare dso_local i32 @aty_ld_8(i32, %struct.atyfb_par*) #1

declare dso_local i64 @M64_HAS(i32) #1

declare dso_local i32 @aty_st_8(i32, i32, %struct.atyfb_par*) #1

declare dso_local i32 @aty_st_pal(i32, i32, i32, i32, %struct.atyfb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
