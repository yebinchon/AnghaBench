; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/matrox/extr_matroxfb_maven.c_maven_compute_timming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/matrox/extr_matroxfb_maven.c_maven_compute_timming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.maven_data = type { i64, %struct.matrox_fb_info* }
%struct.matrox_fb_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.my_timming = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mavenregs = type { i32, i32*, i32, i32, i32 }

@MATROXFB_OUTPUT_MODE_MONITOR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MGATVO_B = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.maven_data*, %struct.my_timming*, %struct.mavenregs*)* @maven_compute_timming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @maven_compute_timming(%struct.maven_data* %0, %struct.my_timming* %1, %struct.mavenregs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.maven_data*, align 8
  %6 = alloca %struct.my_timming*, align 8
  %7 = alloca %struct.mavenregs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.matrox_fb_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.maven_data* %0, %struct.maven_data** %5, align 8
  store %struct.my_timming* %1, %struct.my_timming** %6, align 8
  store %struct.mavenregs* %2, %struct.mavenregs** %7, align 8
  %28 = load %struct.maven_data*, %struct.maven_data** %5, align 8
  %29 = getelementptr inbounds %struct.maven_data, %struct.maven_data* %28, i32 0, i32 1
  %30 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %29, align 8
  store %struct.matrox_fb_info* %30, %struct.matrox_fb_info** %12, align 8
  %31 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %12, align 8
  %32 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %38 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 8
  %39 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %40 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @MATROXFB_OUTPUT_MODE_MONITOR, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %471

44:                                               ; preds = %3
  %45 = load %struct.maven_data*, %struct.maven_data** %5, align 8
  %46 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %47 = call i32 @maven_init_TVdata(%struct.maven_data* %45, %struct.mavenregs* %46)
  %48 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %49 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %52 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %55 = call i64 @maven_find_exact_clocks(i32 %50, i32 %53, %struct.mavenregs* %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %44
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %718

60:                                               ; preds = %44
  %61 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %62 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %65 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = sub i32 %63, %66
  store i32 %67, i32* %13, align 4
  %68 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %69 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %72 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = sub i32 %70, %73
  store i32 %74, i32* %17, align 4
  %75 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %76 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %17, align 4
  %79 = sub i32 %77, %78
  %80 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %81 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = sub i32 %79, %82
  store i32 %83, i32* %16, align 4
  %84 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %85 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %88 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = sub i32 %86, %89
  store i32 %90, i32* %14, align 4
  %91 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %92 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %95 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 4
  %97 = sub i32 %93, %96
  store i32 %97, i32* %15, align 4
  %98 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %99 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %102 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp ult i32 %100, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %60
  %106 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %107 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %16, align 4
  %110 = add i32 %109, %108
  store i32 %110, i32* %16, align 4
  br label %111

111:                                              ; preds = %105, %60
  %112 = load i32, i32* %16, align 4
  %113 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %114 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp ugt i32 %112, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %111
  %118 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %119 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %16, align 4
  %122 = sub i32 %121, %120
  store i32 %122, i32* %16, align 4
  br label %123

123:                                              ; preds = %117, %111
  %124 = load i32, i32* %16, align 4
  %125 = add i32 %124, 2
  %126 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %127 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = icmp ugt i32 %125, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %123
  store i32 0, i32* %16, align 4
  br label %131

131:                                              ; preds = %130, %123
  %132 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %133 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %136 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 150
  store i32 %134, i32* %138, align 4
  %139 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %140 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = lshr i32 %141, 8
  %143 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %144 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 151
  store i32 %142, i32* %146, align 4
  %147 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %148 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 152
  store i32 0, i32* %150, align 4
  %151 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %152 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 153
  store i32 0, i32* %154, align 4
  %155 = load i32, i32* %13, align 4
  %156 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %157 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 154
  store i32 %155, i32* %159, align 4
  %160 = load i32, i32* %13, align 4
  %161 = lshr i32 %160, 8
  %162 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %163 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 155
  store i32 %161, i32* %165, align 4
  %166 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %167 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 156
  store i32 4, i32* %169, align 4
  %170 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %171 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %170, i32 0, i32 1
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 157
  store i32 0, i32* %173, align 4
  %174 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %175 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %178 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 160
  store i32 %176, i32* %180, align 4
  %181 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %182 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = ashr i32 %183, 8
  %185 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %186 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %185, i32 0, i32 1
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 161
  store i32 %184, i32* %188, align 4
  %189 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %190 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %193 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %192, i32 0, i32 6
  %194 = load i32, i32* %193, align 4
  %195 = sub i32 %191, %194
  %196 = sub i32 %195, 1
  %197 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %198 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %197, i32 0, i32 1
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 162
  store i32 %196, i32* %200, align 4
  %201 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %202 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %205 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %204, i32 0, i32 6
  %206 = load i32, i32* %205, align 4
  %207 = sub i32 %203, %206
  %208 = sub i32 %207, 1
  %209 = lshr i32 %208, 8
  %210 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %211 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %210, i32 0, i32 1
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 163
  store i32 %209, i32* %213, align 4
  %214 = load %struct.maven_data*, %struct.maven_data** %5, align 8
  %215 = getelementptr inbounds %struct.maven_data, %struct.maven_data* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @MGATVO_B, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %219, label %228

219:                                              ; preds = %131
  %220 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %221 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %220, i32 0, i32 1
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 164
  store i32 4, i32* %223, align 4
  %224 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %225 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %224, i32 0, i32 1
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 165
  store i32 0, i32* %227, align 4
  br label %237

228:                                              ; preds = %131
  %229 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %230 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %229, i32 0, i32 1
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 164
  store i32 1, i32* %232, align 4
  %233 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %234 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %233, i32 0, i32 1
  %235 = load i32*, i32** %234, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 165
  store i32 0, i32* %236, align 4
  br label %237

237:                                              ; preds = %228, %219
  %238 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %239 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %238, i32 0, i32 1
  %240 = load i32*, i32** %239, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 166
  store i32 0, i32* %241, align 4
  %242 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %243 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %242, i32 0, i32 1
  %244 = load i32*, i32** %243, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 167
  store i32 0, i32* %245, align 4
  %246 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %247 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = sub i32 %248, 1
  %250 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %251 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %250, i32 0, i32 1
  %252 = load i32*, i32** %251, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 168
  store i32 %249, i32* %253, align 4
  %254 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %255 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = sub i32 %256, 1
  %258 = lshr i32 %257, 8
  %259 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %260 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %259, i32 0, i32 1
  %261 = load i32*, i32** %260, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 169
  store i32 %258, i32* %262, align 4
  %263 = load i32, i32* %16, align 4
  %264 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %265 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %264, i32 0, i32 1
  %266 = load i32*, i32** %265, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 170
  store i32 %263, i32* %267, align 4
  %268 = load i32, i32* %16, align 4
  %269 = lshr i32 %268, 8
  %270 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %271 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %270, i32 0, i32 1
  %272 = load i32*, i32** %271, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 171
  store i32 %269, i32* %273, align 4
  %274 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %275 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = sub i32 %276, 2
  %278 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %279 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %278, i32 0, i32 1
  %280 = load i32*, i32** %279, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 172
  store i32 %277, i32* %281, align 4
  %282 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %283 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = sub i32 %284, 2
  %286 = lshr i32 %285, 8
  %287 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %288 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %287, i32 0, i32 1
  %289 = load i32*, i32** %288, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 173
  store i32 %286, i32* %290, align 4
  %291 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %292 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %291, i32 0, i32 1
  %293 = load i32*, i32** %292, align 8
  %294 = getelementptr inbounds i32, i32* %293, i64 174
  store i32 1, i32* %294, align 4
  %295 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %296 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %295, i32 0, i32 1
  %297 = load i32*, i32** %296, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 175
  store i32 0, i32* %298, align 4
  %299 = load i32, i32* %13, align 4
  %300 = add i32 4, %299
  %301 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %302 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %301, i32 0, i32 7
  %303 = load i32, i32* %302, align 4
  %304 = add i32 %300, %303
  store i32 %304, i32* %20, align 4
  %305 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %306 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %314

309:                                              ; preds = %237
  %310 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %311 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 4
  %313 = udiv i32 94208, %312
  store i32 %313, i32* %18, align 4
  br label %315

314:                                              ; preds = %237
  store i32 129, i32* %18, align 4
  br label %315

315:                                              ; preds = %314, %309
  %316 = load i32, i32* %18, align 4
  %317 = icmp sgt i32 %316, 129
  br i1 %317, label %318, label %319

318:                                              ; preds = %315
  store i32 129, i32* %18, align 4
  br label %319

319:                                              ; preds = %318, %315
  %320 = load i32, i32* %18, align 4
  %321 = icmp slt i32 %320, 65
  br i1 %321, label %322, label %323

322:                                              ; preds = %319
  store i32 65, i32* %18, align 4
  br label %323

323:                                              ; preds = %322, %319
  %324 = load i32, i32* %18, align 4
  %325 = add nsw i32 %324, -1
  store i32 %325, i32* %18, align 4
  %326 = load i32, i32* %13, align 4
  %327 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %328 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %327, i32 0, i32 7
  %329 = load i32, i32* %328, align 4
  %330 = add i32 %326, %329
  %331 = sub i32 %330, 8
  %332 = load i32, i32* %18, align 4
  %333 = mul i32 %331, %332
  %334 = sub i32 98176, %333
  store i32 %334, i32* %19, align 4
  %335 = load i32, i32* %19, align 4
  %336 = icmp slt i32 %335, 0
  br i1 %336, label %337, label %338

337:                                              ; preds = %323
  store i32 0, i32* %19, align 4
  br label %338

338:                                              ; preds = %337, %323
  %339 = load i32, i32* %19, align 4
  %340 = ashr i32 %339, 8
  store i32 %340, i32* %19, align 4
  %341 = load i32, i32* %19, align 4
  %342 = icmp sgt i32 %341, 255
  br i1 %342, label %343, label %344

343:                                              ; preds = %338
  store i32 255, i32* %19, align 4
  br label %344

344:                                              ; preds = %343, %338
  store i32 1, i32* %22, align 4
  br label %345

345:                                              ; preds = %355, %344
  %346 = load i32, i32* %22, align 4
  %347 = mul nsw i32 3932160, %346
  %348 = sub nsw i32 %347, 32768
  %349 = load i32, i32* %18, align 4
  %350 = sdiv i32 %348, %349
  %351 = add nsw i32 %350, 1511
  %352 = ashr i32 %351, 8
  store i32 %352, i32* %21, align 4
  %353 = load i32, i32* %22, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* %22, align 4
  br label %355

355:                                              ; preds = %345
  %356 = load i32, i32* %21, align 4
  %357 = load i32, i32* %20, align 4
  %358 = icmp ult i32 %356, %357
  br i1 %358, label %345, label %359

359:                                              ; preds = %355
  %360 = load i32, i32* %21, align 4
  %361 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %362 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %361, i32 0, i32 2
  %363 = load i32, i32* %362, align 8
  %364 = add nsw i32 %363, 2
  %365 = icmp uge i32 %360, %364
  br i1 %365, label %366, label %368

366:                                              ; preds = %359
  %367 = load i32, i32* %20, align 4
  store i32 %367, i32* %21, align 4
  br label %368

368:                                              ; preds = %366, %359
  %369 = load i32, i32* %18, align 4
  %370 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %371 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %370, i32 0, i32 1
  %372 = load i32*, i32** %371, align 8
  %373 = getelementptr inbounds i32, i32* %372, i64 144
  store i32 %369, i32* %373, align 4
  %374 = load i32, i32* %19, align 4
  %375 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %376 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %375, i32 0, i32 1
  %377 = load i32*, i32** %376, align 8
  %378 = getelementptr inbounds i32, i32* %377, i64 194
  store i32 %374, i32* %378, align 4
  %379 = load i32, i32* %21, align 4
  %380 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %381 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %380, i32 0, i32 1
  %382 = load i32*, i32** %381, align 8
  %383 = getelementptr inbounds i32, i32* %382, i64 158
  store i32 %379, i32* %383, align 4
  %384 = load i32, i32* %21, align 4
  %385 = lshr i32 %384, 8
  %386 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %387 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %386, i32 0, i32 1
  %388 = load i32*, i32** %387, align 8
  %389 = getelementptr inbounds i32, i32* %388, i64 159
  store i32 %385, i32* %389, align 4
  %390 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %391 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %390, i32 0, i32 1
  %392 = load i32, i32* %391, align 4
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %423

394:                                              ; preds = %368
  %395 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %396 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %395, i32 0, i32 3
  %397 = load i32, i32* %396, align 4
  %398 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %399 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %398, i32 0, i32 2
  %400 = load i32, i32* %399, align 8
  %401 = add nsw i32 %400, 2
  %402 = mul nsw i32 %397, %401
  store i32 %402, i32* %26, align 4
  %403 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %404 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %403, i32 0, i32 1
  %405 = load i32, i32* %404, align 4
  %406 = sub i32 %405, 1
  %407 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %408 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %407, i32 0, i32 2
  %409 = load i32, i32* %408, align 8
  %410 = add nsw i32 %409, 2
  %411 = mul i32 %406, %410
  %412 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %413 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 8
  %415 = add i32 %411, %414
  %416 = add i32 %415, 2
  store i32 %416, i32* %27, align 4
  %417 = load i32, i32* %26, align 4
  %418 = shl i32 %417, 15
  store i32 %418, i32* %25, align 4
  %419 = load i32, i32* %25, align 4
  %420 = load i32, i32* %27, align 4
  %421 = call i32 @do_div(i32 %419, i32 %420)
  %422 = load i32, i32* %25, align 4
  store i32 %422, i32* %23, align 4
  br label %424

423:                                              ; preds = %368
  store i32 32768, i32* %23, align 4
  br label %424

424:                                              ; preds = %423, %394
  %425 = load i32, i32* %23, align 4
  %426 = icmp sgt i32 %425, 32768
  br i1 %426, label %427, label %428

427:                                              ; preds = %424
  store i32 32768, i32* %23, align 4
  br label %428

428:                                              ; preds = %427, %424
  %429 = load i32, i32* %15, align 4
  %430 = load i32, i32* %14, align 4
  %431 = add i32 %429, %430
  %432 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %433 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %432, i32 0, i32 8
  %434 = load i32, i32* %433, align 4
  %435 = add i32 %431, %434
  %436 = load i32, i32* %23, align 4
  %437 = mul i32 %435, %436
  store i32 %437, i32* %24, align 4
  %438 = load i32, i32* %24, align 4
  %439 = ashr i32 %438, 16
  %440 = sub nsw i32 %439, 146
  store i32 %440, i32* %24, align 4
  %441 = load i32, i32* %24, align 4
  %442 = icmp slt i32 %441, 0
  br i1 %442, label %443, label %444

443:                                              ; preds = %428
  store i32 0, i32* %24, align 4
  br label %444

444:                                              ; preds = %443, %428
  %445 = load i32, i32* %24, align 4
  %446 = icmp sgt i32 %445, 255
  br i1 %446, label %447, label %448

447:                                              ; preds = %444
  store i32 255, i32* %24, align 4
  br label %448

448:                                              ; preds = %447, %444
  %449 = load i32, i32* %23, align 4
  %450 = add nsw i32 %449, -1
  store i32 %450, i32* %23, align 4
  %451 = load i32, i32* %23, align 4
  %452 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %453 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %452, i32 0, i32 1
  %454 = load i32*, i32** %453, align 8
  %455 = getelementptr inbounds i32, i32* %454, i64 145
  store i32 %451, i32* %455, align 4
  %456 = load i32, i32* %23, align 4
  %457 = ashr i32 %456, 8
  %458 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %459 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %458, i32 0, i32 1
  %460 = load i32*, i32** %459, align 8
  %461 = getelementptr inbounds i32, i32* %460, i64 146
  store i32 %457, i32* %461, align 4
  %462 = load i32, i32* %24, align 4
  %463 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %464 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %463, i32 0, i32 1
  %465 = load i32*, i32** %464, align 8
  %466 = getelementptr inbounds i32, i32* %465, i64 190
  store i32 %462, i32* %466, align 4
  %467 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %468 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %467, i32 0, i32 1
  %469 = load i32*, i32** %468, align 8
  %470 = getelementptr inbounds i32, i32* %469, i64 176
  store i32 8, i32* %470, align 4
  store i32 0, i32* %4, align 4
  br label %718

471:                                              ; preds = %3
  %472 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %473 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %472, i32 0, i32 9
  %474 = load i32, i32* %473, align 4
  %475 = call i32 @DAC1064_calcclock(i32 %474, i32 450000, i32* %9, i32* %10, i32* %11)
  %476 = load i32, i32* %9, align 4
  %477 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %478 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %477, i32 0, i32 1
  %479 = load i32*, i32** %478, align 8
  %480 = getelementptr inbounds i32, i32* %479, i64 128
  store i32 %476, i32* %480, align 4
  %481 = load i32, i32* %10, align 4
  %482 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %483 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %482, i32 0, i32 1
  %484 = load i32*, i32** %483, align 8
  %485 = getelementptr inbounds i32, i32* %484, i64 129
  store i32 %481, i32* %485, align 4
  %486 = load i32, i32* %11, align 4
  %487 = or i32 %486, 128
  %488 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %489 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %488, i32 0, i32 1
  %490 = load i32*, i32** %489, align 8
  %491 = getelementptr inbounds i32, i32* %490, i64 130
  store i32 %487, i32* %491, align 4
  %492 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %493 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %492, i32 0, i32 1
  %494 = load i32*, i32** %493, align 8
  %495 = getelementptr inbounds i32, i32* %494, i64 179
  store i32 1, i32* %495, align 4
  %496 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %497 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %496, i32 0, i32 1
  %498 = load i32*, i32** %497, align 8
  %499 = getelementptr inbounds i32, i32* %498, i64 148
  store i32 178, i32* %499, align 4
  %500 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %501 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %500, i32 0, i32 0
  %502 = load i32, i32* %501, align 4
  %503 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %504 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %503, i32 0, i32 1
  %505 = load i32*, i32** %504, align 8
  %506 = getelementptr inbounds i32, i32* %505, i64 150
  store i32 %502, i32* %506, align 4
  %507 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %508 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %507, i32 0, i32 0
  %509 = load i32, i32* %508, align 4
  %510 = lshr i32 %509, 8
  %511 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %512 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %511, i32 0, i32 1
  %513 = load i32*, i32** %512, align 8
  %514 = getelementptr inbounds i32, i32* %513, i64 151
  store i32 %510, i32* %514, align 4
  %515 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %516 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %515, i32 0, i32 1
  %517 = load i32*, i32** %516, align 8
  %518 = getelementptr inbounds i32, i32* %517, i64 152
  store i32 0, i32* %518, align 4
  %519 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %520 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %519, i32 0, i32 1
  %521 = load i32*, i32** %520, align 8
  %522 = getelementptr inbounds i32, i32* %521, i64 153
  store i32 0, i32* %522, align 4
  %523 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %524 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %523, i32 0, i32 2
  %525 = load i32, i32* %524, align 4
  %526 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %527 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %526, i32 0, i32 3
  %528 = load i32, i32* %527, align 4
  %529 = sub i32 %525, %528
  store i32 %529, i32* %8, align 4
  %530 = load i32, i32* %8, align 4
  %531 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %532 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %531, i32 0, i32 1
  %533 = load i32*, i32** %532, align 8
  %534 = getelementptr inbounds i32, i32* %533, i64 154
  store i32 %530, i32* %534, align 4
  %535 = load i32, i32* %8, align 4
  %536 = lshr i32 %535, 8
  %537 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %538 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %537, i32 0, i32 1
  %539 = load i32*, i32** %538, align 8
  %540 = getelementptr inbounds i32, i32* %539, i64 155
  store i32 %536, i32* %540, align 4
  %541 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %542 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %541, i32 0, i32 0
  %543 = load i32, i32* %542, align 4
  %544 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %545 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %544, i32 0, i32 3
  %546 = load i32, i32* %545, align 4
  %547 = sub i32 %543, %546
  store i32 %547, i32* %8, align 4
  %548 = load i32, i32* %8, align 4
  %549 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %550 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %549, i32 0, i32 1
  %551 = load i32*, i32** %550, align 8
  %552 = getelementptr inbounds i32, i32* %551, i64 156
  store i32 %548, i32* %552, align 4
  %553 = load i32, i32* %8, align 4
  %554 = lshr i32 %553, 8
  %555 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %556 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %555, i32 0, i32 1
  %557 = load i32*, i32** %556, align 8
  %558 = getelementptr inbounds i32, i32* %557, i64 157
  store i32 %554, i32* %558, align 4
  %559 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %560 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %559, i32 0, i32 7
  %561 = load i32, i32* %560, align 4
  %562 = load i32, i32* %8, align 4
  %563 = add i32 %562, %561
  store i32 %563, i32* %8, align 4
  %564 = load i32, i32* %8, align 4
  %565 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %566 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %565, i32 0, i32 1
  %567 = load i32*, i32** %566, align 8
  %568 = getelementptr inbounds i32, i32* %567, i64 158
  store i32 %564, i32* %568, align 4
  %569 = load i32, i32* %8, align 4
  %570 = lshr i32 %569, 8
  %571 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %572 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %571, i32 0, i32 1
  %573 = load i32*, i32** %572, align 8
  %574 = getelementptr inbounds i32, i32* %573, i64 159
  store i32 %570, i32* %574, align 4
  %575 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %576 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %575, i32 0, i32 0
  %577 = load i32, i32* %576, align 4
  %578 = add i32 %577, 1
  store i32 %578, i32* %8, align 4
  %579 = load i32, i32* %8, align 4
  %580 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %581 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %580, i32 0, i32 1
  %582 = load i32*, i32** %581, align 8
  %583 = getelementptr inbounds i32, i32* %582, i64 160
  store i32 %579, i32* %583, align 4
  %584 = load i32, i32* %8, align 4
  %585 = lshr i32 %584, 8
  %586 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %587 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %586, i32 0, i32 1
  %588 = load i32*, i32** %587, align 8
  %589 = getelementptr inbounds i32, i32* %588, i64 161
  store i32 %585, i32* %589, align 4
  %590 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %591 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %590, i32 0, i32 5
  %592 = load i32, i32* %591, align 4
  %593 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %594 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %593, i32 0, i32 6
  %595 = load i32, i32* %594, align 4
  %596 = sub i32 %592, %595
  %597 = sub i32 %596, 1
  store i32 %597, i32* %8, align 4
  %598 = load i32, i32* %8, align 4
  %599 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %600 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %599, i32 0, i32 1
  %601 = load i32*, i32** %600, align 8
  %602 = getelementptr inbounds i32, i32* %601, i64 162
  store i32 %598, i32* %602, align 4
  %603 = load i32, i32* %8, align 4
  %604 = lshr i32 %603, 8
  %605 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %606 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %605, i32 0, i32 1
  %607 = load i32*, i32** %606, align 8
  %608 = getelementptr inbounds i32, i32* %607, i64 163
  store i32 %604, i32* %608, align 4
  %609 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %610 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %609, i32 0, i32 1
  %611 = load i32, i32* %610, align 4
  %612 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %613 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %612, i32 0, i32 6
  %614 = load i32, i32* %613, align 4
  %615 = sub i32 %611, %614
  store i32 %615, i32* %8, align 4
  %616 = load i32, i32* %8, align 4
  %617 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %618 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %617, i32 0, i32 1
  %619 = load i32*, i32** %618, align 8
  %620 = getelementptr inbounds i32, i32* %619, i64 164
  store i32 %616, i32* %620, align 4
  %621 = load i32, i32* %8, align 4
  %622 = lshr i32 %621, 8
  %623 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %624 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %623, i32 0, i32 1
  %625 = load i32*, i32** %624, align 8
  %626 = getelementptr inbounds i32, i32* %625, i64 165
  store i32 %622, i32* %626, align 4
  %627 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %628 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %627, i32 0, i32 1
  %629 = load i32, i32* %628, align 4
  %630 = sub i32 %629, 1
  store i32 %630, i32* %8, align 4
  %631 = load i32, i32* %8, align 4
  %632 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %633 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %632, i32 0, i32 1
  %634 = load i32*, i32** %633, align 8
  %635 = getelementptr inbounds i32, i32* %634, i64 166
  store i32 %631, i32* %635, align 4
  %636 = load i32, i32* %8, align 4
  %637 = lshr i32 %636, 8
  %638 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %639 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %638, i32 0, i32 1
  %640 = load i32*, i32** %639, align 8
  %641 = getelementptr inbounds i32, i32* %640, i64 167
  store i32 %637, i32* %641, align 4
  %642 = load i32, i32* %8, align 4
  %643 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %644 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %643, i32 0, i32 1
  %645 = load i32*, i32** %644, align 8
  %646 = getelementptr inbounds i32, i32* %645, i64 168
  store i32 %642, i32* %646, align 4
  %647 = load i32, i32* %8, align 4
  %648 = lshr i32 %647, 8
  %649 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %650 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %649, i32 0, i32 1
  %651 = load i32*, i32** %650, align 8
  %652 = getelementptr inbounds i32, i32* %651, i64 169
  store i32 %648, i32* %652, align 4
  %653 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %654 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %653, i32 0, i32 0
  %655 = load i32, i32* %654, align 4
  %656 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %657 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %656, i32 0, i32 4
  %658 = load i32, i32* %657, align 4
  %659 = sub i32 %655, %658
  store i32 %659, i32* %8, align 4
  %660 = load i32, i32* %8, align 4
  %661 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %662 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %661, i32 0, i32 1
  %663 = load i32*, i32** %662, align 8
  %664 = getelementptr inbounds i32, i32* %663, i64 170
  store i32 %660, i32* %664, align 4
  %665 = load i32, i32* %8, align 4
  %666 = lshr i32 %665, 8
  %667 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %668 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %667, i32 0, i32 1
  %669 = load i32*, i32** %668, align 8
  %670 = getelementptr inbounds i32, i32* %669, i64 171
  store i32 %666, i32* %670, align 4
  %671 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %672 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %671, i32 0, i32 1
  %673 = load i32, i32* %672, align 4
  %674 = sub i32 %673, 2
  store i32 %674, i32* %8, align 4
  %675 = load i32, i32* %8, align 4
  %676 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %677 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %676, i32 0, i32 1
  %678 = load i32*, i32** %677, align 8
  %679 = getelementptr inbounds i32, i32* %678, i64 172
  store i32 %675, i32* %679, align 4
  %680 = load i32, i32* %8, align 4
  %681 = lshr i32 %680, 8
  %682 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %683 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %682, i32 0, i32 1
  %684 = load i32*, i32** %683, align 8
  %685 = getelementptr inbounds i32, i32* %684, i64 173
  store i32 %681, i32* %685, align 4
  %686 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %687 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %686, i32 0, i32 1
  %688 = load i32*, i32** %687, align 8
  %689 = getelementptr inbounds i32, i32* %688, i64 174
  store i32 0, i32* %689, align 4
  %690 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %691 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %690, i32 0, i32 1
  %692 = load i32*, i32** %691, align 8
  %693 = getelementptr inbounds i32, i32* %692, i64 175
  store i32 0, i32* %693, align 4
  %694 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %695 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %694, i32 0, i32 1
  %696 = load i32*, i32** %695, align 8
  %697 = getelementptr inbounds i32, i32* %696, i64 176
  store i32 3, i32* %697, align 4
  %698 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %699 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %698, i32 0, i32 1
  %700 = load i32*, i32** %699, align 8
  %701 = getelementptr inbounds i32, i32* %700, i64 177
  store i32 160, i32* %701, align 4
  %702 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %703 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %702, i32 0, i32 1
  %704 = load i32*, i32** %703, align 8
  %705 = getelementptr inbounds i32, i32* %704, i64 140
  store i32 32, i32* %705, align 4
  %706 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %707 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %706, i32 0, i32 1
  %708 = load i32*, i32** %707, align 8
  %709 = getelementptr inbounds i32, i32* %708, i64 141
  store i32 4, i32* %709, align 4
  %710 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %711 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %710, i32 0, i32 1
  %712 = load i32*, i32** %711, align 8
  %713 = getelementptr inbounds i32, i32* %712, i64 185
  store i32 26, i32* %713, align 4
  %714 = load %struct.mavenregs*, %struct.mavenregs** %7, align 8
  %715 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %714, i32 0, i32 1
  %716 = load i32*, i32** %715, align 8
  %717 = getelementptr inbounds i32, i32* %716, i64 191
  store i32 34, i32* %717, align 4
  store i32 0, i32* %4, align 4
  br label %718

718:                                              ; preds = %471, %448, %57
  %719 = load i32, i32* %4, align 4
  ret i32 %719
}

declare dso_local i32 @maven_init_TVdata(%struct.maven_data*, %struct.mavenregs*) #1

declare dso_local i64 @maven_find_exact_clocks(i32, i32, %struct.mavenregs*) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @DAC1064_calcclock(i32, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
