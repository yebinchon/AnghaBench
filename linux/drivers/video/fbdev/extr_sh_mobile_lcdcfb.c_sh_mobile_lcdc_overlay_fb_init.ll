; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh_mobile_lcdcfb.c_sh_mobile_lcdc_overlay_fb_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh_mobile_lcdcfb.c_sh_mobile_lcdc_overlay_fb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.sh_mobile_lcdc_overlay = type { i32, %struct.TYPE_5__*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_info*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32, i64 }
%struct.fb_info = type { %struct.fb_var_screeninfo, %struct.TYPE_6__, %struct.sh_mobile_lcdc_overlay*, i32, i32, i32*, i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.sh_mobile_lcdc_priv* }
%struct.sh_mobile_lcdc_priv = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@FBINFO_FLAG_DEFAULT = common dso_local global i32 0, align 4
@sh_mobile_lcdc_overlay_ops = common dso_local global i32 0, align 4
@sh_mobile_lcdc_overlay_fix = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str = private unnamed_addr constant [26 x i8] c"SH Mobile LCDC Overlay %u\00", align 1
@FB_VISUAL_FOURCC = common dso_local global i32 0, align 4
@FB_VISUAL_TRUECOLOR = common dso_local global i32 0, align 4
@FB_ACTIVATE_NOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_mobile_lcdc_overlay*)* @sh_mobile_lcdc_overlay_fb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_mobile_lcdc_overlay_fb_init(%struct.sh_mobile_lcdc_overlay* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sh_mobile_lcdc_overlay*, align 8
  %4 = alloca %struct.sh_mobile_lcdc_priv*, align 8
  %5 = alloca %struct.fb_var_screeninfo*, align 8
  %6 = alloca %struct.fb_info*, align 8
  store %struct.sh_mobile_lcdc_overlay* %0, %struct.sh_mobile_lcdc_overlay** %3, align 8
  %7 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %3, align 8
  %8 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %7, i32 0, i32 11
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %10, align 8
  store %struct.sh_mobile_lcdc_priv* %11, %struct.sh_mobile_lcdc_priv** %4, align 8
  %12 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %4, align 8
  %13 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.fb_info* @framebuffer_alloc(i32 0, i32 %14)
  store %struct.fb_info* %15, %struct.fb_info** %6, align 8
  %16 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %17 = icmp ne %struct.fb_info* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %156

21:                                               ; preds = %1
  %22 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %23 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %3, align 8
  %24 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %23, i32 0, i32 10
  store %struct.fb_info* %22, %struct.fb_info** %24, align 8
  %25 = load i32, i32* @FBINFO_FLAG_DEFAULT, align 4
  %26 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %27 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %26, i32 0, i32 6
  store i32 %25, i32* %27, align 8
  %28 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %29 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %28, i32 0, i32 5
  store i32* @sh_mobile_lcdc_overlay_ops, i32** %29, align 8
  %30 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %4, align 8
  %31 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %34 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 4
  %35 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %3, align 8
  %36 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %35, i32 0, i32 9
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %39 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %3, align 8
  %41 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %42 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %41, i32 0, i32 2
  store %struct.sh_mobile_lcdc_overlay* %40, %struct.sh_mobile_lcdc_overlay** %42, align 8
  %43 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %44 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %43, i32 0, i32 1
  %45 = bitcast %struct.TYPE_6__* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 4 bitcast (%struct.TYPE_6__* @sh_mobile_lcdc_overlay_fix to i8*), i64 28, i1 false)
  %46 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %47 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %3, align 8
  %51 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @snprintf(i32 %49, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %3, align 8
  %55 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %54, i32 0, i32 8
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %58 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 5
  store i32 %56, i32* %59, align 4
  %60 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %3, align 8
  %61 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %60, i32 0, i32 7
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %64 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 4
  store i32 %62, i32* %65, align 4
  %66 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %3, align 8
  %67 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %70 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 3
  store i32 %68, i32* %71, align 4
  %72 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %3, align 8
  %73 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %72, i32 0, i32 1
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %21
  %79 = load i32, i32* @FB_VISUAL_FOURCC, align 4
  %80 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %81 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  store i32 %79, i32* %82, align 4
  br label %88

83:                                               ; preds = %21
  %84 = load i32, i32* @FB_VISUAL_TRUECOLOR, align 4
  %85 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %86 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 2
  store i32 %84, i32* %87, align 4
  br label %88

88:                                               ; preds = %83, %78
  %89 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %3, align 8
  %90 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %89, i32 0, i32 1
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  switch i32 %93, label %102 [
    i32 131, label %94
    i32 129, label %94
    i32 130, label %98
    i32 128, label %98
  ]

94:                                               ; preds = %88, %88
  %95 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %96 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  store i32 2, i32* %97, align 4
  br label %98

98:                                               ; preds = %88, %88, %94
  %99 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %100 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  store i32 2, i32* %101, align 4
  br label %102

102:                                              ; preds = %98, %88
  %103 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %104 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %103, i32 0, i32 0
  store %struct.fb_var_screeninfo* %104, %struct.fb_var_screeninfo** %5, align 8
  %105 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %106 = call i32 @memset(%struct.fb_var_screeninfo* %105, i32 0, i32 28)
  %107 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %3, align 8
  %108 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %111 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %110, i32 0, i32 6
  store i32 %109, i32* %111, align 4
  %112 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %3, align 8
  %113 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %116 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %115, i32 0, i32 5
  store i32 %114, i32* %116, align 4
  %117 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %3, align 8
  %118 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %121 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %120, i32 0, i32 4
  store i32 %119, i32* %121, align 4
  %122 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %3, align 8
  %123 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %126 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* @FB_ACTIVATE_NOW, align 4
  %128 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %129 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 4
  %130 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %3, align 8
  %131 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %130, i32 0, i32 1
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %144, label %136

136:                                              ; preds = %102
  %137 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %3, align 8
  %138 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %137, i32 0, i32 1
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %143 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 4
  br label %152

144:                                              ; preds = %102
  %145 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %3, align 8
  %146 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %145, i32 0, i32 1
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %151 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 4
  br label %152

152:                                              ; preds = %144, %136
  %153 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %154 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %155 = call i32 @sh_mobile_lcdc_overlay_check_var(%struct.fb_var_screeninfo* %153, %struct.fb_info* %154)
  store i32 %155, i32* %2, align 4
  br label %156

156:                                              ; preds = %152, %18
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

declare dso_local %struct.fb_info* @framebuffer_alloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @memset(%struct.fb_var_screeninfo*, i32, i32) #1

declare dso_local i32 @sh_mobile_lcdc_overlay_check_var(%struct.fb_var_screeninfo*, %struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
