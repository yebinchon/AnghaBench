; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/riva/extr_fbdev.c_rivafb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/riva/extr_fbdev.c_rivafb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_14__, i64, %struct.TYPE_9__, %struct.riva_par* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, i64 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.riva_par = type { i32*, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@FB_VISUAL_DIRECTCOLOR = common dso_local global i64 0, align 8
@NV_ARCH_03 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @rivafb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rivafb_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_info*, align 8
  %14 = alloca %struct.riva_par*, align 8
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  %20 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %21 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %20, i32 0, i32 3
  %22 = load %struct.riva_par*, %struct.riva_par** %21, align 8
  store %struct.riva_par* %22, %struct.riva_par** %14, align 8
  %23 = load %struct.riva_par*, %struct.riva_par** %14, align 8
  %24 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %23, i32 0, i32 1
  store %struct.TYPE_13__* %24, %struct.TYPE_13__** %15, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %27 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %26, i32 0, i32 0
  %28 = call i32 @riva_get_cmap_len(%struct.TYPE_14__* %27)
  %29 = icmp uge i32 %25, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %6
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %241

33:                                               ; preds = %6
  %34 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %35 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %33
  %40 = load i32, i32* %9, align 4
  %41 = mul i32 %40, 77
  %42 = load i32, i32* %10, align 4
  %43 = mul i32 %42, 151
  %44 = add i32 %41, %43
  %45 = load i32, i32* %11, align 4
  %46 = mul i32 %45, 28
  %47 = add i32 %44, %46
  %48 = lshr i32 %47, 8
  store i32 %48, i32* %11, align 4
  store i32 %48, i32* %10, align 4
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %39, %33
  %50 = load i32, i32* %8, align 4
  %51 = icmp ult i32 %50, 16
  br i1 %51, label %52, label %138

52:                                               ; preds = %49
  %53 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %54 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @FB_VISUAL_DIRECTCOLOR, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %138

59:                                               ; preds = %52
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %62 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = shl i32 %60, %65
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %69 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 %67, %72
  %74 = or i32 %66, %73
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %77 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = shl i32 %75, %80
  %82 = or i32 %74, %81
  %83 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %84 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to i32*
  %87 = load i32, i32* %8, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 %82, i32* %89, align 4
  %90 = load %struct.riva_par*, %struct.riva_par** %14, align 8
  %91 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @NV_ARCH_03, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %137

96:                                               ; preds = %59
  %97 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %98 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  switch i32 %100, label %136 [
    i32 16, label %101
    i32 32, label %119
  ]

101:                                              ; preds = %96
  %102 = load i32, i32* %9, align 4
  %103 = and i32 %102, 63488
  %104 = lshr i32 %103, 1
  %105 = load i32, i32* %10, align 4
  %106 = and i32 %105, 63488
  %107 = lshr i32 %106, 6
  %108 = or i32 %104, %107
  %109 = load i32, i32* %11, align 4
  %110 = and i32 %109, 63488
  %111 = lshr i32 %110, 11
  %112 = or i32 %108, %111
  %113 = load %struct.riva_par*, %struct.riva_par** %14, align 8
  %114 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %8, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 %112, i32* %118, align 4
  br label %136

119:                                              ; preds = %96
  %120 = load i32, i32* %9, align 4
  %121 = and i32 %120, 65280
  %122 = shl i32 %121, 8
  %123 = load i32, i32* %10, align 4
  %124 = and i32 %123, 65280
  %125 = or i32 %122, %124
  %126 = load i32, i32* %11, align 4
  %127 = and i32 %126, 65280
  %128 = lshr i32 %127, 8
  %129 = or i32 %125, %128
  %130 = load %struct.riva_par*, %struct.riva_par** %14, align 8
  %131 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %8, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  store i32 %129, i32* %135, align 4
  br label %136

136:                                              ; preds = %96, %119, %101
  br label %137

137:                                              ; preds = %136, %59
  br label %138

138:                                              ; preds = %137, %52, %49
  %139 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %140 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  switch i32 %142, label %239 [
    i32 8, label %143
    i32 16, label %153
    i32 32, label %229
  ]

143:                                              ; preds = %138
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* %9, align 4
  %147 = lshr i32 %146, 8
  %148 = load i32, i32* %10, align 4
  %149 = lshr i32 %148, 8
  %150 = load i32, i32* %11, align 4
  %151 = lshr i32 %150, 8
  %152 = call i32 @riva_wclut(%struct.TYPE_13__* %144, i32 %145, i32 %147, i32 %149, i32 %151)
  br label %240

153:                                              ; preds = %138
  %154 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %155 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = icmp eq i32 %158, 5
  br i1 %159, label %160, label %181

160:                                              ; preds = %153
  store i32 0, i32* %16, align 4
  br label %161

161:                                              ; preds = %177, %160
  %162 = load i32, i32* %16, align 4
  %163 = icmp slt i32 %162, 8
  br i1 %163, label %164, label %180

164:                                              ; preds = %161
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %166 = load i32, i32* %8, align 4
  %167 = mul i32 %166, 8
  %168 = load i32, i32* %16, align 4
  %169 = add i32 %167, %168
  %170 = load i32, i32* %9, align 4
  %171 = lshr i32 %170, 8
  %172 = load i32, i32* %10, align 4
  %173 = lshr i32 %172, 8
  %174 = load i32, i32* %11, align 4
  %175 = lshr i32 %174, 8
  %176 = call i32 @riva_wclut(%struct.TYPE_13__* %165, i32 %169, i32 %171, i32 %173, i32 %175)
  br label %177

177:                                              ; preds = %164
  %178 = load i32, i32* %16, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %16, align 4
  br label %161

180:                                              ; preds = %161
  br label %228

181:                                              ; preds = %153
  %182 = load i32, i32* %8, align 4
  %183 = icmp ult i32 %182, 32
  br i1 %183, label %184, label %205

184:                                              ; preds = %181
  store i32 0, i32* %16, align 4
  br label %185

185:                                              ; preds = %201, %184
  %186 = load i32, i32* %16, align 4
  %187 = icmp slt i32 %186, 8
  br i1 %187, label %188, label %204

188:                                              ; preds = %185
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %190 = load i32, i32* %8, align 4
  %191 = mul i32 %190, 8
  %192 = load i32, i32* %16, align 4
  %193 = add i32 %191, %192
  %194 = load i32, i32* %9, align 4
  %195 = lshr i32 %194, 8
  %196 = load i32, i32* %10, align 4
  %197 = lshr i32 %196, 8
  %198 = load i32, i32* %11, align 4
  %199 = lshr i32 %198, 8
  %200 = call i32 @riva_wclut(%struct.TYPE_13__* %189, i32 %193, i32 %195, i32 %197, i32 %199)
  br label %201

201:                                              ; preds = %188
  %202 = load i32, i32* %16, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %16, align 4
  br label %185

204:                                              ; preds = %185
  br label %205

205:                                              ; preds = %204, %181
  %206 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %207 = load i32, i32* %8, align 4
  %208 = mul i32 %207, 4
  %209 = call i32 @riva_rclut(%struct.TYPE_13__* %206, i32 %208, i32* %17, i32* %18, i32* %19)
  store i32 0, i32* %16, align 4
  br label %210

210:                                              ; preds = %224, %205
  %211 = load i32, i32* %16, align 4
  %212 = icmp slt i32 %211, 4
  br i1 %212, label %213, label %227

213:                                              ; preds = %210
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %215 = load i32, i32* %8, align 4
  %216 = mul i32 %215, 4
  %217 = load i32, i32* %16, align 4
  %218 = add i32 %216, %217
  %219 = load i32, i32* %17, align 4
  %220 = load i32, i32* %10, align 4
  %221 = lshr i32 %220, 8
  %222 = load i32, i32* %19, align 4
  %223 = call i32 @riva_wclut(%struct.TYPE_13__* %214, i32 %218, i32 %219, i32 %221, i32 %222)
  br label %224

224:                                              ; preds = %213
  %225 = load i32, i32* %16, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %16, align 4
  br label %210

227:                                              ; preds = %210
  br label %228

228:                                              ; preds = %227, %180
  br label %240

229:                                              ; preds = %138
  %230 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %231 = load i32, i32* %8, align 4
  %232 = load i32, i32* %9, align 4
  %233 = lshr i32 %232, 8
  %234 = load i32, i32* %10, align 4
  %235 = lshr i32 %234, 8
  %236 = load i32, i32* %11, align 4
  %237 = lshr i32 %236, 8
  %238 = call i32 @riva_wclut(%struct.TYPE_13__* %230, i32 %231, i32 %233, i32 %235, i32 %237)
  br label %240

239:                                              ; preds = %138
  br label %240

240:                                              ; preds = %239, %229, %228, %143
  store i32 0, i32* %7, align 4
  br label %241

241:                                              ; preds = %240, %30
  %242 = load i32, i32* %7, align 4
  ret i32 %242
}

declare dso_local i32 @riva_get_cmap_len(%struct.TYPE_14__*) #1

declare dso_local i32 @riva_wclut(%struct.TYPE_13__*, i32, i32, i32, i32) #1

declare dso_local i32 @riva_rclut(%struct.TYPE_13__*, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
