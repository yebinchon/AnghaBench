; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_svgalib.c_svga_check_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_svgalib.c_svga_check_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svga_timing_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svga_check_timings(%struct.svga_timing_regs* %0, %struct.fb_var_screeninfo* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svga_timing_regs*, align 8
  %6 = alloca %struct.fb_var_screeninfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.svga_timing_regs* %0, %struct.svga_timing_regs** %5, align 8
  store %struct.fb_var_screeninfo* %1, %struct.fb_var_screeninfo** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %10 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, 7
  %13 = and i32 %12, -8
  %14 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %15 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %17 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 7
  %20 = and i32 %19, -8
  %21 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %22 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %24 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 7
  %27 = and i32 %26, -8
  %28 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %29 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %31 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 7
  %34 = and i32 %33, -8
  %35 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %36 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %38 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %41 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %39, %42
  %44 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %45 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %43, %46
  %48 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %49 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %47, %50
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = sdiv i32 %52, 8
  %54 = sub nsw i32 %53, 5
  %55 = load %struct.svga_timing_regs*, %struct.svga_timing_regs** %5, align 8
  %56 = getelementptr inbounds %struct.svga_timing_regs, %struct.svga_timing_regs* %55, i32 0, i32 11
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @svga_regset_size(i32 %57)
  %59 = icmp sge i32 %54, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %3
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %261

63:                                               ; preds = %3
  %64 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %65 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = sdiv i32 %67, 8
  %69 = sub nsw i32 %68, 1
  %70 = load %struct.svga_timing_regs*, %struct.svga_timing_regs** %5, align 8
  %71 = getelementptr inbounds %struct.svga_timing_regs, %struct.svga_timing_regs* %70, i32 0, i32 10
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @svga_regset_size(i32 %72)
  %74 = icmp sge i32 %69, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %63
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %261

78:                                               ; preds = %63
  %79 = load i32, i32* %8, align 4
  %80 = sdiv i32 %79, 8
  %81 = sub nsw i32 %80, 1
  %82 = load %struct.svga_timing_regs*, %struct.svga_timing_regs** %5, align 8
  %83 = getelementptr inbounds %struct.svga_timing_regs, %struct.svga_timing_regs* %82, i32 0, i32 9
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @svga_regset_size(i32 %84)
  %86 = icmp sge i32 %81, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %78
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %261

90:                                               ; preds = %78
  %91 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %92 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %95 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %93, %96
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = sdiv i32 %98, 8
  %100 = sub nsw i32 %99, 1
  %101 = load %struct.svga_timing_regs*, %struct.svga_timing_regs** %5, align 8
  %102 = getelementptr inbounds %struct.svga_timing_regs, %struct.svga_timing_regs* %101, i32 0, i32 8
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @svga_regset_size(i32 %103)
  %105 = icmp sge i32 %100, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %90
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %4, align 4
  br label %261

109:                                              ; preds = %90
  %110 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %111 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %114 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %112, %115
  %117 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %118 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %116, %119
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* %8, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %131, label %123

123:                                              ; preds = %109
  %124 = load i32, i32* %8, align 4
  %125 = sdiv i32 %124, 8
  %126 = load %struct.svga_timing_regs*, %struct.svga_timing_regs** %5, align 8
  %127 = getelementptr inbounds %struct.svga_timing_regs, %struct.svga_timing_regs* %126, i32 0, i32 7
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @svga_regset_size(i32 %128)
  %130 = icmp sge i32 %125, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %123, %109
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %4, align 4
  br label %261

134:                                              ; preds = %123
  %135 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %136 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %8, align 4
  %138 = load i32, i32* %8, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %148, label %140

140:                                              ; preds = %134
  %141 = load i32, i32* %8, align 4
  %142 = sdiv i32 %141, 8
  %143 = load %struct.svga_timing_regs*, %struct.svga_timing_regs** %5, align 8
  %144 = getelementptr inbounds %struct.svga_timing_regs, %struct.svga_timing_regs* %143, i32 0, i32 6
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @svga_regset_size(i32 %145)
  %147 = icmp sge i32 %142, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %140, %134
  %149 = load i32, i32* @EINVAL, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %4, align 4
  br label %261

151:                                              ; preds = %140
  %152 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %153 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %156 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %154, %157
  %159 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %160 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %159, i32 0, i32 6
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %158, %161
  %163 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %164 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %163, i32 0, i32 7
  %165 = load i32, i32* %164, align 4
  %166 = add nsw i32 %162, %165
  store i32 %166, i32* %8, align 4
  %167 = load i32, i32* %8, align 4
  %168 = sub nsw i32 %167, 1
  %169 = load %struct.svga_timing_regs*, %struct.svga_timing_regs** %5, align 8
  %170 = getelementptr inbounds %struct.svga_timing_regs, %struct.svga_timing_regs* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @svga_regset_size(i32 %171)
  %173 = icmp sge i32 %168, %172
  br i1 %173, label %174, label %177

174:                                              ; preds = %151
  %175 = load i32, i32* @EINVAL, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %4, align 4
  br label %261

177:                                              ; preds = %151
  %178 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %179 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 4
  store i32 %180, i32* %8, align 4
  %181 = load i32, i32* %8, align 4
  %182 = sub nsw i32 %181, 1
  %183 = load %struct.svga_timing_regs*, %struct.svga_timing_regs** %5, align 8
  %184 = getelementptr inbounds %struct.svga_timing_regs, %struct.svga_timing_regs* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @svga_regset_size(i32 %185)
  %187 = icmp sge i32 %182, %186
  br i1 %187, label %188, label %191

188:                                              ; preds = %177
  %189 = load i32, i32* @EINVAL, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %4, align 4
  br label %261

191:                                              ; preds = %177
  %192 = load i32, i32* %8, align 4
  %193 = sub nsw i32 %192, 1
  %194 = load %struct.svga_timing_regs*, %struct.svga_timing_regs** %5, align 8
  %195 = getelementptr inbounds %struct.svga_timing_regs, %struct.svga_timing_regs* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @svga_regset_size(i32 %196)
  %198 = icmp sge i32 %193, %197
  br i1 %198, label %199, label %202

199:                                              ; preds = %191
  %200 = load i32, i32* @EINVAL, align 4
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %4, align 4
  br label %261

202:                                              ; preds = %191
  %203 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %204 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %207 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %206, i32 0, i32 6
  %208 = load i32, i32* %207, align 4
  %209 = add nsw i32 %205, %208
  store i32 %209, i32* %8, align 4
  %210 = load i32, i32* %8, align 4
  %211 = sub nsw i32 %210, 1
  %212 = load %struct.svga_timing_regs*, %struct.svga_timing_regs** %5, align 8
  %213 = getelementptr inbounds %struct.svga_timing_regs, %struct.svga_timing_regs* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @svga_regset_size(i32 %214)
  %216 = icmp sge i32 %211, %215
  br i1 %216, label %217, label %220

217:                                              ; preds = %202
  %218 = load i32, i32* @EINVAL, align 4
  %219 = sub nsw i32 0, %218
  store i32 %219, i32* %4, align 4
  br label %261

220:                                              ; preds = %202
  %221 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %222 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %221, i32 0, i32 5
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %225 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %224, i32 0, i32 6
  %226 = load i32, i32* %225, align 4
  %227 = add nsw i32 %223, %226
  %228 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %229 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %228, i32 0, i32 7
  %230 = load i32, i32* %229, align 4
  %231 = add nsw i32 %227, %230
  store i32 %231, i32* %8, align 4
  %232 = load i32, i32* %8, align 4
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %241, label %234

234:                                              ; preds = %220
  %235 = load i32, i32* %8, align 4
  %236 = load %struct.svga_timing_regs*, %struct.svga_timing_regs** %5, align 8
  %237 = getelementptr inbounds %struct.svga_timing_regs, %struct.svga_timing_regs* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @svga_regset_size(i32 %238)
  %240 = icmp sge i32 %235, %239
  br i1 %240, label %241, label %244

241:                                              ; preds = %234, %220
  %242 = load i32, i32* @EINVAL, align 4
  %243 = sub nsw i32 0, %242
  store i32 %243, i32* %4, align 4
  br label %261

244:                                              ; preds = %234
  %245 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %246 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %245, i32 0, i32 7
  %247 = load i32, i32* %246, align 4
  store i32 %247, i32* %8, align 4
  %248 = load i32, i32* %8, align 4
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %257, label %250

250:                                              ; preds = %244
  %251 = load i32, i32* %8, align 4
  %252 = load %struct.svga_timing_regs*, %struct.svga_timing_regs** %5, align 8
  %253 = getelementptr inbounds %struct.svga_timing_regs, %struct.svga_timing_regs* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @svga_regset_size(i32 %254)
  %256 = icmp sge i32 %251, %255
  br i1 %256, label %257, label %260

257:                                              ; preds = %250, %244
  %258 = load i32, i32* @EINVAL, align 4
  %259 = sub nsw i32 0, %258
  store i32 %259, i32* %4, align 4
  br label %261

260:                                              ; preds = %250
  store i32 0, i32* %4, align 4
  br label %261

261:                                              ; preds = %260, %257, %241, %217, %199, %188, %174, %148, %131, %106, %87, %75, %60
  %262 = load i32, i32* %4, align 4
  ret i32 %262
}

declare dso_local i32 @svga_regset_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
