; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_omapfb_fb_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_omapfb_fb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omapfb2_device = type { i32, i32 }
%struct.fb_info = type { i32, i32, i32, i32*, %struct.fb_var_screeninfo }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.omap_dss_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.omap_dss_device*, i8**, i8**)* }
%struct.omapfb_info = type { i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@omapfb_ops = common dso_local global i32 0, align 4
@FBINFO_FLAG_DEFAULT = common dso_local global i32 0, align 4
@def_rotate = common dso_local global i32 0, align 4
@FB_ROTATE_CW = common dso_local global i32 0, align 4
@FB_ROTATE_CCW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"illegal display bpp\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"unable to allocate color map memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omapfb2_device*, %struct.fb_info*)* @omapfb_fb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omapfb_fb_init(%struct.omapfb2_device* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omapfb2_device*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.fb_var_screeninfo*, align 8
  %7 = alloca %struct.omap_dss_device*, align 8
  %8 = alloca %struct.omapfb_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.omapfb2_device* %0, %struct.omapfb2_device** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %13 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 4
  store %struct.fb_var_screeninfo* %14, %struct.fb_var_screeninfo** %6, align 8
  %15 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %16 = call %struct.omap_dss_device* @fb2display(%struct.fb_info* %15)
  store %struct.omap_dss_device* %16, %struct.omap_dss_device** %7, align 8
  %17 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %18 = call %struct.omapfb_info* @FB2OFB(%struct.fb_info* %17)
  store %struct.omapfb_info* %18, %struct.omapfb_info** %8, align 8
  store i32 0, i32* %9, align 4
  %19 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %20 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %19, i32 0, i32 3
  store i32* @omapfb_ops, i32** %20, align 8
  %21 = load i32, i32* @FBINFO_FLAG_DEFAULT, align 4
  %22 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %23 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.omapfb2_device*, %struct.omapfb2_device** %4, align 8
  %25 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %28 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.omapfb_info*, %struct.omapfb_info** %8, align 8
  %30 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %2
  %36 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %37 = call i32 @clear_fb_info(%struct.fb_info* %36)
  store i32 0, i32* %3, align 4
  br label %177

38:                                               ; preds = %2
  %39 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %40 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %39, i32 0, i32 6
  store i64 0, i64* %40, align 8
  %41 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %42 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  %43 = load i32, i32* @def_rotate, align 4
  %44 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %45 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %47 = icmp ne %struct.omap_dss_device* %46, null
  br i1 %47, label %48, label %125

48:                                               ; preds = %38
  %49 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %50 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.omapfb_info*, %struct.omapfb_info** %8, align 8
  %53 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %51, %56
  %58 = srem i32 %57, 4
  store i32 %58, i32* %12, align 4
  %59 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %60 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32 (%struct.omap_dss_device*, i8**, i8**)*, i32 (%struct.omap_dss_device*, i8**, i8**)** %62, align 8
  %64 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %65 = call i32 %63(%struct.omap_dss_device* %64, i8** %10, i8** %11)
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @FB_ROTATE_CW, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %73, label %69

69:                                               ; preds = %48
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* @FB_ROTATE_CCW, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %69, %48
  %74 = load i8*, i8** %11, align 8
  %75 = ptrtoint i8* %74 to i32
  %76 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %77 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = ptrtoint i8* %78 to i32
  %80 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %81 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  br label %91

82:                                               ; preds = %69
  %83 = load i8*, i8** %10, align 8
  %84 = ptrtoint i8* %83 to i32
  %85 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %86 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  %87 = load i8*, i8** %11, align 8
  %88 = ptrtoint i8* %87 to i32
  %89 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %90 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 4
  br label %91

91:                                               ; preds = %82, %73
  %92 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %93 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %96 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 8
  %97 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %98 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %101 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %100, i32 0, i32 5
  store i32 %99, i32* %101, align 4
  %102 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %103 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %124, label %106

106:                                              ; preds = %91
  %107 = load %struct.omapfb2_device*, %struct.omapfb2_device** %4, align 8
  %108 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %109 = call i32 @omapfb_get_recommended_bpp(%struct.omapfb2_device* %107, %struct.omap_dss_device* %108)
  switch i32 %109, label %116 [
    i32 16, label %110
    i32 24, label %113
  ]

110:                                              ; preds = %106
  %111 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %112 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %111, i32 0, i32 0
  store i32 16, i32* %112, align 8
  br label %123

113:                                              ; preds = %106
  %114 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %115 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %114, i32 0, i32 0
  store i32 32, i32* %115, align 8
  br label %123

116:                                              ; preds = %106
  %117 = load %struct.omapfb2_device*, %struct.omapfb2_device** %4, align 8
  %118 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @dev_err(i32 %119, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %3, align 4
  br label %177

123:                                              ; preds = %113, %110
  br label %124

124:                                              ; preds = %123, %91
  br label %148

125:                                              ; preds = %38
  %126 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %127 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %126, i32 0, i32 2
  store i32 320, i32* %127, align 8
  %128 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %129 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %128, i32 0, i32 3
  store i32 240, i32* %129, align 4
  %130 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %131 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %134 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %133, i32 0, i32 4
  store i32 %132, i32* %134, align 8
  %135 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %136 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %139 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %138, i32 0, i32 5
  store i32 %137, i32* %139, align 4
  %140 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %141 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %125
  %145 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %146 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %145, i32 0, i32 0
  store i32 16, i32* %146, align 8
  br label %147

147:                                              ; preds = %144, %125
  br label %148

148:                                              ; preds = %147, %124
  %149 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %150 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %151 = call i32 @check_fb_var(%struct.fb_info* %149, %struct.fb_var_screeninfo* %150)
  store i32 %151, i32* %9, align 4
  %152 = load i32, i32* %9, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %148
  br label %175

155:                                              ; preds = %148
  %156 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %157 = call i32 @set_fb_fix(%struct.fb_info* %156)
  %158 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %159 = call i32 @setup_vrfb_rotation(%struct.fb_info* %158)
  store i32 %159, i32* %9, align 4
  %160 = load i32, i32* %9, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %155
  br label %175

163:                                              ; preds = %155
  %164 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %165 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %164, i32 0, i32 0
  %166 = call i32 @fb_alloc_cmap(i32* %165, i32 256, i32 0)
  store i32 %166, i32* %9, align 4
  %167 = load i32, i32* %9, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %163
  %170 = load %struct.omapfb2_device*, %struct.omapfb2_device** %4, align 8
  %171 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @dev_err(i32 %172, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %174

174:                                              ; preds = %169, %163
  br label %175

175:                                              ; preds = %174, %162, %154
  %176 = load i32, i32* %9, align 4
  store i32 %176, i32* %3, align 4
  br label %177

177:                                              ; preds = %175, %116, %35
  %178 = load i32, i32* %3, align 4
  ret i32 %178
}

declare dso_local %struct.omap_dss_device* @fb2display(%struct.fb_info*) #1

declare dso_local %struct.omapfb_info* @FB2OFB(%struct.fb_info*) #1

declare dso_local i32 @clear_fb_info(%struct.fb_info*) #1

declare dso_local i32 @omapfb_get_recommended_bpp(%struct.omapfb2_device*, %struct.omap_dss_device*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @check_fb_var(%struct.fb_info*, %struct.fb_var_screeninfo*) #1

declare dso_local i32 @set_fb_fix(%struct.fb_info*) #1

declare dso_local i32 @setup_vrfb_rotation(%struct.fb_info*) #1

declare dso_local i32 @fb_alloc_cmap(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
