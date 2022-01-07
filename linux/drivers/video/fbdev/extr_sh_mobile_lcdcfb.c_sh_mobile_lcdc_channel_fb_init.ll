; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh_mobile_lcdcfb.c_sh_mobile_lcdc_channel_fb_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh_mobile_lcdcfb.c_sh_mobile_lcdc_channel_fb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.sh_mobile_lcdc_chan = type { %struct.TYPE_5__*, i32, i32, %struct.TYPE_4__, i32, i32, i32, i32, i32, %struct.fb_info*, %struct.sh_mobile_lcdc_priv* }
%struct.TYPE_5__ = type { i32, i32, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.fb_info = type { %struct.fb_var_screeninfo, %struct.TYPE_6__, i32, i32, %struct.sh_mobile_lcdc_chan*, i32*, i32, i32, i32*, i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.sh_mobile_lcdc_priv = type { i32 }
%struct.fb_videomode = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@FBINFO_FLAG_DEFAULT = common dso_local global i32 0, align 4
@sh_mobile_lcdc_ops = common dso_local global i32 0, align 4
@PALETTE_NR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"unable to allocate cmap\0A\00", align 1
@sh_mobile_lcdc_fix = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@FB_VISUAL_FOURCC = common dso_local global i32 0, align 4
@FB_VISUAL_TRUECOLOR = common dso_local global i32 0, align 4
@FB_ACTIVATE_NOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_mobile_lcdc_chan*, %struct.fb_videomode*, i32)* @sh_mobile_lcdc_channel_fb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_mobile_lcdc_channel_fb_init(%struct.sh_mobile_lcdc_chan* %0, %struct.fb_videomode* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sh_mobile_lcdc_chan*, align 8
  %6 = alloca %struct.fb_videomode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sh_mobile_lcdc_priv*, align 8
  %9 = alloca %struct.fb_var_screeninfo*, align 8
  %10 = alloca %struct.fb_info*, align 8
  %11 = alloca i32, align 4
  store %struct.sh_mobile_lcdc_chan* %0, %struct.sh_mobile_lcdc_chan** %5, align 8
  store %struct.fb_videomode* %1, %struct.fb_videomode** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %5, align 8
  %13 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %12, i32 0, i32 10
  %14 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %13, align 8
  store %struct.sh_mobile_lcdc_priv* %14, %struct.sh_mobile_lcdc_priv** %8, align 8
  %15 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %8, align 8
  %16 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.fb_info* @framebuffer_alloc(i32 0, i32 %17)
  store %struct.fb_info* %18, %struct.fb_info** %10, align 8
  %19 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %20 = icmp ne %struct.fb_info* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %181

24:                                               ; preds = %3
  %25 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %26 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %5, align 8
  %27 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %26, i32 0, i32 9
  store %struct.fb_info* %25, %struct.fb_info** %27, align 8
  %28 = load i32, i32* @FBINFO_FLAG_DEFAULT, align 4
  %29 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %30 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %29, i32 0, i32 9
  store i32 %28, i32* %30, align 8
  %31 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %32 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %31, i32 0, i32 8
  store i32* @sh_mobile_lcdc_ops, i32** %32, align 8
  %33 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %8, align 8
  %34 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %37 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %36, i32 0, i32 7
  store i32 %35, i32* %37, align 4
  %38 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %5, align 8
  %39 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %38, i32 0, i32 8
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %42 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %41, i32 0, i32 6
  store i32 %40, i32* %42, align 8
  %43 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %5, align 8
  %44 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %43, i32 0, i32 7
  %45 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %46 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %45, i32 0, i32 5
  store i32* %44, i32** %46, align 8
  %47 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %5, align 8
  %48 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %49 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %48, i32 0, i32 4
  store %struct.sh_mobile_lcdc_chan* %47, %struct.sh_mobile_lcdc_chan** %49, align 8
  %50 = load %struct.fb_videomode*, %struct.fb_videomode** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %53 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %52, i32 0, i32 3
  %54 = call i32 @fb_videomode_to_modelist(%struct.fb_videomode* %50, i32 %51, i32* %53)
  %55 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %56 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %55, i32 0, i32 2
  %57 = load i32, i32* @PALETTE_NR, align 4
  %58 = call i32 @fb_alloc_cmap(i32* %56, i32 %57, i32 0)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %24
  %62 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %8, align 8
  %63 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @dev_err(i32 %64, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %4, align 4
  br label %181

67:                                               ; preds = %24
  %68 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %69 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %68, i32 0, i32 1
  %70 = bitcast %struct.TYPE_6__* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %70, i8* align 4 bitcast (%struct.TYPE_6__* @sh_mobile_lcdc_fix to i8*), i64 24, i1 false)
  %71 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %5, align 8
  %72 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %75 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 5
  store i32 %73, i32* %76, align 4
  %77 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %5, align 8
  %78 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %81 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 4
  store i32 %79, i32* %82, align 4
  %83 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %5, align 8
  %84 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %87 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 3
  store i32 %85, i32* %88, align 4
  %89 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %5, align 8
  %90 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %89, i32 0, i32 0
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %67
  %96 = load i32, i32* @FB_VISUAL_FOURCC, align 4
  %97 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %98 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 2
  store i32 %96, i32* %99, align 4
  br label %105

100:                                              ; preds = %67
  %101 = load i32, i32* @FB_VISUAL_TRUECOLOR, align 4
  %102 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %103 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 2
  store i32 %101, i32* %104, align 4
  br label %105

105:                                              ; preds = %100, %95
  %106 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %5, align 8
  %107 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %106, i32 0, i32 0
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  switch i32 %110, label %119 [
    i32 131, label %111
    i32 129, label %111
    i32 130, label %115
    i32 128, label %115
  ]

111:                                              ; preds = %105, %105
  %112 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %113 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  store i32 2, i32* %114, align 4
  br label %115

115:                                              ; preds = %105, %105, %111
  %116 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %117 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  store i32 2, i32* %118, align 4
  br label %119

119:                                              ; preds = %115, %105
  %120 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %121 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %120, i32 0, i32 0
  store %struct.fb_var_screeninfo* %121, %struct.fb_var_screeninfo** %9, align 8
  %122 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %9, align 8
  %123 = load %struct.fb_videomode*, %struct.fb_videomode** %6, align 8
  %124 = call i32 @fb_videomode_to_var(%struct.fb_var_screeninfo* %122, %struct.fb_videomode* %123)
  %125 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %5, align 8
  %126 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %9, align 8
  %130 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %129, i32 0, i32 6
  store i32 %128, i32* %130, align 4
  %131 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %5, align 8
  %132 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %9, align 8
  %136 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %135, i32 0, i32 5
  store i32 %134, i32* %136, align 4
  %137 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %5, align 8
  %138 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %9, align 8
  %141 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %140, i32 0, i32 4
  store i32 %139, i32* %141, align 4
  %142 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %5, align 8
  %143 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %9, align 8
  %146 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %145, i32 0, i32 3
  store i32 %144, i32* %146, align 4
  %147 = load i32, i32* @FB_ACTIVATE_NOW, align 4
  %148 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %9, align 8
  %149 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %148, i32 0, i32 2
  store i32 %147, i32* %149, align 4
  %150 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %5, align 8
  %151 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %150, i32 0, i32 0
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %164, label %156

156:                                              ; preds = %119
  %157 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %5, align 8
  %158 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %157, i32 0, i32 0
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %9, align 8
  %163 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %162, i32 0, i32 1
  store i32 %161, i32* %163, align 4
  br label %172

164:                                              ; preds = %119
  %165 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %5, align 8
  %166 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %165, i32 0, i32 0
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %9, align 8
  %171 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 4
  br label %172

172:                                              ; preds = %164, %156
  %173 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %9, align 8
  %174 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %175 = call i32 @sh_mobile_lcdc_check_var(%struct.fb_var_screeninfo* %173, %struct.fb_info* %174)
  store i32 %175, i32* %11, align 4
  %176 = load i32, i32* %11, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %172
  %179 = load i32, i32* %11, align 4
  store i32 %179, i32* %4, align 4
  br label %181

180:                                              ; preds = %172
  store i32 0, i32* %4, align 4
  br label %181

181:                                              ; preds = %180, %178, %61, %21
  %182 = load i32, i32* %4, align 4
  ret i32 %182
}

declare dso_local %struct.fb_info* @framebuffer_alloc(i32, i32) #1

declare dso_local i32 @fb_videomode_to_modelist(%struct.fb_videomode*, i32, i32*) #1

declare dso_local i32 @fb_alloc_cmap(i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fb_videomode_to_var(%struct.fb_var_screeninfo*, %struct.fb_videomode*) #1

declare dso_local i32 @sh_mobile_lcdc_check_var(%struct.fb_var_screeninfo*, %struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
